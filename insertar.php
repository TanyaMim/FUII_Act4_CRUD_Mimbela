<?php
include("conexion.php");
$con=conectar();

$nombres=$_POST['nombres'];
$apellidos=$_POST['apellidos'];
$telefono=$_POST['numTelefono'];
$direccion=$_POST['direccion'];


$sql="INSERT INTO empleado(`Nombres`, `Apellidos`, `NumTelefono`, `Direccion`) VALUES('$nombres','$apellidos','$telefono','$direccion')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: index.php");
}else {
    echo "Hay un problema";
}
?>