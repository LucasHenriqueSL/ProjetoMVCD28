<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm_Mvc.aspx.cs" Inherits="ProjetoMVCd28.UI.Frm_Mvc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Beneficiário</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="col-12">
            <div style="text-align:center; margin-top:150px;">
                <div class="row">
                 <div class="col-4"></div>
                     <div class="col-4">
                        <div class="card">
                            <div class="card-header">
                                <h3>Beneficiário</h3>
                            </div>
                            
                                <asp:Label ID="lblcpfD28" runat="server" Text="CPF"></asp:Label>
                                <asp:TextBox ID="txtcpfD28" type="number" runat="server" CssClass="form-control"></asp:TextBox>
                            </div><br />

                                <div class="form-group">
                                    <asp:Label ID="lblnomeD28" runat="server" Text="Nome Completo" ></asp:Label>
                                <asp:TextBox ID="txtnomeD28" type="text" runat="server" CssClass="form-control"></asp:TextBox>
                                </div><br />

                                <div class="form-group">
                                    <asp:Label ID="lblnomemaeD28" runat="server" Text="Nome Da Mãe"></asp:Label>
                                <asp:TextBox ID="txtnomemaeD28" type="text" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                         <div class="card-body">
                                <asp:Label ID="msgerro" runat="server" ForeColor="Red" Text="." Visible="false"></asp:Label>
                            <div class="form-group"><br />

                                     <asp:Button ID="btn_enviar" runat="server" Text="Enviar" CssClass="btn btn-info" OnClick="btn_enviar_Click" />
                                
                            

                            </div>
                            

                     </div>
                </div>
                    <div class="col-4"></div>
            </div>
            </div>
        </div>
    
    </form>
</body>
</html>
