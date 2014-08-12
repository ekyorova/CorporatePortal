CREATE TABLE student (
  id` bigint(20) NOT NULL AUTO_INCREMENT,
  emailAddress varchar(255) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  password varchar(8) NOT NULL,
  userName varchar(20) NOT NULL,
  PRIMARY KEY (id)
)

create table studentEnrollment.posts(
 postID INT NOT NULL AUTO_INCREMENT,
 title VARCHAR(100),
 fileContent VARCHAR(50),
 creatorID bigint(20),
 isMain boolean,
 PRIMARY KEY (postID),
 CONSTRAINT fk_creatorID FOREIGN KEY (creatorID)
 REFERENCES student(id)
 )
 
 ALTER TABLE posts ADD FOREIGN KEY(postPreviousID) REFERENCES
posts(postID) ON DELETE CASCADE ;

 create table studentEnrollment.connections(
 connectionID INT NOT NULL AUTO_INCREMENT,
 mainpostID INT,
 conpostID INT,
 PRIMARY KEY (connectionID),
 CONSTRAINT fk_mainpostID FOREIGN KEY (mainpostID)
 REFERENCES posts(postID),
 CONSTRAINT fk_conpostID FOREIGN KEY (conpostID)
 REFERENCES posts(postID)
 )
