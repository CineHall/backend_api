<?php

class Movie
{
    
    public $conn;

    public $id;
    public $name;
    public $time;
    public $place_price;

    public function __construct($db) {
        $this->conn = $db;
      }
    public function getmovies(){
        
        $query = 'SELECT * FROM films';
        $stmt = $this->conn->prepare($query);
      
        // Execute query
        $stmt->execute();
  
        return $stmt;
    }
}
?>