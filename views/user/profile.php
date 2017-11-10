<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Profile
		<small>Home</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo BASE; ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li>Perfil</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

      <div class="row ">
        <div class="col-md-12">
          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <div class="row">
                <div class="col-md-3">
                  <img class="profile-user-img img-responsive img-circle" src="<?php echo BASE; ?>/assets/dist/img/<?php echo $user['user_profilepic']; ?>" alt="User profile picture">
                  <h3 class="profile-username text-center"><?php echo $user['user_name']; ?></h3>
                  <p class="text-muted text-center"><?php echo $user['user_ocup']; ?></p>

                  <!-- <ul class="list-group list-group-unbordered">
                    <li class="list-group-item">
                      <b>Atend. Pendentes</b> <a class="pull-right">20</a>
                    </li>
                    <li class="list-group-item">
                      <b>Atend. Finalizados</b> <a class="pull-right">36</a>
                    </li>
                  </ul> -->
                </div>
                <div class="col-md-3">
                  <strong><i class="fa fa-address-card margin-r-5"></i> Contato</strong>

                  <p class="text-muted"><strong>Email:</strong>  <?php echo $user['user_email']; ?></p>
                  <p class="text-muted"><strong>Telefone:</strong>  <?php echo $user['user_phone']; ?></p>
                  <p class="text-muted"><strong>Cargo:</strong>  <?php echo $user['user_ocup']; ?></p>
                  <p class="text-muted"><strong>Gestor:</strong>  Fulano de Tal</p>

                  <hr>
                  <strong><i class="fa fa-map-marker margin-r-5"></i> Filial</strong>

                  <p class="text-muted"><strong>São José dos Pinhais</strong></p>
                  <p class="text-muted"><strong>Endereço:</strong> Alameda Bom Pastor</p>
                  <p class="text-muted"><strong>Telefone:</strong>  <?php echo $user['user_phone']; ?></p>
                  <hr>
                </div>
              </div>
							<div class="box-footer">
                <!-- <button type="submit" class="btn btn-default">Cancel</button> -->
                <button type="submit" class="btn btn-info pull-right">Editar</button>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->


        </div>
        <!-- /.col -->

        <!-- Continue aqui -->

      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
