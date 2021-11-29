<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/projectList">
  <html>
    <title>Projects | Hiraeth</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alegreya Sans SC" />
    <link rel="stylesheet" href="all\menu2.css" type="text/css" charset="utf-8" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bellota Text" />
    <style>
      body{
        margin:0;
        background-image: url('https://www.pcclean.io/wp-content/uploads/2020/4/JjUjya.jpg');
        font-family: 'Bellota Text';
        font-style: lighter;
        background-attachment:fixed;
        background-repeat: no-repeat;
        background-size: cover;
        color: white;
      }

      .projectsContainer{
        margin: 5% 5%;
        background-color: rgba(0,0,0,0.6);
        border-radius: 20px;
        padding: 3%;
      }

      .projectName{
        margin-top: 20px;
        font-size: 30px;
        letter-spacing: 2px;
      }

      .projectImg{
        height: 650px;
        width:900px;
        vertical-align: middle;
        float: left;
        border-radius: 10px;
      }

      .description {
        font-size: 20px;
        padding: 12px;
        bottom: 8px;
        width: 100%;
        letter-spacing: 0.5px;
      }

      h1{
        margin-bottom: -5%;
        margin-top: -1%;
        font-size: 40px;
        letter-spacing: 2px;
      }
    </style>
    <body>
      <div class="projectsContainer">
        <h1>My Projects</h1>
        <table style="margin-top: 5%;">
          <xsl:for-each select="project">
              <td colspan="2" height="120px">
                <div class="projectName"><xsl:value-of select="name"/><br />
                <span style="font-size: 20px; color: pink"><xsl:value-of select="year"/></span></div>
              </td>
              <tr>
                <td valign="top" rowspan="3"><img class="projectImg" src="{image}"/></td>
                <td valign="top" height="auto"><div class="description"><p style="color: pink;">Description - </p><xsl:value-of select="description"/></div></td>
              </tr>
              <tr>
                <td valign="top" height="125"><div class="description"><p style="color: pink;">Illustration shown - </p><xsl:value-of select="imgDesc"/></div></td>
              </tr>
              <tr>
                <td valign="top" height="125"><div class="description"><span style="color: pink;">Number of members - </span><xsl:value-of select="noOfMembers"/></div></td>
              </tr>
          </xsl:for-each>
        </table>
      </div>

      <div class="menu">
        <a href="index.html" class="name" target="_self">
          <img src="all\Hiraeth-1.svg" height="50px" width="100px"/>
        </a>
        <div class="options">
          <a href="aboutme.html" target="_self" class="links">About Me</a>
          <a href="resume.html" target="_self" class="links">Resume</a>
          <a href="artgallery.html" target="_self" class="links">Art Gallery</a>
          <a href="projects.xml" target="_self" style="color:#ffda6b;" class="links">Projects</a>
          <a href="music.html" target="_self" class="links">Music</a>
          <a href="reviews.html" target="_self" class="links">Reviews</a>
          <a href="photography.html" target="_self" class="links">Photography</a>
        </div>
        <a href="https://www.instagram.com/hir.aeth/" target="_blank" class="links" style="margin:30 0 0 100; height:25px; width:25px;">
          <img src="all\instalogo-white.svg" height="25px" width="25px" style="padding-top:18;"/>
        </a>
      </div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
