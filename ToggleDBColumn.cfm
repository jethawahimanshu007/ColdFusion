<!--TOGGLING WHICH COLUMNS ARE DISPLAYED FROM A DATABASE QUERY USING THE CFDUMP TAG IN COLDFUSION-->
<cfquery name="getArtists" datasource="cfartgallery" maxRows="5">
    SELECT A.ARTISTID, A.FIRSTNAME, A.LASTNAME, A.ADDRESS, A.CITY, A.STATE
    FROM ARTISTS A
</cfquery>

<cfoutput>
<p>query columnList:<br/>
#getArtists.columnList#</p>
</cfoutput>

<cfdump var="#getArtists#"
        metaInfo="false"
        format="text"
        show="FIRSTNAME, LASTNAME" />
