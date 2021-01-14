<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/MasterPage.master" AutoEventWireup="true" CodeFile="frmprf.aspx.cs" Inherits="doctor_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Profile<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </h1>
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
          document.getElementById('ContentPlaceHolder1_Label1').innerHTML = e.latLng;
          document.getElementById('ContentPlaceHolder1_Hidden1').value = e.latLng;
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMb5p3c5bxm9sn6UXaJAvzSadWiYB9kZ8&callback=initMap"
    async defer></script>
    <div id="map" style="height:150px;width:100%">
    </div>
    <table class="nav-justified">
        <tr>
            <td style="width: 250px">Qualification</td>
            <td>
                <asp:TextBox ID="txtqal" runat="server" Height="98px" TextMode="MultiLine" Width="689px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 250px">Profile</td>
            <td>
                <cc1:Editor ID="Editor1" runat="server" Height="300px" />
            </td>
        </tr>
      
        <tr>
            <td style="width: 250px">Avaliabity Time </td>
            <td>
                <asp:TextBox ID="txtavltim" runat="server" Height="86px" TextMode="MultiLine" Width="688px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 250px">Appointment Phone No.</td>
            <td>
                <asp:TextBox ID="txtphn" runat="server" Width="690px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 250px">Address</td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" Height="91px" TextMode="MultiLine" Width="693px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 250px">Coordinates</td>
            <td>
                <input id="Hidden1" type="hidden"  runat="server"/>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
          <tr>
            <td style="width: 250px">Browse Picture</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 250px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

