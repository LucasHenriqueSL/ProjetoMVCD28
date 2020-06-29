using ProjetoMVCd28.BLL;
using ProjetoMVCd28.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoMVCd28.UI
{
    public partial class Frm_Mvc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            try
            {
                msgerro.Visible = false;
                tblClientesDTO cliente = new tblClientesDTO();
                cliente.Cpf_cliente = txtcpfD28.Text;
                cliente.Nome_cliente = txtnomeD28.Text;
                cliente.Nome_mae = txtnomemaeD28.Text;

                tblClientesbll bllCliente = new tblClientesbll();
                if (bllCliente.consultarBeneficio(cliente.Cpf_cliente, cliente.Nome_cliente, cliente.Nome_mae))
                {
                    msgerro.Visible = true;
                    msgerro.Text = "Beneficiário Localizado no Banco de dados. Processo em Análise";
                }
                else
                {
                    msgerro.Visible = true;
                    msgerro.Text = "Beneficiário Não Localizado no Banco de dados.Benefício Negado";
                }
            }
            catch(Exception exception)
            {
                msgerro.Visible = true;
                msgerro.Text = exception.Message;
            }
        }
    }
}