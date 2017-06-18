<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <link href="Content/wp-content/themes/hubscale/css/bootstrap.minef15.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form">
   <div id="form-main">
  <div id="form-div">
   
      
      <p class="name">
          <asp:TextBox ID="txtName" runat="server" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" ></asp:TextBox>

      </p>
      
      <p class="email">
          <asp:TextBox ID="txtEmail" runat="server" class="validate[required,custom[email]] feedback-input" placeholder="Email"></asp:TextBox>
      </p>
      
      <p class="text">
          <asp:TextBox ID="txtComment" TextMode="MultiLine" runat="server" class="validate[required,length[6,300]] feedback-input" placeholder="Comment"></asp:TextBox>
        
      </p>
      
      
      <div class="submit">
          <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="SEND" OnClick="btnSubmit_Click" />
        <%--<input type="submit" value="SEND" id="button-blue"/>--%>
        
      </div>
  
  </div>
    </form>
</body>
</html>
