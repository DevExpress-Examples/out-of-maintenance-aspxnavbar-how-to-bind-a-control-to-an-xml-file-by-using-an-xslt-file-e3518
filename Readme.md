<!-- default file list -->
*Files to look at*:

* [Lessons.xml](./CS/WebSite/App_Data/Lessons.xml) (VB: [Lessons.xml](./VB/WebSite/App_Data/Lessons.xml))
* [Lessons.xsl](./CS/WebSite/App_Data/Lessons.xsl) (VB: [Lessons.xsl](./VB/WebSite/App_Data/Lessons.xsl))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxNavBar - How to bind a control to an XML file by using an XSLT file


<p>When the ASPxNavBar is bound to XmlDataSource, the latter should suit the following structure:</p>


```xml
<Root>
<Group Text ="Reports">
  <Item Text =" ... " NavigateUrl="..." ImageUrl="..." />
 </Group>
</Root> 

```


<p>In this case, XmlDataSource can retrieve and synchronize the Text, NavigateUrl and ImageUrl XML attributes with ASPxNavBar properties. However, in real applications, data seldom suits this structure. Most often, an XML schema contains several sub- nodes that describe some element. For instance:</p>


```xml
<Menus> 
 <Menu text="abc1"> 
   <ProductID>193</ProductID> 
   <ProductName>090 - Introduction</ProductName>
   <PTName>Video</PTName>
 </Menu>
</Menus>

```


<p>XmlDataSource cannot parse such a schema. However, XmlDataSource allows specifying an XSLT file where you can define a transformation that will be applied to the specified DataFile. In this case, it is necessary to utilize the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxNavBarASPxNavBar_GroupContentTemplatetopic"><u>GroupContentTemplate</u></a>. For example:</p>


```xml
<xsl:stylesheet version="1.0" xmlns:xsl="<a href="http://www.w3.org/1999/XSL/Transform">http://www.w3.org/1999/XSL/Transform</a>">
    <xsl:template match="/">
        <Menus>
            <xsl:for-each select="//Menus/*">
                <Menu Text="{ProductName}" ProductID="{ProductID}"> 
                </Menu>
            </xsl:for-each>
        </Menus>
    </xsl:template>
</xsl:stylesheet> 

<GroupContentTemplate>
   ProductID: 
 <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.Group.DataItem, "ProductID") %>'></asp:Label>     
</GroupContentTemplate> 

```


<p>You can learn more about XML transformation files from the following sources:</p>
<p><a href="http://weblogs.asp.net/rajbk/Contents/Item/Display/954"><u>Using XSLT files with the new XMLDataSource control</u></a><br /> <a href="http://www.w3schools.com/xsl/xsl_transformation.asp"><u>XSLT - Transformation</u></a></p>

<br/>


