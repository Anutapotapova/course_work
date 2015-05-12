
<%@ Page Title="Информация о пациентах" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyCourse.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
  <div class="services1">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_services" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID_services" HeaderText="ID_services" ReadOnly="True" SortExpression="ID_services" />
            <asp:BoundField DataField="TypeOfservices" HeaderText="TypeOfservices" SortExpression="TypeOfservices" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="DateService" HeaderText="DateService" SortExpression="DateService" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString1 %>" DeleteCommand="DELETE FROM [Services] WHERE [ID_services] = @ID_services" InsertCommand="INSERT INTO [Services] ([TypeOfservices], [price], [DateService]) VALUES (@TypeOfservices, @price, @DateService)" ProviderName="<%$ ConnectionStrings:HospitalConnectionString1.ProviderName %>" SelectCommand="SELECT [ID_services], [TypeOfservices], [price], [DateService] FROM [Services]" UpdateCommand="UPDATE [Services] SET [TypeOfservices] = @TypeOfservices, [price] = @price, [DateService] = @DateService WHERE [ID_services] = @ID_services">
        <DeleteParameters>
            <asp:Parameter Name="ID_services" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TypeOfservices" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="DateService" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TypeOfservices" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="DateService" Type="DateTime" />
            <asp:Parameter Name="ID_services" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
  </div>
    
</asp:Content>
