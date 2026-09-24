# 🔐 Password Generator

A simple and modern **ASP.NET Web Forms + C#** password generator.

## Features

- Generate random passwords
- Select uppercase letters
- Select lowercase letters
- Select numbers
- Select special symbols
- Choose password length
- Input validation
- Modern responsive CSS interface

## Technologies Used

- C#
- ASP.NET Web Forms
- .NET Framework 4.8
- HTML5
- CSS3
- Visual Studio

## Project Structure

```text
Password-Generator/
├── PasswordGenerator.sln
├── PasswordGenerator/
│   ├── PasswordGenerator.csproj
│   ├── WebForm1.aspx
│   ├── WebForm1.aspx.cs
│   ├── WebForm1.aspx.designer.cs
│   ├── Web.config
│   └── Content/
│       └── style.css
└── README.md
```

## How to Run

1. Open `PasswordGenerator.sln` in Visual Studio.
2. Make sure ASP.NET/.NET Framework 4.8 development tools are installed.
3. Build the solution.
4. Run the project using IIS Express.

## Note

This project is intended for educational/demo purposes. For production security-sensitive password generation, use a cryptographically secure random number generator such as `RandomNumberGenerator` from `System.Security.Cryptography`.
