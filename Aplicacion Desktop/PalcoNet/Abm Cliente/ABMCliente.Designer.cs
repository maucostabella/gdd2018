namespace PalcoNet.Abm_Cliente
{
    partial class ABMCliente
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.nuevoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modificarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modificarToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.buscarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.lbl_id = new System.Windows.Forms.Label();
            this.lbl_nombre = new System.Windows.Forms.Label();
            this.lbl_mail = new System.Windows.Forms.Label();
            this.lbl_calle = new System.Windows.Forms.Label();
            this.lbl_user = new System.Windows.Forms.Label();
            this.lbl_apellido = new System.Windows.Forms.Label();
            this.lbl_nro_doc = new System.Windows.Forms.Label();
            this.lbl_telefono = new System.Windows.Forms.Label();
            this.lbl_numero = new System.Windows.Forms.Label();
            this.lbl_dpto = new System.Windows.Forms.Label();
            this.lbl_fecha_nac = new System.Windows.Forms.Label();
            this.lbl_piso = new System.Windows.Forms.Label();
            this.lbl_cp = new System.Windows.Forms.Label();
            this.lbl_tipo_doc = new System.Windows.Forms.Label();
            this.lbl_edad = new System.Windows.Forms.Label();
            this.lbl_fecha_creacion = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_id = new System.Windows.Forms.TextBox();
            this.txt_user_id = new System.Windows.Forms.TextBox();
            this.txt_user_estado = new System.Windows.Forms.TextBox();
            this.txt_apellido = new System.Windows.Forms.TextBox();
            this.txt_nombre = new System.Windows.Forms.TextBox();
            this.txt_nro_doc = new System.Windows.Forms.TextBox();
            this.txt_edad = new System.Windows.Forms.TextBox();
            this.txt_telefono = new System.Windows.Forms.TextBox();
            this.txt_numero = new System.Windows.Forms.TextBox();
            this.txt_dpto = new System.Windows.Forms.TextBox();
            this.txt_mail = new System.Windows.Forms.TextBox();
            this.txt_calle = new System.Windows.Forms.TextBox();
            this.txt_piso = new System.Windows.Forms.TextBox();
            this.txt_cp = new System.Windows.Forms.TextBox();
            this.btn_accion = new System.Windows.Forms.Button();
            this.date_creacion = new System.Windows.Forms.DateTimePicker();
            this.date_fecha_nac = new System.Windows.Forms.DateTimePicker();
            this.combo_tipo_doc = new System.Windows.Forms.ComboBox();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(61, 4);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nuevoToolStripMenuItem,
            this.modificarToolStripMenuItem,
            this.modificarToolStripMenuItem1,
            this.buscarToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(479, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // nuevoToolStripMenuItem
            // 
            this.nuevoToolStripMenuItem.Name = "nuevoToolStripMenuItem";
            this.nuevoToolStripMenuItem.Size = new System.Drawing.Size(54, 20);
            this.nuevoToolStripMenuItem.Text = "Nuevo";
            this.nuevoToolStripMenuItem.Click += new System.EventHandler(this.nuevoToolStripMenuItem_Click);
            // 
            // modificarToolStripMenuItem
            // 
            this.modificarToolStripMenuItem.Name = "modificarToolStripMenuItem";
            this.modificarToolStripMenuItem.Size = new System.Drawing.Size(78, 20);
            this.modificarToolStripMenuItem.Text = "Dar de baja";
            // 
            // modificarToolStripMenuItem1
            // 
            this.modificarToolStripMenuItem1.Name = "modificarToolStripMenuItem1";
            this.modificarToolStripMenuItem1.Size = new System.Drawing.Size(70, 20);
            this.modificarToolStripMenuItem1.Text = "Modificar";
            // 
            // buscarToolStripMenuItem
            // 
            this.buscarToolStripMenuItem.Name = "buscarToolStripMenuItem";
            this.buscarToolStripMenuItem.Size = new System.Drawing.Size(54, 20);
            this.buscarToolStripMenuItem.Text = "Buscar";
            this.buscarToolStripMenuItem.Click += new System.EventHandler(this.buscarToolStripMenuItem_Click);
            // 
            // lbl_id
            // 
            this.lbl_id.AutoSize = true;
            this.lbl_id.Location = new System.Drawing.Point(46, 42);
            this.lbl_id.Name = "lbl_id";
            this.lbl_id.Size = new System.Drawing.Size(53, 13);
            this.lbl_id.TabIndex = 2;
            this.lbl_id.Text = "Cliente id:";
            // 
            // lbl_nombre
            // 
            this.lbl_nombre.AutoSize = true;
            this.lbl_nombre.Location = new System.Drawing.Point(52, 124);
            this.lbl_nombre.Name = "lbl_nombre";
            this.lbl_nombre.Size = new System.Drawing.Size(47, 13);
            this.lbl_nombre.TabIndex = 3;
            this.lbl_nombre.Text = "Nombre:";
            // 
            // lbl_mail
            // 
            this.lbl_mail.AutoSize = true;
            this.lbl_mail.Location = new System.Drawing.Point(70, 247);
            this.lbl_mail.Name = "lbl_mail";
            this.lbl_mail.Size = new System.Drawing.Size(29, 13);
            this.lbl_mail.TabIndex = 4;
            this.lbl_mail.Text = "Mail:";
            // 
            // lbl_calle
            // 
            this.lbl_calle.AutoSize = true;
            this.lbl_calle.Location = new System.Drawing.Point(66, 288);
            this.lbl_calle.Name = "lbl_calle";
            this.lbl_calle.Size = new System.Drawing.Size(33, 13);
            this.lbl_calle.TabIndex = 5;
            this.lbl_calle.Text = "Calle:";
            // 
            // lbl_user
            // 
            this.lbl_user.AutoSize = true;
            this.lbl_user.Location = new System.Drawing.Point(56, 83);
            this.lbl_user.Name = "lbl_user";
            this.lbl_user.Size = new System.Drawing.Size(43, 13);
            this.lbl_user.TabIndex = 6;
            this.lbl_user.Text = "User id:";
            // 
            // lbl_apellido
            // 
            this.lbl_apellido.AutoSize = true;
            this.lbl_apellido.Location = new System.Drawing.Point(296, 124);
            this.lbl_apellido.Name = "lbl_apellido";
            this.lbl_apellido.Size = new System.Drawing.Size(47, 13);
            this.lbl_apellido.TabIndex = 7;
            this.lbl_apellido.Text = "Apellido:";
            // 
            // lbl_nro_doc
            // 
            this.lbl_nro_doc.AutoSize = true;
            this.lbl_nro_doc.Location = new System.Drawing.Point(240, 165);
            this.lbl_nro_doc.Name = "lbl_nro_doc";
            this.lbl_nro_doc.Size = new System.Drawing.Size(103, 13);
            this.lbl_nro_doc.TabIndex = 8;
            this.lbl_nro_doc.Text = "Numero documento:";
            // 
            // lbl_telefono
            // 
            this.lbl_telefono.AutoSize = true;
            this.lbl_telefono.Location = new System.Drawing.Point(291, 247);
            this.lbl_telefono.Name = "lbl_telefono";
            this.lbl_telefono.Size = new System.Drawing.Size(52, 13);
            this.lbl_telefono.TabIndex = 9;
            this.lbl_telefono.Text = "Telefono:";
            // 
            // lbl_numero
            // 
            this.lbl_numero.AutoSize = true;
            this.lbl_numero.Location = new System.Drawing.Point(296, 288);
            this.lbl_numero.Name = "lbl_numero";
            this.lbl_numero.Size = new System.Drawing.Size(47, 13);
            this.lbl_numero.TabIndex = 10;
            this.lbl_numero.Text = "Numero:";
            // 
            // lbl_dpto
            // 
            this.lbl_dpto.AutoSize = true;
            this.lbl_dpto.Location = new System.Drawing.Point(266, 329);
            this.lbl_dpto.Name = "lbl_dpto";
            this.lbl_dpto.Size = new System.Drawing.Size(77, 13);
            this.lbl_dpto.TabIndex = 11;
            this.lbl_dpto.Text = "Departamento:";
            // 
            // lbl_fecha_nac
            // 
            this.lbl_fecha_nac.AutoSize = true;
            this.lbl_fecha_nac.Location = new System.Drawing.Point(5, 206);
            this.lbl_fecha_nac.Name = "lbl_fecha_nac";
            this.lbl_fecha_nac.Size = new System.Drawing.Size(94, 13);
            this.lbl_fecha_nac.TabIndex = 12;
            this.lbl_fecha_nac.Text = "Fecha nacimiento:";
            // 
            // lbl_piso
            // 
            this.lbl_piso.AutoSize = true;
            this.lbl_piso.Location = new System.Drawing.Point(69, 329);
            this.lbl_piso.Name = "lbl_piso";
            this.lbl_piso.Size = new System.Drawing.Size(30, 13);
            this.lbl_piso.TabIndex = 13;
            this.lbl_piso.Text = "Piso:";
            // 
            // lbl_cp
            // 
            this.lbl_cp.AutoSize = true;
            this.lbl_cp.Location = new System.Drawing.Point(25, 370);
            this.lbl_cp.Name = "lbl_cp";
            this.lbl_cp.Size = new System.Drawing.Size(74, 13);
            this.lbl_cp.TabIndex = 14;
            this.lbl_cp.Text = "Codigo postal:";
            // 
            // lbl_tipo_doc
            // 
            this.lbl_tipo_doc.AutoSize = true;
            this.lbl_tipo_doc.Location = new System.Drawing.Point(12, 165);
            this.lbl_tipo_doc.Name = "lbl_tipo_doc";
            this.lbl_tipo_doc.Size = new System.Drawing.Size(87, 13);
            this.lbl_tipo_doc.TabIndex = 15;
            this.lbl_tipo_doc.Text = "Tipo documento:";
            // 
            // lbl_edad
            // 
            this.lbl_edad.AutoSize = true;
            this.lbl_edad.Location = new System.Drawing.Point(308, 206);
            this.lbl_edad.Name = "lbl_edad";
            this.lbl_edad.Size = new System.Drawing.Size(35, 13);
            this.lbl_edad.TabIndex = 16;
            this.lbl_edad.Text = "Edad:";
            // 
            // lbl_fecha_creacion
            // 
            this.lbl_fecha_creacion.AutoSize = true;
            this.lbl_fecha_creacion.Location = new System.Drawing.Point(259, 42);
            this.lbl_fecha_creacion.Name = "lbl_fecha_creacion";
            this.lbl_fecha_creacion.Size = new System.Drawing.Size(84, 13);
            this.lbl_fecha_creacion.TabIndex = 17;
            this.lbl_fecha_creacion.Text = "Fecha creacion:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(277, 83);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 13);
            this.label1.TabIndex = 18;
            this.label1.Text = "Estado user:";
            // 
            // txt_id
            // 
            this.txt_id.Enabled = false;
            this.txt_id.Location = new System.Drawing.Point(105, 39);
            this.txt_id.Name = "txt_id";
            this.txt_id.Size = new System.Drawing.Size(100, 20);
            this.txt_id.TabIndex = 2;
            // 
            // txt_user_id
            // 
            this.txt_user_id.Enabled = false;
            this.txt_user_id.Location = new System.Drawing.Point(105, 80);
            this.txt_user_id.Name = "txt_user_id";
            this.txt_user_id.Size = new System.Drawing.Size(100, 20);
            this.txt_user_id.TabIndex = 4;
            // 
            // txt_user_estado
            // 
            this.txt_user_estado.Enabled = false;
            this.txt_user_estado.Location = new System.Drawing.Point(349, 80);
            this.txt_user_estado.Name = "txt_user_estado";
            this.txt_user_estado.Size = new System.Drawing.Size(100, 20);
            this.txt_user_estado.TabIndex = 5;
            // 
            // txt_apellido
            // 
            this.txt_apellido.Enabled = false;
            this.txt_apellido.Location = new System.Drawing.Point(349, 121);
            this.txt_apellido.Name = "txt_apellido";
            this.txt_apellido.Size = new System.Drawing.Size(100, 20);
            this.txt_apellido.TabIndex = 7;
            // 
            // txt_nombre
            // 
            this.txt_nombre.Enabled = false;
            this.txt_nombre.Location = new System.Drawing.Point(105, 121);
            this.txt_nombre.Name = "txt_nombre";
            this.txt_nombre.Size = new System.Drawing.Size(100, 20);
            this.txt_nombre.TabIndex = 6;
            // 
            // txt_nro_doc
            // 
            this.txt_nro_doc.Enabled = false;
            this.txt_nro_doc.Location = new System.Drawing.Point(349, 162);
            this.txt_nro_doc.Name = "txt_nro_doc";
            this.txt_nro_doc.Size = new System.Drawing.Size(100, 20);
            this.txt_nro_doc.TabIndex = 9;
            // 
            // txt_edad
            // 
            this.txt_edad.Enabled = false;
            this.txt_edad.Location = new System.Drawing.Point(349, 203);
            this.txt_edad.Name = "txt_edad";
            this.txt_edad.Size = new System.Drawing.Size(100, 20);
            this.txt_edad.TabIndex = 11;
            // 
            // txt_telefono
            // 
            this.txt_telefono.Enabled = false;
            this.txt_telefono.Location = new System.Drawing.Point(349, 244);
            this.txt_telefono.Name = "txt_telefono";
            this.txt_telefono.Size = new System.Drawing.Size(100, 20);
            this.txt_telefono.TabIndex = 13;
            // 
            // txt_numero
            // 
            this.txt_numero.Enabled = false;
            this.txt_numero.Location = new System.Drawing.Point(349, 285);
            this.txt_numero.Name = "txt_numero";
            this.txt_numero.Size = new System.Drawing.Size(100, 20);
            this.txt_numero.TabIndex = 15;
            // 
            // txt_dpto
            // 
            this.txt_dpto.Enabled = false;
            this.txt_dpto.Location = new System.Drawing.Point(349, 326);
            this.txt_dpto.Name = "txt_dpto";
            this.txt_dpto.Size = new System.Drawing.Size(100, 20);
            this.txt_dpto.TabIndex = 17;
            // 
            // txt_mail
            // 
            this.txt_mail.Enabled = false;
            this.txt_mail.Location = new System.Drawing.Point(105, 240);
            this.txt_mail.Name = "txt_mail";
            this.txt_mail.Size = new System.Drawing.Size(100, 20);
            this.txt_mail.TabIndex = 12;
            // 
            // txt_calle
            // 
            this.txt_calle.Enabled = false;
            this.txt_calle.Location = new System.Drawing.Point(105, 285);
            this.txt_calle.Name = "txt_calle";
            this.txt_calle.Size = new System.Drawing.Size(100, 20);
            this.txt_calle.TabIndex = 14;
            // 
            // txt_piso
            // 
            this.txt_piso.Enabled = false;
            this.txt_piso.Location = new System.Drawing.Point(105, 326);
            this.txt_piso.Name = "txt_piso";
            this.txt_piso.Size = new System.Drawing.Size(100, 20);
            this.txt_piso.TabIndex = 16;
            // 
            // txt_cp
            // 
            this.txt_cp.Enabled = false;
            this.txt_cp.Location = new System.Drawing.Point(105, 367);
            this.txt_cp.Name = "txt_cp";
            this.txt_cp.Size = new System.Drawing.Size(100, 20);
            this.txt_cp.TabIndex = 18;
            // 
            // btn_accion
            // 
            this.btn_accion.Location = new System.Drawing.Point(374, 364);
            this.btn_accion.Name = "btn_accion";
            this.btn_accion.Size = new System.Drawing.Size(75, 23);
            this.btn_accion.TabIndex = 19;
            this.btn_accion.Text = "button1";
            this.btn_accion.UseVisualStyleBackColor = true;
            this.btn_accion.Visible = false;
            // 
            // date_creacion
            // 
            this.date_creacion.Enabled = false;
            this.date_creacion.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.date_creacion.Location = new System.Drawing.Point(349, 39);
            this.date_creacion.Name = "date_creacion";
            this.date_creacion.Size = new System.Drawing.Size(100, 20);
            this.date_creacion.TabIndex = 3;
            // 
            // date_fecha_nac
            // 
            this.date_fecha_nac.Enabled = false;
            this.date_fecha_nac.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.date_fecha_nac.Location = new System.Drawing.Point(105, 203);
            this.date_fecha_nac.Name = "date_fecha_nac";
            this.date_fecha_nac.Size = new System.Drawing.Size(100, 20);
            this.date_fecha_nac.TabIndex = 10;
            // 
            // combo_tipo_doc
            // 
            this.combo_tipo_doc.Enabled = false;
            this.combo_tipo_doc.FormattingEnabled = true;
            this.combo_tipo_doc.Location = new System.Drawing.Point(105, 161);
            this.combo_tipo_doc.Name = "combo_tipo_doc";
            this.combo_tipo_doc.Size = new System.Drawing.Size(100, 21);
            this.combo_tipo_doc.TabIndex = 8;
            // 
            // ABMCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(479, 405);
            this.Controls.Add(this.combo_tipo_doc);
            this.Controls.Add(this.date_fecha_nac);
            this.Controls.Add(this.date_creacion);
            this.Controls.Add(this.btn_accion);
            this.Controls.Add(this.txt_cp);
            this.Controls.Add(this.txt_piso);
            this.Controls.Add(this.txt_calle);
            this.Controls.Add(this.txt_mail);
            this.Controls.Add(this.txt_dpto);
            this.Controls.Add(this.txt_numero);
            this.Controls.Add(this.txt_telefono);
            this.Controls.Add(this.txt_edad);
            this.Controls.Add(this.txt_nro_doc);
            this.Controls.Add(this.txt_nombre);
            this.Controls.Add(this.txt_apellido);
            this.Controls.Add(this.txt_user_estado);
            this.Controls.Add(this.txt_user_id);
            this.Controls.Add(this.txt_id);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lbl_fecha_creacion);
            this.Controls.Add(this.lbl_edad);
            this.Controls.Add(this.lbl_tipo_doc);
            this.Controls.Add(this.lbl_cp);
            this.Controls.Add(this.lbl_piso);
            this.Controls.Add(this.lbl_fecha_nac);
            this.Controls.Add(this.lbl_dpto);
            this.Controls.Add(this.lbl_numero);
            this.Controls.Add(this.lbl_telefono);
            this.Controls.Add(this.lbl_nro_doc);
            this.Controls.Add(this.lbl_apellido);
            this.Controls.Add(this.lbl_user);
            this.Controls.Add(this.lbl_calle);
            this.Controls.Add(this.lbl_mail);
            this.Controls.Add(this.lbl_nombre);
            this.Controls.Add(this.lbl_id);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "ABMCliente";
            this.Text = "Clientes";
            this.Load += new System.EventHandler(this.ABMCliente_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem nuevoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modificarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modificarToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem buscarToolStripMenuItem;
        private System.Windows.Forms.Label lbl_id;
        private System.Windows.Forms.Label lbl_nombre;
        private System.Windows.Forms.Label lbl_mail;
        private System.Windows.Forms.Label lbl_calle;
        private System.Windows.Forms.Label lbl_user;
        private System.Windows.Forms.Label lbl_apellido;
        private System.Windows.Forms.Label lbl_nro_doc;
        private System.Windows.Forms.Label lbl_telefono;
        private System.Windows.Forms.Label lbl_numero;
        private System.Windows.Forms.Label lbl_dpto;
        private System.Windows.Forms.Label lbl_fecha_nac;
        private System.Windows.Forms.Label lbl_piso;
        private System.Windows.Forms.Label lbl_cp;
        private System.Windows.Forms.Label lbl_tipo_doc;
        private System.Windows.Forms.Label lbl_edad;
        private System.Windows.Forms.Label lbl_fecha_creacion;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_id;
        private System.Windows.Forms.TextBox txt_user_id;
        private System.Windows.Forms.TextBox txt_user_estado;
        private System.Windows.Forms.TextBox txt_apellido;
        private System.Windows.Forms.TextBox txt_nombre;
        private System.Windows.Forms.TextBox txt_nro_doc;
        private System.Windows.Forms.TextBox txt_edad;
        private System.Windows.Forms.TextBox txt_telefono;
        private System.Windows.Forms.TextBox txt_numero;
        private System.Windows.Forms.TextBox txt_dpto;
        private System.Windows.Forms.TextBox txt_mail;
        private System.Windows.Forms.TextBox txt_calle;
        private System.Windows.Forms.TextBox txt_piso;
        private System.Windows.Forms.TextBox txt_cp;
        private System.Windows.Forms.Button btn_accion;
        private System.Windows.Forms.DateTimePicker date_creacion;
        private System.Windows.Forms.DateTimePicker date_fecha_nac;
        private System.Windows.Forms.ComboBox combo_tipo_doc;
    }
}