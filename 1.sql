SELECT "Title", SUM("Payments"."Amount") AS "MaxAmount"  FROM "Campaigns"
JOIN "Payments" ON "Campaigns"."Id"="Payments"."CampaignId"
Group by "Title"
ORDER BY "MaxAmount" DESC
FETCH FIRST 1 ROW ONLY;

