CREATE TABLE market_segment(
	Discount float,
    market_segment varchar(15)
);

INSERT INTO market_segment(discount, market_segment)
VALUES (0,"Undefined"), (.1,"Direct"), (.1,"Groups"), (.15,"Corporate"),(.2,"Aviation")
,(.3,"Offline TA/TO"), (.3,"Online TA"),(1,"Complementary");

SELECT * FROM market_segment;