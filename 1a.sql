SELECT "Title", SUM("Payments"."Amount") AS "TotalAmount"  FROM "Campaigns"
JOIN "Payments" ON "Campaigns"."Id"="Payments"."CampaignId"
Group by "Title"
ORDER BY "TotalAmount " DESC
FETCH FIRST 1 ROW ONLY
