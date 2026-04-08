$(document).ready(function() {
    // --- Lógica de Intersection Observer ---
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1 });

    $('.reveal').each(function() { observer.observe(this); });

    // --- Lógica de Filtros ---
    $("#discoSearch, #filterType, #filterYear").on("input change", function() {
        const texto = $("#discoSearch").val().toLowerCase().trim();
        const categoria = $("#filterType").val();
        const anio = $("#filterYear").val();

        $(".disco-item").each(function() {
            const cardText = $(this).find('.card-body').text().toLowerCase();
            const tipo = $(this).data("type");
            const discoAnio = $(this).data("year")?.toString();

            const coincide = cardText.includes(texto) &&
                (categoria === "all" || tipo === categoria) &&
                (anio === "all" || discoAnio === anio);

            $(this).toggle(coincide);
        });
    });

    // --- LÓGICA DEL REPRODUCTOR ---
    const audio = document.getElementById('mainAudio');

    $(document).on("click", ".open-player", function() {
        const discoId = $(this).data('id');
        const discoTitle = $(this).data('title');
        $("#modalSongTitle").text(discoTitle);
        $("#playerModal").modal('show');

        const lista = $("#playlistContainer");
        lista.html('<div class="text-center py-4"><div class="spinner-border text-success"></div></div>');

        $.getJSON('includes/get_canciones.php', { disco_id: discoId }, function(data) {
            lista.empty();
            if(data.length > 0) {
                data.forEach((track, i) => {
                    lista.append(`
                        <div class="track-row" data-src="assets/media/audio/${track.archivo_mp3}">
                            <span class="track-number">${i + 1}</span>
                            <span class="track-title text-truncate">${track.titulo}</span>
                            <span class="track-duration text-end">${track.duracion_track}</span>
                        </div>
                    `);
                });
            }
        });
    });

    // Reproducir al clicar fila
    $(document).on("click", ".track-row", function() {
        $(".track-row").removeClass("active-track");
        $(this).addClass("active-track");
        audio.src = $(this).data('src');
        audio.play();
        $("#playIcon").attr("class", "bi bi-pause-fill");
    });

    // Botones de control
    $(document).on("click", "#customPlayPause", function() {
        if(!audio.src) return;
        if(audio.paused) {
            audio.play();
            $("#playIcon").attr("class", "bi bi-pause-fill");
        } else {
            audio.pause();
            $("#playIcon").attr("class", "bi bi-play-fill");
        }
    });

    // Actualizar barra y tiempo
    audio.addEventListener('timeupdate', () => {
        const pct = (audio.currentTime / audio.duration) * 100;
        $("#progressBar").css("width", pct + "%");
        $("#currentTrackTime").text(formatTime(audio.currentTime));
        $("#totalTrackTime").text(formatTime(audio.duration || 0));
    });

    // Saltar pista (Next/Prev)
    function shiftTrack(next = true) {
        const current = $(".track-row.active-track");
        let target = next ? current.next() : current.prev();
        if(!target.length) target = next ? $(".track-row").first() : $(".track-row").last();
        target.click();
    }

    $(document).on("click", "#nextTrack", () => shiftTrack(true));
    $(document).on("click", "#prevTrack", () => shiftTrack(false));
    audio.addEventListener('ended', () => shiftTrack(true));

    // Barra de progreso clickeable
    $("#progressWrapper").on("click", function(e) {
        const x = e.pageX - $(this).offset().left;
        audio.currentTime = (x / $(this).width()) * audio.duration;
    });

    // Volumen
    $("#volumeSlider").on("input", function() { audio.volume = $(this).val(); });

    function formatTime(sec) {
        const m = Math.floor(sec / 60);
        const s = Math.floor(sec % 60);
        return `${m}:${s < 10 ? '0' : ''}${s}`;
    }

    $('#playerModal').on('hidden.bs.modal', () => { audio.pause(); });
});