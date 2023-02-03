<?php


class halls{

    public $id_place;
    public $place_numero;
    public $reserve;

    public $conn;

    public function __construct($database)
    {
        $this->conn = $database;
    }

    public function get_places($table)
    {
        $query = 'SELECT * FROM ' . $table;
        
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }
    public function get_full_places($table)
    {
        $query = 'SELECT * FROM ' . $table.' WHERE reserve = 1';
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }
    public function get_empty_places($table)
    {
        $query = 'SELECT * FROM ' . $table.' WHERE reserve = 0';
        
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }




}









?>