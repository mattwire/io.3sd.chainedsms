CREATE TABLE `civicrm_chainedsms_couplet` (


     `id` int unsigned NOT NULL AUTO_INCREMENT  COMMENT 'Unique Couplet ID',
     `initial_msg_template_id` int unsigned NOT NULL   COMMENT 'FK to the message template.',
     `answer` varchar(255) NOT NULL   ,
     `subsequent_msg_template_id` int unsigned NOT NULL   COMMENT 'FK to the message template.'
,
    PRIMARY KEY ( `id` )


,          CONSTRAINT FK_civicrm_chainedsms_couplet_initial_msg_template_id FOREIGN KEY (`initial_msg_template_id`) REFERENCES `civicrm_msg_template`(`id`) ON DELETE RESTRICT,          CONSTRAINT FK_civicrm_chainedsms_couplet_subsequent_msg_template_id FOREIGN KEY (`subsequent_msg_template_id`) REFERENCES `civicrm_msg_template`(`id`) ON DELETE RESTRICT
)  ENGINE=InnoDB DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci  ;
