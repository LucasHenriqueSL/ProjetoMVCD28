using ProjetoMVCd28.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ProjetoMVCd28.BLL
{
    public class tblClientesbll
    {
        private DalMVC daoBanco = new DalMVC();

        public Boolean consultarBeneficio(string cpf, string nome_completo, string nome_mae)
        {
            string consulta = string.Format($@"select * from tbl_clienteD28 where cpf_cliente = '{cpf}' and nome_cliente = '{nome_completo}' and nome_mae = '{nome_mae}'");
            DataTable dt = daoBanco.executarConsulta(consulta);
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}