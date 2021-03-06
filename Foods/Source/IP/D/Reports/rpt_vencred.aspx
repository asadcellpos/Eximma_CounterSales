﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_vencred.aspx.cs" Inherits="Foods.rpt_vencred" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vender Wise Credit Report</title>

      <style type="text/css">
        #container{
	        width:100%;
	        height:100%;
	        font-family:CordiaUPC;
            font-size:18px; 
        }
        .uppper{
	        width:45%;
	        height:auto;
	        margin:0px auto;
	        text-align:center;
        }
        .left{
	        width:45%;
	        height:auto;
	        float:left;
	        margin-left:20px;
        }
        .right{
	        width:49%;
	        height:auto;
	        float:right;
	        text-align:center;
        }
        .gv{
	        width:100%;
	        height: auto;
            text-align:center;
        }
        .clear{
        clear: both;
        }
        h1 {
        margin:0px;
        padding: 0px;
        }
        h2 {
        margin:0px;
        padding: 0px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="container">
            <div class="uppper">
                <h1>NM Garments</h1>
                <h2>Vender Wise Credit Report</h2>
            </div>
            <div class="left">
                Supplier Name: <asp:Label ID="lbl_ven" runat="server" ></asp:Label><br />
            </div>
            <div class="right">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkBtnExportExcel_Click">Export to Excel</asp:LinkButton>       
            </div>
            <div class="clear"></div>
                <fieldset>
                    <br />
                    <br />
                    <div class="gv">
                        <asp:GridView ID="GV_VenCre" runat="server" EmptyDataText="No Record Found!" AutoGenerateColumns="False" style="width:100%; height:auto;"  >
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                                <asp:BoundField DataField="ven_id" HeaderText="ven_id" SortExpression="ven_id" />
                                <asp:BoundField DataField="PurNo" HeaderText="PurNo" SortExpression="PurNo" />
                                <asp:BoundField DataField="MPurDate" HeaderText="MPurDate" SortExpression="MPurDate" ReadOnly="True" />
                                <asp:BoundField DataField="suppliername" HeaderText="suppliername" SortExpression="suppliername" />
                                <asp:TemplateField HeaderText="Out Standing">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_outstand" runat="server" Text='<%# Eval("Out_Standing")%>' ></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cash Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_cshamt" runat="server" Text='<%# Eval("csh_amt")%>' ></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="gv">
                            Total Quantity: <asp:Label ID="ttl_qty" runat="server" Text="--"></asp:Label>
                            Total: <asp:Label ID="lbl_ttl" runat="server" Text="--"></asp:Label>
                    </div>
                </fieldset>
        </div>

    </div>
    </form>
</body>
</html>
