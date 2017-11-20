<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Atendimento
		<small><?php echo $area['area_initials']; ?></small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo BASE; ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active"><a href="<?php echo BASE."/call/index/".$area['id']; ?>"><?php echo $area['area_initials']; ?></a></li>
		<li class="active">Solicitações</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<h4>Atendimentos em Andamento - <b><?php echo $area['area_name']; ?></b></h4>
</section>
<!-- /.content -->
