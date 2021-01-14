<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmreg.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="price-section app-sec">
    <div class="Contact">
      <h1>Sign Up</h1>
    <div class="input-form">
          <label class="" for="inputEmail">Email address</label>
        <asp:TextBox ID="txteml" cssclass="form-control" runat="server" /></div>
      <div class="input-form">
       <label class="" for="inputEmail">Phone No.</label>
        <asp:TextBox ID="txtphn" cssclass="form-control" runat="server"  /></div>
        <div class="input-form">
       <label class="" for="inputEmail">Password</label>
        <asp:TextBox ID="txtpwd" cssclass="form-control" runat="server" TextMode="Password" /></div>
    <div class="input-form">
       <label class="" for="inputEmail">Confirm Password</label>
        <asp:TextBox ID="txtconpwd" cssclass="form-control" runat="server" TextMode="Password" /></div>      
   
        <div class="input-form">
   
        <asp:button ID="btn1" runat="server" class="btn btn-lg btn-block" 
            text="Submit" OnClick="btn1_Click" />
        
    </div>
          <div class="input-form">
          <asp:Label ID="lblusr" runat="server" cssclass="label-danger"/>
        </div>
  </div>
</asp:Content>

