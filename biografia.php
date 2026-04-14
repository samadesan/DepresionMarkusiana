<?php
$pageTitle = "Biografía";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';
?>

    <div class="site-background"></div>

    <main class="container py-5" id="main-wrapper">

        <div class="row mb-5 reveal">
            <div class="col-12 col-lg-7 order-2 order-lg-1 pe-lg-5">
                <?php include 'includes/templates/page-elements/bio/marcos-crespo.php'; ?>
            </div>

            <div class="col-12 col-lg-5 order-1 order-lg-2 mb-5 mb-lg-0 pt-lg-4">
                <div class="bio-img-container position-relative sticky-lg-top" style="top: 120px;">
                    <img src="assets/media/img/marcos_crespo.jpg" alt="Marcos Crespo" class="img-fluid bio-img">
                </div>
            </div>
        </div>

        <div class="row reveal">
            <div class="col-12">
                <hr class="border-secondary my-5" style="opacity: 0.3;">
            </div>
        </div>

        <div class="row mt-5 reveal">
            <div class="col-12 col-lg-5 mb-5 mb-lg-0 pt-lg-4">
                <div class="bio-img-container position-relative sticky-lg-top" style="top: 120px;">
                    <img src="assets/media/img/DepresionSonora_Fondo_Azul.jpg" alt="Depresión Sonora - Los Perros" class="img-fluid bio-img">
                </div>
            </div>

            <div class="col-12 col-lg-7 ps-lg-5">
                <?php include 'includes/templates/page-elements/bio/introduccion-perros.php'; ?>
            </div>
        </div>

    </main>

<?php include 'includes/templates/footer.php'; ?>