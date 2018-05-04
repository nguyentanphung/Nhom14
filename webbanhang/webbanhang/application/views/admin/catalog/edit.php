<?php
//laod ra file head
$this->load->view('admin/catalog/head', $this->data);
?>

<div class="line"></div>

<div class="wrapper">
	<div class="widget">
		<div class="title">
			
			<h6>Thêm Mới Danh Mục Sản Phẩm</h6>
		</div>

		<form class="form" id="form" action="" method="post" enctype="multipart/form-data">
			<fieldset>
				<div class="formRow">
						<label class="formLeft" for="param_name">name:<span class="req">*</span></label>
						<div class="formRight">
							<span class="oneTwo"><input name="name" id="param_name" _autocheck="true" value="<?php echo $info->name?>" type="text"></span>
							<span name="name_autocheck" class="autocheck"></span>
							<div name="name_error" class="clear error"><?php echo form_error('name')?></div>
						</div>
						<div class="clear"></div>
				</div>

				<div class="formRow">
						<label class="formLeft" for="param_parent_id">Danh Mục Cha:<span class="req">*</span></label>
						<div class="formRight">
							<span class="oneTwo">
								<select _autocheck="true" id="param_parent_id" name="parent_id">
								
									<option value="0">Là Danh Mục Cha</option>
									<?php foreach ($list as $row) :?>
										<option value="<?php echo $row->id?>"  <?php echo ($row->id == $info->parent_id)?'selected':'';?>><?php echo $row->name?></option>
									<?php endforeach;?>
								</select></span>
							<span name="parent_id_autocheck" class="autocheck"></span>
							<div name="parent_id_error" class="clear error"><?php echo form_error('parent_id')?></div>
						</div>
						<div class="clear"></div>
				</div>
				
				<div class="formRow">
						<label class="formLeft" for="param_name">Thứ Tự hiển thị :</label>
						<div class="formRight">
							<span class="oneTwo"><input name="sort_order" id="param_sort_order" _autocheck="true" value="<?php echo $info->sort_order?>" type="text"></span>
							<span name="sort_order_autocheck" class="autocheck"></span>
							<div name="sort_order_error" class="clear error"><?php echo form_error('sort_order')?></div>
						</div>
						<div class="clear"></div>
				</div>
				<div class="formSubmit">
	           			<input type="submit" value="Cập Nhập" class="redB">
	           			
	           	</div>
			</fieldset>
		</form>
	</div>


</div>
