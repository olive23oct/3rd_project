<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link href='resources/calendar/packages/core/main.css' rel='stylesheet' />
<link href='resources/calendar/packages/daygrid/main.css' rel='stylesheet' />
<script src='resources/calendar/packages/core/main.js'></script>
<script src='resources/calendar/packages/interaction/main.js'></script>
<script src='resources/calendar/packages/daygrid/main.js'></script>
<script src='resources/calendar/packages/core/locales/ko.js'></script>
<script>
   document.addEventListener('DOMContentLoaded', function() {
	   var obj = new Object;
	   var arr = [];
	   $(document).ready(function(){
	  	 var board_id = 'b_id_2';
	  	    $.ajax({
	  	    	 async :false,
	  	  	   	 url : "getScheduleList.do",
	  	  	   	 data : {
	  	  	   		 board_id : board_id
	  	  	   	 },
	  	  	   	 type : "post",
	  	  	   	 dataType : "json",
	  	  	   	 success : function(data){
	  	  	   		 console.log(data);
	  	  	   		for(var i = 0; i < data.length; i++){
						obj = {
							title : data[i].title,
							start : data[i].start_date,
							end : data[i].end_date
						}
						arr[i] = obj;
					}
	  	  	   		console.log(arr);
	  	  	   	 }
	  	  	   	 
	  	  	});

        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
       	  header: {
       		    center: "title", // 센터에는 타이틀 명이 오고
       		    left: "prev", // 왼쪽에는 < 버튼이 오고
       		    right: "next" // 오른쪽에는 > 버튼이 오게됌
       		  },
          plugins: [ 'interaction', 'dayGrid' ],
          defaultDate: '2019-07-22',
          editable: true,
          eventLimit: true, // allow "more" link when too many events
          locale : 'ko',
          monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
          monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
          dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
          dayNamesShort: ["일","월","화","수","목","금","토"],
          buttonText: {
          today : "오늘",
          month : "월별",
          week : "주별",
          day : "일별",
          },

          events: arr
          });
        calendar.render();
	   }); 
      });



	

   


</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<body>

  <div id='calendar'></div>

</body>
</html>
