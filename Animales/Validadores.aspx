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
                <div class="col-xs-12" style="text-align:center;">
                    <span id="spanUno" runat="server"></span>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtNomb" placeholder="Nombre" MaxLength="10" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" ForeColor="Red" ValidationGroup="Registro" Display="Static" runat="server" ControlToValidate="txtNomb" ErrorMessage="* Nombre requerido"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtCorr" placeholder="Correo" runat="server" type="Email" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="**" ForeColor="Red" ValidationGroup="Registro" Display="Static" runat="server" ControlToValidate="txtCorr" ErrorMessage="** Email requerido"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator100" ControlToValidate="txtCorr"
                                        Display="Dynamic" ValidationGroup="Registro" Text="***" ForeColor="Red" runat="server"
                                        ErrorMessage="** Correo no válido -- ejemplo something@someserver.com " ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"
                                        ValidateRequestMode="Enabled"></asp:RegularExpressionValidator>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtPass" placeholder="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="***" ForeColor="Red" ValidationGroup="Registro" Display="Static" runat="server" ControlToValidate="txtPass" ErrorMessage="*** Password requerido"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RequiredFieldValidator600" ControlToValidate="txtPass"
                                        Display="Static" ValidationGroup="Registro" Text="***" ForeColor="Red" runat="server"
                                        ErrorMessage="*** Debe tener de 4 a 10 caracteres y por lo menos una mayúscula, una minúscula, y un dígito"
                                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,10}$"></asp:RegularExpressionValidator>

                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtConf" placeholder="Confimración Password" type="password" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="****" ForeColor="Red" ValidationGroup="Registro" Display="Static" runat="server" ControlToValidate="txtConf" ErrorMessage="**** Campo requerido"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Registro" Text="****" ForeColor="Red" ControlToValidate="txtConf" ControlToCompare="txtPass" runat="server" ErrorMessage="**** Tu contraseña no coincide"></asp:CompareValidator>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:DropDownList ID="ddlDrop" AppendDataBoundItems="true" runat="server" CssClass="form-control">
                        <asp:ListItem Text="[Selecione]" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Mujer" Value="1" />
                        <asp:ListItem Text="Hombre" Value="2" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="***" ForeColor="Red" ValidationGroup="Registro" Display="Static" InitialValue="-1" runat="server" ControlToValidate="ddlDrop" ErrorMessage="Opcion no válida"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:RadioButtonList ID="rblRadio" runat="server" RepeatDirection="Horizontal" CssClass="form-control">
                        <asp:ListItem Text="Si" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="0"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="rblRadio" Text="***" ForeColor="Red" ValidationGroup="Registro" Display="Static" runat="server" ErrorMessage="Radio requerido"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:CheckBoxList ID="cblCheck" runat="server" RepeatDirection="Horizontal" CssClass="form-control">
                        <asp:ListItem Text="Si" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="0"></asp:ListItem>
                    </asp:CheckBoxList>
                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="cblCheck" Text="***" ForeColor="Red" ValidationGroup="Registro" Display="Static" runat="server" ErrorMessage="Check requerido"></asp:RequiredFieldValidator>--%>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <div class='input-group date' id='datetimepicker1'>
                        <asp:TextBox runat="server" ID="txtFechaFT" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Text="***" ForeColor="Red" ValidationGroup="Registro" Display="Static" ControlToValidate="txtFechaFT" runat="server" ErrorMessage="Fecha requerido"></asp:RequiredFieldValidator></span>
                        </span>
                    </div>
                </div>
                <br />
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:TextBox ID="txtExit" placeholder="Exitencias" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtExit" Text="***" ForeColor="Red" ValidationGroup="Registro" Display="Static" runat="server" ErrorMessage="Existencia requerida"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" Text="*" ControlToValidate="txtExit" ValidationGroup="Registro" runat="server" ErrorMessage="Sólo números enteros" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    <br />
                    <br />
                </div>
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="form-control btn-default" ValidationGroup="Registro" />
                </div>
                <div class="col-xs-12">
                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Registro" ForeColor="Red" runat="server" />
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
