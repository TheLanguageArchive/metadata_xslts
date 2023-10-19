<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cmd="http://www.clarin.eu/cmd/"
    exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="no"/>
    <xsl:template match="cmd:CMD">
    <CMD xmlns="http://www.clarin.eu/cmd/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.clarin.eu/cmd/ http://catalog.clarin.eu/ds/ComponentRegistry/rest/registry/profiles/clarin.eu:cr1:p_1493735943953/xsd"
        CMDVersion="1.1">
        <Header>
            <MdCreator>
                <xsl:value-of select="cmd:Header/cmd:MdCreator"/>
            </MdCreator>
            <MdCreationDate>
                <xsl:value-of select="cmd:Header/cmd:MdCreationDate"/>
            </MdCreationDate>
            <MdProfile>clarin.eu:cr1:p_1493735943953</MdProfile>
        </Header>
        <Resources>
            <ResourceProxyList/>
            <JournalFileProxyList/>
            <ResourceRelationList/>
            <IsPartOfList/>
        </Resources>
        <Components>
            <SL-TLA>
                <SL-Session>
                    <ResourceShortName><xsl:value-of select="cmd:Components/cmd:SL-TLA/cmd:ElicitationMaterialName"/></ResourceShortName>
                    <Date>Unspecified</Date>
                    <Description>
                        <Description>
                        <xsl:value-of select="cmd:Components/cmd:SL-Content/Description/Description"/>
                        </Description>
                    </Description>
                </SL-Session>
                <xsl:for-each select="cmd:Components/cmd:SL-TLA/cmd:Project">
                    <xsl:copy-of select="."/>
                </xsl:for-each>
                <xsl:for-each select="cmd:Components/cmd:SL-TLA/cmd:Location">
                    <xsl:copy-of select="."/>
                </xsl:for-each>
                <xsl:for-each select="cmd:Components/cmd:SL-TLA/cmd:SL-ActorSpeakerSigner">
                    <SL-ActorSigner>
                        <xsl:copy-of select="cmd:Pseudonym"/>
                        <xsl:copy-of select="cmd:Role"/>
                        <xsl:copy-of select="cmd:Age"/>
                        <xsl:copy-of select="cmd:Sex"/>
                        <xsl:copy-of select="cmd:Handedness"/>
                        <xsl:copy-of select="cmd:Deafness"/>
                        <DeafnessMother>Unknown</DeafnessMother>
                        <DeafnessFather>Unknown</DeafnessFather>
                        <DeafnessPartner>Unknown</DeafnessPartner>
                        <DeafnessFamily>Unknown</DeafnessFamily>
                        <xsl:copy-of select="cmd:ActorLanguages"/>
                        <xsl:copy-of select="cmd:MotherTongue"/>
                        <xsl:copy-of select="cmd:HomeLanguage"/>
                        <xsl:copy-of select="cmd:PrimaryLanguage"/>
                    </SL-ActorSigner>
                </xsl:for-each>
                <xsl:for-each select="cmd:Components/cmd:SL-TLA/cmd:SL-ActorResearcher">
                    <xsl:copy-of select="."/>
                </xsl:for-each>
                <xsl:choose>
                    <xsl:when test="cmd:Components/cmd:SL-TLA/cmd:SL-Content">
                        <xsl:for-each select="cmd:Components/cmd:SL-TLA/cmd:SL-Content">
                            <SL-Content>
                                <xsl:copy-of select="cmd:Genre"/>
                                <xsl:copy-of select="cmd:SubGenre"/>
                                <xsl:copy-of select="cmd:Modalities"/>
                                <xsl:copy-of select="cmd:Subject"/>
                                <xsl:copy-of select="cmd:CommunicationContext"/>
                                <Content_Languages>
                                    <Content_Language>
                                        <Id>Unspecified</Id>
                                        <Name>Unspecified</Name>
                                        <Dominant>Unspecified</Dominant>
                                        <SourceLanguage>Unspecified</SourceLanguage>
                                        <TargetLanguage>Unspecified</TargetLanguage>
                                    </Content_Language>
                                </Content_Languages>
                            </SL-Content>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <SL-Content>
                            <Genre>Unspecified</Genre>
                            <SubGenre/>
                            <Task></Task>
                            <Modalities/>
                            <Subject/>
                            <CommunicationContext/>
                            <Content_Languages>
                                <Content_Language>
                                    <Id>Unspecified</Id>
                                    <Name>Unspecified</Name>
                                    <Dominant>Unspecified</Dominant>
                                    <SourceLanguage>Unspecified</SourceLanguage>
                                    <TargetLanguage>Unspecified</TargetLanguage>
                                </Content_Language>
                            </Content_Languages>
                        </SL-Content>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:for-each select="cmd:Components/cmd:SL-TLA/cmd:SL-ContentElicitation">
                    <xsl:copy-of select="."/>
                </xsl:for-each>
                <xsl:for-each select="cmd:Components/cmd:SL-TLA/cmd:SL-Resources">
                    <xsl:copy-of select="."/>
                </xsl:for-each>
            </SL-TLA>
        </Components>
    </CMD>
    </xsl:template>
</xsl:stylesheet>