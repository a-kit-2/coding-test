-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the primary key for this table.
-- This table contains information about the temperature in a certain day.
-- SQLクエリを記述して、前の日付（昨日）よりも気温が高いすべての日付のIDを検索します。 
-- 結果テーブルを任意の順序で返します。 クエリ結果の形式は次の例です。
-- Weather
-- +----+------------+-------------+
-- | id | recordDate | Temperature |
-- +----+------------+-------------+
-- | 1  | 2015-01-01 | 10          |
-- | 2  | 2015-01-02 | 25          |
-- | 3  | 2015-01-03 | 20          |
-- | 4  | 2015-01-04 | 30          |
-- +----+------------+-------------+

-- Result table:
-- +----+
-- | id |
-- +----+
-- | 2  |
-- | 4  |
-- +----+
-- In 2015-01-02, temperature was higher than the previous day (10 -> 25).
-- In 2015-01-04, temperature was higher than the previous day (20 -> 30).

Create table If Not Exists Weather (Id int, RecordDate date, Temperature int);
Truncate table Weather;
insert into Weather (Id, RecordDate, Temperature) values ('1', '2015-01-01', '10');
insert into Weather (Id, RecordDate, Temperature) values ('2', '2015-01-02', '25');
insert into Weather (Id, RecordDate, Temperature) values ('3', '2015-01-03', '20');
insert into Weather (Id, RecordDate, Temperature) values ('4', '2015-01-04', '30');

select w1.id from Weather as w1, Weather as w2
where datediff(w1.recordDate, w2.recordDate) = 1
and w1.temperature > w2.temperature;