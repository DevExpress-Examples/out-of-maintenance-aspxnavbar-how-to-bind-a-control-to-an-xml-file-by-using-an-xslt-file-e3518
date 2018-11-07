<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxNavBar" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Lessons.xml"
            XPath="//Menus/*" TransformFile="~/App_Data/Lessons.xsl"></asp:XmlDataSource>
        <dx:ASPxNavBar ID="ASPxNavBar1" runat="server" ClientIDMode="AutoID" DataSourceID="XmlDataSource1">
            <GroupContentTemplate>
                ProductID:
                <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.Group.DataItem, "ProductID") %>'></asp:Label><br />
                DateAdded:
                <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.Group.DataItem, "DateAdded") %>'></asp:Label><br />
                PCName:
                <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.Group.DataItem, "PCName") %>'></asp:Label><br />
            </GroupContentTemplate>
            <GroupDataFields TextField="Text" />
        </dx:ASPxNavBar>
    </div>
    </form>
</body>
</html>
