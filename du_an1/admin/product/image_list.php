<?php require "./header.php" ?>
<div class="main-header">
    <div class="d-flex">
        <div class="mobile-toggle" id="mobile-toggle">
            <i class="bx bx-menu"></i>
        </div>
    </div>
    <div class="dropdown d-inline-block mt-12">
        <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img class="rounded-circle header-profile-user" src="../..<?= $ROOT_URL . $SRC_URL . $ADMIN_URL ?>/images/avatar/avt-1.png" alt="Header Avatar" />
            <span class="pulse-css"></span>
            <span class="info d-xl-inline-block color-span">
                <span class="d-block fs-20 font-w600"></span>
                <span class="d-block mt-7"></span>
            </span>
            <i class="bx bx-chevron-down"></i>
        </button>
        <div class="dropdown-menu dropdown-menu-end">
            <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle me-1"></i>
                <span>Profile</span></a>
            <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i>
                <span>My Wallet</span></a>
            <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i>
                <span>Settings</span></a>
            <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i>
                <span>Lock screen</span></a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item text-danger" href="../index.php"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i>
                <span>Logout</span></a>
        </div>
    </div>
</div>

<div class="main">
    <div class="main-content dashboard">
        <a href="./index.php?act=view_product" class="mb-4">
            <button class="btn btn-primary">Danh sách sản phẩm</button>
        </a>
        <span class="<?= isset($_COOKIE['notification']) ? "noti-success" : "" ?> "><?= $notification = isset($_COOKIE['notification']) ? $_COOKIE['notification'] : ""; ?></span>
        <div id="showProduct">
            <?php $product_result = select_all_product_admin(); ?>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Ảnh sản phẩm</th>
                        <th>Mã sản phẩm</th>
                        <th>Màu sắc</th>
                        <th>Chi tiết</th>
                        <th>Thêm mới</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($product_result as $value) : ?>
                        <tr>
                            <td><?= $value['product_name'] ?></td>
                            <td><img src="../..<?= $ROOT_URL . $value['main_image_url'] ?>" alt="" height="100"></td>
                            <td><?= $value['product_code'] ?></td>
                            <td>
                                <?php $color_name_result = select_all_color_name_by_product_id($value['product_id']) ?>
                                <select name="" id="">
                                    <?php foreach ($color_name_result as $color) : ?>
                                        <option value="<?= $color['color_name_id'] ?>"><?= $color['color_name'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </td>
                            <td>
                                <a href="./index.php?act=detail_image&product_id=<?= $value['product_id'] ?>">
                                    <button type="button" class="btn btn-info">Xem chi tiết</button>
                                </a>
                            </td>
                            <td>
                                <a href="./index.php?act=add_image&product_id=<?= $value['product_id'] ?>">
                                    <button type="button" class="btn btn-success">Thêm ảnh</button>
                                </a>
                            </td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>

    <div class="overlay"></div>
    <?php require "./footer.php" ?>