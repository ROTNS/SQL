SELECT "Title","MaxSumCamp" AS "TotalAmount"
FROM (
	  SELECT "Campaigns"."Title", SUM("Amount") AS "SumCamp", 
	  MAX(SUM("Amount"))OVER() AS "MaxSumCamp" FROM "Payments" 
	  JOIN "Campaigns" ON "Campaigns"."Id"="Payments"."CampaignId" 
	  Group by "Campaigns"."Title"
	 ) AS "Sub"
WHERE "SumCamp"="MaxSumCamp"