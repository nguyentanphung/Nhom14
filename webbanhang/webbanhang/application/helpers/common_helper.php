<?php
function public_url($url='')
{
	return base_url('public/'.$url);// tra ve duong dan tuyet doi
}
//ham hien thi ra cac danh sach
function pre($list,$exit=TRUE)
{
	echo "<pre>";
	print_r($list);
	if($exit)
	{
		die();
	}
}