# Flights DW (PostgreSQL)

Mini projekt SQL pokazujący modelowanie danych (kilka tabel + relacje) oraz analizę danych lotów przy użyciu zapytań SQL.

## Tech stack
- PostgreSQL
- DBeaver (SQL client)
- Git + GitHub

## Data model
Tabele:
- `airports` — słownik lotnisk
- `airlines` — słownik linii lotniczych
- `flights` — tabela faktów (loty)

Relacje:
- `flights.airline_id` → `airlines.airline_id`
- `flights.origin_airport_id` → `airports.airport_id`
- `flights.dest_airport_id` → `airports.airport_id`

## How to run locally

### 1) Create database
Utwórz bazę danych w PostgreSQL o nazwie `flights_dw` (np. w DBeaver).

### 2) Create schema
Uruchom:
- `sql/01_schema.sql`

### 3) Seed test data
Uruchom:
- `sql/02_seed.sql`

## Analysis queries
Zapytania znajdują się w `sql/queries/`:

- `q01_top_routes.sql` — najczęstsze trasy (origin → destination)
- `q02_avg_delays_by_airline.sql` — średnie opóźnienia odlotu/przylotu per linia (bez lotów anulowanych)
- `q03_cancellation_rate_by_airline.sql` — liczba i % odwołanych lotów per linia

## Notes
Dane w `sql/02_seed.sql` są celowo małe i “kontrolowane”, żeby łatwo testować JOINy i agregacje bez potrzeby pobierania dużego datasetu.
