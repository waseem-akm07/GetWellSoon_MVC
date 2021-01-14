<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmwrtrev.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="price-section app-sec">
    <div class="Contact">
      <h1>Write Review<asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
        </h1>
    <div class="input-form">
          <label class="" for="inputEmail">Select Appointment</label>
        <asp:DropDownList ID="drpapp" cssclass="form-control" runat="server" DataSourceID="ObjectDataSource1" DataTextField="det" DataValueField="cod" /></div>
      <div class="input-form">
       <label class="" for="inputEmail">Rating</label>
          <asp:Rating ID="Rating1" runat="server"  StarCssClass="ratingStar"
                    WaitingStarCssClass="savedRatingStar"
                    FilledStarCssClass="filledRatingStar"
                    EmptyStarCssClass="emptyRatingStar" MaxRating="5"></asp:Rating>     
      </div>
        <div class="input-form">
       <label class="" for="inputEmail">Review Description</label>
        <asp:TextBox ID="txtdsc" cssclass="form-control" runat="server" TextMode="MultiLine" />
            <br />
        </div>
        
   
        <div class="input-form">
   
        <asp:button ID="btn1" runat="server" class="btn btn-lg btn-block" 
            text="Submit" OnClick="btn1_Click" />
        
    </div>
          <div class="input-form">
          <asp:Label ID="lblusr" runat="server" cssclass="label-danger"/>
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dspusrapp" TypeName="nsgetwell.clsappreq">
                  <SelectParameters>
                      <asp:SessionParameter Name="usrcod" SessionField="cod" Type="Int32" />
                  </SelectParameters>
              </asp:ObjectDataSource>
        </div>
  </div>
</asp:Content>

