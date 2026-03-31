<?php
global $pdo;
require_once 'includes/db.php';
$pageTitle = "Eventos";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

$query = $pdo->query("SELECT * FROM eventos ORDER BY fecha ASC");
$eventos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <main class="container py-5" id="main-wrapper">
        <div class="d-flex justify-content-between align-items-center mb-5 reveal">
            <h2 class="display-4 fw-bold m-0 text-uppercase">Próximos Eventos</h2>
            <div class="text-end small d-none d-md-block text-secondary">
                [ ESTADO DE LA GIRA: ACTIVA ]
            </div>
        </div>

        <div class="list-group list-group-flush reveal">
            <?php if(count($eventos) > 0): ?>
                <?php foreach($eventos as $e):
                    $fechaFormateada = date("d/m/Y", strtotime($e['fecha']));
                    $isAgotado = ($e['estado'] == 'agotado');
                    ?>
                    <div class="list-group-item bg-transparent text-white border-secondary py-4 d-flex flex-column flex-md-row justify-content-between align-items-md-center <?php echo $isAgotado ? 'opacity-50' : ''; ?>">

                        <div class="mb-3 mb-md-0">
                            <h4 class="mb-0 fw-bold text-uppercase">
                                <?php echo $e['ciudad']; ?> — <?php echo $e['recinto']; ?>
                            </h4>
                            <p class="small text-secondary mb-0">
                                <span class="text-danger">//</span> <?php echo $fechaFormateada; ?> @ <?php echo date("H:i", strtotime($e['hora'])); ?>
                                <?php if($e['notas']) echo " — " . $e['notas']; ?>
                            </p>
                        </div>

                        <div>
                            <?php if($e['estado'] == 'disponible'): ?>
                                <a href="<?php echo $e['link_entradas']; ?>" target="_blank" class="btn btn-outline-light rounded-0 px-4">ADQUIRIR ENTRADA</a>
                            <?php elseif($e['estado'] == 'agotado'): ?>
                                <span class="badge border border-danger text-danger p-2 px-3">SOLD OUT</span>
                            <?php else: ?>
                                <span class="badge border border-secondary text-secondary p-2 px-3 text-uppercase"><?php echo $e['estado']; ?></span>
                            <?php endif; ?>
                        </div>

                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <p class="text-center py-5 text-secondary">No hay fechas programadas por el momento. El silencio continúa.</p>
            <?php endif; ?>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>