<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= FYNX_APP['name'] ?></title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="#">
    <meta name="keywords" content="Admin , Study, Education, Jencube">
    <meta name="Jencube" content="#">

    <!-- Favicon icon -->
    <link rel="icon" href="<?= FYNX_PUBLIC['url'] ?>media/favicon.png" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,600" rel="stylesheet">

    <!-- Load StyleSheets -->

    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/bootstrap/css/bootstrap.min.css">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/icon/icofont/css/icofont.css">
    <!-- Fontawesome icon -->
    <link rel="stylesheet" type="text/css" href="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="<?= FYNX_PUBLIC['url'] ?>templates/adminty/css/style.css">

</head>

<body class="fixed-menu">

    <!-- Preloader Layout -->
    <?php require_once 'preloader.tpl'; ?>

    <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">

                    <!-- Get Content -->
                    <?php require_once $this->master_content; ?>

                </div>
                <!-- Authentication card end -->
            </div>
            <!-- end of col-sm-12 -->
        </div>
        <!-- end of row -->

        <!-- end of container-fluid -->
    </section>
    <!-- Footer Layout -->
    <?php require_once 'footer.tpl'; ?>

</body>

</html>