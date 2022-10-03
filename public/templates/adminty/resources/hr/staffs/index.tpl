<!-- [begin-extend-template]adminty/resources/layouts/master[end] -->

<!-- Main-body end -->
<div class="main-body">
    <div class="page-wrapper">

        <!-- Page-header start -->
        <div class="page-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <div class="page-header-title">
                        <div class="d-inline">
                            <h4>Staffs</h4>
                            <span>List/Add/Edit all records of Staffs</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="page-header-breadcrumb">
                        <ul class="breadcrumb-title">
                            <li class="breadcrumb-item">
                                <a href="dashboard/index"> <i class="feather icon-home"></i> </a>
                            </li>
                            <li class="breadcrumb-item"><a href="#!">Human Resourses</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#!">Staffs</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page-header end -->

        <!-- Page-body start -->
        <div class="page-body">

            <!-- Hover table card start -->
            <div class="card">

                <div class="card-header p-b-0" id="tabBtn">
                    <!-- you must add "nav-tabs" to the tabs -->
                    <ul class="nav nav-tabs" id="tabMenu">
                        <li class="nav-item">
                            <a href="#" class="active" data-toggle="tab" role="tab" data-target="#tab_1">Staffs</a>
                        </li>
                        <li class="nav-item">
                            <a href="#" data-toggle="tab" role="tab" data-target="#tab_2">Departments</a>
                        </li>
                        <li class="nav-item">
                            <a href="#" data-toggle="tab" role="tab" data-target="#tab_3">Designations</a>
                        </li>
                    </ul>

                    <div class="pull-right">
                        <div class="col-xs-6">
                            <button class="btn btn-cons tab_1" data-toggle="modal" data-target="#addStaff">New
                                Record</button>
                            <button class="btn btn-cons tab_2 hide" data-toggle="modal" data-target="#addDepartment">New
                                Record</button>
                            <button class="btn btn-cons tab_3 hide" data-toggle="modal" data-target="#addDesignation">New Record</button>
                        </div>
                    </div>
                </div>

                <div class="card-body">
                    <div class="tab-content card-block table-border-style">
                        <div class="table-responsive dt-responsive tab-pane active" id="tab_1">
                            <?php include_once('table.tpl'); ?>
                        </div>
                        <div class="table-responsive tab-pane" id="tab_2">
                            <?php include_once('table1.tpl'); ?>
                        </div>
                        <div class="table-responsive tab-pane" id="tab_3">
                            <?php include_once('table2.tpl'); ?>
                        </div>
                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.card-body -->
                <div class="card-footer"></div>
            </div>
            <!-- Hover table card end -->

        </div>
        <!-- Page-body end -->

    </div>
</div>
<!-- Main-body end -->