# Flights Data Warehouse (PostgreSQL)

A small SQL project demonstrating relational data modeling and analytical queries on flight data using PostgreSQL.

## Tech stack
- PostgreSQL
- DBeaver (SQL client)
- Git & GitHub

## Data model
Tables:
- `airports` — airport dimension table
- `airlines` — airline dimension table
- `flights` — fact table containing flight-level data

Relationships:
- `flights.airline_id` → `airlines.airline_id`
- `flights.origin_airport_id` → `airports.airport_id`
- `flights.dest_airport_id` → `airports.airport_id`

## How to run locally

### 1) Create database
Create a PostgreSQL database named `flights_dw`.

### 2) Create schema
Run:
- `sql/01_schema.sql`

### 3) Seed sample data
Run:
- `sql/02_seed.sql`

## Analysis queries
All analysis queries are located in `sql/queries/`:

- `q01_top_routes.sql` — most frequent routes (origin → destination)
- `q02_avg_delays_by_airline.sql` — average departure and arrival delays per airline (excluding cancelled flights)
- `q03_cancellation_rate_by_airline.sql` — total flights, cancelled flights, and cancellation rate per airline

## Notes
The dataset in `sql/02_seed.sql` is intentionally small and controlled to make JOINs and aggregations easy to inspect without requir_
