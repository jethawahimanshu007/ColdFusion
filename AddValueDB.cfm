<!--ADDING THE VALUES IN A DATABASE QUERY COLUMN IN COLDFUSION-->
<cfquery name="getArtPrices" datasource="cfartgallery" maxRows="5">
    SELECT A.PRICE
    FROM ART A
</cfquery>

<cfset priceList = valueList(getArtPrices.price) />
<cfset priceArr = listToArray(priceList) />

<cfoutput>
list: #priceList#<br/>
sum: #numberFormat(arraySum(priceArr))#<br/>
avg: #numberFormat(arrayAvg(priceArr))#<br/>
</cfoutput>
