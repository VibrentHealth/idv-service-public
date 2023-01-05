-- --------------------------------------------------------------------------------------------------------------------
-- Date          : October 12, 2022             Added By  : Ritesh Khaire
-- JIRA ID       : AC-125413                    Comments  : Added Initial tables to save the oauth connection status
-- --------------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------
-- Table `idv`.`user_external_service_connection`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS idv;
CREATE SCHEMA IF NOT EXISTS idv_audit;

CREATE TABLE IF NOT EXISTS `idv`.`user_external_service_connection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(64) NOT NULL,
  `start_date` BIGINT(20) NULL,
  `end_date` BIGINT(20) NULL,
  `scopes_provided` TEXT NULL,
  `unique_id` VARCHAR(128) NULL,
  `program_id` bigint(20) NULL,
  `keycloak_id` VARCHAR(128) NOT NULL,
  `created_on` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `updated_on` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `context` json NULL,
  `oauth_service_id` VARCHAR(32) NULL,
  `metadata` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_keycloak_id_program_id_status` (`keycloak_id`, `program_id`, `status`, `oauth_service_id`)
  ) ENGINE = InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `idv_audit`.`revinfo` (
    `rev` INT(11) NOT NULL AUTO_INCREMENT,
    `revtstmp` BIGINT(20) NULL DEFAULT NULL,
    PRIMARY KEY (`rev`)
);

CREATE TABLE IF NOT EXISTS `idv_audit`.`user_external_service_connection_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `status` VARCHAR(64) NOT NULL,
  `start_date` BIGINT(20) NULL,
  `end_date` BIGINT(20) NULL,
  `scopes_provided` TEXT NULL,
  `unique_id` VARCHAR(128) NULL,
  `program_id` bigint(20) NULL,
  `keycloak_id` VARCHAR(128) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_on` bigint(20) DEFAULT NULL,
  `updated_on` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `context`json NULL,
  `oauth_service_id` VARCHAR(32) NULL,
  `metadata` json DEFAULT NULL,
  PRIMARY KEY (`id`,`rev`),
  KEY `FK_user_external_service_connection_aud_revinfo` (`rev`),
  CONSTRAINT `FK_user_external_service_connection_aud_revinfo` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`))
ENGINE = InnoDB DEFAULT CHARSET=utf8;
