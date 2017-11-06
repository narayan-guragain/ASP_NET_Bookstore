<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="AddBooks.aspx.cs" Inherits="Term_Project.AddBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin-top: 100px; margin: 100px;">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-info">
                    <div class="panel-heading" style="text-align: center;">Add Items</div>
                    <div class="panel-body" style="padding-right: 70px; padding-left: 70px;">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <p>
                            <asp:TextBox runat="server" ID="idbox" placeholder="Book id" CssClass="form-control"></asp:TextBox></p>
                        <p>
                            <asp:TextBox runat="server" ID="namebox" placeholder="Book name" CssClass="form-control"></asp:TextBox></p>
                        <p>
                            <asp:TextBox runat="server" ID="authorbox" placeholder="author" CssClass="form-control"></asp:TextBox></p>
                        <p>
                            <asp:TextBox runat="server" ID="pricebox" placeholder="price" CssClass="form-control"></asp:TextBox></p>
                        <p>
                            <asp:TextBox runat="server" ID="imgbox" placeholder="image location" CssClass="form-control"></asp:TextBox></p>
                        <p>
                            <asp:TextBox runat="server" ID="catbox" placeholder="category" CssClass="form-control"></asp:TextBox></p>
                    </div>
                    <div class="panel-footer" style="text-align: center;">
                        <asp:Button runat="server" ID="add_btn" CssClass="btn btn-info" Text="Add Product" OnClick="add_btn_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-info">
                    <div class="panel-heading" style="text-align: center;">Delete Items</div>
                    <div class="panel-body" style="padding-right: 70px; padding-left: 70px;">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <p>
                            <asp:TextBox runat="server" ID="idboxd" placeholder="Book id" CssClass="form-control"></asp:TextBox></p>
                    </div>
                    <div class="panel-footer" style="text-align: center;">
                        <asp:Button runat="server" ID="Button1" CssClass="btn btn-info" Text="Delete Product" OnClick="delete_btn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
