<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Lugares</title>
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
						<a href="">Fotos</a>
						<a href="">Videos</a>
						<a href="https://www.amazon.es/articulos-playa/s?k=articulos+de+playa">Articulos playa</a>
						<a href="">Redes Sociales</a>
						<a href="https://www.muchoviaje.com/oferta/bazar/">Descuentos</a>
						<a href="">Renting de automoviles</a>
					</nav>
					<table>
						<th>Pais</th>
						<th>Sitio_a_visitar</th>
						<th>Idioma</th>
						<th>Precio</th>
						<th>Bandera</th>
						<xsl:for-each select="Lugares/Destino">
							<tr>
								<td><xsl:value-of select="Pais"></xsl:value-of></td>
								<td><xsl:value-of select="Sitio_a_visitar"></xsl:value-of></td>
								<td><xsl:value-of select="Idioma"></xsl:value-of></td>
								<td class="precio"><xsl:value-of select="Precio"></xsl:value-of></td>
								<td class="mover">
									<img width="40%">
										<xsl:attribute name="src">
											<xsl:value-of select="Bandera_pais"></xsl:value-of>
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
