<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Car Listings</title>
            <style>
                body { font-family: Arial, sans-serif; text-align: center; }
                .car-container { display: flex; flex-wrap: wrap; justify-content: center; }
                .car { border: 1px solid #333; padding: 15px; margin: 10px; width: 260px; border-radius: 8px; background-color: #f9f9f9; }
                h3 { color: #007BFF; }
                p { margin: 5px 0; }
            </style>
        </head>
        <body>
            <h1>Car Listings</h1>
            <div class="car-container">
                <xsl:for-each select="car/details">
                    <div class="car">
                     <img src="download.jfif" alt=""/>
                        <h3><xsl:value-of select="name"/> <xsl:value-of select="model"/></h3>
                        <p><strong>Year:</strong> <xsl:value-of select="year"/></p>
                        <p><strong>Price:</strong> $<xsl:value-of select="price"/></p>
                        <p><strong>Color:</strong> <xsl:value-of select="color"/></p>
                        <p><strong>Mileage:</strong> <xsl:value-of select="mileage"/> km</p>
                        <p><strong>Engine:</strong> <xsl:value-of select="engine"/></p>
                        <p><strong>Transmission:</strong> <xsl:value-of select="transmission"/></p>
                        <p><strong>Fuel Type:</strong> <xsl:value-of select="fuelType"/></p>
                    </div>
                </xsl:for-each>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
