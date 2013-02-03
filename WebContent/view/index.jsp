<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>20130124</title>
<script src="jquery/jquery-1.9.0.min.js"></script>
</head>
<body>

javascript sample

<p>
    <select size="10" id="selectbox_Id" multiple>
        <option id="1">犬</option>
        <option id="2">猫</option>
        <option id="3">うさぎ</option>
        <option id="4">ハムスター</option>
        <option id="5">(・ω・)ぶた</option>
    </select>
</p>
<p>
    <input type="button" value="上" id="UPBUTTON"   onclick="test.optionMoveUp()">
    <input type="button" value="下" id="DOWNBUTTON" onclick="test.optionMoveDown()">
<p>
<script>


var test = {
        optionMoveUp : function(){
            var $select = $("#selectbox_Id");
            var $selected = $select.children(":selected");
            $selected.each(function(){
                var id = $(this).attr("id");
                if(id != 1){
                    var intId = Number(id);
                    $select.remove("#" + intId);
                    $select.children("#" + (intId - 1)).before(this);
                }
                var $selectChildren = $select.children();
                $selectChildren.each(function (i){
                    $(this).attr("id",i+1);
                });
            });

        },
        optionMoveDown : function() {
            var $select = $("#selectbox_Id");
            var $selected = $select.children(":selected");
            $selected.each(function(){
                var id = $(this).attr("id");
                if(id != $select.children().length){
                    var intId = Number(id);
                    $select.remove("#" + intId);
                    $select.children("#" + (intId + 1)).after(this);
                }
                var $selectChildren = $select.children();
                $selectChildren.each(function (i){
                    $(this).attr("id",i+1);
                });
            });

        }

};


</script>
</body>
</html>