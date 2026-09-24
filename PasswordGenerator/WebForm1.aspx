<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PasswordGenerator.WebForm1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Password Generator</title>
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <main class="page-shell">
            <section class="generator-card">
                <div class="brand">
                    <div class="brand-icon">🔐</div>
                    <div>
                        <h1>Password Generator</h1>
                        <p>Create a strong random password in seconds</p>
                    </div>
                </div>

                <div class="field">
                    <label for="txtLength">Password Length</label>
                    <asp:TextBox ID="txtLength" runat="server" Text="12" TextMode="Number"
                        CssClass="input" min="1" max="128"></asp:TextBox>
                </div>

                <div class="field">
                    <label>Character Options</label>
                    <div class="options">
                        <label class="option"><asp:CheckBox ID="chkUpper" runat="server" Checked="true" /><span>Uppercase</span></label>
                        <label class="option"><asp:CheckBox ID="chkLower" runat="server" Checked="true" /><span>Lowercase</span></label>
                        <label class="option"><asp:CheckBox ID="chkNumber" runat="server" Checked="true" /><span>Numbers</span></label>
                        <label class="option"><asp:CheckBox ID="chkSymbol" runat="server" Checked="true" /><span>Symbols</span></label>
                    </div>
                </div>

                <asp:Button ID="btnGenerate" runat="server" Text="Generate Password"
                    CssClass="generate-btn" OnClick="btnGenerate_Click" />

                <div class="result-box">
                    <span class="result-label">Generated Password</span>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="password-output"
                        ReadOnly="true"></asp:TextBox>
                </div>

                <p class="footer-note">ASP.NET Web Forms • C# Password Generator</p>
            </section>
        </main>
    </form>
</body>
</html>
