--<ScriptOptions statementTerminator=";"/>

CREATE TABLE posts (
	postID INT NOT NULL,
	title VARCHAR(100),
	fileContent VARCHAR(50),
	creatorID BIGINT,
	isMain BIT,
	postPreviousID INT,
	PRIMARY KEY (postID)
) ENGINE=InnoDB;

CREATE TABLE student (
	id BIGINT NOT NULL,
	dateOfBirth DATE,
	emailAddress VARCHAR(255) NOT NULL,
	firstName VARCHAR(255) NOT NULL,
	lastName VARCHAR(255) NOT NULL,
	password VARCHAR(255),
	userName VARCHAR(20) NOT NULL,
	gaccount BIT,
	token CHAR(1),
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE INDEX postPreviousID ON posts (postPreviousID ASC);

CREATE INDEX fk_creatorID ON posts (creatorID ASC);

