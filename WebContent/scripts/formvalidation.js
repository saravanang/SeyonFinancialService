// Form validation
$(document).ready(function() {
	debug: true;
	success: "valid";
	jQuery.validator.addMethod("specialChar", function(value, element) {
		return this.optional(element) || /([0-9a-zA-Z\s])$/.test(value);
	}, "Please Fill Correct Value in Field.");
   $("#entry_form").validate({
	   	errorElement: "label",
	  	errorClass: "error-fld",
	  	errorPlacement: function(error,element) {
	  		error.appendTo(element.parent("span"));
	  		//error.parent("input").removeClass("curFocus");
	  		//error.parent("input").addClass("curFocus-err");
	  	},
	  	highlight: function (element, errorClass, validClass) {
	        $(element.form).find("span[for=" + element.id + "]").addClass("curFocus-err");
	    },
	    unhighlight: function (element, errorClass, validClass) {
	        $(element.form).find("span[for=" + element.id + "]").removeClass("curFocus-err");
	    },
        rules: {
        	//Employee Name
          enamet: 	"required",	
          efname: 	{ required:true,minlength:2,},
          elname: 	{ required:true,},
          	// Employee Date
          ebdate: 	{required:true, date:true,},
          	// Employee Gender
           	// Employee Martial Status
          	//Employee Dependent Name
          efsnamet: 	"required",                    
          efsfname: 	{ required:true,minlength:2,},
          efslname: 	{ required:true,},
          	// Employee No.of Dependent          
          edepen: 	{required:true,digits:true,},
          	// Employee religion
          erelig: 	{required:true,},
          	// Employee Caste
          	// Email
          eemail: 	{required:true,email:true},
          	// Phone Numbers
          emphno:{digits:true,minlength:10},
          elphnoa:{digits:true,minlength:2},
          elphno:{digits:true,},
          	// Employee degree
          eeduqual:	{digit:false,},
          	//Employee Address 1
          eaaddr11: {required:true,},
          eaarea1: 	{required:true,},
          eacity1: 	{required:true,},
          eastate1: {required:true,},
          eacntry1: {required:true,},
          eapincde1:{required:true,digits:true,},
          	//Employee Address 1
          eaaddr12: {required:true,},
          eaarea2: 	{required:true,},
          eacity2: 	{required:true,},
          eastate2:	{required:true,},
          eacntry2: {required:true,},
          eapincde2:{required:true,digits:true,},
          //Employee Prev. Company Exp
          epnoofexp:{digits:true,},           
        },
        messages: {
        	//Employee Name
          enamet: 	"Pick one",
          efname: 	{required: "Enter a first name",},
          elname: 	{required:"Enter a last name",}, 
          	// Date of Birth
          ebdate: 	"Enter a valid date",
          	// Employee Gender
        	// Employee Martial Status
        	//Employee Dependent Name
          efsnamet: 	"Pick one",
          efsfname: 	{required: "Enter a first name",},
          efslname: 	"Enter a last name",          
          	// No. of Dependent
          edepen: 	{required:"Enter dependents",digits: "Enter only digits",},
          	// Employee Religion
          erelig: 	"Enter religion",
          	// Email
          eemail:	{required:"Enter email address",},  
          esex: 	"Pick One",         
          eaaddr11: {required:"Enter a valid address",},
          eaarea1: 	{required:"Enter area",},
          eacity1: 	{required:"Enter city",},
          eastate1: {required:"Select state",},
          eacntry1: {required:"Select country",},
          eapincde1:{required:"Enter pincode",},
          eaaddr12: {required:"Enter a valid address",},
          eaarea2: 	{required:"Enter area",},
          eacity2: 	{required:"Enter city",},
          eastate2: {required:"Select state",},
          eacntry2: {required:"Select country",},
          eapincde2:{required:"Enter pincode",},
        },        
      });  
   $("input").focus(function(){
	   $(this).addClass("curFocus");
   });
   $("input").blur(function() {
		$(this).removeClass("curFocus");
	});
   $("select").focus(function(){
	   $(this).addClass("curFocus");
   });
   $("select").blur(function() {
		$(this).removeClass("curFocus");
	});   
   //Copy address
   $("input[name=eaddsame]").click(function(){
   	//alert("Using the same address as above");
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		 //alert("Using the same address as above is checked");
		   $("#eaaddr12").val($("#eaaddr11").val());
		   $("#eaaddr22").val($("#eaaddr21").val());
		   $("#eaarea2").val($("#eaarea1").val());
		   $("#eacity2").val($("#eacity1").val());
		   var estate1 = $("select[name=eastate1] option:selected").val();
		   $("select[name=eastate2] option[value=" + estate1 + "]").attr('selected','selected');
		   var ecntry1 = $("select[name=eacntry1] option:selected").val();
		   $("select[name=eacntry2] option[value=" + ecntry1 + "]").attr('selected','selected');
		   $("#eapincde2").val($("#eapincde1").val());
		   $("#eacntry2").val($("#eacntry1").val());
	   }else {
		   //alert("Using the same address as above is unchecked");
		   $('#eaaddr12').val("");
		   $("#eaaddr22").val("");
		   $("#eaarea2").val("");
		   $("#eacity2").val("");		 
		   $("#eapincde2").val("");
		   $("#eacntry2").val("");
	   };
   });
   //Copy address1
   $("#eaaddr11").keyup(function(){
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		   //alert("Using the same address eaaddr12");
		   $("#eaaddr12").val($("#eaaddr11").val());
	   }
   });
 //Copy address2
   $("#eaaddr21").keyup(function(){
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		   //alert("Using the same address eaaddr12");
		   $("#eaaddr22").val($("#eaaddr21").val());
	   }
   });
 //Copy area
   $("#eaarea1").keyup(function(){
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		   //alert("Using the same address eaaddr12");
		   $("#eaarea2").val($("#eaarea1").val());
	   }
   });
 //Copy city
   $("#eacity1").keyup(function(){
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		   //alert("Using the same address eaaddr12");
		   $("#eacity2").val($("#eacity1").val());
	   }
   });
   //copy state
   $("#eastate1").change(function(){
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		   //alert("Using the same address eastate1");
		   var estate1 = $("select[name=eastate1] option:selected").val();
		   $("select[name=eastate2] option[value=" + estate1 + "]").attr('selected','selected');
	   }
   });
   //Copy country
   $("#eacntry1").change(function(){
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		   //alert("Using the same address eastate1");
		   var ecntry1 = $("select[name=eacntry1] option:selected").val();
		   $("select[name=eacntry2] option[value=" + ecntry1 + "]").attr('selected','selected');
	   }
   });
   //Copy pincode
   $("#eapincde1").keyup(function(){
	   if($("input[name=eaddsame]:checked").is(':checked')) {
		   //alert("Using the same address eaaddr12");
		   $("#eapincde2").val($("#eapincde1").val());
	   }
   });
   
   $('#form').submit(function() {
       $('#progress').show();
   });
   
 });

$(function(){
	$(".menu > li ").click(function(){
		var t = $(this);
		  t.find('a').click(function() {
		    $('ul li').removeClass('section');
		    t.addClass('section');
		  });
	});	
});	
