﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Applied_project
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string eml = TextBox1.Text;

                string qry = "select * from registration where email='" + eml + "'";
                SqlCommand cmd = new SqlCommand(qry, conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    TextBox2.Text = (sdr["password"].ToString());
                    TextBox3.Text = (sdr["first"].ToString());
                    TextBox4.Text = (sdr["last"].ToString());
                    TextBox5.Text = (sdr["birth"].ToString());
                    DropDownList1.SelectedValue = (sdr["access"].ToString());
                    TextBox6.Text = (sdr["number"].ToString());
                    DropDownList2.SelectedValue = (sdr["department"].ToString());
                    TextBox7.Text = (sdr["address"].ToString());
                    TextBox8.Text = (sdr["address2"].ToString());
                    string query = "update registration set password='"+TextBox2.Text+"', first='"+TextBox3.Text +"', last='"+TextBox4.Text +"', birth='"+TextBox5.Text+"',access='"+DropDownList1.SelectedValue+"',number='"+TextBox6.Text+"',department='"+DropDownList2.SelectedValue+"',address='"+TextBox7.Text+"',address2='"+TextBox8.Text+"' where email='" + eml + "'";


                    SqlCommand cmnd = new SqlCommand(query, conn);
                    SqlDataReader sedr = cmd.ExecuteReader();
                    if (sedr.Read())

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Check your data');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email does not exist');window.location.href='Edit_Profile.aspx';", true);
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}