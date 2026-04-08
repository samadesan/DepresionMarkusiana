<?php
// Eliminamos errores visuales que rompan el JSON pero los registramos
error_reporting(E_ALL);
ini_set('display_errors', 0);

try {
    require_once 'db.php';

    header('Content-Type: application/json');

    if(isset($_GET['disco_id'])) {
        $id = (int)$_GET['disco_id'];

        // Usamos la variable $pdo que viene de db.php
        $stmt = $pdo->prepare("SELECT * FROM canciones WHERE disco_id = ? ORDER BY id ASC");
        $stmt->execute([$id]);
        $resultados = $stmt->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode($resultados);
    } else {
        echo json_encode(["error" => "No disco_id provided"]);
    }

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(["error" => $e->getMessage()]);
}
exit;