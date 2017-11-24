<div class="row">
	<div class="col-md-12">
		<div class="box box-success">
			<div class="box-header with-border">
				<h4>Anexar Arquivos</b></h4>
				<h4><small>Arraste os arquivos na área abaixo</small></h4>
			</div>
			<div class="container">
				<!-- HTML heavily inspired by https://blueimp.github.io/jQuery-File-Upload/ -->
				<div id="actions" class="row">
					<div class="col-lg-7">
						<!-- The fileinput-button span is used to style the file input field as button -->
						<span class="btn btn-success fileinput-button dz-clickable">
							<i class="glyphicon glyphicon-plus"></i>
							<span>Add arquivos</span>
						</span>
						<button type="button" class="btn btn-primary start">
							<i class="glyphicon glyphicon-upload"></i>
							<span>Enviar Arquivos</span>
						</button>
						<button type="reset" class="btn btn-warning cancel">
							<i class="glyphicon glyphicon-ban-circle"></i>
							<span>Cancelar upload</span>
						</button>
					</div>

					<div class="col-lg-5">
						<!-- The global file processing state -->
						<span class="fileupload-process">
							<div id="total-progress" class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
								<div class="progress-bar progress-bar-success" style="width:0%;" data-dz-uploadprogress=""></div>
							</div>
						</span>
					</div>
				</div>
				<div class="table table-striped files" id="previews">
					<div id="dropzone" class="file-row dz-image-preview">
						<!-- This is used as the file preview template -->
						<div>
							<span class="preview"><img data-dz-thumbnail></span>
						</div>
						<div>
							<p class="name" data-dz-name></p>
							<strong class="error text-danger" data-dz-errormessage></strong>
						</div>
						<div>
							<p class="size" data-dz-size></p>
							<div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
								<div class="progress-bar progress-bar-success" style="width:0%;" data-dz-uploadprogress></div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary start" type="button">
								<i class="glyphicon glyphicon-upload"></i>
								<span>Enviar</span>
							</button>
							<button data-dz-remove class="btn btn-warning cancel" type="button">
								<i class="glyphicon glyphicon-ban-circle"></i>
								<span>Cancelar</span>
							</button>
							<!-- <button data-dz-remove class="btn btn-danger delete" type="button">
								<i class="glyphicon glyphicon-trash"></i>
								<span>Deletar</span> -->
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>