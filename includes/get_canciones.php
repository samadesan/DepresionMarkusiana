<?php
global $pdo;
require_once 'includes/db.php';
header('Content-Type: application/json');

if(isset($_GET['disco_id'])) {
    $id = (int)$_GET['disco_id'];
    $stmt = $pdo->prepare("SELECT * FROM canciones WHERE disco_id = ? ORDER BY orden ASC");
    $stmt->execute([$id]);
    echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
}
exit;