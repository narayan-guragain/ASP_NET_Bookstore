<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Narayan.aspx.cs" Inherits="Term_Project.Narayan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:content id="Content2" contentplaceholderid="MainContent" runat="server">

<link href="Content/font-awesome.min.css" rel="stylesheet" />
<link href="Content/bootstrap.css" rel="stylesheet" />
<link href="Content/customApp.css" rel="stylesheet" />

    <div class="container" id="allPage">
        <div class="row">            
            <div class="page-header" style="padding-top:60px;">
                <div style="text-align: center; font-size:24px;">
                    <div style="float:left">
                        <asp:TextBox ID="sTextBox" runat="server" style="width: 60%; float:left; margin-left:20px;" class="form-control"></asp:TextBox>
                        <asp:Button ID="searchButton" runat="server" Text="Search" CssClass="btn" OnClick="SearchButton1_Click"/>
                    </div>
                    <span id="categoryheading">
                        <asp:Label ID="Label1" runat="server" Text="Books"></asp:Label>
                    </span>
                    <div style="float:right; cursor: pointer;">
                        <button style="background: transparent; border: none !important;" Type="button">
                            <span style="float:left;"><a href="BookCart.aspx"><i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    <span class="badge badge-error" style="background-color: red; color:white;margin-bottom: 35px;" id="cartbadge">
                                        <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                                    </span></a>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
        <div class="container">      
		
		<div class="row">
			<div class="col-xs-3">
				<div class="row">

                    <!-------Book category begins here------>
                    
					<div class="col-sm-8" style="position:fixed; width:200px;">
						<h3>Categories</h3>
						<table class="table table-hover">							  
							<tbody>
                                <tr>      
								  <td>
                                      <h6 class="category">
                                      <a href="#"><asp:Button ID="Button1" runat="server" class="cbutton" Text="All Categories" OnClick="Button1_Click"/></a>
								      </h6>
								  </td>      
								</tr>
								<tr>      
								  <td>
                                      <h6 class="category">
                                      <a href="#"><asp:Button ID="Button2" runat="server" class="cbutton" Text="Programming" OnClick="Button2_Click"/></a>
								      </h6>
								  </td>       
								</tr>
								<tr>      
								 <td>
                                      <h6 class="category">
                                      <a href="#"><asp:Button ID="Button3" runat="server" class="cbutton" Text="Databases" OnClick="Button3_Click" /></a>
								      </h6>
								  </td>      
								</tr>
								<tr>      
								  <td>
                                      <h6 class="category">
                                      <a href="#"><asp:Button ID="Button4" runat="server" class="cbutton" Text="Web Development" OnClick="Button4_Click" /></a>
								      </h6>
								  </td>      
								</tr>								 
								  <tr>      
								  <td>
                                      <h6 class="category">
                                      <a href="#"><asp:Button ID="Button5" runat="server" class="cbutton" Text="Literature" OnClick="Button5_Click" /></a>
								      </h6>
								  </td>      
								</tr>
							</tbody>
						</table>
					</div>

                    <!-------Book category ends here------>

				</div>
			</div>
		    <div class="col-md-9">
		        <div class="row">

		            <% if (productList.Count > 0)
		               {
		                   foreach (var product in productList)
		                   { %>
		                    <div class="col-md-3" style="text-align:center">
		                        <div class="card" style="width: 20rem;">
		                            <p><img class="card-img-top" src="<%=product.img%>" alt="Card image cap" style="height:250px;"></p>
		                            <div class="card-block">
		                                <a href="#">
		                                    <p><%=product.name %></p>
		                                </a>
		                                <a href="#">
		                                    <p><%=product.author %></p>
		                                </a>
		                                <p>$ <%=product.price%> CAD</p>
		                                <p style="margin-bottom:60px; color:white;"> 
		                                    <a href="Narayan.aspx?pro_id=<%=product.id%>&action=add" class="button btn-success btn-block" Type="button" style="padding:5px;">Add to Cart</a>
		                                </p> 
		                            </div>
		                        </div>
		                    </div>
		            <%}
                       }
		               else
		               {%>
		                <h4>No products available</h4>
		            <%}%>

		        </div>
                            
		    </div>

	          </div>
            </div>

        </div>
    </div>

</asp:content>
