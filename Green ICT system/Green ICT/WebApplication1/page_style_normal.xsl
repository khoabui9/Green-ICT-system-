<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/weatherdata">
		<html>
			<head>
				<title>My forecast</title>
			</head>
			<body>
				<h1>My forecast to <xsl:value-of select="location/name"/></h1>
				<table>
					<tr>
						<th>Day</th>
						<th>Summary</th>
						<th>Day temp (min : max)</th>
					</tr>
						<xsl:apply-templates select="forecast"/>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="forecast">
		<xsl:for-each select="time">
			<tr>
			<td><xsl:value-of select="@day"/></td>
			<td>
				<!-- Creating img tag with attribute src -->
				<xsl:choose>
					<xsl:when test="symbol/@number = '800'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/01d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>

					<xsl:when test="symbol/@number = '801'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/02d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>

					<xsl:when test="symbol/@number = '802'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/03d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>

					<xsl:when test="symbol/@number = '803'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/04d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>

					<xsl:when test="symbol/@number = '804'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/04d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>

					<xsl:when test="symbol/@number = '500'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/10d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>

					<xsl:when test="symbol/@number = '501'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/10d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>					

					<xsl:when test="symbol/@number = '600'">
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src">http://openweathermap.org/img/w/13d.png</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:when>
					
					<xsl:otherwise>
						<div style="width:50px">
							<xsl:element name="img">
								<xsl:attribute name="src"></xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
								<xsl:attribute name="height">50</xsl:attribute>
							</xsl:element>
						</div>
					</xsl:otherwise>					

				</xsl:choose>
			</td>
			<td>
				<xsl:value-of select="temperature/@day"/>c
			    <xsl:text>(</xsl:text><xsl:value-of select="temperature/@min"/>
				<xsl:text>/</xsl:text><xsl:value-of select="temperature/@max"/>)<br/>
				<xsl:value-of select="symbol/@name"/>
			</td>

			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="*">
		<div style="float: left">
			<h2>Something else</h2>
		</div>
	</xsl:template>
	
	<xsl:template match="picture">

	</xsl:template>
</xsl:stylesheet>