
CREATE TABLE "listing" (
    "id" INT NOT NULL,
    "name" VARCHAR(500) NOT NULL,
    "host_id" INT NOT NULL,
    "host_name" VARCHAR(100) NOT NULL,
    "neighborhood" VARCHAR(100),
    "latitude" FLOAT NOT NULL,
    "longitude" FLOAT NOT NULL,
    "room_type" VARCHAR(100) NOT NULL,
    "price" FLOAT NOT NULL,
    "minimum_nights" INT NOT NULL,
    "number_of_reviews" INT NOT NULL,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INT NOT NULL,
    "availability_365" INT NOT NULL,
    CONSTRAINT "pk_listing" PRIMARY KEY (
        "id"
     )
);


CREATE TABLE "neighborhood" (
    "ID" INT NOT NULL,
    "SizeRank" INT NOT NULL,
    "Neighborhood" VARCHAR(100) NOT NULL,
    "State" VARCHAR(100),
    "City" VARCHAR(100),
    "Metro" VARCHAR(100),
    "CountyName" VARCHAR(100),
     "1/31/2019" INT,
    "2/28/2019" INT,
    "3/31/2019" INT,
    "4/30/2019" INT,
    "5/31/2019" INT,
    "6/30/2019" INT,
    "7/31/2019" INT,
    "8/31/2019" INT,
    "9/30/2019" INT,
    "10/31/2019" INT,
    "11/30/2019" INT,
    "12/31/2019" INT,
    "1/31/2020" INT,
    "2/29/2020" INT,
    "3/31/2020" INT,
    "4/30/2020" INT,
CONSTRAINT "pk_neighborhood" PRIMARY KEY("ID"));

-- Insert New Column Created in PANDA
Alter TABLE neighborhood 
ADD COLUMN AvgPrice FLOAT


CREATE TABLE "listing_neighborhood" (
    "ID" INT NOT NULL,
    "name" VARCHAR(500) NOT NULL,
    "host_id" INT NOT NULL,
    "host_name" VARCHAR(100) NOT NULL,
    "neighborhood" VARCHAR(100),
    "latitude" FLOAT NOT NULL,
    "longitude" FLOAT NOT NULL,
    "room_type" VARCHAR(100) NOT NULL,
    "price" FLOAT NOT NULL,
    "minimum_nights" INT NOT NULL,
    "number_of_reviews" INT NOT NULL,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INT NOT NULL,
    "availability_365" INT NOT NULL,
    "SizeRank" INT NOT NULL,
    "State" VARCHAR(100),
    "City" VARCHAR(100),
    "Metro" VARCHAR(100),
    "CountyName" VARCHAR(100),
    "avgprice" FLOAT);
		
select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'listing';

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'listing_neighborhood';

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'neighborhood';


select * from listing;
select * from neighborhood;
select * from listing_neighborhood;





-- DROP TABLE IF EXISTS listing_neighborhood;

-- DROP TABLE IF EXISTS listing, neighborhood, listing_neighborhood;