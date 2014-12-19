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
//= require moment
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require fullcalendar
//= require fullcalendar/gcal
//= require bootstrap
//= require_tree .

$(document).on('ready page:load', function () {
  $('#signup_button').click(function(){

  $('#signUpModal').addClass('animated bounceOutLeft').modal();
  }),

$('#login_button').click(function(){
  $('#loginModal').addClass('animated bounceOutLeft').modal();
}),

  $('#calendar').fullCalendar({
  // ======put your options and callbacks here=====//
  header: {
  		left:   '',
        center: 'prev title next',
        right:  ''
  	},

  googleCalendarApiKey: 'GOOGLE_API_KEY',
        events: {
          googleCalendarId: 'emkatz1989@gmail.com',
            className: 'gcal-event' // an option!
        },

  defaultView: 'month',
  handleWindowResize: true,
  editable: true,
  selectable: true,
 /////
// function PreviewImage() {
//         var oFReader = new FileReader();
//         oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

//         oFReader.onload = function (oFREvent) {
//             document.getElementById("uploadPreview").src = oFREvent.target.result;
//         };
//     };
/////


  // $('.fc-day').hover(function(){
  // 	$(this).find('.fc-day-content').css('border-color', 'red');
  // },
  // function(){
  // 	$(this).find('#addToggle').remove();
  // });


  // eventMouseover: function( event, jsEvent, view ) {
  // $(this).css('border-color', 'red');

  //  },

  dayClick: function(date, jsEvent, view) {

         // alert('Clicked on: ' + date.format();

       // alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

     // alert('Current view: ' + view.name);
     console.log(this);

 //        // change the day's background color just for fun
 //        $(this).css('background-color', 'red');

 // //====DANGER ZONE=======//
 //        // $('#modalTitle').html(event.title);
 //        // $('#modalBody').html(event.description);
 //        // $('#eventUrl').attr('href',event.url);
        

        // $('#dayModalShow').find('#modalTitle').append

        // $("[data-date='this.data-date']")
        

        var date = $(this).attr("data-date");
        // Dig up the proper modal
//        $('#dateId').val(date);

      

       $('#dayShowModal'+ date).modal();
       // $('#mylightbox').ekkoLightbox(options);







        
       
        // $('#save-day').on('click', function(day){
        //   console.log ('triggered');
        //   day_id.save 
        // });


//====END OF DANGER ZONE====//
    

    }
	



 
       

  //   }

  //======end of callbacks========///
  })
});








