<!DOCTYPE html>
<html lang="en">

<head>
    <title>FYNX Framework</title>

    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <style>
        html,
        body {
            z-index: 99999;
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background-color: #fff;
            color: #fff;
            font-family: 'Raleway', sans-serif;
            font-weight: 100;
            height: 100vh;
            margin: 0 auto;
            background: lightblue url('<?= DIR['media'] ?>flat_blue.jpg') no-repeat fixed center;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .center {
            position: absolute;
            min-width: 300px;
            width: 800px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links>a {
            color: #fff;
            padding: 0 25px;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }
    </style>

</head>

<body>

    <!-- Content Layout -->

    <div class="flex-center position-ref full-height">
        <div class="center links">
            <a href="#">Welcome! <em style="color:#fc575e;"><?php if (isset($data['greetings'])) {
                                                                echo ucwords(strtolower($data['greetings']));
                                                            } ?></em></a> |
            <a href="#">Documentation</a> |
            <a href="#">News</a> |
            <a href="<?= BASE['url'] ?>auth/signin">CGMI-ERP</a> |
            <a href="#">GitHub</a>
        </div>

        <div class="content">
            <div class="title m-b-md"><?php echo strtoupper($data['name']); ?></div>

            <div class="links">
                <p>FYNX Framework is using simple computing architecture they coined (S.L.O -
                    Storage Logic Output).</p>
            </div>
        </div>
    </div>

</body>

</html>