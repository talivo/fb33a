<?php
session_start();
require_once 'setup.toets.php';
require_once 'backend/config.php';
?>

<!doctype html>
<html lang="nl">

<?php
require_once 'head.php';
?>

<body>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        h2 {
            font-weight: normal;
        }

        .container-index {
            width: 75%;
            max-width: 960px;
            margin: 0 auto;
            margin-top: 50px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            grid-column-gap: 25px;
            grid-row-gap: 25px;
            grid-auto-rows: 200px;
            grid-auto-flow: dense;
        }

        .book-card {
            display: flex;
            flex-direction: column;
            padding: 15px;
            overflow: hidden;
        }

        .new-book {
            background-color: lightpink;
            grid-row: span 2;
        }

        @media (max-width: 600px) {
            .grid-container {
                grid-template-columns: repeat(2, 1fr);
            }

            .new-book {
                grid-column: span 2;
                grid-row: span 1;
            }
        }
    </style>

    <?php require_once 'header.php'; ?>
    
    <div class="container-index">

        <p style="color: darkgrey;"><strong>DIT IS DE PUBLIEKE INDEX, DE 'MOOIE' PAGINA</strong></p>

        <?php
        require_once 'backend/conn.php';
        $query = "SELECT * FROM boeken";
        $statement = $conn->prepare($query);
        $statement->execute();
        $boeken = $statement->fetchAll(PDO::FETCH_ASSOC);
        ?>

        <h1>Dierenwinkel</h1>
        <div class="grid-container">
            <?php foreach ($boeken as $boek): ?>
                <div class="book-card <?php echo $boek['nieuw'] ? 'new-book' : ''; ?>">
                    <h1><?php echo $boek['titel']; ?></h1>
                    <p><strong>Taal: <?php echo $boek['taal']; ?></strong></p>
                    <p><?php echo $boek['beschrijving']; ?></p>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</body>
</html>
