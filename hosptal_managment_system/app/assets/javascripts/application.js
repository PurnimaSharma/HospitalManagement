// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
  window.onload = function () {
            var ddl = document.getElementById('mycontainer').getElementsByTagName("select")[0];
            for (var i = 1; i <= 50; i++) {
                var theOption = new Option;
                theOption.text = i;
                theOption.value = i;
                ddl.options[i] = theOption;
            }
        };

function validateForm() {
	  document.getElementById('nameStatus').innerHTML = "";
      document.getElementById('genderStatus').innerHTML = "";
      document.getElementById('ageStatus').innerHTML= "";
      document.getElementById('phnStatus').innerHTML = "";
      document.getElementById('addStatus').innerHTML = "";
      document.getElementById('passStatus').innerHTML = "";
   
    var x = document.forms["myForm"]["name"].value;
    var a = document.forms["myForm"]["AgeDropdown"].value;
    var r = document.forms["myForm"]["gender"].value;
     var y = document.forms["myForm"]["add"].value;
     var z = document.forms["myForm"]["pass"].value;
      var p = document.forms["myForm"]["phn"].value;
      var accept = document.forms["myForm"]["accept"].value; 
     
    if (x == null || x == "") 
    {
        document.getElementById('nameStatus').innerHTML = "*User name field should not be empty";
        return false;
    }
    else if (r != "male" && r!= "female") 
    { 
       document.getElementById('genderStatus').innerHTML = "*Gender must be selected";
       return false;
    }
    else if (a == 0) 
    { 
       document.getElementById('ageStatus').innerHTML = "*Age must be Selected";
       return false;
    }
     else if (p == 0) 
    { 
       document.getElementById('phnStatus').innerHTML = "*Age must be Selected";
       return false;
    }
    else if (y == null || y === "") 
    { 
       document.getElementById('addStatus').innerHTML = "*User address field should not be empty";
       return false;
    }
    else if (z == null || z === "") 
    { 
       document.getElementById('passStatus').innerHTML = "*User password field should not be empty";
       return false;
    }
     else if (myForm.accept.checked == false) 
    { 
       document.getElementById('accStatus').innerHTML = "*You must agree to terms";
       return false;
    }
}