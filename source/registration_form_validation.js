/**
 * 
 */
function formValidation()
{
var uemail = document.registration.userid;
var pass = document.registration.pword;
var cpass = document.registration.cpword;
var fname = document.registration.fname;
var lname = document.registration.lname;
var uphone = document.registration.phone;
var ucity = document.registration.city;
var ustate = document.registration.state;
var upin = document.registration.pin;

if(ValidateEmail(uemail))
{
if(pass_validation(pass,cpass,7,12))
{
if(allLetter(fname))
{
if(allLetter(lname))
{
if(allLetter(ucity))
{
if(alphanumeric(uadd))
{ 
if(stateselect(ustate))
{
if(allnumeric(upin))
{
if(allnumeric(uphone))
{

} 
}
} 
}
}
}
}
}
}


return false;
}


function ValidateEmail(uemail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
	if (cpass != pass)
	{
	alert("Passwords Do NOT Match");
	cpassid.focus();
	return false;
	}
	return true;
}
else
{
alert("You have entered an invalid email address!");
uemail.focus();
return false;
}
}

function pass_validation(pass,cpass,mx,my)
{
var pass_len = pass.value.length;

if (pass_len == 0 ||pass_len >= my || pass_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
passid.focus();
return false;
}
if (cpass != pass)
{
alert("Passwords Do NOT Match");
cpassid.focus();
return false;
}
return true;
}

function allLetter(fname)
{ 
var letters = /^[A-Za-z]+$/;
if(fname.value.match(letters))
{
return true;
}
else
{
alert('First Name must have alphabet characters only');
fname.focus();
return false;
}
}

function allLetter(lname)
{ 
var letters = /^[A-Za-z]+$/;
if(lname.value.match(letters))
{
return true;
}
else
{
alert('Last Name must have alphabet characters only');
lname.focus();
return false;
}
}

function allLetter(ucity)
{ 
var letters = /^[A-Za-z]+$/;
if(ucity.value.match(letters))
{
return true;
}
else
{
alert('City must have alphabet characters only');
ucity.focus();
return false;
}
}

function alphanumeric(uadd)
{ 
var letters = /^[0-9a-zA-Z]+$/;
if(uadd.value.match(letters))
{
return true;
}
else
{
alert('User Address must have alphanumeric characters only');
uadd.focus();
return false;
}
}

function stateselect(ustate)
{
if(ustate.value == "Default")
{
alert('Select your state from the list');
ustate.focus();
return false;
}
else
{
return true;
}
}

function allnumeric(upin)
{ 
var numbers = /^[0-9]+$/;
if(upin.value.match(numbers))
{
return true;
}
else
{
alert('PIN code must have numeric characters only');
upin.focus();
return false;
}
}

function allnumeric(uphone)
{ 
var numbers = /^[0-9]+$/;
if(uphone.value.match(numbers))
{
	alert('Form Succesfully Submitted. Please Log In to Continue');
return true;
}
else
{
alert('Phone Number must have numeric characters only');
uphone.focus();
return false;
}
}

