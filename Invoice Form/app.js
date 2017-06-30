$(function(){
	//Get the form.
	var form =$('#ajaz-contact');

	//Get the message div.
	var formMessages = $('#form-messages');

	//TODO

	//Set up an event listener for the contact form.
	$(form).submit(function(event){
		//Stop the browser from submitting the form
		event.preventDefault();
	});

	//Serialize the form data.
	var forData =$(form).serialize();

	//Submit the form using AJAX
	$.ajax({
		type: 'POST',
		url: $(form).attr('action'),
		data: formData
	})
});