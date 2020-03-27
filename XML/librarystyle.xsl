<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<body>
		<h2>My Library</h2>
		<table border="2">
			<tr bgcolor="#efefef">
				<th>ISBN No.</th>
				<th>Title</th>
				<th>Author</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select="library/book">
				<tr>
					<td><xsl:value-of select="isbn"/></td>
					<td><xsl:value-of select="title"/></td>
					<td><xsl:value-of select="author"/></td>
					<td><xsl:value-of select="price"/></td>
				</tr>
			</xsl:for-each>
		</table>
	</body>	
</html>
</xsl:template>
</xsl:stylesheet>