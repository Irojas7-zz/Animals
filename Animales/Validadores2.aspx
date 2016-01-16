<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validadores2.aspx.cs" Inherits="Validadores2" %>

<%@ Register Src="~/WebUserControls/usBasica.ascx" TagPrefix="uc1" TagName="usBasica" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Validadores</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <script src="js/jquery-2.1.4.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/validator.min.js"></script>
    <script src="js/widgets.js"></script>
    <script src="js/moment-with-locales.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Button Text="Generar Reporte" ID="btnReporte" runat="server" OnClick="btnReporte_Click" />
            <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-10">
                    <div role="form" id="formulario">
                        <div class="form-group has-feedback">
                            <label for="inputName" class="control-label">Name</label>
                            <asp:TextBox runat="server" class="form-control" ID="inputName" minlength="3" placeholder="Nombre" required></asp:TextBox>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <span class="help-block with-errors"></span>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="inputTwitter" class="control-label">Twitter</label>
                            <div class="input-group">
                                <span class="input-group-addon">@</span>
                                <asp:TextBox runat="server" pattern="^[_A-z0-9]{1,}$" MaxLength="15" class="form-control" ID="inputTwitter" placeholder="1000hz" required></asp:TextBox>
                            </div>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <span class="help-block with-errors">Hey look, this one has feedback icons!</span>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="inputEmail" class="control-label">Email</label>
                            <asp:TextBox runat="server" class="form-control" ID="inputEmail" placeholder="Email" type="Email" data-error="Email no valido" required></asp:TextBox>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="control-label">Password</label>
                            <div class="form-group col-sm-6">
                                <asp:TextBox runat="server" minlength="6" class="form-control" ID="inputPassword" placeholder="Password" required></asp:TextBox>
                                <span class="help-block with-errors"></span>
                            </div>
                            <div class="form-group col-sm-6">
                                <asp:TextBox runat="server" class="form-control" ID="inputPasswordConfirm" minlength="6" data-match="#inputPassword" placeholder="Confirm" required></asp:TextBox>
                                <div class="help-block with-errors"></div>
                                <%--data-match-error="No coinciden las contraseñas"--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    <%--<asp:RadioButton runat="server" ID="rbBox" name="underwear" Text="Boxers" required />--%>
                                    <input runat="server" id="idBox" type="radio" value="1" name="underwear" required />
                                    Boxers
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <%--<asp:RadioButton runat="server" ID="rbBru" name="underwear" required Text="Briefs"/>--%>
                                    <input runat="server" id="idBri" type="radio" value="2" name="underwear" required />
                                    Briefs
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <%--<asp:CheckBox runat="server" id="terms" data-error="Before you wreck yourself" Text="Check yourself" required/>--%>
                                    <input runat="server" type="checkbox" id="terms" value="1" data-error="Before you wreck yourself" required />
                                    Check yourself
                                </label>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary form-control">Submit</button>
                    </div>
                </div>
                <div class="col-xs-1">
                    <uc1:usBasica runat="server" ID="usBasica" />
                    <asp:Label ID="lblValidadores" runat="server"></asp:Label>
                </div>
            </div>
            
            <hr />
            <asp:GridView runat="server" ID="gvAnimales"></asp:GridView>
            <hr />
            <asp:GridView runat="server" ID="gvAnimalesExterno"></asp:GridView>
        </div>
    </form>
    <script type="text/javascript">
        $(function () {
            $('#txtFechaFT').datetimepicker({
                format: 'DD/MM/YYYY HH:mm',
                locale: 'es'
            });

            //http://1000hz.github.io/bootstrap-validator/
            $('#formulario').validator({
                errors: {
                    match: 'Los password no coinciden',
                    minlength: 'Not long enough'
                },
                disable: 'true'
            });
        });
    </script>
    <script>
       
    </script>
</body>
</html>
