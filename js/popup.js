$(document).ready(function(){


//hide letter toolbox first
$('.toolbox').hide();

//open toolbox
$('.toolboxbtn').click(function(){
	$(this).find(".toolbox").slideToggle( "fast" );
});


	$('.add,.edit,.edituser,.delete,.adduser,.addtitle2,.addletter_internal,.addletter_incoming,.addletter_external,.showletter,.letter_action,.forward,.forward_cycle,.edit_letter,.delete_letter').click(function(){
			$('.toolbox').slideUp();
			$('#loading').show('slide', {direction: 'left'},  500 );
			var id = $(this).attr("id");
			var type = $(this).attr("class");
			var table = $(this).attr("rel");
			var value = $(this).attr("value");
			var userid = $(this).attr("userid");
			//letter info
			var usertitle = $(this).attr("usertitle");
			var letteruserid = $(this).attr("letteruserid");
			var letternumber = $(this).attr("letternumber");
			var docnumber = $(this).attr("docnumber");
			var docdate = $(this).attr("docdate");
			var letterdate = $(this).attr("letterdate");
			var sender = $(this).attr("sender");
			var touser = $(this).attr("touser");
			var lettertype = $(this).attr("lettertype");
			var subject = $(this).attr("subject");
			var maintext = $(this).attr("maintext");
			var hasattachment = $(this).attr("hasattachment");
			var eghdam = $(this).attr("eghdam");
			var receiverid = $(this).attr("receiverid");
			var letterid = $(this).attr("letterid");
			var receivertype = $(this).attr("receivertype");
			var parent_receiverid = $(this).attr("parent_receiverid");
			var recipes = $(this).attr("recipes");
			var delivery_date = $(this).attr("delivery_date");

			//soloution 1
			$.post("../createpopup.php",
					{
					'id':id , 'type':type ,'table':table , 'value':value , 'userid':userid , 'letterid':letterid ,
					'usertitle':usertitle, 'letterdate':letterdate , 'letteruserid':letteruserid , 'receiverid':receiverid ,
					'letternumber':letternumber, 'docnumber':docnumber, 'docdate':docdate , 'letterdate':letterdate ,
					'sender':sender , 'touser':touser, 'lettertype':lettertype , 'subject':subject , 'maintext':maintext , 'hasattachment':hasattachment , 'eghdam':eghdam ,
					'receivertype':receivertype , 'parent_receiverid':parent_receiverid , 'recipes':recipes , 'delivery_date':delivery_date

				},
					function(data){
						if (type=="adduser" || type=="edituser" || type=="addletter_internal"|| type=="addletter_incoming"|| type=="addletter_external" || type=="showletter" || type=="forward" || type=="edit_letter" ) {
							$('#popup-wrap').removeClass('small');
							$('#popup-wrap').removeClass('big');
							$('#popup-wrap').addClass('large');
						}
						else if (type=="forward_cycle") {
							$('#popup-wrap').removeClass('small');
							$('#popup-wrap').removeClass('large');
							$('#popup-wrap').addClass('big');
						}
						else{
							$('#popup-wrap').removeClass('large');
							$('#popup-wrap').removeClass('big');
							$('#popup-wrap').addClass('small');
						};
						$('div#popup-wrap').html(data);
						$('#popup-wrap').show();
						$('#loading').hide('slide', {direction: 'right'}, 500 );
					}
			 );


		return false;
	});




//view letter icon

    $(".letteroptions").click(function () {
        
        recid = $(this).attr("receiverid");
        workpart = $(this).attr("work");
            $.ajax({
                type: "GET",
                url: "../letteroptions.php",
                data: {
                    'what_receiverid' : recid ,
                    'work' : workpart
                },
                dataType: "text",
                success: function(msg){
                	location.reload(true);
		            $('.lr').html(msg);
						$('.error,.ok').hide();
						$('#loading').hide('slide', {direction: 'right'}, 500 );
						$('.error,.ok').fadeIn( "slow" );

                }
            });
    });



});