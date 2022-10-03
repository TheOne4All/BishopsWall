<!DOCTYPE html>

<html lang="en-us" class="no-js">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="#">
    <meta name="keywords" content="Admin , Study, Education, Jencube">
    <meta name="Jencube" content="#">

    <!-- Favicon icon -->
    <link rel="icon" href="<?= FYNX_PUBLIC['url'] ?>media/favicon.png" type="image/x-icon">
    <!-- Fontawesome icon -->
    <link rel="stylesheet" type="text/css"
        href="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/assets/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="<?= FYNX_PUBLIC['url'] ?>templates/adminty/css/error-style/style.css">
</head>

<body class="flat">

    <!-- Canvas for particles animation -->
    <div id="particles-js"></div>

    <!-- Your logo on the top left -->
    <a href="#" class="logo-link" title="back home">
        <img class="" src="<?= FYNX_LOGO['white'] ?>" alt="App-Logo" height="35px"">
    </a>

    <div class="content">

        <div class="content-box">

            <div class="big-content">

                <!-- Main squares for the content logo in the background -->
                <div class="list-square">
                    <span class="square"></span>
                    <span class="square"></span>
                    <span class="square"></span>
                </div>

                <!-- Main lines for the content logo in the background -->
                <div class="list-line">
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                </div>

                <!-- The animated searching tool -->
                <i class="fa fa-search" aria-hidden="true"></i>

                <!-- div clearing the float -->
                <div class="clear"></div>

            </div>

            <!-- Your text -->
            <h1>Oops! Error 404 not found.</h1>

            <p>The page you were looking for doesn't exist.<br>
                We think the page may have moved.</p>

        </div>

    </div>
    <footer class="light">
        <ul>
            <li><a href="#">Support</a></li>
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        </ul>
    </footer>
    <script type="text/javascript"
        src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/jquery/js/jquery.min.js">
    </script>
    <script type="text/javascript"
        src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/files/bower_components/bootstrap/js/bootstrap.min.js"></script>

    <!-- Particles plugin -->
    <script src="<?= FYNX_PUBLIC['url'] ?>templates/adminty/plugins/particles.js"></script>

</body>

</html>