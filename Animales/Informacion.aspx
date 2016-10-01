<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Informacion.aspx.cs" Inherits="Informacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Informacion</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" />

    <style>
        .input-group-addon {
            background-color: beige;
        }
    </style>
    <style>
        #snow {/* http://www.wearewebstars.dk/codepen/img//s2.png */
            background: none;
            font-family: Androgyne;
            background-image: url('http://www.wearewebstars.dk/codepen/img/s1.png'), url('http://www.wearewebstars.dk/codepen/img//s2.png'), url('http://www.wearewebstars.dk/codepen/img//s3.png');
            height: 100%;
            left: 0;
            position: absolute;
            top: 0;
            width: 100%;
            z-index: 1;
            -webkit-animation: snow 10s linear infinite;
            -moz-animation: snow 10s linear infinite;
            -ms-animation: snow 10s linear infinite;
            animation: snow 10s linear infinite;
        }

        @keyframes snow {
            0% {
                background-position: 0px 0px, 0px 0px, 0px 0px;
            }

            50% {
                background-position: 500px 500px, 100px 200px, -100px 150px;
            }

            100% {
                background-position: 500px 1000px, 200px 400px, -100px 300px;
            }
        }

        @-moz-keyframes snow {
            0% {
                background-position: 0px 0px, 0px 0px, 0px 0px;
            }

            50% {
                background-position: 500px 500px, 100px 200px, -100px 150px;
            }

            100% {
                background-position: 400px 1000px, 200px 400px, 100px 300px;
            }
        }

        @-webkit-keyframes snow {
            0% {
                background-position: 0px 0px, 0px 0px, 0px 0px;
            }

            50% {
                background-position: 500px 500px, 100px 200px, -100px 150px;
            }

            100% {
                background-position: 500px 1000px, 200px 400px, -100px 300px;
            }
        }

        @-ms-keyframes snow {
            0% {
                background-position: 0px 0px, 0px 0px, 0px 0px;
            }

            50% {
                background-position: 500px 500px, 100px 200px, -100px 150px;
            }

            100% {
                background-position: 500px 1000px, 200px 400px, -100px 300px;
            }
        }

        .copo:hover {
            opacity: 1;
        }
    </style>
</head>
<body style="background-color:black;">
    <form id="form1" runat="server">
        <div class="row">
            <div class="panel panel-success" style="margin: 0 0 5px 0;">
                <%--<div id="snow">
                </div>--%>
                <div class="panel-heading" style="height: 100px; overflow: hidden; padding: 0px;">
                    <img src="http://res.cloudinary.com/spotlio/image/upload/ilafnc55bhqfasvbxq4x.jpg" alt="zoo" class="img-responsive" style="margin: auto;" />
                </div>
            </div>

            <div class="panel panel-default col-sm-10 col-sm-offset-1">
                <div class="panel-heading">
                    <img id="imgPort" alt="animal" class="img-responsive" style="margin: auto" runat="server" />
                    <br />
                    <div class="row">
                        <div class="col-md-12 col-md-offset-5">
                            <asp:FileUpload runat="server" ID="fuFotoPortada" />
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">
                            <img src="" alt="animaltwo" class="img-responsive" runat="server" id="imgMini" />
                            <br />
                            <div class="row">
                                <div class="col-md-4 col-md-offset-0">
                                    <asp:FileUpload runat="server" ID="fuFotoMini" />
                                </div>
                            </div>
                            <br />
                            <%--<h2>IMAGEN ANIMAL</h2>--%>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class=" input-group-addon left">
                                        <span class="glyphicon glyphicon-tint"></span>
                                    </span>
                                    <asp:DropDownList ID="ddlColor" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Text="[Color]" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-tag"></span>
                                    </span>
                                    <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Text="[Tipo]" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class=" glyphicon glyphicon-tags"></span>
                                    </span>
                                    <asp:DropDownList ID="ddlGenero" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Text="[Genero]" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon">Nombre</span>
                                    <asp:TextBox runat="server" ID="txtNomb" CssClass="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div class="input-group">
                                    <asp:TextBox runat="server" ID="txtExit" CssClass="form-control"></asp:TextBox>
                                    <span class="input-group-addon">Existencias</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox runat="server" ID="txtPeso" CssClass="form-control" placeholder="Peso del Animal"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-piggy-bank"></span>
                                    </span>
                                </div>
                                <br />
                                <div class='input-group date' id='datetimepicker1'>
                                    <asp:TextBox runat="server" ID="txtFech" class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">Edad</span>
                                <asp:TextBox runat="server" ID="txtEdad" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <%--<h2>VIDEO </h2>--%>
                            <%--<iframe id="ifVide" runat="server" src="https://www.youtube.com/watch?v=Kgjkth6BRRY  src="https://www.youtube.com/embed/MrNUMWUKE2A""></iframe>--%>
                            <iframe width="640" height="360" frameborder="0" allowfullscreen class="img-responsive" style="margin: auto" controls runat="server" id="urlVideo"></iframe>
                            <br />
                        </div>
                        <div class="col-md-12">
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="txtUrl" CssClass="form-control" placeholder="Url Video"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-film"></span>
                                </span>
                            </div>
                            <br />
                        </div>
                        <div class="col-md-3"></div>
                        <div class="col-sm-2 center-block">
                            <asp:Button runat="server" ID="btnDelete" Text="Borrar" CssClass="form-control" OnClick="btnDelete_Click" />
                        </div>
                        <div class="col-sm-2 center-block">
                            <asp:Button runat="server" ID="btnUpdate" Text="Actualizar" CssClass="form-control" OnClick="btnUpdate_Click" />
                        </div>
                        <div class="col-sm-2 center-block">
                            <asp:Button runat="server" ID="btnNew" Text="Guardar" CssClass="form-control" OnClick="btnNew_Click" />
                        </div>
                        <div class="col-md-3"></div>
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField runat="server" ID="hfId" />
    </form>
    <script src="js/jquery-2.1.4.js"></script>
    <script src="js/moment-with-locales.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#txtFech').datetimepicker({
                format: 'DD/MM/YYYY',
                locale: 'es'
            });
        });
    </script>
</body>
</html>
