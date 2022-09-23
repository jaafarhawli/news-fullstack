<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE');
    header('Access-Control-Allow-Headers: Origin, Content-Type, Accept, Authorization, X-Request-With');

    include("connection.php");

    $id = $_GET["id"];

    $query = $mysqli->prepare("SELECT * FROM news WHERE id=?");
    $query->bind_param("i", $id); 
    $query->execute();
    $result = $query->get_result();

    $response = [];

    while($row = $result->fetch_assoc()) {
        $response[] = $row;
    }

    echo json_encode($response);
?>