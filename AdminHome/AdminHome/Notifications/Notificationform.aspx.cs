using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace AdminHome.Notifications
{
    public partial class Notificationform : System.Web.UI.Page
    {
        public string txtusermail,txtReciverMail,UserSubject,txtContentMessage,stname,txtpassword,StrUrl;
        DataTable chdt = new DataTable();
        NotificationBL noti = new NotificationBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        ExaminationModules.ExaminationBL ex = new ExaminationModules.ExaminationBL();
        AdminSettingModule.AddBatchYr bat = new AdminSettingModule.AddBatchYr();
        FormUserRegistrationModule.EmployeeregBL teacher = new FormUserRegistrationModule.EmployeeregBL();
        DataView dv = new DataView();
        StudentInfoBL st = new StudentInfoBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectbatch();
                selectExamInfo();
                selectteacherid();
                home.Visible = true;
                menu1.Visible = false;
                menu2.Visible = false;
                menu3.Visible = false;
            }
            
            selectabsentstu();
        }
        public void selectbatch()
        {
            bat.grdBatchDisplay();
            ddlbatch.DataSource = bat.ddlbatch.Items;
            ddlbatch.DataBind();
            ddlnotbatch.DataSource = bat.ddlbatch.Items;
            ddlnotbatch.DataBind();
            ListItem tm = new ListItem("Select Batch", "-1");
            ddlbatch.Items.Insert(0, tm);
            ddlnotbatch.Items.Insert(0, tm);
        }
        public void selectExamInfo()
        {
            ex.SelectExamInfoId();
            ddlexamid.DataSource = ex.ddlsub.DataSource;
            ddlexamid.DataTextField = "examId";
            ddlexamid.DataBind();
            ListItem tm = new ListItem("SelectExamInfo", "-1");
            ddlexamid.Items.Insert(0, tm);
        }
        public void selectteacherid()
        {
            teacher.selectsalaryemp();
            ddlteacherid.DataSource = teacher.ddl1.DataSource;
            ddlteacherid.DataTextField = "EId";
            ddlteacherid.DataBind();
            ListItem tm = new ListItem("-Select-","-1");
            ddlteacherid.Items.Insert(0,tm);
        }
        private void Tempgridbind()
        {
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        public void selectabsentstu()
        {
            string txtdate = txt.Text;
            string statusstudent = "Absent";
          if(ddlshift.SelectedValue!="-1" && ddlshift.SelectedValue!="-1" && statusstudent!=string.Empty && txtdate!=string.Empty )
            {
            st.SelectStuAttandance();
            dv = new DataView(st.sourc);
            dv.RowFilter = "attandancedate='" + txtdate + "' AND batch='" + ddlbatch.SelectedValue.ToString() + "' AND shift='" + ddlshift.SelectedValue.ToString() + "' AND attandancestatus='" + statusstudent + "' ";
            //lblinfo.Text = txtdate + statusstudent;
            if (dv.Count > 0)
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
                Tempgridbind();
            }
            else
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
            }
          }
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {

            Label lb;
            for (int i = 0; i < gvTerritories.Rows.Count; i++)
            {
                lb = gvTerritories.Rows[i].FindControl("lblid") as Label;
               // content_txt.InnerText+= lb.Text.ToString()+" ";
                int formno =Convert.ToInt32( lb.Text);
                noti.TypeStatus = "EMAIL";
                noti.selectAPIEMAIL();
                txtusermail = noti.APIEMAIL;
                txtpassword = noti.MailPassword;
                ac.FormNo = formno;
                ac.selectStudentEmail();
                
                if (content_txt.InnerText !=string.Empty && ac.FEmail!=string.Empty && txtpassword!=string.Empty && txtusermail!=string.Empty)
                {
                    stname = ac.StName;
                    txtReciverMail = ac.FEmail;
                    UserSubject =stname +" You are Absented on date : " + txt.Text;
                    txtContentMessage = content_txt.InnerText;
                    //lblinfo.Text = txtReciverMail + txtContentMessage + UserSubject + txtusermail;
                    sendmail(txtReciverMail,txtContentMessage,UserSubject,txtusermail.Trim(),txtpassword.Trim());
                }
                else
                {
                    lblinfo.Text = "Sorry Data Not Found!";
                }
            }
           
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            selectabsentstu();
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            Label lb;
            for (int i = 0; i < gvTerritories.Rows.Count; i++)
            {
                lb = gvTerritories.Rows[i].FindControl("lblid") as Label;
                // content_txt.InnerText+= lb.Text.ToString()+" ";
                int formno = Convert.ToInt32(lb.Text);
                ac.FormNo = formno;
                ac.selectStudentEmail();

            try
            {
                noti.TypeStatus = "API";
                noti.selectAPIEMAIL();
                StrUrl = noti.APIEMAIL;
                //txtusermail = "troshan23@gmail.com";
                txtReciverMail = ac.FMobile;
                txtContentMessage =ac.StName+","+content_txt.InnerText;
                //txtpassword = "mummypapabab";
                if(txtContentMessage!=string.Empty && txtReciverMail!=string.Empty && StrUrl!=string.Empty)
                {
                send(StrUrl,txtContentMessage,txtReciverMail);
                lblinfo.Text = "message send successfully......";
                }
                else
                {
                    lblinfo.Text="Sorry Data Not Found!";
                }
            }
           
            catch
            {
               
                lblinfo.Text = "Error Occured!!!";
            }
        }
        }
        public void send(string StringURL,string msg,string recipientNo)
        {
            HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(""+StringURL+"SMS&receipientno="+recipientNo+"&dcs=0&msgtxt="+msg+"&state=4 ");
            HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
            System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
            string responseString = respStreamReader.ReadToEnd();
            respStreamReader.Close();
            myResp.Close();
        }
        public void sendmail(string toAddress, string body, string usersubject, string fromAddress, string PWD)
        {
            string result = "Email Sent Successfully..!!";
            try
            {
                // sender password here…   anuradha22dolly58@gmail.com
                MailMessage message = new MailMessage(fromAddress, toAddress);
                message.Subject = usersubject;
                message.Body = body;
                SmtpClient sm = new SmtpClient("smtp.gmail.com", 587);
                sm.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = fromAddress,
                    Password = PWD
                };
                sm.EnableSsl = true;
                sm.Send(message);
                lblinfo.Text = result;
            }
            catch (Exception gm)
            {
                lblinfo.Text = "Exception " + gm.Message;
            }
              
        }

        protected void btnsetapi_Click(object sender, EventArgs e)
        {
            txtusermail = "troshan23@gmail.com";
            Response.Redirect("ChangeAPIEmail.aspx?username="+txtusermail);
        }

        protected void btnabsent_Click(object sender, EventArgs e)
        {
            home.Visible = true;
            menu1.Visible = false;
            menu2.Visible = false;
            menu3.Visible = false;
        }

        protected void btnfails_Click(object sender, EventArgs e)
        {
            home.Visible = false;
            menu1.Visible = true;
            menu2.Visible = false;
            menu3.Visible = false;
        }

        protected void btnnotic_Click(object sender, EventArgs e)
        {
            home.Visible = false;
            menu1.Visible = false;
            menu2.Visible = true;
            menu3.Visible = false;
        }

        protected void btngreeting_Click(object sender, EventArgs e)
        {
            home.Visible = false;
            menu1.Visible = false;
            menu2.Visible = false;
            menu3.Visible = true;
        }

        protected void btnsearchfailed_Click(object sender, EventArgs e)
        {
            if(ddlexamid.SelectedValue!="-1")
            {
                ex.retriveCollectedmarksheet();
                dv = new DataView(ex.sourc);
                dv.RowFilter = "status='Failed'";
                if(dv.Count>0)
                {

                }
            }
        }

        protected void btnSearchnotice_Click(object sender, EventArgs e)
        {
            if (ddlteacherid.SelectedValue != "-1")
            {

            }
            else if(ddlbatch.SelectedValue!="-1" && ddlshift.SelectedValue!="-1")
            {
                
            }
        }

        protected void btnfindgreeting_Click(object sender, EventArgs e)
        {
            if (ddlexamid.SelectedValue != "-1")
            {

            }
        }

        
    }

}