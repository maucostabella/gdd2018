using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using milibreria;

namespace PalcoNet.Abm_Cliente
{
    public partial class busqueda_cliente : Form
    {
        public busqueda_cliente()
        {
            InitializeComponent();
        }

        private void busqueda_cliente_Load(object sender, EventArgs e)
        {
            lista_clientes.DataSource = milibreria.libreria.llenar_tabla("SELECT * FROM LOS_PI.Cliente").Tables[0];
        }
    }
}
