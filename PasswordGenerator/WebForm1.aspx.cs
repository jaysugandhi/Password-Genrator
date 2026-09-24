using System;
using System.Text;

namespace PasswordGenerator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            string upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string lower = "abcdefghijklmnopqrstuvwxyz";
            string numbers = "0123456789";
            string symbols = "!@#$%^&*";

            string characters = "";

            if (chkUpper.Checked)
                characters += upper;

            if (chkLower.Checked)
                characters += lower;

            if (chkNumber.Checked)
                characters += numbers;

            if (chkSymbol.Checked)
                characters += symbols;

            if (characters == "")
            {
                txtPassword.Text = "Select at least one option";
                return;
            }

            int length;

            if (!int.TryParse(txtLength.Text, out length) || length < 1 || length > 128)
            {
                txtPassword.Text = "Enter a length between 1 and 128";
                return;
            }

            Random random = new Random();
            StringBuilder password = new StringBuilder();

            for (int i = 0; i < length; i++)
            {
                int index = random.Next(characters.Length);
                password.Append(characters[index]);
            }

            txtPassword.Text = password.ToString();
        }
    }
}
