using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace FoodWeb
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string email = txtEmail.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(email))
            {
                lblMessage.Text = "All fields are required.";
                return;
            }

            string connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string checkUserQuery = "SELECT COUNT(*) FROM  AdminUsers WHERE Username = @Username";
                SqlCommand checkUserCmd = new SqlCommand(checkUserQuery, conn);
                checkUserCmd.Parameters.AddWithValue("@Username", username);

                int userExists = (int)checkUserCmd.ExecuteScalar();
                if (userExists > 0)
                {
                    lblMessage.Text = "Username already exists.";
                    return;
                }

                string insertUserQuery = "INSERT INTO AdminUsers (Username, Password, Email) VALUES (@Username, @Password, @Email)";
                SqlCommand insertUserCmd = new SqlCommand(insertUserQuery, conn);
                insertUserCmd.Parameters.AddWithValue("@Username", username);
                insertUserCmd.Parameters.AddWithValue("@Password", password); // In a real-world app, hash the password
                insertUserCmd.Parameters.AddWithValue("@Email", email);

                int result = insertUserCmd.ExecuteNonQuery();
                if (result > 0)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Signup successful. Please log in.";
                }
                else
                {
                    lblMessage.Text = "Error occurred during signup. Please try again.";
                }
            }
        }
    }
}