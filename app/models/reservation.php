<?php

class reservation
{

    public $id;
    public $id_user;
    public $salle_name;
    public $place_numero;
    public $reservation_date;
    public $price;

    public $conn;


    public function __construct($database)
    {
        $this->conn = $database;
    }

    public function add_reservation()
    {
        $query = 'INSERT INTO reservation (id, id_user, salle_name,place_numero,reservation_date,price)VALUES (:id, :id_user, :salle_name,:place_numero,:reservation_date,:price)';
        // Prepare statement
        $stmt = $this->conn->prepare($query);
        // Bind values
        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':id_user', $this->id_user);
        $stmt->bindParam(':salle_name', $this->salle_name);
        $stmt->bindParam(':place_numero', $this->place_numero);
        $stmt->bindParam(':reservation_date', $this->reservation_date);
        $stmt->bindParam(':price', $this->price);

        $this->reserveed();
        // Execute query
        if ($stmt->execute()) {
            return true;
        }

        // Print error if something goes wrong
        echo 'can\'t add reservation!';

        return false;
    }





    public function reserveed()
    {
        $query = 'SELECT * FROM ' . $this->salle_name . ' WHERE place_numero = :place_numero ';
        // Prepare statement
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':place_numero', $this->place_numero);
        $stmt->execute();
        $place_info = $stmt->fetch();
        $place_id = $place_info['id_place'];
        $reserve = 1;

        $query2 = 'UPDATE ' .  $this->salle_name . ' SET reserve = :reserve WHERE id_place = :id_place';

        $stmt2 = $this->conn->prepare($query2);
        $stmt2->bindParam(':reserve', $reserve);
        $stmt2->bindParam(':id_place', $place_id);
        if ($stmt2->execute()) {
            return true;
        }

        // Print error if something goes wrong
        echo 'reservation not found';

        return false;
    }


    public function delete_reservation()
    {
        // select reservation by id
        $query = 'SELECT * FROM reservation WHERE id = ' . $this->id;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        // fetch info for reservation
        $reservation_info = $stmt->fetch();
        // put info name hall and number place in varibales
        $this->salle_name = $reservation_info['salle_name'];
        $this->place_numero = $reservation_info['place_numero'];
        
        // delete reservation by id
        $query2 = 'DELETE  FROM reservation WHERE id = ' . $this->id;
        $stmt2 = $this->conn->prepare($query2);
        $stmt2->execute();
        
        // select row from $salle_name where place number = $place_numero
        $query3 = 'SELECT * FROM ' . $this->salle_name . ' WHERE place_numero = :place_numero ';
        $stmt3 = $this->conn->prepare($query3);
        $stmt3->bindParam(':place_numero', $this->place_numero);
        $stmt3->execute();
        // fetch info place
        $place_info = $stmt3->fetch();
        // put info id_place in varibale
        $place_id = $place_info['id_place'];
        
        $query4 = 'UPDATE ' .  $this->salle_name . ' SET reserve = 0 WHERE id_place = :id_place';
        
        $stmt4 = $this->conn->prepare($query4);
        $stmt4->bindParam(':id_place', $place_id);
        if ($stmt4->execute()) {
            return true;
        }

        // Print error if something goes wrong
        echo 'reservation not found';

        return false;
    }
}
