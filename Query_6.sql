DROP EXTERNAL TABLE klim_shema.yellow_trip_external
GO

DROP EXTERNAL FILE FORMAT yellowklim
GO

CREATE EXTERNAL FILE FORMAT yellowklim
WITH (FORMAT_TYPE = DELIMITEDTEXT,
      FORMAT_OPTIONS(
          FIELD_TERMINATOR = ',',
          FIRST_ROW = 2, 
          USE_TYPE_DEFAULT = FALSE)
)


CREATE EXTERNAL TABLE klim_shema.yellow_trip_external (
	VendorID int NULL,
	tpep_pickup_datetime datetime NOT NULL, 
	tpep_dropoff_datetime datetime NOT NULL, 
	passenger_count int NULL,
	trip_distance real NOT NULL,
    RatecodeID int NULL,
    store_and_fwd_flag char(1) NULL,
	PULocationID int NOT NULL,
	DOLocationID int NOT NULL,
    payment_type int NULL,
	fare_amount money NOT NULL,
	extra money NULL,
	mta_tax money NULL,
	tip_amount real NOT NULL,
	tolls_amount real NOT NULL,
    improvement_surcharge real NOT NULL,
	total_amount real NOT NULL,
	congestion_surcharge real NOT NULL
)
WITH (
        LOCATION='/yellow_tripdata_2020-01.csv',
        DATA_SOURCE = KlimchukStorage2,
        FILE_FORMAT = yellowklim
    )
;