<?php
require_once 'database/db.php';
$pageTitle = "Merch";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

$query = $pdo->query("SELECT * FROM productos ORDER BY id DESC");
$productos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <div class="site-background"></div>

    <main class="container py-5" id="main-wrapper">
        <div class="row mb-5 reveal">
            <div class="col-12">
                <h2 class="display-4 fw-bold titulo-centrado mb-5">TIENDA</h2>
                <hr>
                <p class="text-accent">// OBJETOS DE CULTO Y ROPA</p>
            </div>
        </div>

        <div class="row g-4">
            <?php foreach($productos as $prod): ?>
                <div class="col-12 col-md-6 col-lg-4 reveal">
                    <div class="card bg-transparent border-secondary rounded-0 h-100 product-card <?php echo ($prod['estado'] === 'agotado') ? 'is-sold-out' : ''; ?>">
                        <div class="p-4 text-center position-relative">
                            <img src="assets/media/img/merch/<?php echo $prod['imagen_url']; ?>"
                                 class="img-fluid mb-3 product-img">
                            <?php if($prod['estado'] === 'agotado'): ?>
                                <div class="sold-out-etiqueta">AGOTADO</div>
                            <?php endif; ?>
                        </div>

                        <div class="card-body border-top border-secondary bg-black-50 d-flex flex-column">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <p class="fw-bold text-white mb-0"><?php echo $prod['nombre']; ?></p>
                            </div>
                            <hr>
                            <span class="text-accent fw-bold"><?php echo $prod['precio']; ?>€</span>

                            <p class="small text-secondary flex-grow-1"><?php echo $prod['descripcion']; ?></p>

                            <?php if($prod['estado'] === 'disponible'): ?>
                                <a href="<?php echo $prod['enlace_compra']; ?>" target="_blank" class="btn btn-neon">
                                    ADQUIRIR <i class="bi bi-cart4 ms-2"></i>
                                </a>
                            <?php else: ?>
                                <p class="btn btn-outline-secondary rounded-0 mt-3">
                                    NO DISPONIBLE <br><br>
                                    <a href="<?php echo $prod['enlace_compra']; ?>" target="_blank" class="text-accent">
                                        VISITAR SONIDO MUCHACHO IGUALMENTE
                                    </a>
                                </p>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>