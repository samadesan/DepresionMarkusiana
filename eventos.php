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
        </div>
        <hr><br>

        <div class="elementor-widget-container">
            <h2 class="titulo-centrado"><span class="elementos-resaltados">TOUR 2026&nbsp;-&nbsp;</span> VACACIONES PARA SIEMPRE</h2>
            <div class="text-end small d-none d-md-block text-secondary">
                [ ESTADO DE LA GIRA: <span class="elementos-resaltados">ACTIVA</span> ]
            </div>
            <hr>

            <p class="contenido-parrafos">
                <a href="https://sonidomuchacho.com/artistas/depresion-sonora/" class="ds-links"><strong>Depresión Sonora</strong></a>
                presenta su<strong>“<a href="https://depresionsonora.com/tour/" class="ds-links">Vacaciones Para Siempre Tour</a>”</strong>,
                donde llevará por primera vez a escala global las canciones de su más reciente disco:
                <strong>“<a href="merch.php#" class="ds-links">Los Perros No Entienden Internet (…Y Yo no Entiendo de Sentimientos)</a>” </strong>
                (Sonido Muchacho, 2025), publicado el pasado octubre y recibido con entusiasmo por crítica y público.
                Este nuevo trabajo, supone <strong>un paso adelante</strong> en la evolución del proyecto de
                <strong>Marcos Crespo</strong>: Un disco que explora los vínculos, la confusión emocional y el desajuste
                con el mundo digital, <strong>una narrativa que se ha convertido en referente</strong> de la
                música alternativa en español.
            </p>

            <p class="contenido-parrafos">
                La<strong> gira </strong>recorrerá más de treinta ciudades entre <strong>Europa, Latinoamérica y Estados Unidos</strong>.
                Comenzará en enero en <strong>España</strong>, con fechas en
                <strong>Bilbao, Granada, Sevilla, Santiago, Gijón, Murcia, Barcelona, Valencia</strong> —ya con entradas
                agotadas—, <strong>Zaragoza y Madrid</strong>. En abril continuará por <strong>Latinoamérica</strong>
                con paradas en ciudades como <strong>Buenos Aires, Santiago de Chile o Ciudad de México</strong>. A
                finales de abril y principios de mayo, el tour llegará a<strong>Estados Unidos</strong>, donde pasará
                por <strong>Dallas, San Francisco, Los Ángeles, Chicago y Nueva York</strong>.
            </p>

            <p class="contenido-parrafos">
                <em><strong>“Vacaciones Para Siempre”</strong></em> marca un nuevo capítulo en la historia de
                <strong>Depresión Sonora</strong>, llevando su proyecto por el mundo para que nadie se quede sin cantar,
                bailar, llorar y saltar. Todos merecemos vacaciones para siempre, y Marcos Crespo lo sabe.
            </p>

            <p class="contenido-parrafos"><i>
                <strong>
                    Las entradas estarán disponibles a partir del 27 de noviembre en
                    <a href="https://depresionsonora.com/" class="ds-links">depresionsonora.com</a>
                </strong>
            </i></p>

            <p class="contenido-parrafos"><i>
                    Las entradas de algunos conciertos estarán disponible en los próximos días. Más información en la web de
                    <strong>Depresión Sonora</strong>.
            </i></p><br>
            <hr>
            <br>
            <div class="list-group list-group-flush reveal">
                <h2>ENTRADAS</h2><br><br>

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
        </div>
    </main>

<?php include 'includes/templates/footer.php'; ?>