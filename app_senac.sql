
CREATE TABLE Calls
(
  CallId      INT                                   NOT NULL,
  Status      ENUM("New","In Progress","Concluded") NOT NULL,
  Datetime    Date                                  NOT NULL,
  Description TEXT                                  NOT NULL,
  Subject     VARCHAR(100)                          NOT NULL,
  UserId      INT                                   NOT NULL,
  TypeCallId  INT                                   NULL    ,
  RoomId      int                                   NOT NULL,
  PRIMARY KEY (CallId)
);

CREATE TABLE Courses
(
  CourseId   INT          NOT NULL,
  CourseName VARCHAR(100) NOT NULL,
  PRIMARY KEY (CourseId)
);

CREATE TABLE Courses_Disciplines
(
  DisciplineId INT NOT NULL,
  CourseId     INT NOT NULL
);

CREATE TABLE Disciplines
(
  DisciplineId   INT          NOT NULL,
  DisciplineName VARCHAR(100) NOT NULL,
  PRIMARY KEY (DisciplineId)
);

CREATE TABLE Disciplines_Teachers
(
  TeacherId    INT NOT NULL,
  DisciplineId INT NOT NULL
);

CREATE TABLE Notifications
(
  NotificationId INT                       NOT NULL,
  EventName      ENUM("Call","Resevation") NOT NULL,
  Message        VARCHAR(300)              NOT NULL,
  PRIMARY KEY (NotificationId)
);

CREATE TABLE Reservations
(
  ResevationId   INT                                  NOT NULL,
  ResevationDate DATETIME                             NOT NULL,
  Period         ENUM("Morning","Vespertine","Nigth") NOT NULL,
  TeacherId      INT                                  NOT NULL,
  RoomId         int                                  NOT NULL,
  TeamId         INT                                  NOT NULL,
  StatusTypeId   INT                                  NOT NULL,
  PRIMARY KEY (ResevationId)
);

CREATE TABLE Rooms
(
  RoomId       int  NOT NULL,
  NumberTables INT  NOT NULL,
  Number       INT  NOT NULL,
  TypeRoomId   INT  NOT NULL,
  Details      TEXT NULL    ,
  PRIMARY KEY (RoomId)
);

CREATE TABLE Teachers
(
  TeacherId INT          NOT NULL,
  Name      VARCHAR(100) NOT NULL,
  PRIMARY KEY (TeacherId)
);

CREATE TABLE Teams
(
  TeamId INT                                  NOT NULL,
  Period ENUM("Morning","Vespertine","Nigth") NOT NULL,
  Year   INT                                  NOT NULL,
  Name   VARCHAR(100)                         NOT NULL,
  PRIMARY KEY (TeamId)
);

CREATE TABLE TypeCall
(
  TypeCall   VARCHAR(20) NOT NULL,
  TypeCallId INT         NOT NULL,
  PRIMARY KEY (TypeCallId)
);

CREATE TABLE TypesRooms
(
  TypeName   VARCHAR(100) NOT NULL,
  TypeRoomId INT          NOT NULL,
  PRIMARY KEY (TypeRoomId)
);

CREATE TABLE TypesStatus
(
  StatusTypeId INT         NOT NULL,
  TypeName     VARCHAR(50) NOT NULL,
  PRIMARY KEY (StatusTypeId)
);

CREATE TABLE TypeUsers
(
  TypeUseId INT         NOT NULL,
  TypeName  VARCHAR(20) NOT NULL,
  PRIMARY KEY (TypeUseId)
);

CREATE TABLE Users
(
  UserId    INT          NOT NULL,
  Name      VARCHAR(100) NOT NULL,
  Username  VARCHAR(50)  NOT NULL,
  Password  VARCHAR(50)  NOT NULL,
  TypeUseId INT          NOT NULL,
  PRIMARY KEY (UserId)
);

CREATE TABLE Users_Notification
(
  UserId         INT NOT NULL,
  NotificationId INT NOT NULL
);

ALTER TABLE Calls
  ADD CONSTRAINT FK_Users_TO_Calls
    FOREIGN KEY (UserId)
    REFERENCES Users (UserId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_Teachers_TO_Reservations
    FOREIGN KEY (TeacherId)
    REFERENCES Teachers (TeacherId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_Rooms_TO_Reservations
    FOREIGN KEY (RoomId)
    REFERENCES Rooms (RoomId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_Teams_TO_Reservations
    FOREIGN KEY (TeamId)
    REFERENCES Teams (TeamId);

ALTER TABLE Users
  ADD CONSTRAINT FK_TypeUsers_TO_Users
    FOREIGN KEY (TypeUseId)
    REFERENCES TypeUsers (TypeUseId);

ALTER TABLE Calls
  ADD CONSTRAINT FK_TypeCall_TO_Calls
    FOREIGN KEY (TypeCallId)
    REFERENCES TypeCall (TypeCallId);

ALTER TABLE Calls
  ADD CONSTRAINT FK_Rooms_TO_Calls
    FOREIGN KEY (RoomId)
    REFERENCES Rooms (RoomId);

ALTER TABLE Disciplines_Teachers
  ADD CONSTRAINT FK_Teachers_TO_Disciplines_Teachers
    FOREIGN KEY (TeacherId)
    REFERENCES Teachers (TeacherId);

ALTER TABLE Disciplines_Teachers
  ADD CONSTRAINT FK_Disciplines_TO_Disciplines_Teachers
    FOREIGN KEY (DisciplineId)
    REFERENCES Disciplines (DisciplineId);

ALTER TABLE Courses_Disciplines
  ADD CONSTRAINT FK_Disciplines_TO_Courses_Disciplines
    FOREIGN KEY (DisciplineId)
    REFERENCES Disciplines (DisciplineId);

ALTER TABLE Rooms
  ADD CONSTRAINT FK_TypesRooms_TO_Rooms
    FOREIGN KEY (TypeRoomId)
    REFERENCES TypesRooms (TypeRoomId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_TypesStatus_TO_Reservations
    FOREIGN KEY (StatusTypeId)
    REFERENCES TypesStatus (StatusTypeId);

ALTER TABLE Users_Notification
  ADD CONSTRAINT FK_Users_TO_Users_Notification
    FOREIGN KEY (UserId)
    REFERENCES Users (UserId);

ALTER TABLE Users_Notification
  ADD CONSTRAINT FK_Notifications_TO_Users_Notification
    FOREIGN KEY (NotificationId)
    REFERENCES Notifications (NotificationId);

ALTER TABLE Courses_Disciplines
  ADD CONSTRAINT FK_Courses_TO_Courses_Disciplines
    FOREIGN KEY (CourseId)
    REFERENCES Courses (CourseId);