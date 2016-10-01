<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridSexta.aspx.cs" Inherits="GridSexta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mi super grid view</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-xs-12" style="overflow-x: scroll;">
                    <asp:GridView runat="server" CssClass="table table-responsive table-hover" ID="gvAnimales" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="Id" OnRowCancelingEdit="gvAnimales_RowCancelingEdit" OnRowDeleting="gvAnimales_RowDeleting" OnRowEditing="gvAnimales_RowEditing" OnRowUpdating="gvAnimales_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="[Id]">
                                <ItemTemplate>
                                    <asp:Label ID="lblIdIT" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Nombre]">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtNombreEIT" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblNombreIT" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtNombreFT" runat="server" Placeholder="Ingresa Nombre" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[TipoId]">
                                <EditItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlTipoIdEIT" AppendDataBoundItems="true">
                                        <asp:ListItem Value="-1" Text="[Selecciona Tipo]" />
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlTipoIT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Tipo]" />
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList runat="server" ID="ddlTipoIdFT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Tipo]" />
                                    </asp:DropDownList>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[ColorId]">
                                <EditItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlColorIdEIT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Color]" />
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlColorIdIT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Color]" />
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList runat="server" ID="ddlColorIdFT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Color]" />
                                    </asp:DropDownList>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Fecha]">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtFechaEIT" runat="server" Text='<%# Bind("Fecha_Alta", "{0:dd/MM/yyyy}") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblFechaIT" runat="server" Text='<%# Bind("Fecha_Alta", "{0:dd/MM/yyyy}") %>' CssClass="form-control"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtFechaFT" TextMode="Date" Placeholder="día/mes/año" runat="server" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[GeneroId]">
                                <EditItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlGeneroIdEIT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Genero]" />
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList runat="server" ID="ddlGeneroIdIT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Genero]" />
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList runat="server" ID="ddlGeneroIdFT" AppendDataBoundItems="true" CssClass="form-control">
                                        <asp:ListItem Value="-1" Text="[Selecciona Genero]" />
                                    </asp:DropDownList>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Existencia]">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtExistenciaEIT" runat="server" Text='<%# Bind("Existencia") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblExistenciaIT" runat="server" Text='<%# Bind("Existencia") %>' CssClass="form-control"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox runat="server" ID="txtExistenciaFT" Placeholder="Ingresa Existencia" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Edad]">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEdadEIT" runat="server" Text='<%# Bind("Edad") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblEdadIT" runat="server" Text='<%# Bind("Edad") %>' CssClass="form-control"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox runat="server" ID="txtEdadFT" CssClass="form-control" Placeholder="Ingresa Edad" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Peso]">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPesoEIT" runat="server" Text='<%# Bind("Peso") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblPesoIT" runat="server" Text='<%# Bind("Peso") %>' CssClass="form-control"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox runat="server" ID="txtPesoFT" CssClass="form-control" Placeholder="Ingresa peso" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Estatus]">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkEstatusEIT" Text="" Checked="false" runat="server" CssClass="form-control" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkEstatusIT" Text="" runat="server" CssClass="form-control" />
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:CheckBox ID="chkEstatusFT" Text="" runat="server" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[FotoPortada]">
                                <EditItemTemplate>
                                    <asp:Image ImageUrl='<%# Bind("FotoPortada") %>' ID="imgFotoPortadaEIT" runat="server" CssClass="img-responsive img-rounded" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ImageUrl='<%# Bind("FotoPortada") %>' ID="imgFotoPortadaIT" runat="server" CssClass="img-responsive img-rounded" />
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:FileUpload ID="fuFotoPortadaFT" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="[Video]">
                                <EditItemTemplate>
                                    <iframe id="ifVideoEIT" runat="server" src='<%# Bind("Video") %>'></iframe>
                                    <asp:TextBox ID="VideoEIT" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <iframe id="ifVideoIT" runat="server" src='<%# Bind("Video") %>'></iframe>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox runat="server" ID="txtVideoFT" CssClass="form-control" placeholder="Ingresa video" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField AccessibleHeaderText="[Modificar]" ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="lnkActualizarEIT" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="lnkCancelarEIT" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEditarIT" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField AccessibleHeaderText="[Eliminar]" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEliminarIT" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Button Text="Agregar" ID="btnAgregarFT" runat="server" CssClass="btn btn-success" OnClick="btnAgregarFT_Click" />
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
    <script src="js/jquery-2.1.4.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/moment-with-locales.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <%--<script>
        $document.ready({


        });

    </script>--%>
</body>
</html>
