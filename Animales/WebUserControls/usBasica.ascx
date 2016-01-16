<%@ Control Language="C#" AutoEventWireup="true" CodeFile="usBasica.ascx.cs" Inherits="WebUserControls_usBasica" %>
<div class="container">
    <div role="form">
        <div class="form-group">
            <asp:Label ID="lbl1" runat="server" Text="Texto:"></asp:Label>
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Texto" ID="txtTexto" />
        </div>
        <div class="form-group">
            <asp:LinkButton runat="server" CssClass="form-control" Text="# de Caracteres" ID="lnkCaracteres" OnClick="lnkCaracteres_Click" />
            <asp:Label Text="Resultado!!!!" ID="lblAccion" runat="server" />
            <hr />
            <br />
            <br />
        </div>
    </div>
</div>