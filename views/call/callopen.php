<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Atendimento
		<small><?php echo $area['area_initials']; ?></small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo BASE; ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active"><a href="<?php echo BASE."/call/index/".$area['id']; ?>"><?php echo $area['area_initials']; ?></a></li>
		<li class="active">Novo Atendimento</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<div class="row">
		<div class="col-xs-12">
			<div class="box <?php echo $area['area_color']; ?>">
				<div class="box-header with-border">
					<h4>Novo Atendimento - <b><?php echo $area['area_name']; ?></b></h4>
				</div>
				<form id="call/new" method="post" enctype="multipart/form-data">
					<div class="box-body">
						<div class="row">
							<div class="form-group col-xs-6">
	              <label for="call_title">Assunto</label>
	              <input type="text" class="form-control" id="call_title" name="call_title" placeholder="Assunto">
	            </div>
							<div class="form-group col-xs-6">
	                <label>Tipo de Atendimento</label>
	                <select name="call_type" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
	                  <option selected="selected">Computador</option>
	                  <option>Sistema</option>
	                  <option>Infraestrutura</option>
	                </select>
	              </div>
						</div>
						<div class="row">
							<div class="form-group col-xs-12">
								<h5 class="box-title"><strong>Descreva sua solicitação</strong></h5>
	              <textarea id="editor1" name="call_subject" rows="10" cols="80"></textarea>
	            </div>
						</div>

						<div class=" col-xs-4">
							<button class="btn btn-success">
								<i class="i-send fa "></i> Enviar <i class="fa"></i>
							</button>
						</div>
					</form>
					</div>
				</div>
				<!-- /.box-body -->
		</div>
		</div>
	</div>
</section>
<script type="text/javascript">
  var UPLOAD = '<?php echo BASE; ?>/call/new/<?php echo $area['id']; ?>'; // TODO: Enviando a variável UPLOAD para o script js.
</script>
<!-- /.content -->
