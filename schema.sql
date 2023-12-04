
CREATE TABLE ZIPCODE (
    id SERIAL PRIMARY KEY,
    zipcode VARCHAR(10) UNIQUE,
    borough VARCHAR(50),
    neighborhood VARCHAR(50),
    population INT,
    area FLOAT,
    state VARCHAR(50),
    county VARCHAR(50),
    st_fips VARCHAR(10),
    cty_fips VARCHAR(10),
    url VARCHAR(255),
    shape_area FLOAT,
    shape_len FLOAT,
    geometry GEOMETRY
);

CREATE TABLE NYC_311 (
    unique_key VARCHAR(50) PRIMARY KEY,
    created_date TIMESTAMP,
    city VARCHAR(100),
    incident_zip VARCHAR(10) REFERENCES ZIPCODE(zipcode),
    complaint_type VARCHAR(100),
    geometry GEOMETRY
);

CREATE TABLE NYC_TREE (
    tree_id VARCHAR(50) PRIMARY KEY,
    zipcode VARCHAR(10),
    address VARCHAR(255),
    health VARCHAR(255), 
    zip_city VARCHAR(255), 
    spc_common VARCHAR(255),
    status VARCHAR(255),
    sidewalk VARCHAR(255),
    borocode VARCHAR(10),
    block_id VARCHAR(255),
    geometry GEOMETRY
);

CREATE TABLE ZILLOW (
    id SERIAL PRIMARY KEY,
    "RegionID" INTEGER, "SizeRank" INTEGER, "RegionName" INTEGER, "RegionType" VARCHAR(255), "StateName" VARCHAR(255), "State" VARCHAR(255), "City" VARCHAR(255), "Metro" VARCHAR(255), "CountyName" VARCHAR(255), "2015-01-31" FLOAT, "2015-02-28" FLOAT, "2015-03-31" FLOAT, "2015-04-30" FLOAT, "2015-05-31" FLOAT, "2015-06-30" FLOAT, "2015-07-31" FLOAT, "2015-08-31" FLOAT, "2015-09-30" FLOAT, "2015-10-31" FLOAT, "2015-11-30" FLOAT, "2015-12-31" FLOAT, "2016-01-31" FLOAT, "2016-02-29" FLOAT, "2016-03-31" FLOAT, "2016-04-30" FLOAT, "2016-05-31" FLOAT, "2016-06-30" FLOAT, "2016-07-31" FLOAT, "2016-08-31" FLOAT, "2016-09-30" FLOAT, "2016-10-31" FLOAT, "2016-11-30" FLOAT, "2016-12-31" FLOAT, "2017-01-31" FLOAT, "2017-02-28" FLOAT, "2017-03-31" FLOAT, "2017-04-30" FLOAT, "2017-05-31" FLOAT, "2017-06-30" FLOAT, "2017-07-31" FLOAT, "2017-08-31" FLOAT, "2017-09-30" FLOAT, "2017-10-31" FLOAT, "2017-11-30" FLOAT, "2017-12-31" FLOAT, "2018-01-31" FLOAT, "2018-02-28" FLOAT, "2018-03-31" FLOAT, "2018-04-30" FLOAT, "2018-05-31" FLOAT, "2018-06-30" FLOAT, "2018-07-31" FLOAT, "2018-08-31" FLOAT, "2018-09-30" FLOAT, "2018-10-31" FLOAT, "2018-11-30" FLOAT, "2018-12-31" FLOAT, "2019-01-31" FLOAT, "2019-02-28" FLOAT, "2019-03-31" FLOAT, "2019-04-30" FLOAT, "2019-05-31" FLOAT, "2019-06-30" FLOAT, "2019-07-31" FLOAT, "2019-08-31" FLOAT, "2019-09-30" FLOAT, "2019-10-31" FLOAT, "2019-11-30" FLOAT, "2019-12-31" FLOAT, "2020-01-31" FLOAT, "2020-02-29" FLOAT, "2020-03-31" FLOAT, "2020-04-30" FLOAT, "2020-05-31" FLOAT, "2020-06-30" FLOAT, "2020-07-31" FLOAT, "2020-08-31" FLOAT, "2020-09-30" FLOAT, "2020-10-31" FLOAT, "2020-11-30" FLOAT, "2020-12-31" FLOAT, "2021-01-31" FLOAT, "2021-02-28" FLOAT, "2021-03-31" FLOAT, "2021-04-30" FLOAT, "2021-05-31" FLOAT, "2021-06-30" FLOAT, "2021-07-31" FLOAT, "2021-08-31" FLOAT, "2021-09-30" FLOAT, "2021-10-31" FLOAT, "2021-11-30" FLOAT, "2021-12-31" FLOAT, "2022-01-31" FLOAT, "2022-02-28" FLOAT, "2022-03-31" FLOAT, "2022-04-30" FLOAT, "2022-05-31" FLOAT, "2022-06-30" FLOAT, "2022-07-31" FLOAT, "2022-08-31" FLOAT, "2022-09-30" FLOAT, "2022-10-31" FLOAT, "2022-11-30" FLOAT, "2022-12-31" FLOAT, "2023-01-31" FLOAT, "2023-02-28" FLOAT, "2023-03-31" FLOAT, "2023-04-30" FLOAT, "2023-05-31" FLOAT, "2023-06-30" FLOAT, "2023-07-31" FLOAT, "2023-08-31" FLOAT, "2023-09-30" FLOAT
);
