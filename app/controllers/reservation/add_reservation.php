<?php
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');

include_once '../../config/Database.php';
include_once '../../models/reservation.php';

// Instantiate DB & connect
$database = new Database();
$db = $database->connect();

// Instantiate blog reservation object
$reservation = new reservation($db);

  // Get raw posted data
  $data = json_decode(file_get_contents("php://input"));

  $reservation->id_user = $data->id_user;
  $reservation->salle_name = $data->salle_name;
  $reservation->place_numero = $data->place_numero;
  $reservation->reservation_date = $data->reservation_date;
  $reservation->price = $data->price;
    // Create post
    if($reservation->add_reservation()) {
        echo json_encode(
          array('message' => 'Reservation Created')
        );
      } else {
        echo json_encode(
          array('message' => 'Reservation Not Created')
        );
      }
?>