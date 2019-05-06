using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace Master
{
	public partial class Employes : System.Web.UI.Page
	{

        protected void obtenirEmployesButton_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet oDataSet = new DataSet();
                oDataSet = EmpListe();

                employesGridView.DataSource = oDataSet.Tables["Employees"].DefaultView;

                employesGridView.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        public DataSet EmpListe()
        {

            SqlConnection oSqlConnection = new SqlConnection("server=.\\sqlexpress;Initial Catalog=Northwind; Integrated Security = True; Persist Security Info = True");
            oSqlConnection.Open();

            SqlDataAdapter oSqlCommand = new SqlDataAdapter("select * from dbo.Employees", oSqlConnection);

            DataSet oDataSet = new DataSet();

            oSqlCommand.Fill(oDataSet, "Employees");

            return oDataSet;

        }
    }
}