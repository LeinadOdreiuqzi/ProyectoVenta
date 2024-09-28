<?php 
include('../../config.php');

$nombres = $_POST['nombres'];
$email = $_POST['email'];
$clave_usuario = $_POST['clave_usuario'];
$clave_validar = $_POST['clave_validar'];

$sentencia = $pdo->prepare("INSERT INTO t_usuarios (nombres, email, clave_usuario, fecha_hora_creacion) 
VALUES (:nombres, :email, :clave_usuario, :fecha_hora_creacion)");

$sentencia->bindParam(':nombres', $nombres);
$sentencia->bindParam(':email', $email);
$sentencia->bindParam(':clave_usuario', $clave_usuario);
$sentencia->bindParam(':fecha_hora_creacion', $fecha_hora);

$sentencia->execute();
