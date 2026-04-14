<?php
require_once 'database/db.php';
$pageTitle = "Merchandising";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

$query = $pdo->query("SELECT * FROM productos ORDER BY fecha_creacion DESC");
$productos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <main class="container py-5">
        <div class="row mb-5 reveal">
            <div class="col-md-6">
                <h2 class="display-4 fw-bold mb-0">MERCHANDISING</h2>
                <p class="text-secondary mt-2">// PRODUCTOS OFICIALES</p>
            </div>
        </div>

        <div class="row g-4">
            <?php foreach($productos as $p): ?>
                <div class="col-6 col-md-4 col-lg-3 reveal">
                    <div class="card bg-transparent border-secondary rounded-0 h-100 merch-card position-relative">

                        <?php if($p['estado']): ?>
                            <span class="badge-merch"><?php echo $p['estado']; ?></span>
                        <?php endif; ?>

                        <div class="merch-img-container overflow-hidden">
                            <img src="assets/media/img/merch/<?php echo $p['imagen_url']; ?>"
                                 class="card-img-top rounded-0 <?php echo ($p['stock'] <= 0) ? 'grayscale opacity-50' : ''; ?>"
                                 alt="<?php echo $p['nombre']; ?>">
                        </div>

                        <div class="card-body px-0 pt-3">
                            <h6 class="fw-bold text-white mb-1 uppercase"><?php echo $p['nombre']; ?></h6>
                            <p class="text-accent fw-bold mb-2"><?php echo number_format($p['precio'], 2); ?>€</p>

                            <?php if($p['stock'] > 0): ?>
                                <a href="<?php echo $p['link_compra']; ?>" target="_blank" class="btn btn-outline-white btn-sm rounded-0 w-100">
                                    COMPRAR
                                </a>
                            <?php else: ?>
                                <button class="btn btn-dark btn-sm rounded-0 w-100 disabled text-uppercase">
                                    Agotado
                                </button>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>