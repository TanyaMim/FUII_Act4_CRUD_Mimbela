<?php

include("conexion.php");
$con=conectar();

$id=$_POST['id'];
$nombres=$_POST['nombres'];
$apellidos=$_POST['apellidos'];
$telefono=$_POST['numTelefono'];
$direccion=$_POST['direccion'];

$sql="UPDATE empleado SET  Nombres='$nombres',Apellidos='$apellidos',NumTelefono='$telefono',Direccion='$direccion' WHERE EmpleadoID='$id'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: index.php");
    }
?>