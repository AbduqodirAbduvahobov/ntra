<?php

namespace App;

use PDO;
class Branch
{
    private PDO $pdo;

    public function __construct()
    {
        $this->pdo = DB::connect();
    }

    public function create(string $name, string $address)
    {
        $query = "INSERT INTO branch(name, address, created_at) VALUES(:name, :address, NOW())";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':name', $name);
        $stmt->bindValue(':address', $address);
        $stmt->execute();

        return (int) $this->pdo->lastInsertId();
    }



    public function get(int $id)
    {
        $query = "SELECT * FROM branch WHERE id = :id";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':id', $id);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function update(int $id, string $name, string $address)
    {
        $query = "UPDATE branch SET name = :name, address = :address WHERE id = :id";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':name', $name);
        $stmt->bindValue(':address', $address);
        $stmt->bindValue(':id', $id);
        $stmt->execute();

    }

    public function delete(int $id)
    {
        $query = "DELETE FROM branch WHERE id = :id";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindValue(':id', $id);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}