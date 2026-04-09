$(document).ready(function() {

    // --- 1. REVELACIÓN GLOBAL (Observer mejorado) ---
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
            } else {
                // Quitamos la clase al salir de la pantalla para que la animación
                // se vuelva a aplicar cuando el usuario vuelva a hacer scroll.
                entry.target.classList.remove('active');
            }
        });
    }, { threshold: 0.1 });

    $('.reveal').each(function() { observer.observe(this); });

    // --- 2. FILTROS Y ORDENACIÓN (Con reactivación de animación) ---
    function filtrarYOrdenar() {
        const texto = $("#discoSearch").val().toLowerCase().trim();
        const categoria = $("#filterType").val();
        const anio = $("#filterYear").val();
        const orden = $("#orderUpDown").val();

        let items = $(".disco-item").toArray();

        // Ordenación
        items.sort((a, b) => {
            const valA = parseInt($(a).data('order'));
            const valB = parseInt($(b).data('order'));
            return (orden === 'asc') ? valA - valB : valB - valA;
        });

        $("#discoContainer").append(items);

        // Filtro visual con reinicio de animación
        $(".disco-item").each(function(index) {
            const titulo = $(this).find('.card-title').text().toLowerCase();
            const tipo = $(this).data("type");
            const discoAnio = $(this).data("year")?.toString();

            const coincide = titulo.includes(texto) &&
                (categoria === "all" || tipo === categoria) &&
                (anio === "all" || discoAnio === anio);

            if (coincide) {
                $(this).show(); // Aseguramos que esté en el DOM
                $(this).removeClass('active'); // Apagamos la animación

                // Forzamos al navegador a recalcular el estilo (Reflow mágico)
                void this.offsetWidth;

                // Encendemos la animación de nuevo con un pequeño efecto en cascada (stagger)
                setTimeout(() => {
                    $(this).addClass('active');
                }, index * 20); // 20ms de retraso por tarjeta para que entren escalonadas

            } else {
                $(this).removeClass('active');
                $(this).hide();
            }
        });
    }

    $("#discoSearch, #filterType, #filterYear, #orderUpDown").on("input change", filtrarYOrdenar);

    // --- Lógica para el Icono "Volver Arriba" (El Perro) ---
    const $backToTop = $('#backToTop');

    // Función para detectar el scroll
    $(window).scroll(function() {
        if ($(window).scrollTop() > 300) {
            $backToTop.addClass('show');
        } else {
            // Si estamos arriba, lo ocultamos
            $backToTop.removeClass('show');
        }
    });

    // Función al hacer clic en el icono
    $backToTop.on('click', function(e) {
        e.preventDefault();
        $('html, body').animate({scrollTop:0}, 'smooth');
    });
});