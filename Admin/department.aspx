<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="department.aspx.cs" Inherits="Medical.Admin.department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-5 col-5">
                        <h4 class="page-title">Departments</h4>
                    </div>
                    <div class="col-sm-7 col-7 text-right m-b-30">
                        <a href="add_department.aspx" class="btn btn-primary btn-rounded"><i class="fa fa-plus"></i> Add Department</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-border table-striped custom-table dataTable mb-0" AutoGenerateColumns="false">
								<Columns>
									<asp:BoundField DataField="Id" HeaderText="Sr. No." />
                                    <asp:BoundField DataField="name" HeaderText="Department" />
									<asp:BoundField DataField="Status" HeaderText="Status" />
									<asp:TemplateField>
										<ItemTemplate>
											<asp:DynamicHyperLink ID="hyID" runat="server" DataField="Id" Target="_self" CssClass="dropdown-item"  NavigateUrl='<%# Eval("ID","edit_department.aspx?ID={0}") %>'><i class="fa fa-pencil text-primary"></i></asp:DynamicHyperLink>
											<asp:DynamicHyperLink ID="delID" runat="server" DataField="Id" Target="_self" CssClass="dropdown-item"  NavigateUrl='<%# Eval("ID","Patient.aspx?ID={0}&p=delete") %>'><i class="fa fa-trash-o text-danger"></i></asp:DynamicHyperLink>
									   </ItemTemplate>
									</asp:TemplateField>
								</Columns>
							    </asp:GridView>
                            </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
