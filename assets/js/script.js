
$(function () {
    //Date range picker
  $('.daterange').daterangepicker();
  $('.datatable').DataTable();
  $('.datepicker').datepicker({
      autoclose: true
  });
  CKEDITOR.replace('editor1',{
    


  });
  // CKEDITOR.replace('editor1',{
  //   filebrowserBrowseUrl: BASE + 'assets/bower_components/ckfinder/ckfinder.html',
  //    filebrowserImageBrowseUrl: BASE + 'assets/bower_components/ckfinder/ckfinder.html?type=Images',
  //    filebrowserUploadUrl: BASE + 'assets/bower_components/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
  //    filebrowserImageUploadUrl: BASE + 'assets/bower_components/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
  // });
});
