<%@ Page Title="Информация о пациентах" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyCourse.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="patients1">
      <h3 align="right">
          <asp:SiteMapPath ID="SiteMapPath1" runat="server">
          </asp:SiteMapPath>
          </h3>
      <h5>

          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_patient" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="ID_patient" HeaderText="ID_patient" ReadOnly="True" SortExpression="ID_patient" />
                  <asp:BoundField DataField="SurnameOfPatient" HeaderText="SurnameOfPatient" SortExpression="SurnameOfPatient" />
                  <asp:BoundField DataField="AddressOfPatient" HeaderText="AddressOfPatient" SortExpression="AddressOfPatient" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString1 %>" DeleteCommand="DELETE FROM [Patients] WHERE [ID_patient] = @ID_patient" InsertCommand="INSERT INTO [Patients] ([SurnameOfPatient], [AddressOfPatient]) VALUES (@SurnameOfPatient, @AddressOfPatient)" ProviderName="<%$ ConnectionStrings:HospitalConnectionString1.ProviderName %>" SelectCommand="SELECT [ID_patient], [SurnameOfPatient], [AddressOfPatient] FROM [Patients]" UpdateCommand="UPDATE [Patients] SET [SurnameOfPatient] = @SurnameOfPatient, [AddressOfPatient] = @AddressOfPatient WHERE [ID_patient] = @ID_patient">
              <DeleteParameters>
                  <asp:Parameter Name="ID_patient" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="SurnameOfPatient" Type="String" />
                  <asp:Parameter Name="AddressOfPatient" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="SurnameOfPatient" Type="String" />
                  <asp:Parameter Name="AddressOfPatient" Type="String" />
                  <asp:Parameter Name="ID_patient" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>

          </h5>
        </div>
</asp:Content>
