<?php 

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
        <h3>Aanpassen</h3>

        <?php
        //Haal id uit de URL
        $id = $_GET['id'];

        //Voer query uit
        require_once '../backend/conn.php';
        $query = "SELECT * FROM boeken WHERE id = :id";
        $statement = $conn->prepare($query);
        $statement->execute([":id" => $id]);
        $boek = $statement->fetch(PDO::FETCH_ASSOC);
        ?>

        <!-- Formulier voor edit: -->
        <form action="../backend/adminController.php" method="POST">
            <input type="hidden" name="action" value="edit">
            <input type="hidden" name="id" value="<?php echo $id; ?>">

        <!-- Aan te passen data -->
            <div class="form-group">
                <label for="titel">Titel:</label>
                <input type="text" name="titel" id="titel" value="<?php echo $boek['titel']; ?>">
            </div>

            <div class="form-group">
                <label for="beschrijving">Beschrijving:</label>
                <textarea name="beschrijving" id="beschrijving" cols="30" rows="10"><?php echo $boek['beschrijving']; ?></textarea>
            </div>

            <div class="form-group">
                <label for="taal">Taal</label>
                <select name="taal" id="taal">
                    <option value="engels" <?php if ($boek['taal'] == 'engels') echo 'selected'; ?>>Engels</option>
                    <option value="nederlands" <?php if ($boek['taal'] == 'nederlands') echo 'selected'; ?>>Nederlands</option>
                    <option value="duits" <?php if ($boek['taal'] == 'duits') echo 'selected'; ?>>Duits</option>
                </select>
            </div>

            <div class="form-group">
                <label for="schrijver">Schrijver:</label>
                <input type="text" name="schrijver" id="schrijver" value="<?php echo $boek['schrijver']; ?>">
            </div>

            <div class="form-group">
                <label for="nieuw">Nieuw: </label>
                <input type="checkbox" name="nieuw" id="nieuw"
                <?php if($boek['nieuw']) echo 'checked'; ?>>
                <label for="nieuw">Nieuw</label>
            </div>

            <input type="submit" value="Opslaan">
        </form>

        <!-- Formulier voor delete: -->
        <form action="../backend/adminController.php" method="POST">
            <input type="hidden" name="action" value="delete">
            <input type="hidden" name="id" value="<?php echo $id; ?>">
            <input type="submit" value="Verwijderen">
        </form>
    </div>  

</body>

</html>
