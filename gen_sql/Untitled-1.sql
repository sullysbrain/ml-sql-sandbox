-- IF NOT EXISTS (SELECT name
--                FROM sys.databases
--                WHERE name = N'Library')
--     CREATE DATABASE Library;

-- CREATE TABLE dbo.Authors
-- (
--     id INT IDENTITY (1, 1) NOT NULL PRIMARY KEY,
--     first_name NVARCHAR (100) NOT NULL,
--     middle_name NVARCHAR (100) NULL,
--     last_name NVARCHAR (100) NOT NULL
-- );

-- INSERT INTO dbo.Authors (first_name, middle_name, last_name)
-- VALUES ('Isaac', 'Yudovick', 'Asimov'),
--     ('Arthur', 'Charles', 'Clarke'),
--     ('Herbert', 'George', 'Wells'),
--     ('Jules', 'Gabriel', 'Verne'),
--     ('Philip', 'Kindred', 'Dick');

-- INSERT INTO dbo.Authors (first_name, middle_name, last_name)
-- VALUES ('Bob', 'Billy', 'Smith');

-- SELECT *
-- FROM dbo.Authors;

SELECT 
    a.first_name,
    a.last_name,
    me.[name]          -- square‑brackets because NAME is a keyword
FROM dbo.Authors            AS a          -- a.id  = author identifier
JOIN analytics.MLExploration AS me        -- me.order_id = FK to Authors
     ON me.order_id = a.id;
     