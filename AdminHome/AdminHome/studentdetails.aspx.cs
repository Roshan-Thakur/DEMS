using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Configuration;
using System.Data.OleDb;
using System.Data;
using System.IO;
using System.Data.SqlClient;

namespace AdminHome
{
    public partial class studentdetails : System.Web.UI.Page
    {
        string filePath1;
        static string costring = @"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=DEMS;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
        SqlConnection con = new SqlConnection(costring);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Uploads/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
            Lblmsg.Text = "Please Select Priview LinkButton from GridView!";
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string[] allowfile = { ".xls", ".xlsx" };
                string filext = Path.GetExtension(FileUpload1.FileName).ToLower();
                
                for (int i = 0; i < allowfile.Length; i++)
                {
                    if (filext == allowfile[i])
                    {
                        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);
                        Response.Redirect(Request.Url.AbsoluteUri);

                    }
                    else
                    {
                        Lblmsg.Text = "Plz Select Excel File!";
                    }
                }
                GridView1.DataBind();
            }
            else
            {
                Lblmsg.Text = "You Must be Select Excel File";
            }
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void Savefile(object sender, EventArgs e)
        {
            filePath1 = (sender as LinkButton).CommandArgument;
            if (filePath1 != string.Empty)
            {
                priview1();
                Lblmsg.Text = "Recored :"+filePath1;
            }
            else
            {
                Lblmsg.Text = "Please Select a file to Upload!";
            }
        }

        private void priview1()
        {
            try
            {
                string[] allowfile = { ".xls", ".xlsx" };
                // HERE WE ARE ALLOWING ONLY EXCEL FILE TO VERIFY SELECTED FILE PDF OR NOT
                string FileExt = Path.GetExtension(filePath1);
                bool Isvalidfile = allowfile.Contains(FileExt);
                if (!Isvalidfile)
                {
                    Lblmsg.ForeColor = System.Drawing.Color.Red;
                    Lblmsg.Text = "Please Select Excel File!";

                }
                else
                {
                    //Open the connection based on based on excel version
                    OleDbConnection con = null;
                    if (FileExt == ".xls")
                    {
                        con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + filePath1 + ";Extended Properties='Excel 8.0;HDR={1}'");
                    }
                    else if (FileExt == ".xlsx")
                    {
                        con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + filePath1 + ";Extended Properties='Excel 8.0;HDR={1}'");
                    }
                    con.Open();
                    //get List of the sheet availlable in excel sheet
                    DataTable dt = con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                    // Get First sheet name
                    string getExcelSheetname = dt.Rows[0]["Table_Name"].ToString();
                    //Select row from first sheet in excel sheet and file into datasheet
                    OleDbCommand excelcom = new OleDbCommand(@"SELECT * FROM [" + getExcelSheetname + @"]", con);
                    OleDbDataAdapter exceldb = new OleDbDataAdapter(excelcom);
                    DataSet excelset = new DataSet();
                    exceldb.Fill(excelset);
                    con.Close();
                    // Bind Dataset into gridview To display excel sheet
                    GridView3.DataSource = excelset;
                    GridView3.DataBind();
                }
            }
            catch (Exception ex)
            {
                Lblmsg.Text = "Error Occure while Uploading a file:" + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
        

        protected void btn_upload_click(object sender, EventArgs e)
        {
            
        }

        protected void btninsert(object sender, EventArgs e)
        {
            //GridViewRow   

            try
            {
                    DataTable dtb = new DataTable();
                    dtb.Columns.Add("Id", typeof(int));
                    dtb.Columns.Add("Name", typeof(string));
                    dtb.Columns.Add("Department", typeof(string));
                    dtb.Columns.Add("contact", typeof(string));

                    foreach (GridViewRow g in GridView3.Rows)
                    {
                        int Id = Int32.Parse(g.Cells[0].Text);
                        string Name = g.Cells[1].Text;
                        string Department = g.Cells[2].Text;
                        string contact = g.Cells[3].Text;
                        dtb.Rows.Add(Id, Name, Department, contact);
                    }
                    con.Open();
                    SqlBulkCopy sqbulk = new SqlBulkCopy(con);
                    sqbulk.DestinationTableName = "book";
                    sqbulk.WriteToServer(dtb);
                    lblsave.Text = "Insertion Sucessfully!";
                    lblsave.ForeColor = System.Drawing.Color.Black;
                    con.Close();
                
            }
            catch (Exception ex)
            {
                lblsave.Text = "Exception on Save : " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        
    }
}