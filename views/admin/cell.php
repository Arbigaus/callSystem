<?php
// foreach ($cell as $user) {
//   echo $user['user_cell']."<br>";
// }
 ?>
 <section class="content-header">
 	<h1>
 		Administração
 		<small>Celulares</small>
 	</h1>
 	<ol class="breadcrumb">
 		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
 		<li class="active">Administração</li>
 		<li class="active">Celulares</li>
 	</ol>
 </section>
 <section class="content">
   <div class="row">
     <div class="col-xs-12">
       <div class="box">
         <div class="box-header">
           <h3 class="box-title">Lista de Celulares</h3>
         </div>
         <div class="box-body">
         <table id="cell_list" class="table table-bordered table-hover datatable">
           <thead>
           <tr>
             <th>Nome</th>
             <th>Número</th>
           </tr>
           </thead>
           <tbody>
          <?php foreach ($cell as $data):?>
           <tr>
             <td><?php echo $data['user_name']; ?></td>
             <td><?php echo $data['user_cell']; ?></td>
           </tr>
         <?php endforeach; ?>
         </tbody>
         </table>
         </div>
       </div>
       </div>
     </div>
 </section>
 <!-- /.content -->
