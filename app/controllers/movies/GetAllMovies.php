<?php
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json');
header('Access-Control-Allow-Method: GET');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorisation');

include_once '../../config/Database.php';
include_once '../../models/movie.php';

// Instantiate DB & connect
$database = new Database();
$db = $database->connect();

// Instantiate blog movie object
$movie = new movie($db);

// Blog movie query
$result = $movie->getmovies();
// Get row count
$num = $result->rowCount();

// Check if any movies
if ($num > 0) {
    // movie array
    $movies_arr = array();
    // $movies_arr['data'] = array();

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        $movie_item = array(
            'id' => $id,
            'name' => $name,
            'time' => $time,
            'place_price' => $place_price,
            'hall_number' => $hall_number
        );

        // Push to "data"
        array_push($movies_arr, $movie_item);
    }

    // Turn to JSON & output
    echo json_encode($movies_arr);
} else {
    // No movies
    echo json_encode(
        array('message' => 'No Movies Found')
    );
}
