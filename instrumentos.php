<?php
require_once 'includes/db.php';
$pageTitle = "Instrumentos";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

$query = $pdo->query("SELECT * FROM instrumentos ORDER BY id ASC");
$instrumentos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <div class="site-background"></div>

    <main class="container py-5" id="main-wrapper">
        <div class="row mb-5 reveal">
            <div class="col-12 text-start">
                <h2 class="display-4 fw-bold text-white">EQUIPAMIENTO</h2>
                <p class="text-accent">// LAS ARMAS DE MARCOS CRESPO</p>
            </div>
        </div>

        <div class="row g-4">
            <?php foreach($instrumentos as $ins): ?>
                <div class="col-6 col-md-4 col-lg-3 reveal">
                    <div class="card bg-transparent border-secondary rounded-0 h-100 instrument-card">
                        <div class="position-relative overflow-hidden p-3 img-container">
                            <img src="assets/media/img/instrumentos/<?php echo $ins['imagen_url']; ?>"
                                 class="img-fluid grayscale instrument-img"
                                 alt="<?php echo htmlspecialchars($ins['nombre'], ENT_QUOTES, 'UTF-8'); ?>"
                                 data-nombre="<?php echo htmlspecialchars(strtoupper($ins['nombre']), ENT_QUOTES, 'UTF-8'); ?>"
                                 data-desc="<?php echo htmlspecialchars($ins['descripcion'], ENT_QUOTES, 'UTF-8'); ?>"
                                 onclick="openModal(this)">
                        </div>
                        <div class="card-body text-center border-top border-secondary bg-black-50">
                            <h5 class="fw-bold text-white mb-0 small-title"><?php echo strtoupper($ins['nombre']); ?></h5>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>
<?php include 'includes/templates/modals/_instrumentoDisplay.php'; ?>
<?php include 'includes/templates/footer.php'; ?>