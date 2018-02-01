<!--DISPLAYING A DATABASE QUERY IN A GRID USING THE CFGRID TAG IN COLDFUSION-->
<html>

<cfquery name="getArtists" datasource="cfartgallery">
    SELECT A.*
    FROM ARTISTS A
    ORDER BY A.LASTNAME, A.FIRSTNAME
</cfquery>

<head>
</head>
<body style="padding:20px;">

    <cfform>
        <cfgrid name="myGrid" query="getArtists" />
    </cfform>

</body>
</html>
