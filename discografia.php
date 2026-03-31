<?php
global $pdo;
require_once 'includes/db.php';
$pageTitle = "Discografía";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

$query = $pdo->query("SELECT * FROM discografia ORDER BY anio DESC");
$discos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <main class="container my-5" id="main-wrapper">
        <h2 class="display-4 fw-bold mb-5 reveal">DISCOGRAFÍA</h2>

        <div class="row g-4">
            <?php foreach($discos as $disco): ?>
                <div class="col-md-4 reveal">
                    <div class="card bg-transparent border-white rounded-0 h-100 album-card">
                        <img src="assets/media/img/<?php echo isset($disco['portada_url']) ? $disco['portada_url'] : 'placeholder.jpg'; ?>" class="card-img-top rounded-0 grayscale" alt="<?php echo $disco['titulo']; ?>">
                        <div class="card-body border-top border-white">
                            <div class="d-flex justify-content-between shadow-sm mb-2">
                                <span class="badge bg-white text-black rounded-0"><?php echo $disco['tipo']; ?></span>
                                <small class="text-secondary"><?php echo $disco['duracion']; ?> min</small>
                            </div>
                            <h5 class="card-title fw-bold text-uppercase"><?php echo $disco['titulo']; ?></h5>
                            <p class="card-text small">
                                Canciones: <?php echo $disco['cantidad_canciones']; ?> <br>
                                Año: <?php echo $disco['anio']; ?>
                            </p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>