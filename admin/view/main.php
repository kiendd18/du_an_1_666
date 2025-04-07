<?php require "./header.php" ?>

<div class="main-header">
    <div class="d-flex">
        <div class="mobile-toggle" id="mobile-toggle">
            <i class='bx bx-menu'></i>
        </div>
    </div>
    <div class="dropdown d-inline-block mt-12">
        <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img class="rounded-circle header-profile-user" src="../../du_an1/src/admin/images/avatar/avt-1.png" alt="Header Avatar">
            <span class="pulse-css"></span>
            <span class="info d-xl-inline-block  color-span">

                <span class="d-block fs-20 font-w600"></span>
                <span class="d-block mt-7"></span>
            </span>
            <i class='bx bx-chevron-down'></i>
        </button>
        <div class="dropdown-menu dropdown-menu-end">
            <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle me-1"></i>
                <span>Profile</span></a>
            <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i>
                <span>My Wallet</span></a>
            <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i> <span>Settings</span></a>
            <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i>
                <span>Lock screen</span></a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item text-danger" href="../index.php"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i>
                <span>Logout</span></a>
        </div>
    </div>
</div>
</div>


<div class="main">
    <div class="main-content dashboard">
        <div class="row">
            <div class="col-12">
                <div class="box card-box">

                </div>
            </div>
            <div class="col-6 col-md-6 col-sm-12 mb-0">
                <div class="row">
                    <div class="col-12">
                        <div class="box box-manage">
                            <div class="box-body d-flex pd-7 pb-0">

                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-xl-12 col-md-12 col-sm-12">
                        <div class="box">
                            <div class="box-header">

                            </div>
                            <div class="box-body">
                                <div id="chartBar2" class="bar-chart "></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-xl-12 col-md-12 col-sm-12">
                        <div class="box">
                            <div class="box-body center">
                                <div class="w-100"><span class="donut-2 w-100" data-peity='{ "fill": ["#9B8DFF", "#E4EAF8"]}'>228,134</span>
                                </div>
                                <h5 class="fs-20 mb-0 mt-20 font-w500 color-text mt-28">On Progress<span class="text-primary font-w600 pl-8">50% </span></h5>
                                <h5 class="fs-22 mt-18 mb-10 font-wb">Workload Dashboard For CMS Website</h5>
                                <p class="fs-18 mt-18">Praesent eu dolor eu orci vehicula euismod.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="box">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <div class="box">
                    <div class="box-header">

                    </div>

                </div>
            </div>

        </div>


    </div>
</div>

<div class="overlay"></div>
<?php require "./footer.php" ?>