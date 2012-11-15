<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes">
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
        <html>
            <head>
                <title />
            </head>
            <body>
                <br />
                <br />
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <center>
                                    <img border="0">
                                        <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/LogoOASIF.png</xsl:text></xsl:attribute>
                                    </img>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <xsl:for-each select="FORMATION">
                                        <xsl:for-each select="MODULES">
                                            <xsl:for-each select="MODULE">
                                                <xsl:for-each select="PROPRIETES_MODULE">
                                                    <xsl:for-each select="DESCRIPTIF_MODULE">
                                                        <xsl:for-each select="tTITRE">
                                                            <span style="font-family:Verdana; font-size:15pt; font-weight:bold; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                    <center />
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <center>
                                        <a>
                                            <xsl:attribute name="href"><xsl:text disable-output-escaping="yes">../img/Module_</xsl:text><xsl:value-of select="FORMATION/MODULES/MODULE/nNUMERO_MODULE" /><xsl:text disable-output-escaping="yes">.svg</xsl:text></xsl:attribute>
                                            <center>
                                                <span style="font-family:Verdana; ">Aperçu du planning module</span>
                                            </center>
                                        </a>
                                    </center>
                                </center>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <img border="0">
                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Descriptif.png</xsl:text></xsl:attribute>
                                </img>
                                <span style="color:white; font-family:Verdana; font-weight:bold; ">escriptif du module</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Objectif :</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tOBJECTIF">
                                                        <p>
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </p>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description :</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tDESCRIPTION">
                                                        <p>
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </p>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Public visé :</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tPUBLIC">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Prérequis : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tPREREQUIS">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Caractéristique : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tCARACTERISTIQUE">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commanditaire : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tCOMMANDITAIRE">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Porteur : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tPORTEUR">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Partenaires : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tPARTENAIRES">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Client : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tCLIENT">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Contact : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tCONTACT">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre de crédit ECTS : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="nCREDIT_ECTS">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre d&apos;apprenant : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="nNBRE_MAX_APPRENANT">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Lien :</span>
                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tLIEN">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire :</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="36">
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tCOMMENTAIRE">
                                                        <p>
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </p>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <img border="0">
                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Accompagnement.png</xsl:text></xsl:attribute>
                                </img>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="ACCOMPAGNEMENT_MODULE">
                                                    <xsl:for-each select="ACCOMPAGNEMENTS_GLOBAUX">
                                                        <table border="1">
                                                            <thead>
                                                                <tr>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Nom</span>
                                                                    </td>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Type</span>
                                                                    </td>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Attitude</span>
                                                                    </td>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Descriptif</span>
                                                                    </td>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée</span>
                                                                    </td>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Groupe</span>
                                                                    </td>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre d&apos;apprenant</span>
                                                                    </td>
                                                                    <td align="center">
                                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">En présence/ A distance</span>
                                                                    </td>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <xsl:for-each select="ACCOMPAGNEMENT_GLOBAL">
                                                                    <tr>
                                                                        <td>
                                                                            <xsl:for-each select="tNOM">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                        <td>
                                                                            <xsl:for-each select="tTYPE">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                        <td>
                                                                            <xsl:for-each select="tATTITUDE">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                        <td>
                                                                            <xsl:for-each select="tDESCRIPTIF">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                        <td>
                                                                            <xsl:for-each select="nDUREE">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                        <td>
                                                                            <xsl:for-each select="tGROUPE">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                        <td>
                                                                            <xsl:for-each select="nAPPRENANT">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                        <td>
                                                                            <xsl:for-each select="tPRESENCEDISTANCE">
                                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                                    <xsl:apply-templates />
                                                                                </span>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                    </tr>
                                                                </xsl:for-each>
                                                            </tbody>
                                                        </table>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <xsl:if test="count(  FORMATION/MODULES/MODULE/PROPRIETES_MODULE/ACCOMPAGNEMENT_MODULE/ACCOMPAGNEMENTS_GLOBAUX/ACCOMPAGNEMENT_GLOBAL  )  = 0">Aucun accompagnement renseigné...</xsl:if>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Type d&apos;outil : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="ACCOMPAGNEMENT_MODULE">
                                                    <xsl:for-each select="tTYPE_OUTIL">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Outil de substitution : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="ACCOMPAGNEMENT_MODULE">
                                                    <xsl:for-each select="tOUTIL_SUBSTITUTION">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description utilisation :</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="ACCOMPAGNEMENT_MODULE">
                                                    <xsl:for-each select="tDESCRIPTION_UTILISATION">
                                                        <p>
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </p>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire :</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="PROPRIETES_MODULE">
                                                <xsl:for-each select="DESCRIPTIF_MODULE">
                                                    <xsl:for-each select="tCOMMENTAIRE">
                                                        <p>
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </p>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <img border="0">
                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_InfosGlobales.png</xsl:text></xsl:attribute>
                                </img>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Informations sur le travail apprenant :</span>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps total travail apprenant : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nTEMPS_TOTAL_TRAVAIL_APPRENANT_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; "> (</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nNBRE_ACTIVITES_SANS_TEMPS_APPRENANT_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; "> activité(s) sans temps de travail estimé pour l&apos;apprenant)</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps total de travail apprenant lors des journées planifiées :</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nTEMPS_TOTAL_TRAVAIL_APPRENANT_JOURNEE_PLANIFIEE_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre de journées planifiées : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nNBRE_JOURNEE_PLANIFIEE_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps de travail moyen hebdomadaire : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nTEMPS_TRAVAIL_MOYEN_HEBDOMADAIRE_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Informations sur l&apos;accompagnement :</span>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps total d&apos;accompagnement : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nTEMPS_TOTAL_ACCOMPAGNEMENT_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; ">(</span>
                                <xsl:for-each select="FORMATION">
                                    <span style="font-family:Verdana; font-size:11pt; ">
                                        <xsl:for-each select="MODULES">
                                            <xsl:for-each select="MODULE">
                                                <xsl:for-each select="INFOS_GLOBALES_Module">
                                                    <xsl:for-each select="nNBRE_ACTIVITES_SANS_TEMPS_ACCOMP_Module">
                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </span>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; "> activité(s) sans temps d&apos;accompagnement)</span>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Informations sur l&apos;organisation du module :</span>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">1er jour réel du module : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="dJOUR_REEL_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée totale du module : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nDUREE_TOTAL_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre d&apos;activités bloquantes ou à risques : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="MODULES">
                                        <xsl:for-each select="MODULE">
                                            <xsl:for-each select="INFOS_GLOBALES_Module">
                                                <xsl:for-each select="nNBRE_ACTIVITE_BLOQUANTES_OU_RISQUES_Module">
                                                    <span style="font-family:Verdana; font-size:8pt; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <xsl:if test="count(  FORMATION/MODULES/MODULE/SEQUENCES/SEQUENCE  )   &gt; 0">
                    <xsl:for-each select="FORMATION">
                        <xsl:for-each select="MODULES">
                            <xsl:for-each select="MODULE">
                                <xsl:for-each select="SEQUENCES">
                                    <br />
                                    <table border="0" width="600">
                                        <tbody>
                                            <tr>
                                                <td />
                                            </tr>
                                            <tr>
                                                <td>
                                                    <img border="0">
                                                        <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Sequences.png</xsl:text></xsl:attribute>
                                                    </img>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td />
                                            </tr>
                                            <tr>
                                                <td />
                                            </tr>
                                        </tbody>
                                    </table>
                                    <xsl:for-each select="SEQUENCE">
                                        <br />
                                        <table border="0" width="680">
                                            <tbody>
                                                <tr>
                                                    <td width="33">
                                                        <center>
                                                            <center>
                                                                <img border="0">
                                                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Tab.png</xsl:text></xsl:attribute>
                                                                </img>
                                                            </center>
                                                        </center>
                                                    </td>
                                                    <td>
                                                        <span style="font-family:Verdana; font-size:13pt; font-weight:bold; ">Séquence : </span>
                                                        <xsl:for-each select="PROPRIETES_SEQUENCE">
                                                            <xsl:for-each select="DESCRIPTIF_SEQUENCE">
                                                                <xsl:for-each select="tTITRE">
                                                                    <span style="font-family:Verdana; font-size:13pt; font-weight:bold; ">
                                                                        <xsl:apply-templates />
                                                                    </span>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14" />
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <img border="0">
                                                            <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Descriptif.png</xsl:text></xsl:attribute>
                                                        </img>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Objectif :</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <xsl:for-each select="PROPRIETES_SEQUENCE">
                                                            <xsl:for-each select="DESCRIPTIF_SEQUENCE">
                                                                <xsl:for-each select="tOBJECTIF">
                                                                    <p>
                                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                                            <xsl:apply-templates />
                                                                        </span>
                                                                    </p>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description :</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <xsl:for-each select="PROPRIETES_SEQUENCE">
                                                            <xsl:for-each select="DESCRIPTIF_SEQUENCE">
                                                                <xsl:for-each select="tDESCRIPTION">
                                                                    <p>
                                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                                            <xsl:apply-templates />
                                                                        </span>
                                                                    </p>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14" />
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire </span>
                                                        <span style="font-family:Verdana; font-size:8pt; ">:</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <xsl:for-each select="PROPRIETES_SEQUENCE">
                                                            <xsl:for-each select="DESCRIPTIF_SEQUENCE">
                                                                <xsl:for-each select="tCOMMENTAIRE">
                                                                    <p>
                                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                                            <xsl:apply-templates />
                                                                        </span>
                                                                    </p>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td />
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14" />
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td width="14">
                                                        <img border="0">
                                                            <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_InfosGlobales.png</xsl:text></xsl:attribute>
                                                        </img>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td>
                                                        <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps total travail apprenant :</span>
                                                        <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                                        <xsl:for-each select="INFOS_GLOBALES_Sequence">
                                                            <xsl:for-each select="nTEMPS_TOTAL_TRAVAIL_APPRENANT_Sequence">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td>
                                                        <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée totale de la séquence :</span>
                                                        <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                                        <xsl:for-each select="INFOS_GLOBALES_Sequence">
                                                            <xsl:for-each select="nDUREE_TOTAL_Sequence">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td>
                                                        <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre de production à rendre :</span>
                                                        <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                                        <xsl:for-each select="INFOS_GLOBALES_Sequence">
                                                            <xsl:for-each select="nNBRE_PRODUCTION_A_RENDRE_Sequence">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td>
                                                        <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre d&apos;activités bloquantes ou à risques :</span>
                                                        <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                                        <xsl:for-each select="INFOS_GLOBALES_Sequence">
                                                            <xsl:for-each select="nNBRE_ACTIVITES_BLOQUANTES_OU_RISQUES_Sequence">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="33" />
                                                    <td />
                                                </tr>
                                                <tr>
                                                    <td height="4" width="33" />
                                                    <td height="4" />
                                                </tr>
                                                <tr>
                                                    <td height="4" width="33" />
                                                    <td height="4">
                                                        <xsl:if test="count(  ACTIVITES/ACTIVITE  ) &gt; 0">
                                                            <img border="0">
                                                                <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Activites.png</xsl:text></xsl:attribute>
                                                            </img>
                                                            <br />
                                                            <xsl:apply-templates select="ACTIVITES" />
                                                            <br />
                                                            <br />
                                                        </xsl:if>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <center>
                                            <center />
                                        </center>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>
                </xsl:if>
                <br />
                <xsl:if test="count(   FORMATION/MODULES/MODULE/ACTIVITES/ACTIVITE   ) &gt; 0">
                    <img border="0">
                        <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Activites.png</xsl:text></xsl:attribute>
                    </img>
                    <br />
                    <xsl:for-each select="FORMATION">
                        <xsl:for-each select="MODULES">
                            <xsl:for-each select="MODULE">
                                <br />
                                <xsl:apply-templates select="ACTIVITES" />
                                <br />
                            </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>
                    <br />
                    <br />
                </xsl:if>
                <br />
                <br />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ACTIVITES">
        <xsl:for-each select="ACTIVITE">
            <br />
            <table border="0" width="640">
                <tbody>
                    <tr>
                        <td height="37" width="29">
                            <img border="0">
                                <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Tab.png</xsl:text></xsl:attribute>
                            </img>
                        </td>
                        <td height="37">
                            <span style="font-family:Verdana; font-size:13pt; font-weight:bold; ">Activité : </span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tTITRE">
                                        <span style="font-family:Verdana; font-size:13pt; font-weight:bold; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <img border="0">
                                <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Descriptif.png</xsl:text></xsl:attribute>
                            </img>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Objectif :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tOBJECTIF">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tDESCRIPTION">
                                        <p>
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </p>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Type d&apos;activité :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tTYPE">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Caractéristique :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tCARACTERISTIQUE">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée de l&apos;activité :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="nDUREEh">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                            <span style="font-family:Verdana; font-size:8pt; "> h </span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="nDUREEmn">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                            <span style="font-family:Verdana; font-size:8pt; "> mn</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Type de travail :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tINDIVIDUELCOLLECTIF">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Lieu de travail :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tLIEU_TRAVAIL">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td />
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                    <xsl:for-each select="tCOMMENTAIRE">
                                        <p>
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </p>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <xsl:if test="PROPRIETES_ACTIVITES/PRODUCTION_ACTIVITE/tRENDU = &quot;Oui&quot;">
                                <br />
                                <table border="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img border="0">
                                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Production.png</xsl:text></xsl:attribute>
                                                </img>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="29">
                                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description :</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <xsl:for-each select="PROPRIETES_ACTIVITES">
                                                    <xsl:for-each select="PRODUCTION_ACTIVITE">
                                                        <xsl:for-each select="tDESCRIPTION_PRODUCTION">
                                                            <p>
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </p>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée :</span>
                                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                                <xsl:for-each select="PROPRIETES_ACTIVITES">
                                                    <xsl:for-each select="PRODUCTION_ACTIVITE">
                                                        <xsl:for-each select="nDUREEh">
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                                <span style="font-family:Verdana; font-size:8pt; "> h </span>
                                                <xsl:for-each select="PROPRIETES_ACTIVITES">
                                                    <xsl:for-each select="PRODUCTION_ACTIVITE">
                                                        <xsl:for-each select="nDUREEmn">
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                                <span style="font-family:Verdana; font-size:8pt; "> mn</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Outil d&apos;échange :</span>
                                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                                <xsl:for-each select="PROPRIETES_ACTIVITES">
                                                    <xsl:for-each select="PRODUCTION_ACTIVITE">
                                                        <xsl:for-each select="tOUTIL_ECHANGE">
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Outil de substitution :</span>
                                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                                <xsl:for-each select="PROPRIETES_ACTIVITES">
                                                    <xsl:for-each select="PRODUCTION_ACTIVITE">
                                                        <xsl:for-each select="tOUTIL_SUBSTITUTION">
                                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description utilisation : </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <xsl:for-each select="PROPRIETES_ACTIVITES">
                                                    <xsl:for-each select="PRODUCTION_ACTIVITE">
                                                        <xsl:for-each select="tDESCRIPTION_UTILISATION">
                                                            <p>
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </p>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td />
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire :</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <xsl:for-each select="PROPRIETES_ACTIVITES">
                                                    <xsl:for-each select="DESCRIPTIF_ACTIVITE">
                                                        <xsl:for-each select="tCOMMENTAIRE">
                                                            <p>
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </p>
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </xsl:if>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td />
                    </tr>
                    <tr>
                        <td width="36" />
                        <td width="29">
                            <img border="0">
                                <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Accompagnement.png</xsl:text></xsl:attribute>
                            </img>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="ACCOMPAGNEMENT_ACTIVITE">
                                    <xsl:for-each select="ACCOMPAGNEMENTS_GLOBAUX">
                                        <table border="1" width="600">
                                            <thead>
                                                <tr>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Nom</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Type</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Attitude</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Action</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Descriptif</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Groupe</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Nbre apprenant</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">En présence / A Distance</span>
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <xsl:for-each select="ACCOMPAGNEMENT_GLOBAL">
                                                    <tr>
                                                        <td>
                                                            <xsl:for-each select="tNOM">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tTYPE">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tATTITUDE">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tACTION">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tDESCRIPTIF">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="nDUREE">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tGROUPE">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="nAPPRENANT">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tPRESENCEDISTANCE">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                            </tbody>
                                        </table>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                            <xsl:if test="count(  PROPRIETES_ACTIVITES/ACCOMPAGNEMENT_ACTIVITE/ACCOMPAGNEMENTS_GLOBAUX/ACCOMPAGNEMENT_GLOBAL  )  =0">
                                <span style="font-family:Verdana; font-size:8pt; ">Aucun accompagnement renseigné...</span>
                            </xsl:if>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Type d&apos;outil :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="ACCOMPAGNEMENT_ACTIVITE">
                                    <xsl:for-each select="tTYPE_OUTIL">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Outil de substitution :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="ACCOMPAGNEMENT_ACTIVITE">
                                    <xsl:for-each select="tOUTIL_SUBSTITUTION">
                                        <span style="font-family:Verdana; font-size:8pt; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description utilisation : </span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="ACCOMPAGNEMENT_ACTIVITE">
                                    <xsl:for-each select="tDESCRIPTION_UTILISATION">
                                        <p>
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </p>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td />
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="ACCOMPAGNEMENT_ACTIVITE">
                                    <xsl:for-each select="tCOMMENTAIRE">
                                        <p>
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </p>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td />
                    </tr>
                    <tr>
                        <td height="34" width="36" />
                        <td height="34">
                            <img border="0">
                                <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_Ressource.png</xsl:text></xsl:attribute>
                            </img>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Ressource(s) pédagogique(s) :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="RESSOURCES_DOCS_ACTIVITE">
                                    <xsl:for-each select="RESSOURCES_PEDAGOGIQUES">
                                        <table border="1" width="600">
                                            <thead>
                                                <tr>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; ">Titre</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; ">Descriptif</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; ">Type de ressource</span>
                                                    </td>
                                                    <td align="center">
                                                        <span style="font-family:Verdana; font-size:8pt; ">Lien</span>
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <xsl:for-each select="RESSOURCE_PEDAGOGIQUE">
                                                    <tr>
                                                        <td>
                                                            <xsl:for-each select="tTITRE">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tDESCRIPTIF">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tTYPE">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                        <td>
                                                            <xsl:for-each select="tLIEN">
                                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                                    <xsl:apply-templates />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                            </tbody>
                                        </table>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                            <xsl:if test="count(  PROPRIETES_ACTIVITES/RESSOURCES_DOCS_ACTIVITE/RESSOURCES_PEDAGOGIQUES/RESSOURCE_PEDAGOGIQUE  )  = 0">
                                <span style="font-family:Verdana; font-size:8pt; ">Aucune ressource pédagogique renseignée...</span>
                            </xsl:if>
                        </td>
                    </tr>
                    <tr>
                        <td height="23" width="36" />
                        <td />
                    </tr>
                    <tr>
                        <td width="36" />
                        <td height="23">
                            <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Ressource logistique :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Adresse lieu de travail :</span>
                        </td>
                    </tr>
                    <tr>
                        <td height="86" width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="RESSOURCES_DOCS_ACTIVITE">
                                    <xsl:for-each select="RESSOURCES_LOGISTIQUES">
                                        <xsl:for-each select="tADRESSE">
                                            <p>
                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                    <xsl:apply-templates />
                                                </span>
                                            </p>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Descriptif du lieu :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="RESSOURCES_DOCS_ACTIVITE">
                                    <xsl:for-each select="RESSOURCES_LOGISTIQUES">
                                        <xsl:for-each select="tDESCRIPTIF">
                                            <p>
                                                <span style="font-family:Verdana; font-size:8pt; ">
                                                    <xsl:apply-templates />
                                                </span>
                                            </p>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Lien :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="RESSOURCES_DOCS_ACTIVITE">
                                    <xsl:for-each select="RESSOURCES_LOGISTIQUES">
                                        <xsl:for-each select="tLIEN">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Type de salle :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="RESSOURCES_DOCS_ACTIVITE">
                                    <xsl:for-each select="RESSOURCES_LOGISTIQUES">
                                        <xsl:for-each select="tTYPE_SALLE">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Numero de salle :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="RESSOURCES_DOCS_ACTIVITE">
                                    <xsl:for-each select="RESSOURCES_LOGISTIQUES">
                                        <xsl:for-each select="nNUMERO_SALLE">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td />
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire :</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <xsl:for-each select="PROPRIETES_ACTIVITES">
                                <xsl:for-each select="RESSOURCES_DOCS_ACTIVITE">
                                    <xsl:for-each select="tCOMMENTAIRE">
                                        <p>
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </p>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td />
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <img border="0">
                                <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">../img/Titre_InfosGlobales.png</xsl:text></xsl:attribute>
                            </img>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Jour de début de l&apos;activité :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="INFOS_GLOBALES_Activite">
                                <xsl:for-each select="dJOUR_REEL_Activite">
                                    <span style="font-family:Verdana; font-size:8pt; ">
                                        <xsl:apply-templates />
                                    </span>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td width="36" />
                        <td>
                            <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée total de l&apos;activité :</span>
                            <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                            <xsl:for-each select="INFOS_GLOBALES_Activite">
                                <xsl:for-each select="nDUREE_TOTAL_Activite">
                                    <span style="font-family:Verdana; font-size:8pt; ">
                                        <xsl:apply-templates />
                                    </span>
                                </xsl:for-each>
                            </xsl:for-each>
                        </td>
                    </tr>
                </tbody>
            </table>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
