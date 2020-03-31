DECLARE @Time_in_Second INT
SET @Time_in_Second = 7200 -- seconds to hh:mm:ss
SELECT RIGHT('0' + CAST(@Time_in_Second / 3600 AS VARCHAR),2) + ':' +
RIGHT('0' + CAST((@Time_in_Second / 60) % 60 AS VARCHAR),2) + ':' +
RIGHT('0' + CAST(@Time_in_Second % 60 AS VARCHAR),2)[hh:mm:ss]
--the query will retrieve the the 7200 second as hh:mm:ss

DECLARE @Time_in_Second INT
SET @Time_in_Second = DATEDIFF(second,'01:15:00','03:15:00')--You can replace the " '01:15:00','03:15:00' " with your current time columns in DATEDIFF
SELECT RIGHT('0' + CAST(@Time_in_Second / 3600 AS VARCHAR),2) + ':' +
RIGHT('0' + CAST((@Time_in_Second / 60) % 60 AS VARCHAR),2) + ':' +
RIGHT('0' + CAST(@Time_in_Second % 60 AS VARCHAR),2)[hh:mm:ss]
--the query will retrieve the second difference of '01:15:00','03:15:00' time as hh:mm:ss
