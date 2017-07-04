using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Invoice
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Amount (N)");
            dt.Columns.Add("Is it Optional");
            DataRow dr = null;

            if (ViewState["itemAmt"] != null)
            {
                for (int i = 0; i < 1; i++)
                {
                    dt = (DataTable)ViewState["itemAmt"];
                    if (dt.Rows.Count > 0)
                    {
                        dr = dt.NewRow();
                        dr["Name"] = txtItemName.Text;
                        dr["Amount (N)"] = txtItemAmt.Text;
                        dr["Is it Optional"] = DropDownList1.Text;
                        dt.Rows.Add(dr);
                        DTable.DataSource = dt;
                        DTable.DataBind();
                    }
                }
            }
            else
            {
                dr = dt.NewRow();
                dr["Name"] = txtItemName.Text;
                dr["Amount (N)"] = txtItemAmt.Text;
                dr["Is it Optional"] = DropDownList1.Text;
                dt.Rows.Add(dr);
                DTable.DataSource = dt;
                DTable.DataBind();
            }
            ViewState["itemAmt"] = dt;
        }
    }
}