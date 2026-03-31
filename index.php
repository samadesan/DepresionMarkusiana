<?php
require_once 'includes/db.php';

include 'includes/templates/head.php';

include 'includes/templates/navbar.php';
?>

    <div class="bg-noise"></div>

    <main id="main-wrapper">
        <header class="hero container-fluid">
            <div class="text-center">
                <h1 class="hero-title animate-glitch">DEPRESIÓN<br>SONORA</h1>
                <p class="hero-subtitle">Bailes tristes para Markusianos</p>
            </div>
        </header>

        <section class="container" id="bio">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <div class="manifesto-text">
                        <p>No es música para bailar, es música para sobrevivir al domingo por la tarde.</p>
                        <p>Marcos Crespo inició este proyecto en su habitación, y hoy es el eco de una generación que prefiere la oscuridad de un club a la luz del sol.</p>
                    </div>
                </div>
                <div class="col-lg-5 text-center mt-5 mt-lg-0">
                    <img src="assets/media/img/marcos_crespo.jpg" alt="Marcos" class="img-fluid grayscale-filter border border-white p-2">
                </div>
            </div>
        </section>
    </main>

<?php
include 'includes/templates/footer.php';
?>