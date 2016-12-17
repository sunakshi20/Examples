<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Airline Reservation System</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
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
    <form id="form1" runat="server">

        <div id="heading">
            <br />
            <img src="images/airline-img.png" style="margin-left:5px; margin-top:-15px; height:55px; position:absolute;"/>
            <h1 style="color:white; font-weight:bold; font-family:Calibri; margin-left:30px; margin-top:-15px; 
                position:absolute;"> AIRLINE</h1>

            <img src="images/signin.png" style="margin-left:740px; margin-top:-18px; height:60px; position:absolute;"/>
             <asp:LinkButton ID="SignIn" 
                 style="font-style:italic; font-weight:600; font-size:20px; color:white; position:absolute;
                 margin-left:800px;" runat="server" OnClick="SignIn_Click">SignIn</asp:LinkButton>

            <img src="images/signup.png" style="margin-left:925px; margin-top:-30px; height:100px; position:absolute;"/>
             <asp:LinkButton ID="SignUp" 
                style="font-style:italic; font-weight:600; font-size:20px; color:white;  position:absolute;
                margin-left:1020px;" runat="server" OnClick="SignUp_Click">Register</asp:LinkButton>

            <img src="images/flight.png" style="margin-left:1140px; margin-top:-13px; height:50px; position:absolute;"/>
             <asp:LinkButton ID="Search_flight" 
                style="font-style:italic; font-weight:600; font-size:20px; color:white; position:absolute;
                margin-left:1200px;" runat="server" OnClick="Search_flight_Click">Book Flight</asp:LinkButton>

            <img src="images/contactus.png" style="margin-left:1340px; margin-top:-13px; height:50px; position:absolute;"/>
             <asp:LinkButton ID="Contact_Us" 
                style="font-style:italic; font-weight:600; font-size:20px; color:white; position:absolute; 
                margin-left:1400px;" runat="server" OnClick="Contact_Us_Click">Contact Us</asp:LinkButton>
        </div>
        <div class="boxes">
            <div class="smallbox" style="margin-top:25px; margin-left:20px; background-color: black;">
                <img src="images/paris.jpg" style="height:100%; width:100%;"/>
                <p>10D/9N Paris Package</p>
            </div>
            <div class="smallbox" style="margin-top:25px; margin-left:460px; background-color:white;">
                <img src="images/switzerland.jpg" style="height:100%; width:100%;"/>
                <p>5D/4N Switzerland Package</p>
            </div>
            <div class="smallbox" style="margin-top:260px; margin-left:20px; background-color: black;">
                <img src="images/hawaii.jpg" style="height:100%; width:100%;"/>
                <p>7D/8N Hawaii Package</p>
            </div>
            <div class="smallbox" style="margin-top:260px; margin-left:460px; background-color:white;">
                <img src="images/dubai.jpg" style="height:100%; width:100%;"/>
                <p>9D/8N Dubai Package</p>
            </div>
        </div>

        <div class="divsearch">
            <p style="color:blue; font-size:x-large; padding:10px">Search Flights</p>

            &nbsp;&nbsp;<b>Source:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Source1" runat="server" Width="156px" CssClass="roundedcorner"></asp:TextBox>
             
            <br /> 
            <br />
            &nbsp;&nbsp;<b>Destination:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Destination1" runat="server" Width="156px" CssClass="roundedcorner"></asp:TextBox>

            <br />
            <br />
            &nbsp;&nbsp;<b>Date of Travel:</b>&nbsp;
            <asp:TextBox ID="Date1" runat="server" Width="156px" CssClass="roundedcorner">
            </asp:TextBox>&nbsp;(Select from calendar)<br />

            <br />
            <asp:Calendar ID="Calendar2" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="2px" Height="147px" Width="289px" style=" margin-left: 30px;"
                OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Button class="submit" ID="Button1" runat="server" Text="Search" style="margin-left:200px;" BorderStyle="Solid" OnClick="Button1_Click"/>
            <br />
        </div>

        <div id="divtable">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>







