<?php
require_once 'includes/db.php';
$pageTitle = "Discografía";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

// Consulta para mostrar los discos inicialmente
$query = $pdo->query("SELECT * FROM discografia ORDER BY orden ASC");
$discos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <main class="container py-5" id="main-wrapper">
        <div class="row mb-4 align-items-center">
            <div class="col-md-6">
                <h2 class="display-4 fw-bold mb-0">DISCOGRAFÍA</h2>
            </div>
            <div class="col-md-6 mt-3 mt-md-0">
                <input type="text" id="discoSearch" class="form-control bg-transparent text-white border-secondary rounded-0" placeholder="Buscar por título...">
            </div>
        </div>

        <div class="row g-2 mb-5">
            <div class="col-6 col-md-3">
                <select id="filterType" class="form-select bg-transparent text-white border-secondary rounded-0">
                    <option value="all" class="bg-black">TODOS LOS TIPOS</option>
                    <option value="LP" class="bg-black">ÁLBUMES</option>
                    <option value="EP" class="bg-black">EPs</option>
                    <option value="Single" class="bg-black">SENCILLOS</option>
                    <option value="Colab" class="bg-black">COLABORACIONES</option>
                </select>
            </div>
            <div class="col-6 col-md-3">
                <select id="filterYear" class="form-select bg-transparent text-white border-secondary rounded-0">
                    <option value="all" class="bg-black">TODOS LOS AÑOS</option>
                    <?php for($i=2020; $i<=2026; $i++) echo "<option value='$i' class='bg-black'>$i</option>"; ?>
                </select>
            </div>
            <div class="col-12 col-md-6">
                <select id="orderUpDown" class="form-select bg-transparent text-white border-secondary rounded-0">
                    <option value="desc">MÁS RECIENTE A MÁS ANTIGUO</option>
                    <option value="asc">MÁS ANTIGUO A MÁS RECIENTE</option>
                </select>
            </div>
        </div>

        <div class="row g-3" id="discoContainer">
            <?php foreach($discos as $d): ?>
                <div class="col-6 col-md-4 col-lg-3 disco-item reveal"
                     data-type="<?php echo $d['tipo']; ?>"
                     data-year="<?php echo $d['anio']; ?>"
                     data-order="<?php echo $d['orden']; ?>">

                    <div class="card bg-transparent border-secondary rounded-0 h-100 album-card">
                        <div class="position-relative overflow-hidden">
                            <img src="assets/media/img/<?php echo $d['portada_url']; ?>" class="card-img-top rounded-0 grayscale" alt="...">
                            <div class="btn-play-overlay">
                                <a href="<?php echo $d['spotify_link']; ?>" target="_blank" class="btn btn-neon">
                                    ESCUCHAR EN SPOTIFY
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <span class="text-accent small fw-bold">// <?php echo $d['tipo']; ?></span>
                            <h5 class="card-title fw-bold mt-1 text-white"><?php echo $d['titulo']; ?></h5>
                            <p class="small text-secondary mb-0"><?php echo $d['anio']; ?> •
                                <?php echo $d['cantidad_canciones']; ?>
                                <?php echo ($d['cantidad_canciones'] == 1) ? 'canción' : 'canciones'; ?>
                            </p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>