CREATE TABLE `todo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `status` int DEFAULT '0',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`)
) COMMENT='할일';


INSERT INTO `todo` (`name`, `status`)
VALUES
('할일 1', FLOOR(RAND() * 3)), -- 0, 1, 2 중에서 랜덤으로 선택
('할일 2', FLOOR(RAND() * 3)),
('할일 3', FLOOR(RAND() * 3)),
('할일 4', FLOOR(RAND() * 3)),
('할일 5', FLOOR(RAND() * 3));

 SELECT *
    FROM todo
    ORDER BY status ASC, no DESC;

select last_insert_id() id