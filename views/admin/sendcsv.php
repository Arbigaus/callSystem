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

  <div class="alerta ">
    <h4><i class="icones icon "></i><span class="title"></span></h4>
    <div class="result "></div>
  </div>

  <form id="cell/sendcsv" method="post" enctype="multipart/form-data">

    <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                  <input type="file" name="arquivo" id="exampleInputFile">

                  <p class="help-block">Example block-level help text here.</p>
                </div>
    <div class="col-xs-4">
      <button class="btn btn-success">
        <i class="i-send fa "></i> Enviar <i class="fa"></i>
      </button>
    </div>

</form>
</section>
