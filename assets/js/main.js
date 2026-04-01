/* assets/js/main.js */

$(document).ready(function() {

    /**==============================================================================**/
    /**************************** Lógica JS para Observer *****************************/
    /**==============================================================================**/
    const observerOptions = {
        threshold: 0.1
    };

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
                // Dejamos de observar una vez activado para mejorar rendimiento
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

        $(".disco-item").each(function() {
            // Buscamos el texto solo dentro del cuerpo de la tarjeta para ser más precisos
            const contenidoTarjeta = $(this).find('.card-body').text().toLowerCase();
            const tipoDisco = $(this).attr("data-type"); // Usamos .attr para asegurar lectura

            const coincideTexto = contenidoTarjeta.includes(texto);
            const coincideCategoria = (categoria === "all" || tipoDisco === categoria);

            if (coincideTexto && coincideCategoria) {
                // Usamos d-block/d-none de Bootstrap para no romper el layout flex
                $(this).removeClass('d-none').addClass('d-block').fadeIn(200);
            } else {
                $(this).fadeOut(200, function() {
                    $(this).addClass('d-none').removeClass('d-block');
                });
            }
        });
    }

    $("#discoSearch").on("input", filtrarDiscos); // "input" es mejor que "keyup" para detectar pegados o borrar con X
    $("#filterType").on("change", filtrarDiscos);


    /**==============================================================================**/
    /**************************** Lógica del Modal Player *****************************/
    /**==============================================================================**/
    $(document).on("click", ".open-player", function() {
        const title = $(this).data('title');
        const audioSrc = $(this).data('audio');

        $("#modalSongTitle").text(title);

        // Cambiamos el src del source y cargamos el elemento audio
        const player = $("#mainAudio");
        player.find("source").attr("src", audioSrc);
        player[0].load();

        $("#playerModal").modal('show');
    });

    // Resetear el player al cerrar para que no siga sonando "en la sombra"
    $('#playerModal').on('hidden.bs.modal', function () {
        const audioEl = $("#mainAudio")[0];
        audioEl.pause();
        audioEl.currentTime = 0;
    });

});