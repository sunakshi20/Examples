<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="homestyle.css" rel="stylesheet" type="text/css" />
    <style>
        .roundedcorner 
        {
            background:#fff;
            font-family:Times New Roman, Times, serif;
            font-size:11pt;
            margin-left:auto;
            margin-right:auto;
            margin-top:1px;
            margin-bottom:1px;
            padding:3px;
            border-top:1px solid #CCCCCC;
            border-left:1px solid #CCCCCC;
            border-right:1px solid #999999;
            border-bottom:1px solid #999999;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
        }                
    </style>
</head>
  <body class="ImageBG">
    <form id="form2" runat="server">
        
        <div id="nav">
            <header style="font-weight:bold; font-size:24px; color:white; background-color: #377D7a">AIRLINE</header>
            <div id="nav_wrapper"><br />
                <ul>
                    <li><a href="SignIn.aspx">SignIn</a></li> 
                    <li><a href="Register.aspx">Register</a></li>   
                    <li><a href="SearchFlight.aspx">Book Flight</a></li>   
                    <li><a href="ContactUs.aspx">Contact Us</a></li>                      
                </ul>
              <div id="nav_wrapper1">
             <img src="images/home.png" style="margin-left:-530px; margin-top:-55px; height:50px; width:50px;position:absolute;"/>
             <img src="images/signin.png" style="margin-left:-310px; margin-top:-52px; height:50px; width:50px;position:absolute;"/>
             <img src="images/flight.png" style="margin-left:-70px; margin-top:-52px; height:50px; width:50px;position:absolute;"/>
             <img src="images/contactus.png" style="margin-left:180px; margin-top:-65px; height:80px; width:80px;position:absolute;"/>
            </div>
            </div>
        </div>

        <div class="boxes">
            <div class="smallbox" style="margin-top:80px; margin-left:20px; background-color: black;">
                <img src="images/paris.jpg" style="height:100%; width:100%;"/>
                <p>10D/9N Paris Package</p>
            </div>
            <div class="smallbox" style="margin-top:80px; margin-left:460px; background-color:white;">
                <img src="images/switzerland.jpg" style="height:100%; width:100%;"/>
                <p>5D/4N Switzerland Package</p>
            </div>
            <div class="smallbox" style="margin-top:300px; margin-left:20px; background-color: black;">
                <img src="images/hawaii.jpg" style="height:100%; width:100%;"/>
                <p>7D/8N Hawaii Package</p>
            </div>
            <div class="smallbox" style="margin-top:300px; margin-left:460px; background-color:white;">
                <img src="images/dubai.jpg" style="height:100%; width:100%;"/>
                <p>9D/8N Dubai Package</p>
            </div>
        </div>

         <div class="divsearch">
            <p style="color:black; font-weight:bold; font-size:x-large; padding:10px; text-align:center;">Search Flights</p>

            &nbsp;&nbsp;<b>Source:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Source" runat="server" Width="156px" CssClass="roundedcorner"></asp:TextBox>
             
            <br /> 
            <br />
            &nbsp;&nbsp;<b>Destination:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Destination" runat="server" Width="156px" CssClass="roundedcorner"></asp:TextBox>

            <br />
            <br />
            &nbsp;&nbsp;<b>Date of Travel:</b>&nbsp;
            <asp:TextBox ID="Date" runat="server" Width="156px" CssClass="roundedcorner">
            </asp:TextBox>&nbsp;(Select from calendar)<br />

            <br />
            <asp:Calendar ID="Calendar1" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="2px" Height="147px" Width="289px" style=" margin-left: 30px;"
                OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Button class="submit" ID="Button2" runat="server" Text="Search" style="margin-left:200px;" BorderStyle="Solid" OnClick="Button1_Click"/>
            <br />
        </div>

        <div id="divtable">
            <asp:PlaceHolder ID="PlaceHolder" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>