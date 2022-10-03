<script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/template.script.js">
</script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/jquery/jquery.min.js"></script>
<!-- <script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/jquery/js/jquery.min.js"> -->
</script>
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/popper.js/js/popper.min.js"></script>
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/bootstrap/js/bootstrap.min.js"></script>

<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/jquery.dataTables.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/dataTables.bootstrap4.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/extensions/Buttons/js/dataTables.buttons.min.js">
</script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/extensions/JSZip/jszip.min.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/extensions/pdfmake/pdfmake.min.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/extensions/pdfmake/vfs_fonts.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/extensions/Buttons/js/buttons.print.min.js">
</script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/datatables/extensions/Buttons/js/buttons.html5.min.js">
</script>

<!-- jquery slimscroll js -->
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/jquery-slimscroll/js/jquery.slimscroll.js">
</script>
<!-- modernizr js -->
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/modernizr/js/modernizr.js"></script>
<!-- Bootstrap date-time-picker js -->
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/advance-elements/moment-with-locales.min.js"></script>
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/bootstrap-datepicker/js/bootstrap-datepicker.min.js">
</script>
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/advance-elements/bootstrap-datetimepicker.min.js">
</script>
<!-- Date-range picker js -->
<script type="text/javascript"
    src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/bootstrap-daterangepicker/js/daterangepicker.js">
</script>
<!-- Form Validation js -->
<script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/form-validation/validate.js">
</script>
<!-- <script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/form-validation/form-validation.js"></script> -->
<!-- Date-dropper js -->
<!-- <script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/datedropper/js/datedropper.min.js"></script> -->
<!-- Chart js -->
<script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/chart.js/js/Chart.js">
</script>
<!-- amchart js -->
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/widget/amchart/amcharts.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/widget/amchart/serial.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/widget/amchart/light.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/js/SmoothScroll.js"></script>
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/js/pcoded.min.js"></script>
<!-- custom js -->
<script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/js/vartical-layout.min.js"></script>
<!-- <script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/pages/dashboard/custom-dashboard.js"></script> -->
<script type="text/javascript" src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/js/script.min.js"></script>

<script type="text/javascript">
$(function() {
    // $("button.cancel").click(function(e) {
    //     $('.modal.show').hide();
    //     $('.modal-backdrop').remove();
    // })


    var getTab = "<?php if (isset($_GET['tab'])) {
                            echo $_GET['tab'];
                        } else {
                            echo '';
                        } ?>";
    if (getTab != '') {
        $(".nav-item a.active").removeClass('active');
        $(".nav-item [data-target='#" + getTab + "']").addClass('active');
        $("button[class*='tab_']").not('.hide').addClass('hide');
        $("button." + getTab).removeClass('hide');
        $(".tab-pane.active").removeClass('active');
        $('#' + getTab).addClass('active');
    }

    //display filename of uploaded file
    $('.custom-file input').change(function(e) {
        $(this).next('.custom-file-label').html(e.target.files[0].name);
    });

    $('.list-table').DataTable({
        dom: '<"row top-datatable"<"col-sm-4 entry"l><"col-sm-4 buttons"><"col-sm-4 search"f>>rt<"row bottom-datatable"<"col-sm-6 records"i><"col-sm-6 page"p>>',
    });

    $('.report-table').DataTable({
        dom: '<"row top-datatable"<"col-sm-4 entry"l><"col-sm-4 buttons"B><"col-sm-4 search"f>>rt<"row bottom-datatable"<"col-sm-6 records"i><"col-sm-6 page"p>>',
        buttons: [{
                extend: 'print',
                text: '<i class="fa fa-print"></i>',
                titleAttr: 'Print'
            },
            {
                extend: 'excel',
                text: '<i class="fa fa-file-excel"></i>',
                titleAttr: 'Excel'
            },
            {
                extend: 'csv',
                text: '<i class="fa fa-file"></i>',
                titleAttr: 'CSV'
            },
            {
                extend: 'pdf',
                text: '<i class="fa fa-file-pdf"></i>',
                titleAttr: 'PDF'
            }
        ]
    });
    $('.dt-buttons button').removeClass('btn-secondary').addClass('btn-default');
});
</script>