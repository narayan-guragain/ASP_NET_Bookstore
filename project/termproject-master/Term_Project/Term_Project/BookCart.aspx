<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="BookCart.aspx.cs" Inherits="Term_Project.BookCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" style="margin-top:100px;">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Book</th>
                            <th>Name</th>
                            <th>Id#</th>
                            <th>Author</th>
                             <th>Price</th>
                             <th></th>
                        </tr>
                    </thead>
                    <tbody>
                  
                    <%if (CList.Count > 0)
                        {
                            foreach (var p in CList)
                            {%>
                            <tr class="remove">
                                <td style="vertical-align:central" ><img src="<%=p.img%>"" class="img-responsive" alt="Cinque Terre" width="50" height="150"> </td>
                                <td style="vertical-align:central; padding-top:30px;"><%=p.name%></td>
                                <td style="vertical-align:central; padding-top:30px;"><%=p.id%></td>
                                <td style="vertical-align:central; padding-top:30px;"><%=p.author%></td>
                                <td style="vertical-align:central ;padding-top:30px;"><%=p.price%></td>
                                <td style="vertical-align:central ;padding-top:25px;">
                                    <a href="BookCart.aspx?book_id=<%=p.id%>&action=remove" class="button btn-block" Type="button" style="padding:5px;">Remove</a>
                                </td>
                            </tr> 
                           
                            <%}
                         }
                       else
                       {%>
                        <tr>
                          <td style="text-align:center; padding:10px;">No itms in your cart</td>
                        </tr>
                       <%}%>                 
                     </tbody>
                </table>
            </div>
            <asp:Panel ID="Panel1" runat="server">
            <div class="container">
                <div class="col-md-4 col-md-offset-4">
                       <div class="row" style="text-align:right">
                           <p style="float:right; font-weight:bold; color: darkblue;"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                       </div>                    
                 </div>
             </div>
            <div class="container">
                 <div class="col-md-4 col-md-offset-4">
                       <p style="text-align:right; margin-right:15px; margin-bottom:80px;"> <a href="#" class="button btn-success" Type="button" style="padding:5px;">Proceed to check out</a></p>
                 </div>
            </div>
            </asp:Panel>
            <!--this label is for testing purpose only. It shows number of books in cart---->
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </div>

</asp:Content>
