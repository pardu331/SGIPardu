<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<html>
		<head>
			<title>Clientes</title>
			<style type="text/css">
					td, th{
						border: 1px black solid;
					}
					th{
						color: white;
						background-color: black;
					}
					.precio{
						background-color: yellow;				
					}
					table{
						width:100%;
					}
					tr{
						font-size:300%;
						text-align:center;
					}
					.mover{
						background-image: url(../imagenes/confettisvg.svg);
					}
					nav{
						text-align: center;
						margin:auto;
						width: 97.58%;
						text-align: center;
						font-size:200%;
						background-color:red;
						padding:1%;
					}
					.barra a:hover{
					color: springgreen;
					background-color: black;
					text-decoration:none;
					}
					nav a{
						padding:1%;
						color:yellow;
						text-decoration:none;
					}
					header{
						background-image: url(../imagenes/agenciasvg.svg) ;
						background-size: 8%;
						background-position: left;
						background-repeat: no-repeat;
						height: 90px;
						color: blue;
						background-color:red;
						width:99.60%;
						margin-left:0.2%;
					}
					header p{
						margin-left: 10%;
					}
			</style>
		</head>
		<body>
			<main>
				<header>
					<p>¿A que destino le apetece viajar hoy?</p>
				</header>
				<nav class='barra'>
					<a href="../index.html">Inicio</a>
					<a href="../html/videos.html">Videos</a>
					<a href="https://www.amazon.es/articulos-playa/s?k=articulos+de+playa">Articulos playa</a>
					<a href="../html/formulario_viajes.html">Redes Sociales</a>
					<a href="https://www.muchoviaje.com/oferta/bazar/">Descuentos</a>
					<a href="../xml/xml_vehiculos.xml">Renting de autos</a>
				</nav>
				<table>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Edad</th>
					<th>Top</th>
					<th>Numero_viajes</th>
					<th>Dinero_gastado</th>
					<th>Viaje Favorito</th>
					<xsl:for-each select="clientes/cliente">
						<tr>
							<td><xsl:value-of select="nombre"></xsl:value-of></td>
							<td><xsl:value-of select="apellido"></xsl:value-of></td>
							<td><xsl:value-of select="Edad"></xsl:value-of></td>
							<td><xsl:value-of select="top"></xsl:value-of></td>
							<td><xsl:value-of select="numero_viajes"></xsl:value-of></td>
							<td class="precio"><xsl:value-of select="dinero_gastado"></xsl:value-of></td>
							<td class="mover">
								<img width="60%">
									<xsl:attribute name="src">
										<xsl:value-of select="viaje_favorito"></xsl:value-of>
									</xsl:attribute>
								</img>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</main>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>
