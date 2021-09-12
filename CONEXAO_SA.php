<?php

try {
    $con = new PDO("mysql:host=localhost;SA04_CODIGO","root","");   
} catch (PDOException $e) {
    echo "Erro no banco: " . $e->getMessage();
}

?>