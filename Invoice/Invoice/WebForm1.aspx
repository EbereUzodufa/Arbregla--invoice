<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Invoice.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <h1>Add New School Invoice Template</h1>
	<p>Name: 
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
	<p>Description: <asp:TextBox ID="txtDesc" runat="server" Height="167px" TextMode="MultiLine" Width="329px"></asp:TextBox>
        </p><br/>
	<section class="addItem">
	    <h3>Item Amount</h3>
		<p>Name: 
            <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>
        </p>
		<p>Amount: N<asp:TextBox ID="txtItemAmt" runat="server"></asp:TextBox>
        </p>
		<p>Is it optional:
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
&nbsp;<datalist id="isOptional">
				<option value="Yes"></option>
				<option value="No"></option></datalist></p>
		<br/>
        <asp:Button Text="Add Item" runat="server" ID="btnAddItem" OnClick="btnAddItem_Click" />
	</section>
        <section>
            <asp:GridView runat="server" ID="DTable">
            </asp:GridView>
        </section>
	<section>
		<h3>Publishing</h3>
		<input list="publish" name="publish" placeholder="Publish this Invoice for"/>
			<datalist id="publish">
				<option value="Student"/>
				<option value="Class"/>
				<option value="Department"/>
				<option value="All Students"/>
				<option value="Published Invoices"/>
			</datalist>
			<p>Due Date: <input type="text" name="dueDate"/></p>
			<p>Message: <input type="text" name="message"/></p>
			<div class="submit">
				<button type="submit" name="save">Save</button>
				<button type="submit" name ="publish">Publish</button>
			</div>
	</section>
    </form>
</body>
</html>
