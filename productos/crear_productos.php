<?php 
include('../app/config.php');

$descripcion = $_POST['descripcion'];
$precio = $_POST['precio'];
$imagen = $_POST['imagen'];
 try {
$sentencia = $pdo->prepare("INSERT INTO t_productos (descripcion, precio, imagen)
VALUES (:descripcion, :precio, :imagen)");

$sentencia->bindParam(':descripcion', $descripcion);
$sentencia->bindParam(':precio', $precio);
$sentencia->bindParam(':imagen', $imagen);

$sentencia->execute();
// Redirigir al usuario al listado de productos después de la inserción
header('Location: ' . $URL . '/productos/index.php');
}catch (PDOException $e) { 
    // Detener el script si hay un error en la consulta
    echo "Error al guardar el producto: " . $e->getMessage();
}