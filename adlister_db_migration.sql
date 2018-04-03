USE adlister_db;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(50),
  email VARCHAR(150),
  password VARCHAR(50),
  PRIMARY KEY (id)
);
CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(200),
  description TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);