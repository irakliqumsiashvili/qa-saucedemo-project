# API Testing (Postman) — Restful Booker

This section contains a Postman collection created for junior QA portfolio purposes.

## Covered requests
- GET /booking — list booking IDs
- GET /booking/{id} — booking details
- POST /booking — create a booking (stores the created bookingId into an environment variable)
- Negative: GET /booking/{non-existing-id} — expected 404

## What is validated (assertions)
- Status codes (200 / 404)
- Basic JSON structure (array/object)
- Presence of key fields (e.g., bookingid, firstname, lastname, totalprice)

## How to run
1. Import the collection: `postman/RestfulBooker_Portfolio.postman_collection.json`
2. Import the environment: `postman/restful-booker.postman_environment.json`
3. Select the `restful-booker` environment in Postman
4. Run requests in order:
   - GET Booking IDs
   - GET Booking by ID
   - POST Create Booking
   - GET Booking - Not Found

