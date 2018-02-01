<!--DYNAMICALLY ADDING COLUMNS TO A DATABASE QUERY USING COLDFUSION-->
<cfquery name="getArtists" datasource="cfartgallery" maxRows="5">
    SELECT A.ARTISTID, A.FIRSTNAME, A.LASTNAME
    FROM ARTISTS A
</cfquery>

<cfset queryAddColumn(getArtists, "fullName", ArrayNew(1)) />
<cfloop query="getArtists">
    <cfset querySetCell(getArtists, "fullName", uCase(getArtists.LASTNAME & ", " & getArtists.FIRSTNAME), getArtists.currentRow) />
</cfloop>

<cfdump var="#getArtists#" metaInfo="false" format="text" />
