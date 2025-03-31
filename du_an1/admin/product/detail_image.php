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
            <?php $product_id = $_GET['product_id']; ?>
            
            <div id="show_detail_image">
                <!-- style="display: flex;justify-content: space-between;gap: 16px;flex-wrap: wrap;" -->
                <?php
                $image_result = select_all_image_by_id($product_id);
                $product_color = select_product_color_by_product_id($product_id);
                ?>
                <?php foreach ($product_color as $key => $color) : ?>
                    <!-- ;flex-basis: 23.33334%;display: flex;justify-content: space-around;align-items: center; -->
                    <?php $color_name_result = select_images_by_color_name_id($color['color_name_id']); ?>
                    <?php if (empty($color_name_result)) continue ?>
                    <div>
                        <?php foreach ($color_name_result as $each) : ?>
                            <div style="display:inline-block ;border: 1px solid #dedede;padding: 8px;border-radius: 4px">
                                <img src="../..<?= $ROOT_URL . $each['image_url'] ?>" alt="" product-id="<?= $product_id ?>" image-id="<?= $each['image_id'] ?>" height="70">
                            </div>
                        <?php endforeach ?>
                        <i class="fa-solid fa-pen update-image" style="color: #000000;font-size: 1.6rem;padding: 6px;cursor: pointer;user-select:none;"></i>
                        <input type="hidden" value="<?= $color['color_name_id']; ?>" delete-product-id="<?= $product_id ?>">
                        <i class="fa-solid fa-xmark delete-image" onclick="return confirm('Bạn chắc chứ!')" style="color: #000000;font-size: 1.8rem;padding: 6px;cursor: pointer;user-select:none;"></i>
                    </div>
                <?php endforeach ?>
            </div>
            <form action="..<?= $ADMIN_URL . $PRODUCT_URL; ?>/update_detail_image.php" method="POST" enctype="multipart/form-data" id="update_image" style="visibility: hidden;margin-top:16px;">
                <input type="hidden" name="product_id" value="<?= $product_id ?>">
                <?php $color_name_result = select_all_color_name_by_product_id($value['product_id']) ?>
                <select name="update_color_name" id="">
                    <?php foreach ($color_name_result as $color) : ?>
                        <option value="<?= $color['color_name_id'] ?>"><?= $color['color_name'] ?></option>
                    <?php endforeach ?>
                </select>
                <input type="file" name="product_detail_image[]" multiple>
                <button type="submit" onclick="return confirm('Bạn chắc chứ!')" class="btn btn-success">Sửa</button>
            </form>
        </div>
    </div>

    <div class="overlay"></div>
    <?php require "./footer.php" ?>