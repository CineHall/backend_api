<?php
// require_once '../libraries/DB.php';

class user
{

    public $conn;

    public $id;
    public $name;
    public $email;
    public $password;
    public $hashPass;
    public $token;

    public function __construct($db)
    {
        $this->conn = $db;
    }


    //find user by email
    public function getUserByToken()
    {
        $query = "SELECT * FROM user WHERE token=:token";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':token', $this->token);
        $stmt->execute();
        return $stmt;
    }


    public function register()
    {
        $query = 'INSERT INTO user (name, email, password,token)VALUES (:name, :email, :password,:token)';
        // Prepare statement
        $stmt = $this->conn->prepare($query);
        // Clean data
        $this->name = htmlspecialchars(strip_tags($this->name));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->hashPass = password_hash($this->password, PASSWORD_BCRYPT);
        $this->hashPass = htmlspecialchars(strip_tags($this->hashPass));
        $this->token= md5($this->name . $this->password);
        $this->token = htmlspecialchars(strip_tags($this->token));
        // Bind values
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':email', $this->email);
        $stmt->bindParam(':password', $this->hashPass);
        $stmt->bindParam(':token', $this->token);

        // Execute query
        if ($stmt->execute()) {
            return $this->token;
        }

        // Print error if something goes wrong
        printf("Error: %s.\n", $stmt->error);

        return false;
    }
}
