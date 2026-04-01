<?php
require_once 'includes/db.php';
$pageTitle = "Discografía";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

// Consulta optimizada por orden
$query = $pdo->query("SELECT * FROM discografia ORDER BY orden ASC");
$discos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <main class="container py-5" id="main-wrapper">
        <div class="row mb-5 align-items-end reveal">
            <div class="col-md-6">
                <h2 class="display-4 fw-bold mb-0">DISCOGRAFÍA</h2>
            </div>
            <div class="col-md-6 mt-4 mt-md-0">
                <div class="d-flex gap-2">
                    <input type="text" id="discoSearch" class="form-control bg-transparent text-white border-secondary rounded-0" placeholder="Buscar canción o disco...">
                    <select id="filterType" class="form-select bg-transparent text-white border-secondary rounded-0 w-50">
                        <option value="all" class="bg-black">TODOS</option>
                        <option value="LP" class="bg-black">ÁLBUMES</option>
                        <option value="EP" class="bg-black">EPs</option>
                        <option value="Single" class="bg-black">SENCILLOS</option>
                        <option value="Colab" class="bg-black">COLABORACIONES</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row g-4" id="discoContainer">
            <?php foreach($discos as $d): ?>
                <div class="col-md-4 disco-item reveal" data-type="<?php echo $d['tipo']; ?>">
                    <div class="card bg-transparent border-secondary rounded-0 h-100 album-card">
                        <div class="position-relative overflow-hidden">
                            <img src="assets/media/img/<?php echo $d['portada_url']; ?>" class="card-img-top rounded-0 grayscale" alt="<?php echo $d['titulo']; ?>">

                            <div class="btn-play-overlay">
                                <button class="btn btn-neon open-player"
                                        data-id="<?php echo $d['id']; ?>"
                                        data-title="<?php echo $d['titulo']; ?>"
                                        data-audio="assets/media/audio/<?php echo $d['archivo_audio']; ?>">
                                    ESCUCHAR AQUÍ
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <span class="text-accent small fw-bold">// <?php echo $d['tipo']; ?></span>
                            <h5 class="card-title fw-bold mt-1 text-white"><?php echo $d['titulo']; ?></h5>
                            <p class="small text-secondary"><?php echo $d['anio']; ?> • <?php echo $d['num_canciones']; ?> temas</p>
                            <a href="<?php echo $d['spotify_link']; ?>" target="_blank" class="btn btn-sm btn-link text-white p-0 text-decoration-none">Ver en Spotify ↗</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>

    <div class="modal fade" id="playerModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content bg-black border-neon rounded-0">
                <div class="modal-body p-5 text-center">
                    <h4 id="modalSongTitle" class="text-accent fw-bold mb-4"></h4>
                    <div class="audio-visualizer mb-4">
                        <div class="bar"></div>
                        <div class="bar"></div>
                        <div class="bar"></div>
                        <div class="bar"></div>
                        <div class="bar"></div>
                    </div>
                    <audio id="mainAudio" controls class="w-100 custom-audio">
                        <source src="" type="audio/mpeg">
                    </audio>
                    <div class="mt-4">
                        <button type="button" class="btn btn-sm btn-outline-secondary rounded-0" data-bs-dismiss="modal">CERRAR</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php include 'includes/templates/footer.php'; ?>