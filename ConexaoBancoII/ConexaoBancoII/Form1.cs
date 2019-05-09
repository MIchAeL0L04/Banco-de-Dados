using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ConexaoBancoII
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection cone = new SqlConnection("Data Source=LAPTOP-KJ1E8U0D\\SQL2014;Initial Catalog=ProjetoBancoII;Persist Security Info=True;User ID=sa;Password=1234567");
        SqlCommand coman = new SqlCommand();

        private void Form1_Load(object sender, EventArgs e)
        {
            coman.Connection = cone;
        }

        private void btmEnviar_Click(object sender, EventArgs e)
        {
            cone.Open();
            coman.CommandText = "INSERT INTO dados (nome, sobrenome) VALUES ('" + txtNOme + "', '" + txtSobrenome + "')";
            coman.ExecuteNonQuery();
            cone.Close();

            txtNOme.Text = "";
            txtSobrenome.Text = "";
        }
    }
}
