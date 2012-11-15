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
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <center>
                                    <img border="0">
                                        <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">img/LogoOASIF.png</xsl:text></xsl:attribute>
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
                                        <xsl:for-each select="PROPRIETES_FORMATION">
                                            <xsl:for-each select="DESCRIPTIF_FORMATION">
                                                <xsl:for-each select="tTITRE">
                                                    <span style="font-family:Verdana; font-size:15pt; font-weight:bold; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <a>
                                        <xsl:attribute name="href"><xsl:text disable-output-escaping="yes">img/Formation.svg</xsl:text></xsl:attribute>
                                        <center>
                                            <span style="font-family:Verdana; ">Aperçu du planning formation</span>
                                        </center>
                                    </a>
                                </center>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <br />
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <img border="0">
                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">img/Titre_Descriptif.png</xsl:text></xsl:attribute>
                                </img>
                            </td>
                        </tr>
                        <tr>
                            <td width="63">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Objectif </span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">:</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
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
                            </td>
                        </tr>
                        <tr>
                            <td width="63" />
                        </tr>
                        <tr>
                            <td width="63">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description </span>
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">:</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
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
                            </td>
                        </tr>
                        <tr>
                            <td width="63" />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Type : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
                                            <xsl:for-each select="tTYPE">
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
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Niveau : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
                                            <xsl:for-each select="tNIVEAU">
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
                            <td width="63" />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Prérequis : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
                                            <xsl:for-each select="tPREREQUIS">
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
                            <td width="63" />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commanditaire : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
                                            <xsl:for-each select="tCOMMANDITAIRE">
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
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Référentiel : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
                                            <xsl:for-each select="tREFERENTIEL">
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
                            <td width="63" />
                        </tr>
                        <tr>
                            <td width="63">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire </span>
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">:</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="DESCRIPTIF_FORMATION">
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
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <br />
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <img border="0">
                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">img/Titre_Accompagnement.png</xsl:text></xsl:attribute>
                                </img>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="ACCOMPAGNEMENT_FORMATION">
                                            <xsl:for-each select="ACCOMPAGNEMENTS_GLOBAUX">
                                                <table border="1">
                                                    <thead>
                                                        <tr>
                                                            <td align="center">
                                                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Nom</span>
                                                            </td>
                                                            <td align="center">
                                                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Type d&apos;accompagnement</span>
                                                            </td>
                                                            <td align="center">
                                                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Descriptif</span>
                                                            </td>
                                                            <td align="center">
                                                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée</span>
                                                            </td>
                                                            <td align="center">
                                                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">En présence / A distance</span>
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
                                <xsl:if test="count(  FORMATION/PROPRIETES_FORMATION/ACCOMPAGNEMENT_FORMATION/ACCOMPAGNEMENTS_GLOBAUX/ACCOMPAGNEMENT_GLOBAL  )  = 0">Aucun accompagnement renseigné...</xsl:if>
                            </td>
                        </tr>
                        <tr>
                            <td height="22" />
                        </tr>
                        <tr>
                            <td height="22">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Type outil :</span>
                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="ACCOMPAGNEMENT_FORMATION">
                                            <xsl:for-each select="tTYPE_OUTIL">
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
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Outil de substitution :</span>
                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="ACCOMPAGNEMENT_FORMATION">
                                            <xsl:for-each select="tOUTIL_SUBSTITUTION">
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
                            <td height="1" width="231">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Description utilisation </span>
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; ">:</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="22">
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="ACCOMPAGNEMENT_FORMATION">
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
                            </td>
                        </tr>
                        <tr>
                            <td height="22" width="124" />
                        </tr>
                        <tr>
                            <td height="22" width="124">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Commentaire :</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="22">
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="PROPRIETES_FORMATION">
                                        <xsl:for-each select="ACCOMPAGNEMENT_FORMATION">
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
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <br />
                <table border="0" width="600">
                    <tbody>
                        <tr>
                            <td>
                                <img border="0">
                                    <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">img/Titre_InfosGlobales.png</xsl:text></xsl:attribute>
                                </img>
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                        <tr>
                            <td>
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Informations sur le travail apprenant</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps total travail apprenant :</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; "></span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nTEMPS_TOTAL_TRAVAIL_APPRENANT_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; "> (</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nNBRE_ACTIVITES_SANS_TEMPS_APPRENANT_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; "> activité(s) sans temps de travail estimé pour l&apos;apprenant)</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps total de travail apprenant lors des journées planifiées :</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; "></span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nTEMPS_TOTAL_TRAVAIL_APPRENANT_JOURNEE_PLANIFIEE_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre de journées planifiées :</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nNBRE_JOURNEE_PLANIFIEE_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps de travail moyen hebdomadaire :</span>
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nTEMPS_TRAVAIL_MOYEN_HEBDOMADAIRE_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23" />
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Informations sur l&apos;accompagnement</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Temps total d&apos;accompagnement : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nTEMPS_TOTAL_ACCOMPAGNEMENT_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; "> (</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nNBRE_ACTIVITES_SANS_TEMPS_ACCOMP_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <span style="font-family:Verdana; font-size:8pt; "> activité(s) sans temps d&apos;accompagnement)</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="23" />
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="font-family:Verdana; font-size:8pt; font-weight:bold; text-decoration:underline; ">Informations sur l&apos;organisation de la formation</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">1er jour réel de la formation : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="dJOUR_REEL_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Durée totale de la formation :</span>
                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nDUREE_TOTAL_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre de crédits ECTS ou autres :</span>
                                <span style="font-family:Verdana; font-size:8pt; ">&#160;</span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nNBRE_CREDIT_ECTS_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                        <tr>
                            <td height="23">
                                <span style="color:#545CAF; font-family:Verdana; font-size:8pt; font-weight:bold; ">Nombre de modules constituant la formation : </span>
                                <xsl:for-each select="FORMATION">
                                    <xsl:for-each select="INFOS_GLOBALES_FORMATION">
                                        <xsl:for-each select="nNBRE_MODULE_Formation">
                                            <span style="font-family:Verdana; font-size:8pt; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <xsl:if test="count(  FORMATION/MODULES/MODULE  )  &gt; 0">
                    <br />
                    <table border="0" width="600">
                        <tbody>
                            <tr>
                                <td>
                                    <img border="0">
                                        <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">img/Titre_Modules.png</xsl:text></xsl:attribute>
                                    </img>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:for-each select="FORMATION">
                                        <xsl:for-each select="MODULES">
                                            <xsl:for-each select="MODULE">
                                                <br />
                                                <ul style="margin-bottom:0; margin-top:0; " start="1" type="circle">
                                                    <li style="font-family:Verdana; font-size:8pt; ">
                                                        <a>
                                                            <xsl:attribute name="href"><xsl:text disable-output-escaping="yes">modules/Module_</xsl:text><xsl:value-of select="nNUMERO_MODULE" /><xsl:text disable-output-escaping="yes">.html</xsl:text></xsl:attribute>
                                                            <span style="font-family:Verdana; font-size:8pt; ">Accéder à la fiche du module intitulé : &quot;</span>
                                                        </a>
                                                        <span style="font-family:Verdana; font-size:8pt; "></span>
                                                        <xsl:for-each select="PROPRIETES_MODULE">
                                                            <xsl:for-each select="DESCRIPTIF_MODULE">
                                                                <xsl:for-each select="tTITRE">
                                                                    <a>
                                                                        <xsl:attribute name="href"><xsl:text disable-output-escaping="yes">modules/Module_</xsl:text><xsl:value-of select="../../../nNUMERO_MODULE" /><xsl:text disable-output-escaping="yes">.html</xsl:text></xsl:attribute>
                                                                        <span style="font-family:Verdana; font-size:8pt; ">
                                                                            <xsl:apply-templates />
                                                                        </span>
                                                                    </a>
                                                                </xsl:for-each>
                                                            </xsl:for-each>
                                                        </xsl:for-each>
                                                        <a>
                                                            <xsl:attribute name="href"><xsl:text disable-output-escaping="yes">modules/Module_</xsl:text><xsl:value-of select="nNUMERO_MODULE" /><xsl:text disable-output-escaping="yes">.html</xsl:text></xsl:attribute>
                                                            <span style="font-family:Verdana; font-size:8pt; ">&quot;</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr>
                                <td height="23" />
                            </tr>
                        </tbody>
                    </table>
                </xsl:if>
                <br />
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
