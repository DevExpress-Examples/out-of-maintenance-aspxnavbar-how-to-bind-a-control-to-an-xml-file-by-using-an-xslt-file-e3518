<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<Menus>
			<xsl:for-each select="//Menus/*">
				<Menu Text="{ProductName}" ProductID="{ProductID}" DateAdded="{DateAdded}" PCName="{PCName}">					
				</Menu>
			</xsl:for-each>
		</Menus>
	</xsl:template>
</xsl:stylesheet>