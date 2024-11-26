COPY public.airports (
    airport_code,
    airport_name,
    city,
    coordinates_lon,
    coordinates_lat,
    timezone
) FROM '/var/lib/postgresql/data/synt_data/airports.csv' DELIMITER ',' CSV HEADER;

COPY public.flights (
    flight_id,
    flight_no,
    scheduled_departure,
    scheduled_arrival,
    departure_airport,
    arrival_airport,
    status,
    aircraft_code
) FROM '/var/lib/postgresql/data/synt_data/flights.csv' DELIMITER ',' CSV HEADER;