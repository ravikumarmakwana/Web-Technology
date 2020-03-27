<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<body>
		<table border="2">
			<tr bgcolor="#efefef">
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Stock</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select="products/product">
				<xsl:sort select="pname"/>
				<xsl:if test="price &gt; 500">
				<tr>
					<td><xsl:value-of select="pname"/></td>
					<td><xsl:value-of select="pdesc"/></td>
					<td><xsl:value-of select="stock"/></td>
					<td><xsl:value-of select="price"/></td>
				</tr>
				</xsl:if>
			</xsl:for-each>
		</table>
	</body>	
</html>
</xsl:template>
</xsl:stylesheet>