CREATE TABLE `prayers` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `promt` varchar(255) NOT NULL,
  `body` longtext NOT NULL COMMENT 'Content of the post',
  `num_likes` integer,
  `num_saves` integer,
  `cover_img` varchar(255),
  `audio_file` varchar(255),
  `ai_creator` varchar(255)
);

CREATE TABLE `scriptures` (
  `scripture_id` integer PRIMARY KEY AUTO_INCREMENT,
  `scripture` varchar(255) NOT NULL
);

CREATE TABLE `tags` (
  `tag_id` integer PRIMARY KEY AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL
);

CREATE TABLE `users` (
  `user_id` integer PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
);

CREATE TABLE `likes` (
  `like_id` integer PRIMARY KEY AUTO_INCREMENT,
  `liked_prayer_id` integer NOT NULL,
  `user_liked_id` integer NOT NULL,
  `liked_at` timestamp
);

CREATE TABLE `saves` (
  `save_id` integer PRIMARY KEY AUTO_INCREMENT,
  `saved_prayer_id` integer NOT NULL,
  `user_saved_id` integer NOT NULL,
  `saved_at` timestamp
);

CREATE TABLE `prayer_creator` (
  `creator_id` integer NOT NULL,
  `prayer_id` integer NOT NULL
);

CREATE TABLE `prayer_scriptures` (
  `prayer_id` integer,
  `scripture_id` integer
);

CREATE TABLE `prayer_tags` (
  `prayer_id` integer,
  `tag_id` integer
);

ALTER TABLE `likes` ADD FOREIGN KEY (`liked_prayer_id`) REFERENCES `prayers` (`id`);

ALTER TABLE `saves` ADD FOREIGN KEY (`saved_prayer_id`) REFERENCES `prayers` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`user_liked_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `saves` ADD FOREIGN KEY (`user_saved_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `prayer_creator` ADD FOREIGN KEY (`creator_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `prayer_creator` ADD FOREIGN KEY (`prayer_id`) REFERENCES `prayers` (`id`);

ALTER TABLE `prayer_scriptures` ADD FOREIGN KEY (`prayer_id`) REFERENCES `prayers` (`id`);

ALTER TABLE `prayer_tags` ADD FOREIGN KEY (`prayer_id`) REFERENCES `prayers` (`id`);

ALTER TABLE `prayer_scriptures` ADD FOREIGN KEY (`scripture_id`) REFERENCES `scriptures` (`scripture_id`);

ALTER TABLE `prayer_tags` ADD FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`);
