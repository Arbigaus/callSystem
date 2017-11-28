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

	<?php if(isset($call) && !empty($call)): ?>
		<div class="row">
			<div class="col-md-12">
				<div class="box box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">Aguardando retorno</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="box-group" id="accordion">
							<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
							<?php foreach($call as $opened): ?>
								<div class="panel box box-warning">
									<a class=" text-muted" data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $opened['id']; ?>">
										<div class="box-header with-border">
											<h4 class="box-title">
												<strong><?php echo $opened['id']; ?></strong> - <?php echo $opened['call_title']; ?>
											</h4>
											<div class="pull-right">
												<span><small><?php echo date('d/m/Y - H:i', strtotime($opened['call_date'])); ?></small></span>
											</div>
										</div>
									</a>
									<div id="collapse<?php echo $opened['id']; ?>" class="panel-collapse collapse">
										<div class="box-body">
											<p><?php echo $opened['call_subject']; var_dump($opened['call_date']); ?></p>
										</div>
									</div>
								</div>
							<?php endforeach; ?>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
			<?php endif; ?>


		</section>
		<!-- /.content -->
