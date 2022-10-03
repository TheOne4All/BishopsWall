<?php global $autoLoader;?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= FYNX_APP['name'] ?></title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="#">
    <meta name="keywords" content="Admin , Church, CGMI, Jencube">
    <meta name="Jencube" content="#">

    <!-- Favicon icon -->
    <link rel="icon" href="<?=FYNX_FAVICON?>" type="image/x-icon">

    <!-- Load StyleSheets Library -->
    <?php $autoLoader->load_html_files(FYNX_PUBLIC['stylesheet_lib']);?>

    
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/plugins/bootstrap/css/bootstrap.min.css.map">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/feather.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/linearicons.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/raleway.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/css/style.css">
    
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/files/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/files/assets/icon/icofont/css/icofont.css">
    <!-- feather Awesome -->
    <!-- <link rel="stylesheet" type="text/css" href="templates/adminty/files/assets/icon/feather/css/feather.css"> -->
    <!-- Date-time picker css -->
    <!-- <link rel="stylesheet" type="text/css" href="templates/adminty/files/assets/pages/advance-elements/css/bootstrap-datetimepicker.css"> -->
    <!-- Date-range picker css  -->
    <link rel="stylesheet" type="text/css"
        href="<?=FYNX_PUBLIC['url']?>templates/adminty/files/bower_components/bootstrap-daterangepicker/css/daterangepicker.css">
    <!-- Date-Dropper css -->
    <!-- <link rel="stylesheet" type="text/css" href="templates/adminty/files/bower_components/datedropper/css/datedropper.min.css"> -->
    <!-- Color Picker css -->
    <link rel="stylesheet" type="text/css" href="<?=FYNX_PUBLIC['url']?>templates/adminty/files/bower_components/spectrum/css/spectrum.css">
    <!-- Mini-color css -->
    <link rel="stylesheet" type="text/css"
        href="<?=FYNX_PUBLIC['url']?>templates/adminty/files/bower_components/jquery-minicolors/css/jquery.minicolors.css">
    <!-- Style.css -->
    <!-- <link rel="stylesheet" type="text/css" href="templates/adminty/files/assets/css/style.css"> -->
    <link type="text/css" src="<?=FYNX_PUBLIC['url']?>templates/adminty/plugins/datatables/datatables.min.css">

    <!-- <link rel="stylesheet" type="text/css" href="templates/adminty/files/assets/css/jquery.mCustomScrollbar.css"> -->

</head>

<body class="hold-transition sidebar-mini">

    <!-- Customize theme default settings -->
    <?php require_once 'customizetheme.tpl'; ?>

    <!-- Alert Display Notification -->
    <?php $this->alert($_GET); ?>

    <!-- Preloader Layout -->
    <?php require_once 'preloader.tpl'; ?>

    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

            <!-- Top-Bar Layout -->
            <?php require_once 'topbar.tpl'; ?>

            <!-- Chat-List Layout -->
            <?php require_once 'chatlist.tpl'; ?>

            <!-- Chat-Messenger Layout -->
            <?php require_once 'chatmsg.tpl'; ?>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">

                    <!-- Side-bar Layout -->
                    <?php require_once 'sidebar.tpl'; ?>

                    <!-- Content Layout -->
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                            <!-- Get Content -->
                            <?php require_once $this->master_content; ?>

                            <!-- Slide-in Right-Bar Container -->
                            <div id="styleSelector"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Layout -->
    <?php require_once 'footer.tpl'; ?>

</body>

</html>