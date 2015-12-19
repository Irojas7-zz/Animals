<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>.::GridView::. </title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1" style="overflow-x: scroll;">
                    <asp:GridView CssClass="table table-responsive table-hover" runat="server" ID="gvAnimales" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="Id,Nombre,Tipo_Id,Color_Id,Fecha_Alta,Genero_Id,Existencia,Edad,Peso,Estatus,FotoPortada,FotoMini,Video" OnRowCancelingEdit="gvAnimales_RowCancelingEdit" OnRowDeleting="gvAnimales_RowDeleting" OnRowEditing="gvAnimales_RowEditing" OnRowUpdating="gvAnimales_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="[Nombre]">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtNombreEIT" runat="server" CssClass="form-control" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkNombre" runat="server" Text='<%# Bind("Nombre") %>' CommandArgument='<%# Container.DataItemIndex %>' OnClick="lnkNombre_Click"></asp:LinkButton>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox runat="server" ID="txtNombreFT" placeholder="Nombre" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Color]" HeaderStyle-Width="120px">
                                <EditItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlColorEIT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Text="[Color]" Value="-1" />
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Color.Nombre") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList runat="server" ID="ddlColorFT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Text="[Color]" Value="-1" />
                                    </asp:DropDownList>
                                    </EditItemTemplate>
                                </FooterTemplate>

                                <HeaderStyle Width="120px"></HeaderStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Genero]">
                                <EditItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlGeneroEIT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Text="[Genero]" Value="-1" />
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Genero.Nombre") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList runat="server" ID="ddlGeneroFT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Text="[Genero]" Value="-1" />
                                    </asp:DropDownList>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Peso]">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPesoEIT" CssClass="form-control" runat="server" Text='<%# Bind("Peso") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Peso", "{0:N}") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtPesoFT" CssClass="form-control" runat="server" placeholder="Peso Kg"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Fecha]">
                                <EditItemTemplate>
                                    <div class='input-group date' id='datetimepicker1'>
                                        <asp:TextBox runat="server" ID="txtFechaEIT" class="form-control" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Fecha_Alta", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <div class='input-group date' id='datetimepicker1'>
                                        <asp:TextBox runat="server" ID="txtFechaFT" class="form-control" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Estatus]">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkEstatusEIT" runat="server" Checked='<%# Bind("Estatus") %>'></asp:CheckBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkEstatus" runat="server" Enabled="false" Checked='<%# Bind("Estatus") %>'></asp:CheckBox>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:CheckBox ID="chkEstatusFT" runat="server" Checked="true"></asp:CheckBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Foto Portada]">
                                <EditItemTemplate>
                                    <asp:FileUpload runat="server" ID="fuFotoPortadaEIT" CssClass="form-control" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Label7" Width="75px" runat="server" ImageUrl='<%# Bind("FotoPortada") %>'></asp:Image>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:FileUpload runat="server" ID="fuFotoPortadaFT" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Editar]" ShowHeader="False" FooterStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="lnkActualizar" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="lnkCancelar" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEditar" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:LinkButton Text="Guardar" ID="lnkGuardar" runat="server" CssClass="btn btn-primary" OnClick="lnkGuardar_Click" />
                                </FooterTemplate>
                                <FooterStyle HorizontalAlign="Center"></FooterStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Borrar]" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkBorrar" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="hfFila" runat="server" />
    </form>
    <script src="js/jquery-2.1.4.js"></script>
    <script src="js/moment-with-locales.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=txtFecha]').datetimepicker({
                format: 'DD/MM/YYYY HH:mm',
                locale: 'es'
            });
        });
    </script>
</body>
</html>
