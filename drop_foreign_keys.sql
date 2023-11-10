ALTER TABLE `groupB` DROP FOREIGN KEY `groupb_ibfk_1`;
ALTER TABLE `groupC` DROP FOREIGN KEY `groupc_ibfk_1`;
ALTER TABLE `groupD` DROP FOREIGN KEY `groupd_ibfk_1`;
ALTER TABLE `league_standing` DROP FOREIGN KEY `league_standing_ibfk_1`; 
ALTER TABLE `player_info` DROP FOREIGN KEY `player_info_ibfk_1`;

ALTER TABLE `team` MODIFY COLUMN `Team_ID` INT AUTO_INCREMENT;

ALTER TABLE `groupA` ADD CONSTRAINT `groupa_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);
ALTER TABLE `groupB` ADD CONSTRAINT `groupb_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);
ALTER TABLE `groupC` ADD CONSTRAINT `groupc_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);
ALTER TABLE `groupD` ADD CONSTRAINT `groupd_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);
ALTER TABLE `league_standing` ADD CONSTRAINT `league_standing_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`); 
ALTER TABLE `player_info` ADD CONSTRAINT `player_info_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);