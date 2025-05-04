
-- IF NOT EXISTS (SELECT name
--                FROM sys.databases
--                WHERE name = N'Library')
--     CREATE DATABASE Library;

-- CREATE SCHEMA analytics AUTHORIZATION dbo;      -- owner = dbo

-- CREATE TABLE analytics.MLExploration
-- ( order_id  INT PRIMARY KEY,
--   amount    MONEY,
--   name      VARCHAR(100));

-- CREATE TABLE dbo.Authors
-- (
--     id INT IDENTITY (1, 1) NOT NULL PRIMARY KEY,
--     first_name NVARCHAR (100) NOT NULL,
--     middle_name NVARCHAR (100) NULL,
--     last_name NVARCHAR (100) NOT NULL
-- );

-- INSERT INTO analytics.MLExploration (order_id, amount, name)
-- VALUES (1, 42, 'Jimmy'),
--     (2, 22, 'Frank'),
--     (3, 38, 'Jane');

SELECT * FROM analytics.MLExploration
WHERE amount > 30;
