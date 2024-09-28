<?php
include('../app/config.php');
include('../layout/sesion.php');
include('../layout/parte1.php');
include('traer_producto.php');
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-12">
          <h1 class="m-0">Listado de productos</h1>
        </div>
      </div>
    </div>
  </div>

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      Listado de productos
      <div class="row">
        <div class="col-md-8">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Productos Registrados</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>id</th>
                    <th>descripcion</th>
                    <th>precio</th>
                    <th>imagen</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  // Verifica que $datos_productos esté definido y sea un array
                  if (is_array($datos_productos)) {
                    foreach ($datos_productos as $producto) {
                  ?>
                      <tr>
                        <td><?php echo $producto['id_producto']; ?></td>
                        <td><?php echo $producto['descripcion']; ?></td>
                        <td><?php echo $producto['precio']; ?></td>
                        <td>
                            <img src="<?php echo $producto['imagen']; ?>" alt="producto" width="100"></td>
                      </tr>
                  <?php 
                    } 
                  } else {
                    echo "<tr><td colspan='4'>No hay productos disponibles.</td></tr>";
                  }
                  ?>
                </tbody>
                <tfoot>
                  <tr>
                    <th>id</th>
                    <th>descripcion</th>
                    <th>precio</th>
                    <th>imagen</th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<?php include('../layout/parte2.php'); ?>
<script>
  $(function() {
    $("#example1").DataTable({
      "responsive": true,
      "lengthChange": false,
      "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
