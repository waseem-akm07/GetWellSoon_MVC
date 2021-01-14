<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmare.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 28.7041, lng: 77.1025 },
          zoom: 8
        });
        google.maps.event.addListener(map, 'click', getLangLong);
      }

      function getLangLong(e) {
          document.getElementById('ContentPlaceHolder1_lblcrd').innerHTML = e.latLng;
          document.getElementById('ContentPlaceHolder1_Hidden1').value = e.latLng;
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMb5p3c5bxm9sn6UXaJAvzSadWiYB9kZ8&callback=initMap"
    async defer></script>
<div class="Contact">
      <h1>Areas</h1>
    <input type="hidden" id="Hidden1" runat="server" />
    <div id="map" style="height:150px;width:100%">
    </div>
    <div class="input-form">
      <label class="" for="inputEmail">Select City</label>
        <asp:DropDownList runat="server" id="drpcty" cssclass="form-control" DataSourceID="ObjectDataSource1" DataTextField="ctynam" DataValueField="ctycod" AutoPostBack="True"></asp:DropDownList>    
    </div>
    <div class="input-form">
      <label class="" for="inputEmail">Area</label>
        <asp:Textbox runat="server" id="txtare" cssclass="form-control"></asp:Textbox>    
    </div>
    
        
        <div class="input-form">
      <label class="" for="inputEmail">Coordinates</label>
       <asp:Label runat="server" id="lblcrd" cssclass="form-control" ></asp:Label>
        </div>
        <asp:Button id="btnsub" cssclass="btn btn-lg btn-block" 
            Text="Submit" runat="server" OnClick="btnsub_Click"></asp:Button>      
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" Width="918px" DataKeyNames="arecod" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="arenam" HeaderText="Area" SortExpression="arenam" />
                <asp:BoundField DataField="arelatlng" HeaderText="Coordinates" SortExpression="arelatlng" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
      </asp:GridView>
      <br />
      <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clsare">
          <SelectParameters>
              <asp:ControlParameter ControlID="drpcty" Name="ctycod" PropertyName="SelectedValue" Type="Int32" />
          </SelectParameters>
      </asp:ObjectDataSource>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="nsgetwell.clscty"></asp:ObjectDataSource>
    </div>
</asp:Content>

