<?php

include("conexion.php");
$con=conectar();

$EmpleadoID=$_GET['id'];

$sql="DELETE FROM empleado  WHERE EmpleadoID='$EmpleadoID'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: index.php");
    }
?>
