CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE SCHEMA velib;

CREATE TABLE velib.station (
    station_id int4 NOT NULL,
    name text NOT NULL,
    "position" point NOT NULL,
    address text NOT NULL,
    is_bank boolean NOT NULL,
    is_bonus boolean NOT NULL,
    
    UNIQUE (station_id)
);

CREATE TABLE velib.measure (
    measure_id uuid NOT NULL DEFAULT public.uuid_generate_v4(),
    station_id int4 NOT NULL,
    last_updated_at timestamp without time zone NOT NULL DEFAULT now(),
    fetched_at timestamp without time zone NOT NULL,
    is_open boolean NOT NULL,
    total_stands int4 NOT NULL,
    empty_stands int4 NOT NULL,
    available_bikes int4 NOT NULL,

    PRIMARY KEY (measure_id),
    FOREIGN KEY (station_id) REFERENCES velib.station (station_id)
);
