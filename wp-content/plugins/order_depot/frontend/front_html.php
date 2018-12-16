<style>
    .box
    {
        width:800px;
        margin:0 auto;
    }
    .active_tab1
    {
        background-color:#fff;
        color:#333;
        font-weight: 600;
    }
    .inactive_tab1
    {
        background-color: #f5f5f5;
        color: #333;
        cursor: not-allowed;
    }
    .has-error
    {
        border-color:#cc0000;
        background-color:#ffff99;
    }
    /* HIDE RADIO */
[type=radio] { 
  position: absolute;
  opacity: 0;
  width: 0;
  height: 0;
}

/* IMAGE STYLES */
[type=radio] + img {
  cursor: pointer;
}

/* CHECKED STYLES */
[type=radio]:checked + img {
  outline: 2px solid #f00;
}
</style>
<br />

<br />
<h2 align="center">Multi Step Registration Form Using JQuery Bootstrap in PHP</h2><br />

<form method="post" id="register_form">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active_tab1" style="border:1px solid #ccc" id="choose_patch_type">1- Choose Patch Type</a>
        </li>
        <li class="nav-item">
            <a class="nav-link inactive_tab1" id="choose_patch_size" style="border:1px solid #ccc">2- Choose Patch Size</a>
        </li>
        <li class="nav-item">
            <a class="nav-link inactive_tab1" id="choose_backing" style="border:1px solid #ccc">3- Choose Backing</a>
        </li>
        <li class="nav-item">
            <a class="nav-link inactive_tab1" id="choose_border" style="border:1px solid #ccc">4- Choose Border</a>
        </li>
        <li class="nav-item">
            <a class="nav-link inactive_tab1" id="choose_metalic_thread" style="border:1px solid #ccc">5- Choose Metallic Thread</a>
        </li>
        <li class="nav-item">
            <a class="nav-link inactive_tab1" id="choose_additional_information" style="border:1px solid #ccc">6- Additional Information</a>
        </li>
    </ul>
    <div class="tab-content" style="margin-top:16px;">
        <div class="tab-pane active" id="patch_type_details">
            <div class="panel panel-default">
                <div class="panel-heading">Patch Type</div>
                <div class="panel-body">
                    <?php
                    $post_categories = get_categories(
                            array('parent' => 25)
                    );
//                    echo '<pre>';
//                    var_dump($post_categories);
//                    exit;
                    ?>
                    <div class="row">
                        
                        <?php
                        foreach ($post_categories as $post_category) { ?>
                            <div class="col-md-4 text-center">
                                <label>
                                    <input type="radio" name="name" value="<?= $post_category->cat_ID ?>">
                                    <img src="<?=get_option( 'z_taxonomy_image'.$post_category->cat_ID );?>">
                                    <br>
                                    <strong><?= ucwords($post_category->name) ?></strong>
                                </label>
                            </div>
                        <?php
                        }
                        ?>
                        <div class="col-sm-12"><span id="error_patchtype" class="text-danger"></span></div>
                    </div>
                    
                    
                    <br />
                    <div align="center">
                        <button type="button" name="btn_patch_type_details" id="btn_patch_type_details" class="btn btn-info btn-lg">Next</button>
                    </div>
                    <br />
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="patch_size_details">
            <div class="panel panel-default">
                <div class="panel-heading">Fill Personal Details</div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Enter First Name</label>
                        <input type="text" name="first_name" id="first_name" class="form-control" />
                        <span id="error_first_name" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <label>Enter Last Name</label>
                        <input type="text" name="last_name" id="last_name" class="form-control" />
                        <span id="error_last_name" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <label>Gender</label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" value="male" checked> Male
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" value="female"> Female
                        </label>
                    </div>
                    <br />
                    <div align="center">
                        <button type="button" name="previous_btn_patch_size_details" id="previous_btn_patch_size_details" class="btn btn-default btn-lg">Previous</button>
                        <button type="button" name="btn_patch_size_details" id="btn_patch_size_details" class="btn btn-info btn-lg">Next</button>
                    </div>
                    <br />
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="patch_backing_details">
            <div class="panel panel-default">
                <div class="panel-heading">Fill Contact Details</div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Enter Address</label>
                        <textarea name="address" id="address" class="form-control"></textarea>
                        <span id="error_address" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <label>Enter Mobile No.</label>
                        <input type="text" name="mobile_no" id="mobile_no" class="form-control" />
                        <span id="error_mobile_no" class="text-danger"></span>
                    </div>
                    <br />
                    <div align="center">
                        <button type="button" name="previous_btn_patch_backing_details" id="previous_btn_patch_backing_details" class="btn btn-default btn-lg">Previous</button>
                        <button type="button" name="btn_patch_backing_details" id="btn_patch_backing_details" class="btn btn-info btn-lg">Next</button>
                    </div>
                    <br />
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="patch_border_details">
            <div class="panel panel-default">
                <div class="panel-heading">Fill Personal Details</div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Enter Border</label>
                        <input type="text" name="first_nam" id="first_nam" class="form-control" />
                        <span id="error_first_nam" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <label>Enter Last Name</label>
                        <input type="text" name="last_name" id="lst_name" class="form-control" />
                        <span id="error_lst_nae" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <label>Gender</label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" value="male" checked> Male
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" value="female"> Female
                        </label>
                    </div>
                    <br />
                    <div align="center"> 
                        <button type="button" name="previous_btn_patch_border_details" id="previous_btn_patch_border_details" class="btn btn-default btn-lg">Previous</button>
                        <button type="button" name="btn_patch_border_details" id="btn_patch_border_details" class="btn btn-info btn-lg">Next</button>
                    </div>
                    <br />
                </div>
            </div>
        </div>   
        <div class="tab-pane fade" id="patch_metalic_thread_details">
            <div class="panel panel-default">
                <div class="panel-heading">Fill Contact Details</div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Enter Mobile No kkkk.</label>
                        <input type="text" name="mobile_no" id="mobile_no" class="form-control" />
                        <span id="error_mobile_no" class="text-danger"></span>
                    </div>
                    <br />
                    <div align="center">
                        <button type="button" name="previous_btn_patch_metalic_thread_details" id="previous_btn_patch_metalic_thread_details" class="btn btn-default btn-lg">Previous</button>
                        <button type="button" name="btn_patch_metalic_thread_details" id="btn_patch_metalic_thread_details" class="btn btn-info btn-lg">Next</button>
                    </div>
                    <br />
                </div>
            </div>
        </div>   
        <div class="tab-pane fade" id="patch_additional_information_details">
            <div class="panel panel-default">
                <div class="panel-heading">Fill Contact Details</div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>Enter Mobile No kkkk.</label>
                        <input type="text" name="mobile_no" id="mobile_no" class="form-control" />
                        <span id="error_mobile_no" class="text-danger"></span>
                    </div>
                    <br />
                    <div align="center">
                        <button type="button" name="previous_btn_patch_additional_information_details" id="previous_btn_patch_additional_information_details" class="btn btn-default btn-lg">Previous</button>
                        <button type="button" name="btn_patch_additional_information_details" id="btn_patch_additional_information_details" class="btn btn-success btn-lg">Register</button>
                    </div>
                    <br />
                </div>
            </div>
        </div>    
    </div>
</form>

<script>
    $(document).ready(function () {

        $('#btn_patch_type_details').click(function () {
            var patchtype = $("input[name='name']:checked").val();
            var error_patchtype = '';
            if(patchtype !== null && patchtype !== '' && patchtype !== undefined){
                $('#choose_patch_type').removeClass('active active_tab1');
                $('#choose_patch_type').removeAttr('href data-toggle');
                $('#patch_type_details').removeClass('active');
                $('#choose_patch_type').addClass('inactive_tab1');
                $('#choose_patch_size').removeClass('inactive_tab1');
                $('#choose_patch_size').addClass('active_tab1 active');
                $('#choose_patch_size').attr('href', '#patch_size_details');
                $('#choose_patch_size').attr('data-toggle', 'tab');
                $('#patch_size_details').addClass('active in');
            }else{
                error_patchtype = 'Email is required';
                $('#error_patchtype').text(error_patchtype);
            }

        });

        $('#previous_btn_patch_size_details').click(function () {
            $('#choose_patch_size').removeClass('active active_tab1');
            $('#choose_patch_size').removeAttr('href data-toggle');
            $('#patch_size_details').removeClass('active in');
            $('#choose_patch_size').addClass('inactive_tab1');
            $('#choose_patch_type').removeClass('inactive_tab1');
            $('#choose_patch_type').addClass('active_tab1 active');
            $('#choose_patch_type').attr('href', '#patch_type_details');
            $('#choose_patch_type').attr('data-toggle', 'tab');
            $('#patch_type_details').addClass('active in');
        });

        $('#btn_patch_size_details').click(function () {
            var error_first_name = '';
            var error_last_name = '';

            if ($.trim($('#first_name').val()).length == 0)
            {
                error_first_name = 'First Name is required';
                $('#error_first_name').text(error_first_name);
                $('#first_name').addClass('has-error');
            } else
            {
                error_first_name = '';
                $('#error_first_name').text(error_first_name);
                $('#first_name').removeClass('has-error');
            }

            if ($.trim($('#last_name').val()).length == 0)
            {
                error_last_name = 'Last Name is required';
                $('#error_last_name').text(error_last_name);
                $('#last_name').addClass('has-error');
            } else
            {
                error_last_name = '';
                $('#error_last_name').text(error_last_name);
                $('#last_name').removeClass('has-error');
            }

            if (error_first_name != '' || error_last_name != '')
            {
                return false;
            } else
            {
                $('#choose_patch_size').removeClass('active active_tab1');
                $('#choose_patch_size').removeAttr('href data-toggle');
                $('#patch_size_details').removeClass('active');
                $('#choose_patch_size').addClass('inactive_tab1');
                $('#choose_backing').removeClass('inactive_tab1');
                $('#choose_backing').addClass('active_tab1 active');
                $('#choose_backing').attr('href', '#patch_backing_details');
                $('#choose_backing').attr('data-toggle', 'tab');
                $('#patch_backing_details').addClass('active in');
            }
        });

        $('#previous_btn_patch_backing_details').click(function () {
            $('#choose_backing').removeClass('active active_tab1');
            $('#choose_backing').removeAttr('href data-toggle');
            $('#patch_backing_details').removeClass('active in');
            $('#choose_backing').addClass('inactive_tab1');
            $('#choose_patch_size').removeClass('inactive_tab1');
            $('#choose_patch_size').addClass('active_tab1 active');
            $('#choose_patch_size').attr('href', '#patch_size_details');
            $('#choose_patch_size').attr('data-toggle', 'tab');
            $('#patch_size_details').addClass('active in');
        });

        $('#btn_patch_backing_details').click(function () {
            var error_address = '';
            var error_mobile_no = '';
            var mobile_validation = /^\d{11}$/;
            if ($.trim($('#address').val()).length == 0)
            {
                error_address = 'Address is required';
                $('#error_address').text(error_address);
                $('#address').addClass('has-error');
            } else
            {
                error_address = '';
                $('#error_address').text(error_address);
                $('#address').removeClass('has-error');
            }

            if ($.trim($('#mobile_no').val()).length == 0)
            {
                error_mobile_no = '11 digit Mobile Number is required';
                $('#error_mobile_no').text(error_mobile_no);
                $('#mobile_no').addClass('has-error');
            } else
            {
                if (!mobile_validation.test($('#mobile_no').val()))
                {
                    error_mobile_no = 'Invalid Mobile Number';
                    $('#error_mobile_no').text(error_mobile_no);
                    $('#mobile_no').addClass('has-error');
                } else
                {
                    error_mobile_no = '';
                    $('#error_mobile_no').text(error_mobile_no);
                    $('#mobile_no').removeClass('has-error');
                }
            }
            if (error_address != '' || error_mobile_no != '')
            {
                return false;
            } else
            {
                $('#choose_backing').removeClass('active active_tab1');
                $('#choose_backing').removeAttr('href data-toggle');
                $('#patch_backing_details').removeClass('active');
                $('#choose_backing').addClass('inactive_tab1');
                $('#choose_border').removeClass('inactive_tab1');
                $('#choose_border').addClass('active_tab1 active');
                $('#choose_border').attr('href', '#patch_border_details');
                $('#choose_border').attr('data-toggle', 'tab');
                $('#patch_border_details').addClass('active in');
            }

        });

        $('#previous_btn_patch_border_details').click(function () {
            $('#choose_border').removeClass('active active_tab1');
            $('#choose_border').removeAttr('href data-toggle');
            $('#patch_border_details').removeClass('active in');
            $('#choose_border').addClass('inactive_tab1');
            $('#choose_backing').removeClass('inactive_tab1');
            $('#choose_backing').addClass('active_tab1 active');
            $('#choose_backing').attr('href', '#patch_backing_details');
            $('#choose_backing').attr('data-toggle', 'tab');
            $('#patch_backing_details').addClass('active in');
        });
// btn_patch_border_details
        $('#btn_patch_border_details').click(function () {
            $('#choose_border').removeClass('active active_tab1');
            $('#choose_border').removeAttr('href data-toggle');
            $('#patch_border_details').removeClass('active');
            $('#choose_border').addClass('inactive_tab1');
            $('#choose_metalic_thread').removeClass('inactive_tab1');
            $('#choose_metalic_thread').addClass('active_tab1 active');
            $('#choose_metalic_thread').attr('href', '#patch_metalic_thread_details');
            $('#choose_metalic_thread').attr('data-toggle', 'tab');
            $('#patch_metalic_thread_details').addClass('active in');
        });
// choose_metalic_thread patch_metalic_thread_details
        $('#previous_btn_patch_metalic_thread_details').click(function () {
            $('#choose_metalic_thread').removeClass('active active_tab1');
            $('#choose_metalic_thread').removeAttr('href data-toggle');
            $('#patch_metalic_thread_details').removeClass('active in');
            $('#choose_metalic_thread').addClass('inactive_tab1');
            $('#choose_border').removeClass('inactive_tab1');
            $('#choose_border').addClass('active_tab1 active');
            $('#choose_border').attr('href', '#patch_border_details');
            $('#choose_border').attr('data-toggle', 'tab');
            $('#patch_border_details').addClass('active in');
        });
        $('#btn_patch_metalic_thread_details').click(function () {
            $('#choose_metalic_thread').removeClass('active active_tab1');
            $('#choose_metalic_thread').removeAttr('href data-toggle');
            $('#patch_metalic_thread_details').removeClass('active');
            $('#choose_metalic_thread').addClass('inactive_tab1');
            $('#choose_additional_information').removeClass('inactive_tab1');
            $('#choose_additional_information').addClass('active_tab1 active');
            $('#choose_additional_information').attr('href', '#patch_additional_information_details');
            $('#choose_additional_information').attr('data-toggle', 'tab');
            $('#patch_additional_information_details').addClass('active in');
        });
        $('#previous_btn_patch_additional_information_details').click(function () {
            $('#choose_additional_information').removeClass('active active_tab1');
            $('#choose_additional_information').removeAttr('href data-toggle');
            $('#patch_additional_information_details').removeClass('active in');
            $('#choose_additional_information').addClass('inactive_tab1');
            $('#choose_metalic_thread').removeClass('inactive_tab1');
            $('#choose_metalic_thread').addClass('active_tab1 active');
            $('#choose_metalic_thread').attr('href', '#patch_metalic_thread_details');
            $('#choose_metalic_thread').attr('data-toggle', 'tab');
            $('#patch_metalic_thread_details').addClass('active in');
        });
        $('#btn_patch_additional_information_details').click(function () {
            $('#btn_patch_additional_information_details').attr("disabled", "disabled");
            $(document).css('cursor', 'prgress');
            $("#register_form").submit();
        });
        //choose_additional_information patch_additional_information_details
    });
</script>
