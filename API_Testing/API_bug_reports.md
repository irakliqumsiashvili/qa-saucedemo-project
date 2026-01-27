# API Bug Reports / Findings (Restful Booker + Public APIs)

> Note: Some entries below are **Findings/Observations** related to test environment/tooling stability. Public demo APIs may be unstable by nature.

---

## BR-API-001 — PUT Update Booking fails with `ECONNRESET` in Postman (Observation)

**Environment**
- Tool: Postman (Desktop)
- API: Restful Booker
- Endpoint: `PUT /booking/{id}`
- OS/Network: (Windows 11, VPN off)

**Preconditions**
- `token` is generated via `POST /auth`
- A valid `bookingId` exists (created via `POST /booking` or taken from `GET /booking`)

**Steps to Reproduce**
1. Send `POST {{baseUrl}}/auth` with valid credentials to obtain a token.
2. Send `POST {{baseUrl}}/booking` to create a booking and store returned `bookingid` into `bookingId`.
3. Send `PUT {{baseUrl}}/booking/{{bookingId}}`
   - Header: `Cookie: token={{token}}`
   - Body: valid booking JSON payload

**Actual Result**
- Postman shows error: `Error: read ECONNRESET`
- No HTTP status code returned (connection reset before response)

**Expected Result**
- HTTP `200 OK`
- Response body contains updated booking data


**Severity / Priority**
- Severity: Medium (S3) — blocks update tests in Postman
- Priority: Low–Medium (P3) — may be network/tooling dependent

**Notes**
- GET requests to the same host succeed in browser.
- Likely related to network/proxy/SSL inspection or intermittent demo API connectivity.

---

## BR-API-002 — FakeStore API returns `523 Origin is unreachable` (Observation)

**Environment**
- Tool: Postman / Browser
- API: Fake Store API
- Endpoint: `GET /products`

**Steps to Reproduce**
1. Send request:
   - `GET https://fakestoreapi.com/products?limit=10`

**Actual Result**
- HTTP status: `523`
- Response indicates origin is unreachable (Cloudflare)

**Expected Result**
- HTTP `200 OK`
- JSON array of products returned

**Impact**
- Blocks stable API practice on FakeStore at times.
- Switched portfolio API practice to Restful Booker for consistency.

**Severity / Priority**
- Severity: Medium (S3)
- Priority: Low (P3)

**Notes**
- Demo/public APIs may be temporarily unavailable.

---

## BR-API-003 — Negative test: non-existing booking returns 404 (Expected Behavior)

**Environment**
- Tool: Postman
- API: Restful Booker
- Endpoint: `GET /booking/{id}`

**Steps**
1. Send request:
   - `GET {{baseUrl}}/booking/99999999`

**Actual Result**
- HTTP status: `404 Not Found`

**Expected Result**
- HTTP `404 Not Found` for non-existing resource

**Result**
- ✅ Pass (expected negative behavior confirmed)

**Why included**
- Demonstrates negative testing and correct error handling validation.

---

