<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="Schedule_doc.aspx.cs" Inherits="Medical.Admin.Schedule_doc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <h1>Manage Doctor's Schedule</h1>

                <div class="space">
                    Doctor:
        <asp:DropDownList runat="server" ID="DropDownListDoctor" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DropDownListDoctor_OnSelectedIndexChanged">
            <asp:ListItem Value="NONE">(no doctors specified)</asp:ListItem>
        </asp:DropDownList>
                </div>

                <asp:Panel runat="server" ID="Schedule">
                    <div style="display: flex;">
                        <div style="margin-right: 10px;">
                            <asp:TextBox
                                runat="server"
                                id="DayPilotNavigator1"
                                clientidmode="Static"
                                bounddaypilotid="DayPilotCalendar1"
                                showmonths="3"
                                selectmode="Week"
                                cellheight="30"
                                cellwidth="30"
                                dayheaderheight="30"
                                titleheight="30"
                                onbeforecellrender="DayPilotNavigator1_OnBeforeCellRender" />
                        </div>

                        <div style="flex-grow: 1;">
                            <daypilot:daypilotcalendar
                                runat="server"
                                id="DayPilotCalendar1"
                                clientobjectname="dp"
                                clientidmode="Static"
                                viewtype="Week"
                                cellheight="30"
                                headerheight="30"
                                oncommand="DayPilotCalendar1_OnCommand"
                                timerangeselectedhandling="CallBack"
                                ontimerangeselected="DayPilotCalendar1_OnTimeRangeSelected"
                                onbeforeeventrender="DayPilotCalendar1_OnBeforeEventRender"
                                eventclickhandling="JavaScript"
                                eventclickjavascript="edit(e);"
                                eventmovehandling="CallBack"
                                oneventmove="DayPilotCalendar1_OnEventMove"
                                eventresizehandling="CallBack"
                                oneventresize="DayPilotCalendar1_OnEventResize"
                                eventdeletehandling="CallBack"
                                oneventdelete="DayPilotCalendar1_OnEventDelete" />
                        </div>
                    </div>
                </asp:Panel>


                <script>

                    function edit(e) {
                        var statuses = [
                            { name: "Free", id: "free" },
                            { name: "Waiting", id: "waiting" },
                            { name: "Confirmed", id: "confirmed" }
                        ];

                        var form = [
                            { name: "Start", id: "start", dateFormat: "MMMM d, yyyy hh:mm tt", disabled: true },
                            { name: "End", id: "end", dateFormat: "MMMM d, yyyy hh:mm tt", disabled: true },
                            { name: "Status", id: "status", options: statuses, type: "select" },
                            { name: "Name", id: "name" }
                        ];

                        var data = {
                            id: e.id(),
                            start: e.start(),
                            status: e.tag("AppointmentStatus"),
                            name: e.tag("AppointmentPatientName")
                        };

                        DayPilot.Modal.form(form, data).then(function (modal) {
                            if (modal.canceled) {
                                return;
                            }
                            DayPilot.Http.ajax({
                                url: "Doctor.aspx/Save",
                                data: modal.result,
                                success: function (ajax) {
                                    dp.commandCallBack('refresh');
                                    dp.message("Saved");
                                }
                            });
                        });
                    }
                </script>
            </div>
        </div>
    </div>
</asp:Content>
