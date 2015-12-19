<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validadores2.aspx.cs" Inherits="Validadores2" %>

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
                            <asp:TextBox runat="server" class="form-control" id="inputEmail" placeholder="Email" type="Email" data-error="Email no valido" required></asp:TextBox>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="control-label">Password</label>
                            <div class="form-group col-sm-6">
                                <asp:TextBox runat="server" minlength="6" class="form-control" id="inputPassword" placeholder="Password" required></asp:TextBox>
                                <span class="help-block with-errors"></span>
                            </div>
                            <div class="form-group col-sm-6">
                                <asp:TextBox runat="server" class="form-control" id="inputPasswordConfirm" minlength="6" data-match="#inputPassword" placeholder="Confirm" required></asp:TextBox>
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
                <div class="col-xs-1"></div>
            </div>
            <%--<div class="row">
                <div role="form" id="formulario">
                    <br />
                    <div class="col-sm-offset-4 col-sm-4 form-group has-feedback">
                        <label for="inputName" class="control-label">Nombre</label>
                        <asp:TextBox ID="txtNomb" placeholder="Nombre" MaxLength="10" minlength="3" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span class="help-block with-errors"></span>
                    </div>
                    <br />
                    <div class="col-sm-offset-4 col-sm-4 form-group has-feedback">
                        <label for="inputEmail" class="control-label">Email</label>
                        <asp:TextBox ID="txtCorr" placeholder="Correo" runat="server" type="Email" CssClass="form-control" data-error="Email no valido" required></asp:TextBox>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <div class="help-block with-errors"></div>
                    </div>
                    <br />
                    <div class="col-sm-offset-4 col-sm-4">
                        <asp:TextBox ID="txtPass" placeholder="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                    </div>
                    <br />
                    <div class="col-sm-offset-4 col-sm-4">
                        <asp:TextBox ID="txtConf" placeholder="Confimración Password" type="password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br />
                    <div class="col-sm-offset-4 col-sm-4">
                        <asp:DropDownList ID="ddlDrop" AppendDataBoundItems="true" runat="server" CssClass="form-control">
                            <asp:ListItem Text="[Selecione]" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Mujer" Value="1" />
                            <asp:ListItem Text="Hombre" Value="2" />
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
                </div>
                <div class="col-sm-offset-4 col-sm-4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="form-control btn-default" ValidationGroup="Registro" />
                </div>
            </div>--%>
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
