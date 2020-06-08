# Create schema for this assignment
CREATE SCHEMA `Assignment` ;

# select working database
use `Assignment`;

# import csv files into respective tables
# completed through wizard

# checking bajaj stock
desc bajaj;

select * from bajaj limit 5;

# date column is updated as text, formatting date column
UPDATE bajaj
SET Date = STR_TO_DATE(Date,'%d-%M-%Y');

# converting data type of date column from string to date
ALTER TABLE bajaj modify column date date;

desc bajaj;

# Evaluating 'Date' column to be used as primary key
SELECT COUNT(DISTINCT date), COUNT(date) FROM bajaj;

# Date column is unique we will use it as primary key
ALTER TABLE bajaj
ADD PRIMARY KEY (Date);

desc bajaj;

# Primary key added

select * from bajaj limit 5;

##################################

# checking eicher stock
desc eicher;

select * from eicher limit 5;

# date column is updated as text, formatting date column
UPDATE eicher
SET Date = STR_TO_DATE(Date,'%d-%M-%Y');

# converting data type of date column from string to date
ALTER TABLE eicher modify column date date;

desc eicher;

# Evaluating 'Date' column to be used as primary key
SELECT COUNT(DISTINCT date), COUNT(date) FROM eicher;

# Date column is unique we will use it as primary key
ALTER TABLE eicher
ADD PRIMARY KEY (Date);

desc eicher;

# Primary key added

select * from eicher limit 5;

#####################################

# checking hero stock
desc hero;

select * from hero limit 5;

# date column is updated as text, formatting date column
UPDATE hero
SET Date = STR_TO_DATE(Date,'%d-%M-%Y');

# converting data type of date column from string to date
ALTER TABLE hero modify column date date;

desc hero;

# Evaluating 'Date' column to be used as primary key
SELECT COUNT(DISTINCT date), COUNT(date) FROM hero;

# Date column is unique we will use it as primary key
ALTER TABLE hero
ADD PRIMARY KEY (Date);

desc hero;

# Primary key added

select * from hero limit 5;

####################################

# checking infosys stock
desc infosys;

select * from infosys limit 5;

# date column is updated as text, formatting date column
UPDATE infosys
SET Date = STR_TO_DATE(Date,'%d-%M-%Y');

# converting data type of date column from string to date
ALTER TABLE infosys modify column date date;

desc infosys;

# Evaluating 'Date' column to be used as primary key
SELECT COUNT(DISTINCT date), COUNT(date) FROM infosys;

# Date column is unique we will use it as primary key
ALTER TABLE infosys
ADD PRIMARY KEY (Date);

desc infosys;

# Primary key added

select * from infosys limit 5;

#####################################

# checking tcs stock
desc tcs;

select * from tcs limit 5;

# date column is updated as text, formatting date column
UPDATE tcs
SET Date = STR_TO_DATE(Date,'%d-%M-%Y');

# converting data type of date column from string to date
ALTER TABLE tcs modify column date date;

desc tcs;

# Evaluating 'Date' column to be used as primary key
SELECT COUNT(DISTINCT date), COUNT(date) FROM tcs;

# Date column is unique we will use it as primary key
ALTER TABLE tcs
ADD PRIMARY KEY (Date);

desc tcs;

# Primary key added

select * from tcs limit 5;

#####################################

# checking tvs stock
desc tvs;

select * from tvs limit 5;

# date column is updated as text, formatting date column
UPDATE tvs
SET Date = STR_TO_DATE(Date,'%d-%M-%Y');

# converting data type of date column from string to date
ALTER TABLE tvs modify column date date;

desc tvs;

# Evaluating 'Date' column to be used as primary key
SELECT COUNT(DISTINCT date), COUNT(date) FROM tvs;

# Date column is unique we will use it as primary key
ALTER TABLE tvs
ADD PRIMARY KEY (Date);

desc tvs;

# Primary key added

select * from tvs limit 5;

######################################

# Creating bajaj1 table with date, close price, 20 Day Moving Average, 50 Day Moving Average
CREATE TABLE bajaj1 AS
(SELECT Date,`Close Price`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 20 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 19 PRECEDING) 
	ELSE NULL 
END AS `20 Day MA`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 50 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 49 PRECEDING) 
	ELSE NULL 
END AS `50 Day MA`
FROM bajaj
WINDOW w AS (ORDER BY DATE));

# Adding primary key as Date
ALTER TABLE bajaj1
ADD PRIMARY KEY (Date);

DESC bajaj1;

# Primary key added

SELECT * FROM bajaj1 limit 5;

###############################################

# Creating eicher1 table with date, close price, 20 Day Moving Average, 50 Day Moving Average
CREATE TABLE eicher1 AS
(SELECT Date,`Close Price`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 20 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 19 PRECEDING) 
	ELSE NULL 
END AS `20 Day MA`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 50 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 49 PRECEDING) 
	ELSE NULL 
END AS `50 Day MA`
FROM eicher
WINDOW w AS (ORDER BY DATE));

# Adding primary key as Date
ALTER TABLE eicher1
ADD PRIMARY KEY (Date);

DESC eicher1;

# Primary key added

SELECT * FROM eicher1 limit 5;

###############################################

# Creating hero1 table with date, close price, 20 Day Moving Average, 50 Day Moving Average
CREATE TABLE hero1 AS
(SELECT Date,`Close Price`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 20 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 19 PRECEDING) 
	ELSE NULL 
END AS `20 Day MA`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 50 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 49 PRECEDING) 
	ELSE NULL 
END AS `50 Day MA`
FROM hero
WINDOW w AS (ORDER BY DATE));

# Adding primary key as Date
ALTER TABLE hero1
ADD PRIMARY KEY (Date);

DESC hero1;

# Primary key added

SELECT * FROM hero1 limit 5;

###############################################

# Creating infosys1 table with date, close price, 20 Day Moving Average, 50 Day Moving Average
CREATE TABLE infosys1 AS
(SELECT Date,`Close Price`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 20 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 19 PRECEDING) 
	ELSE NULL 
END AS `20 Day MA`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 50 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 49 PRECEDING) 
	ELSE NULL 
END AS `50 Day MA`
FROM infosys
WINDOW w AS (ORDER BY DATE));

# Adding primary key as Date
ALTER TABLE infosys1
ADD PRIMARY KEY (Date);

DESC infosys1;

# Primary key added

SELECT * FROM infosys1 limit 5;

###############################################

# Creating tcs1 table with date, close price, 20 Day Moving Average, 50 Day Moving Average
CREATE TABLE tcs1 AS
(SELECT Date,`Close Price`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 20 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 19 PRECEDING) 
	ELSE NULL 
END AS `20 Day MA`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 50 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 49 PRECEDING) 
	ELSE NULL 
END AS `50 Day MA`
FROM tcs
WINDOW w AS (ORDER BY DATE));

# Adding primary key as Date
ALTER TABLE tcs1
ADD PRIMARY KEY (Date);

DESC tcs1;

# Primary key added

SELECT * FROM tcs1 limit 5;

###############################################

# Creating tvs1 table with date, close price, 20 Day Moving Average, 50 Day Moving Average
CREATE TABLE tvs1 AS
(SELECT Date,`Close Price`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 20 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 19 PRECEDING) 
	ELSE NULL 
END AS `20 Day MA`,
CASE WHEN 
	ROW_NUMBER() OVER w >= 50 THEN 
		AVG(`Close Price`) OVER(ORDER BY Date ROWS 49 PRECEDING) 
	ELSE NULL 
END AS `50 Day MA`
FROM tvs
WINDOW w AS (ORDER BY DATE));

# Adding primary key as Date
ALTER TABLE tvs1
ADD PRIMARY KEY (Date);

DESC tvs1;

# Primary key added

SELECT * FROM tvs1 limit 5;

###############################################

# Create Master Table with date and close price of all six stocks
CREATE TABLE Master as
SELECT b.Date AS Date,
b.`Close Price` as Bajaj,
tc.`Close Price` as TCS,
tv.`Close Price` as TVS,
i.`Close Price` as Infosys,
e.`Close Price` as Eicher,
h.`Close Price` as Hero
FROM bajaj1 AS b
INNER JOIN eicher1 AS e ON b.Date = e.Date
INNER JOIN hero1 AS h ON e.Date = h.Date
INNER JOIN infosys1 AS i ON h.Date = i.Date
INNER JOIN tcs1 AS tc ON i.Date = tc.Date
INNER JOIN tvs1 AS tv ON tc.Date = tv.Date
ORDER BY Date;

# Adding primary key as Date
ALTER TABLE master
ADD PRIMARY KEY (Date);

DESC Master;

# Primary key added

SELECT * from Master limit 5;

###############################################

# Creating table with signal information, signal will be updated only on crossing points whenever 20 Day MA crosses 50 Day MA
#Signal is updated based on following condition
# if 20 Day MA > 50 Day MA than Buy
# if 20 Day MA < 50 Day MA than Sell
# else Hold

# creating table for bajaj
CREATE TABLE bajaj2 AS
SELECT `date`,`Close Price`,
CASE
	WHEN (`20 Day MA` > `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) < lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Buy"
    WHEN (`20 Day MA` < `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) > lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Sell"
	ELSE "Hold"
END AS `Signal`
FROM bajaj1;

# Adding primary key as Date
ALTER TABLE bajaj2
ADD PRIMARY KEY (Date);

DESC bajaj2;

# Primary key added

SELECT * FROM bajaj2 limit 5;

###############################################

# creating table for eicher
CREATE TABLE eicher2 AS
SELECT `date`,`Close Price`,
CASE
	WHEN (`20 Day MA` > `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) < lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Buy"
    WHEN (`20 Day MA` < `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) > lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Sell"
	ELSE "Hold"
END AS `Signal`
FROM eicher1;

# Adding primary key as Date
ALTER TABLE eicher2
ADD PRIMARY KEY (Date);

DESC eicher2;

# Primary key added

SELECT * FROM eicher2 limit 5;

###############################################

# creating table for hero
CREATE TABLE hero2 AS
SELECT `date`,`Close Price`,
CASE
	WHEN (`20 Day MA` > `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) < lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Buy"
    WHEN (`20 Day MA` < `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) > lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Sell"
	ELSE "Hold"
END AS `Signal`
FROM hero1;

# Adding primary key as Date
ALTER TABLE hero2
ADD PRIMARY KEY (Date);

DESC hero2;

# Primary key added

SELECT * FROM hero2 limit 5;

###############################################

# creating table for infosys
CREATE TABLE infosys2 AS
SELECT `date`,`Close Price`,
CASE
	WHEN (`20 Day MA` > `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) < lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Buy"
    WHEN (`20 Day MA` < `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) > lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Sell"
	ELSE "Hold"
END AS `Signal`
FROM infosys1;

# Adding primary key as Date
ALTER TABLE infosys2
ADD PRIMARY KEY (Date);

DESC infosys2;

# Primary key added

SELECT * FROM infosys2 limit 5;

###############################################

# creating table for tcs
CREATE TABLE tcs2 AS
SELECT `date`,`Close Price`,
CASE
	WHEN (`20 Day MA` > `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) < lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Buy"
    WHEN (`20 Day MA` < `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) > lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Sell"
	ELSE "Hold"
END AS `Signal`
FROM tcs1;

# Adding primary key as Date
ALTER TABLE tcs2
ADD PRIMARY KEY (Date);

DESC tcs2;

# Primary key added

SELECT * FROM tcs2 limit 5;

###############################################

# creating table for tvs
CREATE TABLE tvs2 AS
SELECT `date`,`Close Price`,
CASE
	WHEN (`20 Day MA` > `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) < lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Buy"
    WHEN (`20 Day MA` < `50 Day MA`) 
    AND (lag(`20 Day MA`) OVER (ORDER BY date) > lag(`50 Day MA`) OVER (ORDER BY date))
    THEN "Sell"
	ELSE "Hold"
END AS `Signal`
FROM tvs1;

# Adding primary key as Date
ALTER TABLE tvs2
ADD PRIMARY KEY (Date);

DESC tvs2;

# Primary key added

SELECT * FROM tvs2 limit 5;

###############################################

# User defined function for bajaj to take date as input and return signal
CREATE FUNCTION BajajSignal(d date)
RETURNS CHAR(4) DETERMINISTIC
RETURN (SELECT `Signal` FROM bajaj2 WHERE date = d);

# Checking BajajSignal function
# Hold Check
SELECT BajajSignal('2015-12-09');
# Buy Check
SELECT BajajSignal('2018-02-01');
# Sell Check
SELECT BajajSignal('2017-04-20');

#################################################

# Analysis of stocks
# Maximum and minimum closing price of stocks, Buy Signal, Sell Signal
SELECT * FROM
(SELECT MAX(bajaj) AS `bajaj max`,
MIN(bajaj) AS `bajaj min`,
FORMAT((MAX(bajaj) - MIN(bajaj))/MIN(bajaj)*100,2) AS `Max % Boost`
FROM master) a,
(SELECT bajaj AS `Last Closing` FROM Master ORDER BY Date desc limit 1) b,
(SELECT `Signal` AS `Last Signal` FROM bajaj2 WHERE `Signal` != 'Hold' ORDER BY Date desc limit 1) c,
(SELECT COUNT(`SIGNAL`) AS `BUY Flags` FROM bajaj2 where `Signal` = 'Buy') d,
(SELECT COUNT(`SIGNAL`) AS `SELL Flags` FROM bajaj2 where `Signal` = 'Sell') e;

# Bajaj stock gets appx 75% boost which is significant and shows it is doing well but number of times Golden Cross and Death Cross infers it is a volatils stock

SELECT * FROM
(SELECT MAX(eicher) AS `eicher max`,
MIN(eicher) AS `eicher min`,
FORMAT((MAX(eicher) - MIN(eicher))/MIN(eicher)*100,2) AS `Max % Boost`
FROM master) a,
(SELECT eicher AS `Last Closing` FROM Master ORDER BY Date desc limit 1) b,
(SELECT `Signal` AS `Last Signal` FROM eicher2 WHERE `Signal` != 'Hold' ORDER BY Date desc limit 1) c,
(SELECT COUNT(`SIGNAL`) AS `BUY Flags` FROM eicher2 where `Signal` = 'Buy') d,
(SELECT COUNT(`SIGNAL`) AS `SELL Flags` FROM eicher2 where `Signal` = 'Sell') e;

# Eicher stock with boost of 129% with fewer number of Golden Cross and Death Cross, this is long term stock with good results

SELECT * FROM
(SELECT MAX(hero) AS `hero max`,
MIN(hero) AS `hero min`,
FORMAT((MAX(hero) - MIN(hero))/MIN(hero)*100,2) AS `Max % Boost`
FROM master) a,
(SELECT hero AS `Last Closing` FROM Master ORDER BY Date desc limit 1) b,
(SELECT `Signal` AS `Last Signal` FROM hero2 WHERE `Signal` != 'Hold' ORDER BY Date desc limit 1) c,
(SELECT COUNT(`SIGNAL`) AS `BUY Flags` FROM hero2 where `Signal` = 'Buy') d,
(SELECT COUNT(`SIGNAL`) AS `SELL Flags` FROM hero2 where `Signal` = 'Sell') e;

# Hero stock with boost of 77% and moderate number of Goldern Cross and Death Cross is good for short term gains

SELECT * FROM
(SELECT MAX(infosys) AS `infosys max`,
MIN(infosys) AS `infosys min`,
FORMAT((MAX(infosys) - MIN(infosys))/MIN(infosys)*100,2) AS `Max % Boost`
FROM master) a,
(SELECT infosys AS `Last Closing` FROM Master ORDER BY Date desc limit 1) b,
(SELECT `Signal` AS `Last Signal` FROM infosys2 WHERE `Signal` != 'Hold' ORDER BY Date desc limit 1) c,
(SELECT COUNT(`SIGNAL`) AS `BUY Flags` FROM infosys2 where `Signal` = 'Buy') d,
(SELECT COUNT(`SIGNAL`) AS `SELL Flags` FROM infosys2 where `Signal` = 'Sell') e;

# Infosys stock is a good stock to invest for long term perspective, it shows more 150% of boost with moderate number of Golden Cross and Death Cross.

SELECT * FROM
(SELECT MAX(tcs) AS `tcs max`,
MIN(tcs) AS `tcs min`,
FORMAT((MAX(tcs) - MIN(tcs))/MIN(tcs)*100,2) AS `Max % Boost`
FROM master) a,
(SELECT tcs AS `Last Closing` FROM Master ORDER BY Date desc limit 1) b,
(SELECT `Signal` AS `Last Signal` FROM tcs2 WHERE `Signal` != 'Hold' ORDER BY Date desc limit 1) c,
(SELECT COUNT(`SIGNAL`) AS `BUY Flags` FROM tcs2 where `Signal` = 'Buy') d,
(SELECT COUNT(`SIGNAL`) AS `SELL Flags` FROM tcs2 where `Signal` = 'Sell') e;

# TCS looks like a volatile stock with high number of Golden Cross and Death Cross, it shows a good boost of over 100%

SELECT * FROM
(SELECT MAX(tvs) AS `tvs max`,
MIN(tvs) AS `tvs min`,
FORMAT((MAX(tvs) - MIN(tvs))/MIN(tvs)*100,2) AS `Max % Boost`
FROM master) a,
(SELECT TVS AS `Last Closing` FROM Master ORDER BY Date desc limit 1) b,
(SELECT `Signal` AS `Last Signal` FROM tvs2 WHERE `Signal` != 'Hold' ORDER BY Date desc limit 1) c,
(SELECT COUNT(`SIGNAL`) AS `BUY Flags` FROM tvs2 where `Signal` = 'Buy') d,
(SELECT COUNT(`SIGNAL`) AS `SELL Flags` FROM tvs2 where `Signal` = 'Sell') e;

# TVS stocks is doing very well as compared to all other stocks it attained a max boost of 250%. This has fewer number of Golden Cross and Death Cross and is relatively good for long term.

##########################################################################################