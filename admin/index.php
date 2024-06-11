<?php 

session_start();
if (!isset($_SESSION['user_id'])) {
    $msg = "Je moet eerst inloggen!";
    header("Location: ../login.php?msg=$msg");
    exit;
}
require_once '../backend/config.php'; 

?>
<!doctype html>
<html lang="nl">

<head>
    <title>TOETS <?php echo ucfirst($app_name); ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<?php echo $base_url; ?>/css/normalize.css">
    <link rel="stylesheet" href="<?php echo $base_url; ?>/css/main.css">
    <link rel="icon" href="<?php echo $base_url; ?>/favicon.ico" type="image/x-icon" />

</head>

<body>

    <?php require_once '../header.php'; ?>
    
    <div class="container">

        <p style="color: darkgrey;"><strong>DIT IS DE CRUD-INDEX, DE PAGINA MET TABEL</strong></p>
        <p><a href="create.php">+ nieuw</a></p>

        <?php
        require_once '../backend/conn.php';
        $query = "SELECT * FROM boeken";
        $statement = $conn->prepare($query);
        $statement->execute();
        $boeken = $statement->fetchAll(PDO::FETCH_ASSOC);
        ?>

        <table>
            <tr>
                <th>Titel</th>
                <th>Beschrijving</th>
                <th>Aanpassen</th>
            </tr>
            <?php foreach($boeken as $boek): ?>
                <tr>
                    <td><?php echo $boek['titel']; ?></td>
                    <td><?php echo $boek['beschrijving']; ?></td>
                    <td><a href="edit.php?id=<?php echo $boek['id']?>">aanpassen</a></td>
                </tr>
            <?php endforeach; ?>
        </table>

    </div>

</body>

</html>
