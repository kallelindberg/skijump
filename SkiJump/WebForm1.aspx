<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SkiJump.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 75%;
        }
        .auto-style2 {
            width: 20%;
        }
    </style>
</head>
<body style="height: 209px">
    <form id="form1" runat="server">
    <div style="height: 30px">
    
        Mäkihyppy</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Pituus</td>
                <td class="auto-style2">K-piste</td>
                <td class="auto-style2">Tuuli</td>
                <td class="auto-style2">Lava</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="length" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="lengthValidator" runat="server" ControlToValidate="length" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="lengthinputValidator" runat="server" ControlToValidate="length" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,3}[,.]\d{1,2}|\d{1,3}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="kpoint" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="kpointFieldValidator" runat="server" ControlToValidate="kpoint" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="kpointInputValidator" runat="server" ControlToValidate="kpoint" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,3}[,.]\d{1,2}|\d{1,3}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="wind" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="windFieldValidator" runat="server" ControlToValidate="wind" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="windinputFieldValidator" runat="server" ControlToValidate="wind" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,2}[,.]\d{1,2}"></asp:RegularExpressionValidator>

                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="stage" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="stageFieldValidator" runat="server" ControlToValidate="stage" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="stageinputFieldValidator" runat="server" ControlToValidate="stage" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,2}[,.]\d{1,2}|\d{1,2}"></asp:RegularExpressionValidator>

                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Stylepisteet<br />
                    Tuomari 1</td>
                <td class="auto-style2">
                    <br />
                    Tuomari 2</td>
                <td class="auto-style2">
                    <br />
                    Tuomari 3</td>
                <td class="auto-style2">
                    <br />
                    Tuomari 4</td>
                <td class="auto-style2">
                    <br />
                    Tuomari 5</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="judge1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="judge1FieldValidator" runat="server" ControlToValidate="judge1" Display="Dynamic" ErrorMessage="Field Required" Text="x" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="judge1inputFieldValidator" runat="server" ControlToValidate="judge1" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,2}[,.]\d{1,2}|\d{1,2}"></asp:RegularExpressionValidator>

                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="judge2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="judge2FieldValidator" runat="server" ControlToValidate="judge2" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="judge2inputFieldValidator" runat="server" ControlToValidate="judge2" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,2}[,.]\d{1,2}|\d{1,2}"></asp:RegularExpressionValidator>

                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="judge3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="judge3FieldValidator" runat="server" ControlToValidate="judge3" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="judge3inputFieldValidator" runat="server" ControlToValidate="judge3" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,2}[,.]\d{1,2}|\d{1,2}"></asp:RegularExpressionValidator>

                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="judge4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="judge4FieldValidator" runat="server" ControlToValidate="judge4" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="judge4lengthFieldValidator" runat="server" ControlToValidate="judge4" Display="Dynamic" ErrorMessage="Invalid Input" Text="*" ValidationGroup="AllValidators" ValidationExpression="\d{1,2}[,.]\d{1,2}|\d{1,2}"></asp:RegularExpressionValidator>

                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="judge5" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="judge5FieldValidator" runat="server" ControlToValidate="judge5" Display="Dynamic" ErrorMessage="Field Required" Text="*" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="judge5" Display="Dynamic" ErrorMessage="Invalid Input" ID="judge5lengthFieldValidator" runat="server" Text="*" ValidationExpression="\d{1,2}[,.]\d{1,2}|\d{1,2}" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>

                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Laske" ValidationGroup="AllValidators" />
            &nbsp;
            Pisteet: <asp:Label ID="Result" runat="server" Text=""></asp:Label>
                    
                </p>
    </form>
</body>
</html>
