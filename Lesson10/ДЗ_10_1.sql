CREATE INDEX users_email_idx ON users(email);
CREATE INDEX media_user_id_media_type_id_idx ON media(user_id, media_type_id);
CREATE INDEX users_first_name_last_name_id_idx ON users(first_name, last_name, id);
CREATE INDEX posts_created_at_idx ON posts(created_at);
CREATE INDEX messages_created_at_idx ON messages(created_at);
CREATE INDEX friendship_friend_id_status_id_idx ON friendship(friend_id, status_id);
CREATE INDEX friendship_user_id_status_id_idx ON friendship(user_id, status_id);