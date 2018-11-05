using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.Abm_Cliente
{
    public partial class ABMCliente : Form
    {
        public ABMCliente()
        {
            InitializeComponent();
        }

        private void buscarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            busqueda_cliente ventBusqueda = new busqueda_cliente();
            ventBusqueda.Show();
        }

        private void ABMCliente_Load(object sender, EventArgs e)
        {

        }

        private void nuevoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            txt_nombre.Enabled = true;
            txt_apellido.Enabled = true;
            combo_tipo_doc.Enabled = true;
            txt_nro_doc.Enabled = true;
            date_fecha_nac.Enabled = true;
            txt_mail.Enabled = true;
            txt_telefono.Enabled = true;
            txt_calle.Enabled = true;
            txt_numero.Enabled = true;
            txt_piso.Enabled = true;
            txt_dpto.Enabled = true;
            txt_cp.Enabled = true;

            btn_accion.Visible = true;
            btn_accion.Text = "Agregar";

            txt_nombre.Show();
        }


    }
}
