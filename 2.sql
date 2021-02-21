SELECT "Name" FROM "AspNetUsers"
JOIN "Payments" ON "AspNetUsers"."Id"="Payments"."UserId"
WHERE "Amount"=(SELECT MAX("Amount") FROM "Payments")