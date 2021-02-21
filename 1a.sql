SELECT "Title", SUM("Payments"."Amount") AS "MaxAmount"  FROM "Campaigns"
JOIN "Payments" ON "Campaigns"."Id"="Payments"."CampaignId"
Group by "Title"
ORDER BY "MaxAmount" DESC LIMIT 1
