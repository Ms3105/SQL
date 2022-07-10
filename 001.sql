-- You have started a startup and your database name is click_store and you wanted to change it to photo_store
show databases;

-- You can't rename your database you have to drop the click_store first then CREATE photo_store later
drop database click_store
show databases;
CREATE database photo_store;