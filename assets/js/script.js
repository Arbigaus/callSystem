
$(function () {
    //Date range picker
  $('.daterange').daterangepicker();
  $('.datatable').DataTable();
  $('.datepicker').datepicker({
      autoclose: true
  });  
  // CKEDITOR starter
  CKEDITOR.replace('editor1');
  // Dropzone starter
  $('.dropzone').dropzone({ url: "/file/post" });

});
