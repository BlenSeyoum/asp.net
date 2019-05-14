using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Studentapp
{
    public partial class stdappWebForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (!IsPostBack)
            {
                dateofBirthCalendar.Visible = false;
                createdDateCalendar.Visible = false;
            }
            SqlCommand sqlcmd = new SqlCommand("stdpSelect", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlda.SelectCommand = sqlcmd;
            sqlda.Fill(ds, "tblStudent");
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
            
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string studID = txtstudID.Text;
            string firstname = txtfirstname.Text;
            string fathername = txtfathername.Text;
            string grandfathername = txtgrandfathername.Text;
            string dateofBirth = txtdateofBirth.Text;
            string createdDate = txtcreatedDate.Text;
            string gender = txtgender.Text;
            SqlCommand sqlcmd = new SqlCommand("stdpInsert", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@studID", studID);
            sqlcmd.Parameters.AddWithValue("@firstname", firstname);
            sqlcmd.Parameters.AddWithValue("@fathername", fathername);
            sqlcmd.Parameters.AddWithValue("@grandfathername", grandfathername);
            sqlcmd.Parameters.AddWithValue("@dateofBirth", dateofBirth);
            sqlcmd.Parameters.AddWithValue("@createdDate", createdDate);
            sqlcmd.Parameters.AddWithValue("@gender", gender);
            sqlcmd.Connection = con;
            sqlda.SelectCommand = sqlcmd;
            sqlda.Fill(ds, "tblStudent");
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
            Response.Redirect(Request.Url.AbsoluteUri);
            
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            string studID = txtstudID.Text;
            string firstname = txtfirstname.Text;
            string fathername = txtfathername.Text;
            string grandfathername = txtgrandfathername.Text;
            string dateofBirth = txtdateofBirth.Text;
            string createdDate = txtcreatedDate.Text;
            string gender = txtgender.Text;
            SqlCommand sqlcmd = new SqlCommand("stdpUpdates", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@studID", studID);
            sqlcmd.Parameters.AddWithValue("@firstname", firstname);
            sqlcmd.Parameters.AddWithValue("@fathername", fathername);
            sqlcmd.Parameters.AddWithValue("@grandfathername", grandfathername);
            sqlcmd.Parameters.AddWithValue("@dateofBirth", dateofBirth);
            sqlcmd.Parameters.AddWithValue("@createdDate", createdDate);
            sqlcmd.Parameters.AddWithValue("@gender", gender);
            sqlcmd.Connection = con;
            sqlda.SelectCommand = sqlcmd;
            sqlda.Fill(ds, "tblStudent");
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (dateofBirthCalendar.Visible)
            {
                dateofBirthCalendar.Visible = false;
            }
            else
            {
                dateofBirthCalendar.Visible = true;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (createdDateCalendar.Visible)
            {
                createdDateCalendar.Visible = false;
            }
            else
            {
                createdDateCalendar.Visible = true;
            }
        }

       
         protected void dateofBirthCalendar_SelectionChanged(object sender, EventArgs e)
        {
            this.txtdateofBirth.Text = dateofBirthCalendar.SelectedDate.ToShortDateString();
            dateofBirthCalendar.Visible = false;

        }

         protected void createdDateCalendar_SelectionChanged(object sender, EventArgs e)
         {
             this.txtcreatedDate.Text = createdDateCalendar.SelectedDate.ToShortDateString();
             createdDateCalendar.Visible = false;

         }
        
    }
}