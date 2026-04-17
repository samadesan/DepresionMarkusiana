<?php
require_once 'database/db.php';
$pageTitle = "Inicio";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

// Forzamos que la variable de conexión sea accesible
global $pdo;

try {
    $ultimoAlbum = $pdo->query("SELECT * FROM discografia ORDER BY id DESC LIMIT 1")->fetch();
    $instrumentoTop = $pdo->query("SELECT * FROM instrumentos ORDER BY id ASC LIMIT 1")->fetch();
    $merchTop = $pdo->query("SELECT * FROM productos WHERE estado = 'disponible' ORDER BY id DESC LIMIT 1")->fetch();

} catch (PDOException $e) {
    $ultimoAlbum = $instrumentoTop = $merchTop = false;
}
?>
    <div class="site-background"></div>
    <div class="bg-noise"></div>

    <main id="main-wrapper">
        <header class="hero-full">
            <div class="hero-content reveal">
                <img src="assets/media/img/DEPRESION-SONORA-slogan-1.png" alt="Slogan-DS" class="img-fluid slogan-1">
                <div class="my-4"></div> <img src="assets/media/img/DEPRESION-SONORA-slogan-2.png" alt="Slogan-DS" class="img-fluid slogan-2">
                <br>
                <p class="hero-subtitle badge bg-white text-black rounded-0 mt-3">
                    Bailes tristes para Markusianos
                </p>
            </div>

            <div class="scroll-indicator">
                <div class="mouse"></div>
            </div>
        </header>
        <div class="container py-5">
            <section class="container py-5" id="bio">
                <div class="row align-items-center reveal">
                    <div class="col-lg-7">
                        <div class="manifesto-text">
                            <p>No es música para bailar, es música para sobrevivir al domingo por la tarde.</p>
                            <p>Marcos Crespo inició este proyecto en su habitación, y hoy es el eco de una generación que prefiere la oscuridad de un club a la luz del sol.</p>
                        </div>
                    </div>
                    <div class="col-lg-5 text-center mt-5 mt-lg-0">
                        <img src="assets/media/img/marcos_crespo.jpg" class="img-fluid brutalist-frame" alt="Marcos Crespo">
                    </div>
                </div>
            </section>

            <div class="row g-4 mt-5">
                <div class="col-md-4 reveal">
                    <a href="discografia.php" class="text-decoration-none">
                        <div class="index-card border border-secondary p-4 h-100">
                            <span class="text-accent monospace small">01. SONIDO</span>
                            <h3 class="text-white fw-bold my-3">DISCOGRAFÍA</h3>
                            <div class="preview-box mb-3">
                                <img src="assets/media/img/discografia/<?php echo $ultimoAlbum['portada_url']; ?>" class="img-fluid grayscale-hover">
                            </div>
                            <p class="text-secondary small">Explorar lanzamientos oficiales</p>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 reveal">
                    <a href="instrumentos.php" class="text-decoration-none">
                        <div class="index-card border border-secondary p-4 h-100">
                            <span class="text-accent monospace small">02. EQUIPO</span>
                            <h3 class="text-white fw-bold my-3">INSTRUMENTOS</h3>
                            <div class="preview-box mb-3 text-center bg-black-50 py-3">
                                <img src="assets/media/img/instrumentos/<?php echo $instrumentoTop['imagen_url']; ?>" class="img-fluid" style="height: 120px; object-fit: contain;">
                            </div>
                            <p class="text-secondary small">Análisis de hardware y sonido</p>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 reveal">
                    <a href="merch.php" class="text-decoration-none">
                        <div class="index-card border border-secondary p-4 h-100">
                            <span class="text-accent monospace small">03. CULTO</span>
                            <h3 class="text-white fw-bold my-3">TIENDA</h3>
                            <div class="preview-box mb-3">
                                <img src="assets/media/img/merch/<?php echo $merchTop['imagen_url']; ?>" class="img-fluid grayscale-hover">
                            </div>
                            <p class="text-secondary small">Estado: <span class="text-accent">STOCK ACTIVO</span></p>
                        </div>
                    </a>
                </div>

            </div>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>
<?php include 'includes/templates/modals/_aviso-index.php' ?>
<script src="api/bootstrap-5.3.8/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function () {
        const avisoAceptado = localStorage.getItem('avisoLegalAceptado');

        if (!avisoAceptado) {
            const modalElement = document.getElementById('modalAvisoLegal');
            const myModal = new bootstrap.Modal(modalElement);
            myModal.show();

            const btnAceptar = modalElement.querySelector('.btn-outline-accent');
            btnAceptar.addEventListener('click', function() {
                localStorage.setItem('avisoLegalAceptado', 'true');
            });
        }
    });
</script>