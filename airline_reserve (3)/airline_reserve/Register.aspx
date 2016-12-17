<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
         <link href="registerstyle.css" rel="stylesheet" type="text/css" />
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
<body id="RegImageBG">
    <form id="form1" runat="server">

         <div id="nav">
<%--            <header style="font-weight:bold; font-size:24px; color:white; background-color: black">AIRLINE</header>--%>
             <img src="images/signin.png" style="margin-left:-350px; margin-top:10px; height:40px; width:40px;position:absolute;"/>
             <img src="images/signup.png" style="margin-left:-175px; margin-top:12px; height:40px; width:40px;position:absolute;"/>
             <img src="images/flight.png" style="margin-left:-20px; margin-top:0px; height:70px; width:70px;position:absolute;"/>
             <img src="images/contactus.png" style="margin-left:210px; margin-top:-2px; height:70px; width:70px;position:absolute;"/>
            <div id="nav_wrapper"><br />
                <ul>
                    <li><a href="Home.aspx">Home</a></li> 
                    <li><a href="SignIn.aspx">SignIn</a></li>    
                    <li><a href="SearchFlight.aspx">Book Flight</a></li>   
                    <li><a href="ContactUs.aspx">Contact Us</a></li>                      
                </ul>
            </div>
        </div>

        <div class="regboxes">
            <br />
            <img src="images/signup-clipart.png" style="height:100px; width:100px; margin-left:300px;" />
            <p style="font-size:30px; font-weight:bold; color:white; font-family:sans-serif; margin-left:300px; margin-top:20px;">Sign Up</p>
            <img src="images/airline.jpg" style="margin-left:110px; height:200px; width:500px;"/>
        </div>

        <div id="divreg"> 
            <br /><br />      
            <asp:Label CssClass="fontstyle" ID="Label1" runat="server" Text="Label" style="margin-left:80px;">
                 ENTER YOUR DETAILS HERE
            </asp:Label>
        
<%--/*First Name Field */--%>
        
            <div style="margin-left:50px; margin-top:50px; height:40px; width:40px; position:absolute;">
                <img src="images/person.png" style="height:100%; width:100%"/>
            </div>
            <asp:textbox id="fname" runat="server" placeholder="First Name and Last Name Here" Height="31px" Width="295px" 
                CssClass="roundedcorner" Style="margin-left:110px; margin-top:50px;">
            </asp:textbox>            
            <%--/* check if field is not left blank */--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="fname" ErrorMessage="Required Field cannot be left blank" ForeColor="Red" Style="margin-left:20px">
            </asp:RequiredFieldValidator>  
            <br /><br />     

<%--/*Last Name Field */--%>
            <div style="margin-left:50px; height:40px; width:40px; position:absolute;">
                <img src="images/email.png" style="height:100%; width:100%"/>
            </div>
            <asp:textbox id="lname" runat="server" placeholder="Email Here" Height="31px" Width="295px" 
                CssClass="roundedcorner" Style="margin-left:110px;">
            </asp:textbox>
             <%--/* check if field is not left blank */--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="lname" ErrorMessage="Required Field cannot be left blank" ForeColor="Red" Style="margin-left:20px">
            </asp:RequiredFieldValidator>
            <br /><br />

<%--/*UserName Field */--%>
            <div style="margin-left:50px; height:40px; width:40px; position:absolute;">
                <img src="images/username.png" style="height:100%; width:100%"/>
            </div>
            <asp:textbox id="username" runat="server" placeholder="UserName Here" Height="31px" Width="295px" 
                CssClass="roundedcorner" Style="margin-left:110px;">
            </asp:textbox>

            <%--/* check if field is not left blank */--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="username" ErrorMessage="Required Field cannot be left blank" ForeColor="Red" Style="margin-left:20px">
            </asp:RequiredFieldValidator>
            <br /><br />

<%--/*Password Field */--%>
            <div style="margin-left:50px; height:40px; width:40px; position:absolute;">
                <img src="images/password.png" style="height:100%; width:100%"/>
            </div>
            <asp:textbox id="paswd" runat="server" placeholder="Password Here" Height="31px" Width="295px" 
                CssClass="roundedcorner" TextMode="Password" Style="margin-left:110px;">
            </asp:textbox>

            <%--/* check if field is not left blank */--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="paswd" ErrorMessage="Required Field cannot be left blank" ForeColor="Red" Style="margin-left:20px">
            </asp:RequiredFieldValidator>
            <br /><br />

<%--/*Repeat Password Field */--%>
            <div style="margin-left:50px; height:40px; width:40px; position:absolute;">
                <img src="images/cpassword.png" style="height:100%; width:100%"/>
            </div>
            <asp:textbox id="rpaswd" runat="server" placeholder="Confirm Password" Height="31px" Width="295px" 
                CssClass="roundedcorner" TextMode="Password" Style="margin-left:110px;">
            </asp:textbox>

             <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Passwords do not match."    ControlToCompare="rpaswd" ControlToValidate="paswd" ForeColor="Red">
            </asp:CompareValidator>

            <%--/* check if field is not left blank */--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="rpaswd" ErrorMessage="Required Field cannot be left blank" ForeColor="Red" Style="margin-left:20px">
            </asp:RequiredFieldValidator>        
             <br /><br />

<%--/*Submit Button*/--%>
            <asp:Button class="submit" ID="Submit" runat="server" Text="Register" style="margin-left:180px;" BorderStyle="Solid" />
        </div>
    </form>
</body>
</html>
