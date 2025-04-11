-- CREATE TABLE users(
--   user_id SERIAL PRIMARY KEY,
--   username VARCHAR(50) NOT NULL UNIQUE,
--   name VARCHAR(50) NOT NULL

-- );
-- INSERT INTO users (username, name)
-- VALUES 
--     ('ben', 'Bernard ROnoh'),
--     ('Abnas', 'Kipngeno Abednego'),
--     ('Doro', 'Dorothy   Cheptoo'),
--     ('Shannel', 'Shannel Kirui'),
--     ('Captain', 'Enock Bett'),
--     ('Rop', 'Aaron Rop'),
--     ('Mesmes', 'Aron Kibet');

-- CREATE TABLE Posts(
--     post_id SERIAL PRIMARY KEY,
--     author int REFERENCES users(user_id) NOT NULL,
--     title VARCHAR(100) NOT NULL,
--     content TEXT NOT NULL,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   
-- );

-- INSERT INTO posts (author, title, content)
-- VALUES 
--     (1,'My First Post', 'This is the content of my first post'),
--     (2,'A Day in the Life','Today was a great day! I went for a run and then had lunch with friends.'),
--     (3,'Learning SQL','I am learning SQL and it is really interesting.'),
--     (4,'Travel Plans','I am planning a trip to the mountains next month.'),
--     (5,'Cooking Tips','Here are some tips for cooking pasta perfectly.'),
--     (6,'Book Recommendations','I just finished reading a great book.'),
--     (7,'Fitness Goals','I want to run a marathon next year.');

-- SELECT * FROM Posts INNER JOIN users ON posts.author = users.user_id
-- SELECT name, title, content FROM Posts INNER JOIN users ON posts.author = users.user_id

-- SELECT  name, title, content
-- FROM Posts INNER JOIN users
-- ON posts.author = users.user_id

CREATE VIEW posts_list AS
  SELECT name, title, content
  FROM posts INNER JOIN users
  ON posts.author = users.user_id

-- SELECT * FROM posts_list;