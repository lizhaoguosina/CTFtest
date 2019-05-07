<?php
header("Content-Type: text/html;charset=utf-8");
$flagselect = $_POST['flagselect'];
$flag = $_POST['flag'];
$flag = md5($flag);
$trueflag0 = 'f2bb942c7d2adb3e91406ed4c419af04';
$trueflag1 = '43c1253063f91e688a9085eca8708f85';
$trueflag2 = 'cede54eadf8f8e22bc68cccb3575d07d';
if($flagselect == 'flag0'){
	if($flag == $trueflag0){
		echo '恭喜，第一个flag拿到了';
	}else{
		echo 'flag不是这个哦';
	}
}elseif($flagselect == 'flag1'){
	if($flag == $trueflag1){
		echo '恭喜，第二个flag找到啦';
	}else{
		echo 'flag不是这个哦';
	}
}else{
	if($flag == $trueflag2){
		echo '恭喜，第三个flag成功get了';
	}else{
		echo 'flag不是这个哦';
	}
}
?>
