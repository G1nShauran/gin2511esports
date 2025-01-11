
//Gửi email liên hệ từ trang liên hệ
$('#btnSendContact').click(function(){
    var _token = $('#_token').val();
    var txtEmail = $('#txtEmail').val();
    var txtName = $('#txtName').val();
    var txtPhone = $('#txtPhone').val();
	var txtMessage = $('#txtMessage').val();

	if(txtEmail == '' || txtName == '' || txtPhone == '' || txtMessage == ''){
		alert('Vui lòng điền đầy đủ thông tin');
    	return false;		
	}

    //check email có đúng hay ko
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if(reg.test(txtEmail) == false){
    	alert('Email không hợp lệ, vui lòng kiểm tra lại');
    	return false;
    }

    $.ajax({
    	type: 'POST',
    	url: url + "/gui-email-lien-he",
    	data: {
    		txtEmail : txtEmail,
    		txtName : txtName,
    		txtPhone : txtPhone,
    		txtMessage : txtMessage,
    		_token : _token
    	},
    	success: function(data){
    		if(data == 'error_emty'){
    			alert('vui lòng điền đầy đủ thông tin');
    		}else if(data == 'error'){
                alert('Lỗi trong quá trình lưu, vui lòng kiểm tra lại');
            }else{
    			alert('Gửi thành công');
    		}
    	}
    });

});
//Gửi email liên hệ từ trang liên hệ


//Sắp xếp tin
$('#newsSort').on('change', function() {
    var cat = $('#newsCat').val();
    var sort = this.value;
    if (sort != '') {
        window.location.href= url+"/"+cat+"/?sapxep="+sort;
    }
    
});




// $('#mobileMenuBar').click(function() {
//     $('.header_menu').toggleClass("displayBlock");
// });

