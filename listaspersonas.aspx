<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listaspersonas.aspx.cs" Inherits="Practico2.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <h1>Primera app</h1>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:practico2ConnectionString %>" SelectCommand="SELECT [Id], [Nombre], [Apellido], [Documento] FROM [PERSONA]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        L I S T A&nbsp;&nbsp; D E&nbsp;&nbsp; P E R S O N A S<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="140px" Width="765px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>

</asp:Content>
