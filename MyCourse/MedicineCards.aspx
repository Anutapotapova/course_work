<%@ Page Title="Информация о пациентах" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyCourse.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="MedicineCards1"><h3 align="right">
          <asp:SiteMapPath ID="SiteMapPath1" runat="server">
          </asp:SiteMapPath>
          </h3><h5>

              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_card" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                      <asp:BoundField DataField="ID_patient" HeaderText="ID_patient" SortExpression="ID_patient" />
                      <asp:BoundField DataField="ID_separation" HeaderText="ID_separation" SortExpression="ID_separation" />
                      <asp:BoundField DataField="ID_card" HeaderText="ID_card" ReadOnly="True" SortExpression="ID_card" />
                      <asp:BoundField DataField="Diagnozis" HeaderText="Diagnozis" SortExpression="Diagnozis" />
                      <asp:BoundField DataField="ID_Officer" HeaderText="ID_Officer" SortExpression="ID_Officer" />
                      <asp:BoundField DataField="NumberOfWard" HeaderText="NumberOfWard" SortExpression="NumberOfWard" />
                      <asp:BoundField DataField="DataOfReceipt" HeaderText="DataOfReceipt" SortExpression="DataOfReceipt" />
                      <asp:BoundField DataField="DataOfIssuanse" HeaderText="DataOfIssuanse" SortExpression="DataOfIssuanse" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString1 %>" DeleteCommand="DELETE FROM [MedicineCards] WHERE [ID_card] = @ID_card" InsertCommand="INSERT INTO [MedicineCards] ([ID_patient], [ID_separation], [Diagnozis], [ID_Officer], [NumberOfWard], [DataOfReceipt], [DataOfIssuanse]) VALUES (@ID_patient, @ID_separation, @Diagnozis, @ID_Officer, @NumberOfWard, @DataOfReceipt, @DataOfIssuanse)" ProviderName="<%$ ConnectionStrings:HospitalConnectionString1.ProviderName %>" SelectCommand="SELECT [ID_patient], [ID_separation], [ID_card], [Diagnozis], [ID_Officer], [NumberOfWard], [DataOfReceipt], [DataOfIssuanse] FROM [MedicineCards]" UpdateCommand="UPDATE [MedicineCards] SET [ID_patient] = @ID_patient, [ID_separation] = @ID_separation, [Diagnozis] = @Diagnozis, [ID_Officer] = @ID_Officer, [NumberOfWard] = @NumberOfWard, [DataOfReceipt] = @DataOfReceipt, [DataOfIssuanse] = @DataOfIssuanse WHERE [ID_card] = @ID_card">
                  <DeleteParameters>
                      <asp:Parameter Name="ID_card" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="ID_patient" Type="Int32" />
                      <asp:Parameter Name="ID_separation" Type="Int32" />
                      <asp:Parameter Name="Diagnozis" Type="String" />
                      <asp:Parameter Name="ID_Officer" Type="Int32" />
                      <asp:Parameter Name="NumberOfWard" Type="Int32" />
                      <asp:Parameter Name="DataOfReceipt" Type="DateTime" />
                      <asp:Parameter Name="DataOfIssuanse" Type="DateTime" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="ID_patient" Type="Int32" />
                      <asp:Parameter Name="ID_separation" Type="Int32" />
                      <asp:Parameter Name="Diagnozis" Type="String" />
                      <asp:Parameter Name="ID_Officer" Type="Int32" />
                      <asp:Parameter Name="NumberOfWard" Type="Int32" />
                      <asp:Parameter Name="DataOfReceipt" Type="DateTime" />
                      <asp:Parameter Name="DataOfIssuanse" Type="DateTime" />
                      <asp:Parameter Name="ID_card" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>

              </h5>
         </div>
</asp:Content>
