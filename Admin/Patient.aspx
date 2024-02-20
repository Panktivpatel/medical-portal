<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="Medical.Admin.Patient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Patients</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="add_patient.aspx" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Patient</a>
                    </div>
                </div>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<asp:GridView ID="GridView1" runat="server" CssClass="table table-border table-striped custom-table dataTable mb-0" AutoGenerateColumns="false">
								<Columns>
									<asp:BoundField DataField="FullName" HeaderText="Name" />
									<asp:BoundField DataField="Department" HeaderText="Department" />
									<asp:BoundField DataField="Symptoms" HeaderText="Symptoms" />
									<asp:BoundField DataField="doa" HeaderText="Date of Appoinmnet" />
									<asp:BoundField DataField="Email" HeaderText="Email" />
									<asp:BoundField DataField="Phone" HeaderText="Phone" />
									<asp:BoundField DataField="City" HeaderText="City" />
									<asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" />
									<asp:BoundField DataField="Address" HeaderText="Address" />
									<asp:BoundField DataField="Gender" HeaderText="Gender" />
									<asp:TemplateField>
										<ItemTemplate>
											<asp:DynamicHyperLink ID="hyID" runat="server" DataField="Id" Target="_self" CssClass="dropdown-item"  NavigateUrl='<%# Eval("ID","edit_patient.aspx?ID={0}") %>'><i class="fa fa-pencil text-primary"></i></asp:DynamicHyperLink>
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
	<div id="delete_patient" class="modal fade delete-modal" role="dialog">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body text-center">
						<img src="assets/img/sent.png" alt="" width="50" height="46">
						<h3>Are you sure want to delete this Patient?</h3>
						<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
							<button type="submit" class="btn btn-danger">Delete</button>
						</div>
					</div>
				</div>
			</div>
			
		</div>

</asp:Content>
