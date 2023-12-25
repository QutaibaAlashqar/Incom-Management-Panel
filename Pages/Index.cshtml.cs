using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;

// NEW
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using Microsoft.Extensions.Configuration;



namespace WebApplication1.Pages
{
    public class IndexModel : PageModel
    {
        private readonly IConfiguration _configuration;

        public IndexModel(IConfiguration configuration)
        {
            _configuration = configuration ?? throw new ArgumentNullException(nameof(configuration));
        }


        public void OnGet()
        {
            ViewData["ErrorMessage"] = TempData["ErrorMessage"];
            ViewData["Message"] = TempData["Message"];
        }

        public IActionResult OnPost()
        {
            // Fetch user information from the database
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            if (IsValidUser(email, password))
            {
                // Redirect to the welcome page
                return RedirectToPage("/Home");
            }
            else
            {
                // Set an error message to be displayed on the login page
                TempData["ErrorMessage"] = "Invalid email or password.";
                return RedirectToPage("/Index");
            }
        }

        private bool IsValidUser(string email, string password)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("SELECT TOP 1 Email, Password FROM Users WHERE Email = @Email", connection))
                    {
                        command.Parameters.AddWithValue("@Email", email);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string passwordFromDatabase = reader["Password"]?.ToString() ?? string.Empty;
                                return passwordFromDatabase == password;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception message to the console or to a file
                Console.WriteLine("An error occurred: " + ex.Message);

                // Optionally, you could also log the exception using a logging framework
                // _logger.LogError(ex, "An error occurred while validating user.");
            }

            // If we reach this point, it means either there was an exception or the user wasn't found
            // or the passwords didn't match. In all cases, we return false.
            TempData["ErrorMessage"] = "Invalid email or password.";
            return false;
        }

    }
}
