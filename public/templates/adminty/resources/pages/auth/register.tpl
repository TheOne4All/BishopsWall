<!-- [begin-extend-template]adminty/resources/pages/layouts/master[end] -->

<!-- Authentication card start -->
<form class="md-float-material form-material" method="POST" action="<?= FYNX_PUBLIC['url'] ?>auth/login">
    <div class="text-center f-24 text-white">
        <img class="" src="<?= FYNX_LOGO['white'] ?>" alt="App-Logo" height="35px"">
    </div>
    <div class=" auth-box card">
        <div class="card-block">
            <div class="row m-b-20">
                <div class="col-md-12">
                    <h3 class="text-center txt-primary">Register</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <a href="#!" class="btn btn-facebook m-b-20 btn-block waves-effect waves-light"><i
                            class="icofont icofont-social-facebook"></i>facebook</a>
                </div>
                <div class="col-md-6">
                    <a href="#!" class="btn btn-twitter m-b-0 btn-block waves-effect waves-light"><i
                            class="icofont icofont-social-twitter"></i>twitter</a>
                </div>
            </div>
            <p class="text-muted text-center p-b-5">Register with your regular account</p>
            <div class="form-group form-primary">
                <input type="text" name="user-name" class="form-control" required="" placeholder="Choose Username">
                <span class="form-bar"></span>
            </div>
            <div class="form-group form-primary">
                <input type="text" name="email" class="form-control" required="" placeholder="Your Email Address">
                <span class="form-bar"></span>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group form-primary">
                        <input type="password" name="password" class="form-control" required="" placeholder="Password">
                        <span class="form-bar"></span>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group form-primary">
                        <input type="password" name="confirm-password" class="form-control" required=""
                            placeholder="Confirm Password">
                        <span class="form-bar"></span>
                    </div>
                </div>
            </div>
            <div class="row m-t-25 text-left">
                <div class="col-md-12">
                    <div class="checkbox-fade fade-in-primary">
                        <label>
                            <input type="checkbox" value="">
                            <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                            <span class="text-inverse">I read and accept <a href="#">Terms &amp; Conditions.</a></span>
                        </label>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="checkbox-fade fade-in-primary">
                        <label>
                            <input type="checkbox" value="">
                            <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                            <span class="text-inverse">Send me the <a href="">Newsletter</a> weekly.</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="row m-t-30">
                <div class="col-md-12">
                    <button class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Sign up</button>
                </div>
            </div>
            <p class="f-w-600 text-right">Back to <a href="<?= FYNX_PUBLIC['url'] ?>auth/signin">Login</a></p>
            <!-- <hr>
            <div class="row">
                <div class="col-md-10">
                    <p class="text-inverse text-left m-b-0">Thank you.</p>
                    <p class="text-inverse text-left">
                        <a href="<?= FYNX_PUBLIC['url'] ?>pages/landing"><b class="f-w-600">Back to website</b></a>
                    </p>
                </div>
            </div> -->
        </div>
    </div>
</form>
<!-- Authentication card end -->