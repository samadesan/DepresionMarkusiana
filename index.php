<?php
require_once 'database/db.php';
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';
?>

    <div class="site-background"></div>
    <div class="bg-noise"></div>

    <main id="main-wrapper">
        <header class="hero container-fluid">
            <div class="text-center reveal">
                <img src="assets/media/img/DEPRESION-SONORA-slogan-1.png" alt="Slogan-DS" class="img-fluid slogan-1"><br><br>
                <img src="assets/media/img/DEPRESION-SONORA-slogan-2.png" alt="Slogan-DS" class="img-fluid slogan-2"><br>
                <p class="hero-subtitle badge bg-white text-black rounded-0">Bailes tristes para Markusianos</p>
            </div>
        </header>

        <section class="container py-5" id="bio">
            <div class="row align-items-center reveal">
                <div class="col-lg-7">
                    <div class="manifesto-text">
                        <p>No es música para bailar, es música para sobrevivir al domingo por la tarde.</p>
                        <p>Marcos Crespo inició este proyecto en su habitación, y hoy es el eco de una generación que prefiere la oscuridad de un club a la luz del sol.</p>
                    </div>
                </div>
                <div class="col-lg-5 text-center mt-5 mt-lg-0">
                    <img src="assets/media/img/marcos_crespo.jpg" alt="Marcos Crespo" class="img-fluid border-neon">
                </div>
            </div>
        </section>
    </main>

<?php include 'includes/templates/footer.php'; ?>