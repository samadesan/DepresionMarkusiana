/* assets/js/main.js */

$(document).ready(function() {

    /**==============================================================================**/
    /**************************** Lógica JS para Observer *****************************/
    /**==============================================================================**/
    const observerOptions = { threshold: 0.1 };

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);

    $('.reveal').each(function() {
        observer.observe(this);
    });


    /**==============================================================================**/
    /************************ Lógica de Filtro (Buscador + Select) ********************/
    /**==============================================================================**/
    function filtrarDiscos() {
        const texto = $("#discoSearch").val().toLowerCase().trim();
        const categoria = $("#filterType").val();
        const anio = $("#filterYear").val();

        $(".disco-item").each(function() {
            const contenido = $(this).find('.card-body').text().toLowerCase();
            const tipoDisco = $(this).data("type");
            const anioDisco = $(this).data("year") ? $(this).data("year").toString() : "";

            const coincideTexto = contenido.includes(texto);
            const coincideCategoria = (categoria === "all" || tipoDisco === categoria);
            const coincideAnio = (anio === "all" || anioDisco === anio);

            if (coincideTexto && coincideCategoria && coincideAnio) {
                $(this).fadeIn(200).removeClass('d-none');
            } else {
                $(this).fadeOut(200).addClass('d-none');
            }
        });
    }

    function manejarSaltoDesdeBio() {
        const hash = window.location.hash;
        if (hash && hash.includes('disco-')) {
            $("#filterType").val("all");
            $("#filterYear").val("all");
            $("#discoSearch").val("");

            filtrarDiscos();

            setTimeout(() => {
                const elemento = document.querySelector(hash);
                if (elemento) {
                    elemento.scrollIntoView({ behavior: 'smooth', block: 'start' });
                }
            }, 300);
        }
    }
    manejarSaltoDesdeBio();

    $(window).on('hashchange', manejarSaltoDesdeBio);
    $("#discoSearch, #filterType, #filterYear").on("input change", filtrarDiscos);

    if(window.location.hash) {
        $("#filterType").val("all");
        $("#filterYear").val("all");
        $("#discoSearch").val("");
        filtrarDiscos();
    }


    /**==============================================================================**/
    /**************************** Lógica del Modal Player *****************************/
    /**==============================================================================**/
    $(document).on("click", ".open-player", function() {
        const discoId = $(this).data('id');
        const discoTitle = $(this).data('title');
        $("#modalSongTitle").text(discoTitle);

        const listaContainer = $("#playlistContainer");
        listaContainer.html('<p class="text-secondary small">Cargando tracks...</p>');

        // Pedimos las canciones por AJAX al archivo independiente
        $.getJSON('get_canciones.php', { disco_id: discoId }, function(data) {
            listaContainer.empty();
            if(data && data.length > 0) {
                data.forEach(track => {
                    listaContainer.append(`
                    <div class="track-item d-flex justify-content-between align-items-center p-2 mb-2 border-bottom border-secondary" 
                         style="cursor:pointer;" 
                         data-src="assets/media/audio/${track.archivo_mp3}">
                        <span class="small">${track.orden}. ${track.titulo}</span>
                        <span class="small text-secondary text-accent-hover">${track.duracion_track || ''}</span>
                    </div>
                `);
                });
            } else {
                listaContainer.html('<p class="text-danger small">No hay audios disponibles.</p>');
            }
        });

        $("#playerModal").modal('show');
    });

    // Reproducción al clicar en un track de la lista
    $(document).on("click", ".track-item", function() {
        const src = $(this).data('src');
        const player = $("#mainAudio");

        $(".track-item").removeClass("text-accent fw-bold");
        $(this).addClass("text-accent fw-bold");

        player.find("source").attr("src", src);
        player[0].load();
        player[0].play();
    });

    // Detener audio al cerrar el modal
    $('#playerModal').on('hidden.bs.modal', function () {
        const audioEl = $("#mainAudio")[0];
        audioEl.pause();
        audioEl.currentTime = 0;
    });
});