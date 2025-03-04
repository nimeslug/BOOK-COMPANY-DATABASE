using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Data.Sql;
using System.Data.SqlClient;

namespace VTYS_PROJE
{
    public partial class GirisEkrani : Form
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        public GirisEkrani()
        {
            InitializeComponent();
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
           
                string user = textBox1.Text;
                string password = textBox2.Text;
                con = new SqlConnection("Data Source=DESKTOP-79E49PS;Initial Catalog=Kitap;Integrated Security=True");
                cmd = new SqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select * From KullaniciBilgi where KullaniciAdi ='" + textBox1.Text + "'and Sifre='" + textBox2.Text + "'";

                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    MessageBox.Show("Tebrikler! Başarılı bir şekilde giriş yaptınız.");
                Hide();
                SqlBaglanti sqlbaglanti = new SqlBaglanti();
                sqlbaglanti.Show();
                }
                else
                {
                    MessageBox.Show("Hatalı kullanıcı adı veya şifre girdiniz.");

                }
                con.Close();
            }

        private void GirisEkrani_Load(object sender, EventArgs e)
        {
        }
    }
    }
