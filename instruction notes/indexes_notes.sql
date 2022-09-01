USE mattm;
-- this will make a table that includes an ID as its primary key that will increase automatically as it is added to
-- performs queries very fast since it is the primary key
CREATE TABLE authors (
                        id INT NOT NULL AUTO_INCREMENT,
                        author VARCHAR(50) NOT NULL,
                        content VARCHAR(240) NOT NULL,
                        PRIMARY KEY (id)
);
-- use ALTER statement to update a table
ALTER TABLE authors
    ADD UNIQUE (content);
-- GUI can also create a unique column


