<?php require "./header.php" ?>
<div class="main-header">
    <div class="d-flex">
        <div class="mobile-toggle" id="mobile-toggle">
            <i class="bx bx-menu"></i>
        </div>
    </div>
    <div class="dropdown d-inline-block mt-12">
        <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img class="rounded-circle header-profile-user"
                src="../..<?= $ROOT_URL . $SRC_URL . $ADMIN_URL ?>/images/avatar/avt-1.png" alt="Header Avatar" />
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
            <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i> <span>My
                    Wallet</span></a>
            <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i
                    class="bx bx-wrench font-size-16 align-middle me-1"></i> <span>Settings</span></a>
            <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i> <span>Lock
                    screen</span></a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item text-danger" href="../index.php"><i
                    class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i> <span>Logout</span></a>
        </div>
    </div>
</div>

<div class="main">
    <div class="main-content dashboard">
        <a href="./index.php?act=ngay" class="mb-4">
            <button class="btn btn-primary">Thống kê ngày</button>
        </a>
        <a href="./index.php?act=thang" class="mb-4">
            <button class="btn btn-primary">Thống kê tháng</button>
        </a>
        <span class="<?= isset($_COOKIE['notification']) ? "noti-success" : "" ?>">
            <?= isset($_COOKIE['notification']) ? $_COOKIE['notification'] : "" ?>
        </span>

        <table id="example" class="table table-bordered table-hover" style="width:100%">
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Mã sản phẩm</th>
                    <th>Số lượng bán</th>
                    <th>Số lượng hàng tồn kho</th>
                    <th>Giá nhập</th>
                    <th>Mã giảm giá</th>
                    <th>Thành tiền</th>
                    <th>Doanh thu</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $sum_quantity_product = sum_product_quantities();
                foreach ($sum_quantity_product as $quan) {
                    $product_id = $quan['product_id'];
                    $hangban = sum_product_order($product_id);
                    $hangton = sum_product_quantities_by_id($product_id);
                    $product = select_all_product_by_d($product_id);

                    // Kiểm tra tồn tại sản phẩm
                    if (!$product)
                        continue;

                    $product_name = $product['product_name'];
                    $product_code = $product['product_code'];
                    $product_price = is_numeric($product['product_price']) ? $product['product_price'] : 0;
                    $discount = is_numeric($product['discount']) ? $product['discount'] : 0;
                    $soluongban = isset($hangban['soluongban']) ? $hangban['soluongban'] : 0;
                    $soluongton = isset($hangton['soluongton']) ? $hangton['soluongton'] : 0;

                    $thanhtien = $product_price - ($product_price * ($discount / 100));
                    $doanhthu = $soluongban * $thanhtien;
                    ?>
                    <tr>
                        <td><?= $product_name ?></td>
                        <td><?= $product_code ?></td>
                        <td><?= $soluongban ?></td>
                        <td><?= $soluongton ?></td>
                        <td><?= formatMoney($product_price) ?></td>
                        <td><?= $discount ?>%</td>
                        <td><?= formatMoney($thanhtien) ?></td>
                        <td><?= formatMoney($doanhthu) ?></td>
                    </tr>
                    <?php
                }

                $total = total();
                $tong = isset($total['tong']) ? $total['tong'] : 0;
                ?>
                <tr>