// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require moment
//= require fullcalendar
//= require fullcalendar/gcal
//= require bootstrap
//= require_tree .

$(document).on('ready page:load', function () {
  $('#calendar').fullCalendar({
  // ======put your options and callbacks here=====//
  



    dayClick: function(date, jsEvent, view) {

        alert('Clicked on: ' + date.format());

        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

        alert('Current view: ' + view.name);

        // change the day's background color just for fun
        $(this).css('background-color', 'red');

 //====DANGER ZONE=======//

 		// defaultView: 'month',
 		// editable: true,
 		//   selectable: true,
 		// select: function(start, end, allDay){
 		// 	endtime = $.fullCalendar.formatDate(end, 'h:mm tt');
 		// 	starttime = $.fullCalendar.formatDate(start, 'ddd, MMM d, h:mm tt');
 		// 	var mywhen = starttime + ' - ' + endtime;
 		// 	$('#dayShowModal').val
 		// }








//====END OF DANGER ZONE====//
    

    }
	



  // dayClick: function(a,b) {
  //       // alert('a day has been clicked!')
  //       console.log(this, a,b);
       

  //   }

  //======end of callbacks========///
  })
});








