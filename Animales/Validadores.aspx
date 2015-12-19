<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validadores.aspx.cs" Inherits="Validadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Validadores</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtNomb" placeholder="Nombre" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtCorr" placeholder="Correo" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtPass" placeholder="Password" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtConf" placeholder="Confimración Password" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:DropDownList ID="ddlDrop" AppendDataBoundItems="true" runat="server" CssClass="form-control">
                        <asp:ListItem Text="[Selecione]" Value="-1"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:RadioButtonList ID="rblRadio" runat="server" RepeatDirection="Horizontal" CssClass="form-control">
                        <asp:ListItem Text="Si" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="0"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:CheckBoxList ID="cblCheck" runat="server" RepeatDirection="Horizontal" CssClass="form-control">
                        <asp:ListItem Text="Si" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="0"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <div class='input-group date' id='datetimepicker1'>
                        <asp:TextBox runat="server" ID="txtFechaFT" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtExit" placeholder="Exitencias" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                    <br />
                </div>
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="form-control btn-default" />
                </div>
            </div>
        </div>
    </form>
    <script src="js/jquery-2.1.4.js"></script>
    <script src="js/moment-with-locales.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#txtFechaFT').datetimepicker({
                format: 'DD/MM/YYYY HH:mm',
                locale: 'es'
            });
        });
    </script>
</body>
</html>
