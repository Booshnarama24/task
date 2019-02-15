<?php
class DB {
    function __construct(){
        $username='root';
        $password='';
        $host='localhost';
        $db='task';
        $this->connection = mysqli_connect($host,$username,$password,$db);
        if(mysqli_connect_errno()){
            echo "Failed to connect to MYSQL: " . mysqli_connect_error();
        }
    }

    function store($filename){
        $query = "INSERT INTO images SET filename ='".$filename."'";
        $result=mysqli_query($this->connection, $query);
        return $result;
    }

}