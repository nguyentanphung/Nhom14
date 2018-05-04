<?php
//lay ngay hien tai dang int
//time thoi gian muon hien thi ngay
//full_time cho biet co lay ca gio phut giay hay khoog
function get_date($time, $full_time=true)
{
	$format='%d-%m-%y';
	if($full_time)
	{
		$format=$format.' - %h:%i:%s';
	}
	$date=mdate($format,$time);
	return $date;
} 