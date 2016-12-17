<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="computer.css" rel="stylesheet" type="text/css" />
    <link href="media501.css" rel="stylesheet" type="text/css" />
    <link href="media500.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>TEAM E3</title>
    <link rel="icon" type="image/png"  href="logo.png" />
    <link rel="SHORTCUT ICON" href="logo.png" /> 

   <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>
   <script src="Scripts/scroll.js"></script>
    
</head>
<body onunload="unloadP('UniquePageNameHereScroll')" onload="loadP('UniquePageNameHereScroll')">
<form id="form1" runat="server">
   <div class="all">
        <div class="menu">
            <nav>
                <ul>
                  <li><a class="meme"  href="#header">Top</a></li>     
                  <li><a class="meme1" href="#1997">Our team</a></li>
                  <li><a class="meme1"  href="#19978">Application</a></li>       
                </ul>
            </nav>   
        </div>
        <div id="header">
            <h1 id="pp1">TEAM E3<br />Green ICT Project</h1>
        </div>
        
         <div id="19978" class="app house">
            
             <h2>Calculating the building's energy consumption</h2>
             
             <div class="application" onscroll="scroll(this);">
                 <p>Choose your city:</p>
                 <div id="weather"> 
                 <select id="DL" class="inputnumbers1" name="cities" required>
                      <option value="" >Choose a city</option>
                        <option value="Helsinki">Helsinki</option>
                        <option value="Lahti">Lahti</option>
                        <option value="Turku">Turku</option>
                        <option value="Oulu">Oulu</option>
                       <option value="Mikkeli">Mikkeli</option>

                 </select>

                </div>
                
               <p>Degree inside (°C):<br /><span style="font-size:70%">(use comma if number is not integer)</span></p>
                 <p id="Message12"><asp:Label id="Message1" CssClass="message1" runat="server" /></p>
                 <p>
                      <input id="degInside" class="inputnumbers"  step="any" name="degInside" required="required"    pattern="[0-9,-]+" title="please type number i.e: 20,5 (use comma)" />
                </p>
                <p>House area (m3):<br /><span style="font-size:70%">(use comma if number is not integer)</span></p>
                <p id="Message122">
                    <asp:Label id="Message2" CssClass="message2" runat="server" />
                    </p>
                 <p>
                     <input id="houseArea" class="inputnumbers"  step="any" name="houseArea"  required="required"    pattern="[0-9,]+" title="please type positive number i.e: 20,5 (use comma)"/>
                </p>

                <p>Efficiency class:</p>
                    <div>
                        <select class="inputnumbers1" name="energyEf" required>
                        <option value="">Choose efficiency class</option>
                        <option value="75">A (75)</option>
                        <option value="160,5">B (160.5)</option>
                        <option value="180,5">C (180.5)</option>
                        <option value="210,5">D (210.5)</option>
                        <option value="250,5">E (250.5)</option>
                        <option value="295,5">F (295.5)</option>
                        <option value="321">G(321)</option>
                        </select>
                    </div>
                <p>
                    <asp:Button ID="Button1" type="button" value="button"  CssClass="button" runat="server" Text="Result" OnClick="Button1_Click"  />
                </p>
                <p class="result">
                    <asp:Label id="Message" CssClass="message" runat="server" />
                </p> 
             </div>
        </div>

       <div id="1997" class="about">
        <p class="Ourteam"><b>OUR TEAM</b></p>
            <div class="team">
                <div class="p1">
                    <asp:Image ID="Image1" CssClass="img1" runat="server" ImageUrl="/img/1.jpg" Height="110px" Width="110px" />
                    <p id="name1">Hien Nguyen</p>
                    </div>
                <div class="p2">
                    <asp:Image ID="Image2" CssClass="img2" runat="server" ImageUrl="/img/2.jpg" Height="110px" Width="110px" />
                   <p id="name2"> Evgenii Sverchkov</p>
                </div>
                <div class="p3">
                     <asp:Image ID="Image3" CssClass="img3" runat="server" ImageUrl="/img/3.jpg" Height="110px" Width="110px" />
                    <p id="name3">Osman Jalloh</p>
                </div>
                <div class="p4">
                     <asp:Image ID="Image4" CssClass="img4" runat="server" ImageUrl="/img/4.jpg" Height="110px" Width="110px" />
                    <p id="name4">Khoa Bui</p>
                </div>
            </div>
         </div>
    </div>
</form>
</body>
</html>
