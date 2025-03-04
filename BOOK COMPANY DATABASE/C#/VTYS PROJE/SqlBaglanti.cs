using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace VTYS_PROJE
{
    public partial class SqlBaglanti : Form
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;

        public SqlBaglanti()
        {
            InitializeComponent();
        }
        void KitapGetir()
        {
            con = new SqlConnection("Data Source=DESKTOP-79E49PS;Initial Catalog=Kitap;Integrated Security=True");
            con.Open(); 
            da = new SqlDataAdapter("Select * from Kitaplar", con);
            DataTable tablo = new DataTable();  
            da.Fill(tablo);
            dataGridView1.DataSource = tablo;
            con.Close();
        }
        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void SqlBaglanti_Load(object sender, EventArgs e)
        {
            KitapGetir();
        }

        private void dataGridView1_CellMouseEnter(object sender, DataGridViewCellEventArgs e)
        {
            txtkitapid.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            txtkitapadi.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            txtkategoriid.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
            txtaltkid.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            txtkitapfiyati.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
            txtstokmiktari.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
            dateTimePicker1.Text = dataGridView1.CurrentRow.Cells[6].Value.ToString();
            txtyayineviid.Text = dataGridView1.CurrentRow.Cells[7].Value.ToString();
            txtyazarid.Text = dataGridView1.CurrentRow.Cells[8].Value.ToString();
            txtsayfasayisi.Text = dataGridView1.CurrentRow.Cells[9].Value.ToString();

        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            string sorgu = "INSERT INTO Kitaplar(UrunID, UrunAdi, KategoriID, AltKategoriID, Fiyat, StokMiktari, YayınTarihi, YayineviID, YazarID, SayfaSayisi) VALUES (@UrunID, @UrunAdi, @KategoriID, @AltKategoriID, @Fiyat, @StokMiktari, @YayınTarihi, @YayineviID, @YazarID, @SayfaSayisi)";
            cmd = new SqlCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@UrunID", txtkitapid.Text);
            cmd.Parameters.AddWithValue("@UrunAdi", txtkitapadi.Text);
            cmd.Parameters.AddWithValue("@KategoriID", txtkategoriid.Text);
            cmd.Parameters.AddWithValue("@AltKategoriID", txtaltkid.Text);
            cmd.Parameters.AddWithValue("@Fiyat", txtkitapfiyati.Text);
            cmd.Parameters.AddWithValue("@StokMiktari", txtstokmiktari.Text);
            cmd.Parameters.AddWithValue("@YayınTarihi", dateTimePicker1.Value);
            cmd.Parameters.AddWithValue("@YayineviID", txtyayineviid.Text);
            cmd.Parameters.AddWithValue("@YazarID", txtyazarid.Text);
            cmd.Parameters.AddWithValue("@SayfaSayisi", txtsayfasayisi.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            KitapGetir();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            string sorgu = "DELETE FROM Kitaplar WHERE UrunID = @UrunID";
            cmd = new SqlCommand (sorgu, con);
            cmd.Parameters.AddWithValue("@UrunID", Convert.ToInt32(txtkitapid.Text));
            con.Open();
            cmd.ExecuteNonQuery ();
            con.Close();
            KitapGetir();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            string sorgu = "UPDATE Kitaplar SET UrunAdi=@UrunAdi, KategoriID=@KategoriID, AltKategoriID=@AltKategoriID, Fiyat=@Fiyat, StokMiktari=@StokMiktari, YayınTarihi=@YayınTarihi, YayineviID=@YayineviID, YazarID=@YazarID, SayfaSayisi=@SayfaSayisi WHERE UrunID=@UrunID";
            cmd = new SqlCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@UrunID", Convert.ToInt32(txtkitapid.Text));
            cmd.Parameters.AddWithValue("@UrunAdi", txtkitapadi.Text);
            cmd.Parameters.AddWithValue("@KategoriID", txtkategoriid.Text);
            cmd.Parameters.AddWithValue("@AltKategoriID", txtaltkid.Text);
            cmd.Parameters.AddWithValue("@Fiyat", txtkitapfiyati.Text);
            cmd.Parameters.AddWithValue("@StokMiktari", txtstokmiktari.Text);
            cmd.Parameters.AddWithValue("@YayınTarihi", dateTimePicker1.Value);
            cmd.Parameters.AddWithValue("@YayineviID", txtyayineviid.Text);
            cmd.Parameters.AddWithValue("@YazarID", txtyazarid.Text);
            cmd.Parameters.AddWithValue("@SayfaSayisi", txtsayfasayisi.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            KitapGetir();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            con.Open();
            Hide();
            Raporlama raporlama = new Raporlama();
            raporlama.Show();
            con.Close();
        }
    }
}
