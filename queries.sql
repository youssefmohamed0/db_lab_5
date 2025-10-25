SELECT name,join_date FROM `member` WHERE join_date > '2000-09-01';
SELECT name,pub_id FROM `publisher`;
SELECT * FROM `member` WHERE join_date > '1995-10-01' AND join_date < '2019-10-01';
SELECT * FROM `book` WHERE pub_id='2' AND price > '15' AND price < '20';
SELECT * FROM `borrowing_book` WHERE member_id='5';