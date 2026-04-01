<?php
global $pdo;
require_once 'includes/db.php';
$pageTitle = "Miembros";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

$query = $pdo->query("SELECT * FROM miembros");
$miembros = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <main class="container py-5" id="main-wrapper">
        <h2 class="display-4 fw-bold mb-5 reveal">MARKUSIANO Y SU GRUPO</h2>

        <div class="row g-5">
            <?php foreach($miembros as $m): ?>
                <div class="col-md-6 reveal">
                    <div class="row border border-white g-0 member-box">
                        <div class="col-sm-5 bg-secondary">
                            <img src="assets/media/img/<?php echo $m['foto_url']; ?>" class="img-fluid grayscale w-100 h-100 object-fit-cover" alt="Miembro">
                        </div>
                        <div class="col-sm-7 p-4 d-flex flex-column justify-content-center">
                            <h3 class="fw-bold text-uppercase"><?php echo $m['nombre']; ?></h3>
                            <p class="text-accent fw-bold small"><?php echo $m['rol_banda']; ?></p>
                            <p class="small text-secondary"><?php echo $m['descripcion']; ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>