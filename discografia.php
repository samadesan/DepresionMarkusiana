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
        <div class="row mb-5 align-items-end reveal">
            <div class="col-md-4">
                <h2 class="display-4 fw-bold mb-0">DISCOGRAFÍA</h2>
            </div>
            <div class="col-md-8 mt-4 mt-md-0">
                <div class="d-flex gap-2 flex-wrap flex-md-nowrap">
                    <input type="text" id="discoSearch" class="form-control bg-transparent text-white border-secondary rounded-0" placeholder="Buscar...">

                    <select id="filterType" class="form-select bg-transparent text-white border-secondary rounded-0">
                        <option value="all" class="bg-black">TODOS LOS TIPOS</option>
                        <option value="LP" class="bg-black">ÁLBUMES</option>
                        <option value="EP" class="bg-black">EPs</option>
                        <option value="Single" class="bg-black">SENCILLOS</option>
                        <option value="Colab" class="bg-black">COLABORACIONES</option>
                    </select>

                    <select id="filterYear" class="form-select bg-transparent text-white border-secondary rounded-0">
                        <option value="all" class="bg-black">TODOS LOS AÑOS</option>
                        <?php for($i=2020; $i<=2026; $i++) echo "<option value='$i' class='bg-black'>$i</option>"; ?>
                    </select>
                </div>
            </div>
        </div>

        <div class="row g-3" id="discoContainer">
            <?php foreach($discos as $d): ?>
                <div class="col-md-4 disco-item reveal"
                     data-type="<?php echo $d['tipo']; ?>"
                     data-year="<?php echo $d['anio']; ?>"
                     id="disco-<?php echo $d['id']; ?>">
                    <div class="card bg-transparent border-secondary rounded-0 h-100 album-card">
                        <div class="position-relative overflow-hidden">
                            <img src="assets/media/img/<?php echo $d['portada_url']; ?>" class="card-img-top rounded-0 grayscale" alt="...">
                            <div class="btn-play-overlay">
                                <button class="btn btn-neon open-player"
                                        data-id="<?php echo $d['id']; ?>"
                                        data-title="<?php echo $d['titulo']; ?>">
                                    ESCUCHAR AQUÍ
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <span class="text-accent small fw-bold">// <?php echo $d['tipo']; ?></span>
                            <h5 class="card-title fw-bold mt-1 text-white"><?php echo $d['titulo']; ?></h5>
                            <p class="small text-secondary"><?php echo $d['anio']; ?> • <?php echo $d['num_canciones']; ?> temas</p>
                            <a href="<?php echo $d['spotify_link']; ?>" target="_blank" class="btn btn-sm btn-link text-white p-0 text-decoration-none small sp-border-bottom-animation">Escuchar en Spotify ↗</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

    <div class="modal fade" id="playerModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content bg-black border-neon rounded-0">
                <div class="modal-body p-4 text-center">
                    <h4 id="modalSongTitle" class="text-accent fw-bold mb-4"></h4>
                    <div id="playlistContainer" class="text-start mb-4 custom-scrollbar" style="max-height: 250px; overflow-y: auto;">
                    </div>
                    <audio id="mainAudio" controls class="w-100 custom-audio mb-3">
                        <source src="" type="audio/mpeg">
                    </audio>
                    <button type="button" class="btn btn-sm btn-outline-secondary rounded-0 w-100" data-bs-dismiss="modal">CERRAR</button>
                </div>
            </div>
        </div>
    </div>

<?php include 'includes/templates/footer.php'; ?>