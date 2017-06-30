<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Invoice.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <h1>Add New School Invoice Template</h1>
	<p>Name: <input type="text" name="name"/></p>
	<p>Description: <input type="text" name="description"/></p><br/>
	<section class="addItem">
	    <h3>Item Amount</h3>
		<p>Name: <input type="text" name="itemNAme"/></p>
		<p>Amount: N<input type="text" name="itemAmt"/></p>
		<p>Is it optional
		<input list="isOptional" name="isOptional" placeholder="Select if Item is optional"/>
			<datalist id="isOptional">
				<option value="Yes"></option>
				<option value="No"></option>
			</datalist>
		</p>
		<br/>
        <asp:Button Text="Add Item" runat="server" />
	</section>
        <section>
            <asp:GridView runat="server">
                <Columns>
                    <asp:CheckBoxField />
                    <asp:TemplateField HeaderText="Option" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Name" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Price" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Quantity" ShowEditButton="True" />
                </Columns>
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
