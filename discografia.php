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
                            <span class="badge bg-white text-black mb-2"><?php echo $disco['tipo']; ?></span>
                            <h5 class="card-title fw-bold"><?php echo $disco['titulo']; ?></h5>
                            <p class="card-text small text-secondary"><?php echo $disco['anio']; ?></p>
                            <a href="<?php echo $disco['spotify_link']; ?>" target="_blank" class="btn btn-sm btn-outline-light rounded-0">ESCUCHAR</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>