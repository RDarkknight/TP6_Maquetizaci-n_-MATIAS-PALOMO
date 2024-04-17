using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_Maquetización__MATIAS_PALOMO{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string[] productos = new string[] { "Cepillo de dientes", "Pasta dental", "Shampoo", "Acondicionador", "Maquina de afeitar", "Espuma" };
                LstB_Prodcutos.DataSource = productos; /* carga los datos en la list box */
                LstB_Prodcutos.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            TxtB_Nuevo_Item.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (LstB_Prodcutos.SelectedIndex >= 0)
            { /* es mayor a 0 para confirmar que se selecciona un producto al menos*/
                LstB_Prod_Nuevo.Items.Add(LstB_Prodcutos.SelectedItem); /*Agrega items al segundo listbox*/
                LstB_Prod_Nuevo.ClearSelection();

            }
        }

        protected void Btt_Remover_Click(object sender, EventArgs e)
        {
            if (LstB_Prod_Nuevo.SelectedIndex >= 0)
            {
                LstB_Prod_Nuevo.Items.RemoveAt(LstB_Prod_Nuevo.SelectedIndex);
                LstB_Prod_Nuevo.ClearSelection();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            LstB_Prod_Nuevo.Items.Clear();
        }

        protected void Btt_Insrt_Item_Click(object sender, EventArgs e)
        {
            string Item = TxtB_Nuevo_Item.Text;
            LstB_Prod_Nuevo.Items.Add(Item);
        }

        protected void Btt_Ver_Sel_Click(object sender, EventArgs e)
        {
            string elementos = string.Join(", ", LstB_Prod_Nuevo.Items.Cast<ListItem>().Select(item => item.Text));
            Lbl_Ver_Sel.Text = elementos;
            Lbl_Ver_Sel.Visible = true;
        }
    }
}