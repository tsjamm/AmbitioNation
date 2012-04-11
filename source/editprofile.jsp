<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Edit Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@include  file="header_session.jsp"%>

<div align="center" style="font-family: Georgia; margin:0; padding:0; color:#26292b; font-size:12px; width:100%; background:url(images/IndexBackground.png) repeat-x left top #f5f6f8">
  <center>
<form name="registration" onsubmit="return formValidation();" action="updatedetails.jsp" method="POST">
<table height="1" cellspacing="1" width="67%" border="1" background="images/rainbow.png">
  <tbody>
    <tr>
      <td width="100%" height="1">
        
          <div align="right">
          <table cellspacing="1" width="100%" border="0" height="240">
            <tbody>
              <tr>
                <td width="100%" height="25" colspan="2"><b><i><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <marquee width="249" height="22" behavior="alternate" scrollamount="4">Edit User Details </marquee>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></i></b></td>
              </tr>
              
              <tr>
                <td width="37%" height="25"><b>Ambition</b></td>
                <td width="63%" height="25"><input name="ambition" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="28"><b>First Name</b></td>
                <td width="63%" height="28">
                 
                    <p><input type="text" name="fname" size="20"></p>
                 
                </td>
              </tr>
              <tr>
                <td width="37%" height="28"><b>Last Name</b></td>
                <td width="63%" height="28">
                 
                    <p><input type="text" name="lname" size="20"></p>
                 
                </td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>CHANGE Password</b></td>
                <td width="63%" height="25"><input type="password" name="pword" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Confirm NEW
                  Password</b></td>
                <td width="63%" height="25"><input type="password" name="cpword" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Phone Number
                  </b></td>
                <td width="63%" height="25"><input name="phone" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="22"><b>Address</b></td>
                <td width="63%" height="22"><textarea rows="2" name="add" cols="15"></textarea></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>City
                  </b></td>
                <td width="63%" height="25"><input name="city" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>State</b></td>
                <td width="63%" height="25"><select name="state" id="state">
                <option value="default">Select your state</option>
                <option value="AN">Andaman and Nicobar Islands</option>
                <option value="AP">Andhra Pradesh</option>
                <option value="AR">Arunachal Pradesh</option>
                <option value="AS">Assam</option>
                <option value="BR">Bihar</option>
                <option value="CH">Chandigarh</option>
                <option value="CT">Chhattisgarh</option>
                <option value="DN">Dadra and Nagar Haveli</option>
                <option value="DD">Daman and Diu</option>
                <option value="DL">Delhi</option>
                <option value="GA">Goa</option>
                <option value="GJ">Gujarat</option>
                <option value="HR">Haryana</option>
                <option value="HP">Himachal Pradesh</option>
                <option value="JK">Jammu and Kashmir</option>
                <option value="JR">Jharkhand</option>
                <option value="KA">Karnataka</option>
                <option value="KL">Kerala</option>
                <option value="LD">Lakshadweep</option>
                <option value="MP">Madhya Pradesh</option>
                <option value="MH">Maharashtra</option>
                <option value="MN">Manipur</option>
                <option value="ML">Meghalaya</option>
                <option value="MZ">Mizoram</option>
                <option value="NL">Nagaland</option>
                <option value="OR">Orissa</option>
                <option value="PY">Pondicherry</option>
                <option value="PB">Punjab</option>
                <option value="RJ">Rajasthan</option>
                <option value="SK">Sikkim</option>
                <option value="TN">Tamil Nadu</option>
                <option value="TR">Tripura</option>
                <option value="UL">Uttaranchal</option>
                <option value="UP">Uttar Pradesh</option>
                <option value="WB">West Bengal</option>
                </select></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Pin Code
                  </b></td>
                <td width="63%" height="25"><input name="pin" size="6"></td>
              </tr>
              
              <tr>
                <td width="37%" height="27"><b>Date Of Birth</b></td>
                <td width="63%" height="27"><select size="1" name="date">
                    <option selected>Day</option>
                    <option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
                  </select><select size="1" name="month">
                    <option selected>Month</option>
                    <option value="01">January</option>
					<option value="02">February</option>
					<option value="03">March</option>
					<option value="04">April</option>
					<option value="05">May</option>
					<option value="06">June</option>
					<option value="07">July</option>
					<option value="08">August</option>
					<option value="09">September</option>
					<option value="10">October</option>
					<option value="11">November</option>
					<option value="12">December</option>
                  </select><select size="1" name="year">
                    <option selected>Year</option>
                    <option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option><option value="1899">1899</option><option value="1898">1898</option><option value="1897">1897</option><option value="1896">1896</option><option value="1895">1895</option><option value="1894">1894</option><option value="1893">1893</option><option value="1892">1892</option>
                  </select></td>
              </tr>
              <tr>
                <td width="37%" height="27"><b>Current Work Place</b></td>
                <td width="63%" height="27"><input name="work" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="27"><b>Highest Education</b></td>
                <td width="63%" height="27"><input name="study" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"></td>
                <td width="63%" height="25"></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Enter Current Password to Change Details</b></td>
                <td width="63%" height="25"><input type="password" name="oldpword" size="20"></td>
              </tr>
              <tr>
                <td width="37%" height="25"></td>
                <td width="63%" height="25"><input type="submit" value="Update" name="B1"></td>
              </tr>
            </tbody>
          </table>
          </div>
          
      </td>
    </tr>
  </tbody>
</table>
</form>
</center>
</div>


</body>
</html>