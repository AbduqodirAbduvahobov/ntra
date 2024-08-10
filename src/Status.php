<?php

namespace App;

use PDO;

class Status
{
    private PDO $pdo;
    public function __construct(){
        $this->pdo=DB::connect();
    }

    public function create(string $name){
        $query = "INSERT INTO status(name) VALUES(:name)";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':name',$name);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function get(int $id){
        $query = "SELECT * FROM status WHERE id=:id";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':id',$id);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function update(int $id,string $name){
        $query = "UPDATE status SET name=:name WHERE id=:id";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':id',$id);
        $stmt->bindValue(':name',$name);
        $stmt->execute();
    }

    public function delete(int $id){
        $query = "DELETE FROM status WHERE id=:id";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':id',$id);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}