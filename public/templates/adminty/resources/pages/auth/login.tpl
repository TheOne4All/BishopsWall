<!-- [begin-extend-template]adminty/resources/pages/layouts/master[end] -->

<!-- Authentication card start -->
<form class="md-float-material form-material" method="POST" action="<?= FYNX_PUBLIC['url'] ?>dashboard/index">
    <div class="text-center f-24">
    <img class="" src="<?= FYNX_LOGO['white'] ?>" alt="App-Logo" height="35px""></div>
    <div class=" auth-box card">
        <div class="card-block">
            <div class="row m-b-20">
                <div class="col-md-12">
                    <h3 class="text-center txt-primary">Login</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <button class="btn btn-facebook m-b-20 btn-block"><i
                            class="icofont icofont-social-facebook"></i>facebook</button>
                </div>
                <div class="col-md-6">
                    <button class="btn btn-twitter m-b-20 btn-block"><i
                            class="icofont icofont-social-twitter"></i>twitter</button>
                </div>
            </div>
            <p class="text-muted text-center p-b-5">Sign in with your regular account</p>
            <div class="form-group form-primary">
                <input type="text" name="user-name" class="form-control" required="" placeholder="Username">
                <span class="form-bar"></span>
            </div>
            <div class="form-group form-primary">
                <input type="password" name="password" class="form-control" required="" placeholder="Password">
                <span class="form-bar"></span>
            </div>
            <div class="row m-t-25 text-left">
                <div class="col-12">
                    <div class="checkbox-fade fade-in-primary">
                        <label>
                            <input type="checkbox" value="">
                            <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                            <span class="text-inverse">Remember me</span>
                        </label>
                    </div>
                    <div class="forgot-phone text-right f-right">
                        <a href="<?= FYNX_PUBLIC['url'] ?>auth/reset" class="text-right f-w-600"> Forgot Password?</a>
                    </div>
                </div>
            </div>
            <div class="row m-t-30">
                <div class="col-md-12">
                    <button type="SUBMIT"
                        class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">LOGIN</button>

                </div>
            </div>
            <p class="text-inverse text-left">Don't have an account?<a href="<?= FYNX_PUBLIC['url'] ?>auth/signup"> <b
                        class="f-w-600">Register here </b></a>for free!</p>
        </div>
    </div>
</form>