using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace milibreria
{
    public class libreria
    {
        public static SqlConnection Con = new SqlConnection("Data Source= localhost\\SQLSERVER2012;Initial Catalog=GD2C2018;User ID=gdEspectaculos2018;Password=gd2018");
        //public static SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["PagoAgilFrba.Settings1.conSql"].ConnectionString);
        public static DataSet SelectQuery(string cmd)
        {
            Con.Open();

            DataSet DS = new DataSet();
            SqlDataAdapter DP = new SqlDataAdapter(cmd, Con);
            DP.Fill(DS);

            Con.Close();

            return DS;
        }

        public static int InsertQuery(string query)
        {
            Con.Open();
            SqlCommand command = new SqlCommand(query, Con);
            int resultado = command.ExecuteNonQuery();
            Con.Close();
            return resultado;
        }

        public static DataSet llenar_tabla(string query)
        {
            DataSet DS;
            string cmd = string.Format(query);
            DS = SelectQuery(cmd);
            return DS;
        }

    }
}

