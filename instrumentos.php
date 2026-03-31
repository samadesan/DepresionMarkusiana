<?php
global $pdo;
require_once 'includes/db.php';
$pageTitle = "Instrumentos";
include 'includes/templates/head.php';
include 'includes/templates/navbar.php';

$query = $pdo->query("SELECT * FROM instrumentos");
$inst = $query->fetchAll(PDO::FETCH_ASSOC);
?>

    <main class="container py-5" id="main-wrapper">
        <div class="d-flex justify-content-between align-items-end mb-5 reveal">
            <h2 class="display-4 fw-bold m-0">EL EQUIPO</h2>
            <span class="text-secondary small">LOG_HARDWARE_REPORTS // 2026</span>
        </div>

        <div class="table-responsive reveal">
            <table class="table table-dark border-secondary align-middle">
                <thead>
                <tr class="text-uppercase small">
                    <th>Categoría</th>
                    <th>Modelo</th>
                    <th>Estado</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach($inst as $i): ?>
                    <tr class="border-secondary">
                        <td class="py-4"><span class="text-danger">_</span> <?php echo $i['tipo']; ?></td>
                        <td class="fw-bold"><?php echo $i['nombre']; ?> <?php echo $i['modelo']; ?></td>
                        <td><span class="badge rounded-0 border border-success text-success">OPERATIVO</span></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>