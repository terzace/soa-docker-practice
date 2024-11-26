CREATE TABLE public.airports (
    airport_code          CHAR(3) PRIMARY KEY,
    airport_name          TEXT NOT NULL,
    city                  TEXT NOT NULL,
    coordinates_lon       DOUBLE PRECISION NOT NULL,
    coordinates_lat       DOUBLE PRECISION NOT NULL,
    timezone              TEXT NOT NULL
);

CREATE TABLE public.flights (
    flight_id             SERIAL PRIMARY KEY,
    flight_no             CHAR(6) NOT NULL,
    scheduled_departure   TIMESTAMPTZ NOT NULL,
    scheduled_arrival     TIMESTAMPTZ NOT NULL,
    departure_airport     CHAR(3) REFERENCES airports (airport_code),
    arrival_airport       CHAR(3) REFERENCES airports (airport_code),
    status                VARCHAR(20) NOT NULL,
    aircraft_code         CHAR(3),
    actual_departure      TIMESTAMPTZ,
    actual_arrival        TIMESTAMPTZ
);