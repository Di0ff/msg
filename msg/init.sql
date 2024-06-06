CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       nickname VARCHAR(50) UNIQUE NOT NULL,
                       password VARCHAR(10) NOT NULL
);

CREATE TABLE dialogs (
                                 id SERIAL PRIMARY KEY,
                                 dialog_id INT NOT NULL,
                                 user1_id INT REFERENCES users(id) ON DELETE CASCADE,
                                 user2_id INT REFERENCES users(id) ON DELETE CASCADE,
                                 sender_id INT REFERENCES users(id) ON DELETE CASCADE,
                                 content TEXT NOT NULL,
                                 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);