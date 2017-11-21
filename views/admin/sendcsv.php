<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Administração
		<small>Enviar CSV</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Administração</li>
		<li class="active">Rateio Celular</li>
		<li class="active">Enviar Arquivo</li>
	</ol>
</section>

<section class="content">
	<div class="row">
		<div class="col-md-6">
			<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Importar Fatura</h3>
		</div>
		<div class="box-body">
			<div class="alerta ">
		    <h4><i class="icones icon "></i><span class="title"></span></h4>
		    <div class="result "></div>
		  </div>

		  <form id="cell/sendcsv" method="post" enctype="multipart/form-data">
				<div class="form-group">
		      <label>Período de Referência:</label>
		      <div class="input-group">
		        <div class="input-group-addon">
		          <i class="fa fa-calendar"></i>
		        </div>
		        <input type="text" class="form-control pull-right daterange" name="daterange" >
		      </div>
				</div>
				<div class="form-group">
	        <label>Vencimento:</label>
	        <div class="input-group date">
	          <div class="input-group-addon">
	            <i class="fa fa-calendar"></i>
	          </div>
	          <input type="text" class="form-control pull-right datepicker">
	        </div>
	        <!-- /.input group -->
	      </div>
		    <div class="form-group">
		      <label for="exampleInputFile">Selecione o arquivo</label>
		      <input type="file" name="arquivo" id="exampleInputFile">

		      <p class="help-block">Favor enviar somente arquivos CSV ou TXT.</p>
		    </div>
		    <div class="form-group">
					<div class=" col-xs-4 pull-right">
		      <button class="btn btn-success">
		        <i class="i-send fa "></i> Enviar <i class="fa"></i>
		      </button>
					</div>
		    </div>

			</form>
		</div>
	</div>
		</div>
	</div>
</section>
