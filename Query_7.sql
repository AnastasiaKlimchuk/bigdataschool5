CREATE TABLE klim_shema.fact_tripdata
WITH (
	CLUSTERED COLUMNSTORE INDEX, 
	DISTRIBUTION = HASH(tpep_dropoff_datetime)
)
AS SELECT * FROM klim_shema.yellow_trip_external;
GO