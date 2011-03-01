<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" /> 

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" >
      <head>
	<link rel="shortcut icon" href="favicon.ico" />
	<title>Test xml-xsl</title>
	<meta http-equiv="Pragma" content="no-cache"/>
	<meta http-equiv="Cache-Control" content="no-cache"/>
      </head>
      <body id="top">
	<center>
          <div id="container">
	    <xsl:apply-templates select="posts" />
	  </div>
	</center>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="posts">
    <h2><xsl:value-of select="post/title" /></h2>
    <p>
      Article publie le <xsl:value-of select="post/published_at" /><br />
      <xsl:value-of select="post/body" />
    </p>
    <h3>Commentaires</h3>
    <p>
      <xsl:value-of select="post/comments/comment/body" />
    </p>
  </xsl:template>

</xsl:stylesheet>
