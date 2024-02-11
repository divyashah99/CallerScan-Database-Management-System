use callerscan;
CREATE TABLE User (
  User_ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  ContactNumber VARCHAR(20) NOT NULL
);	

CREATE TABLE User_Email (
  EmailAddress VARCHAR(255) PRIMARY KEY,
  User_ID INT NOT NULL,
  FOREIGN KEY (User_ID) REFERENCES User (User_ID) ON DELETE CASCADE
);

CREATE TABLE Login_History (
  LoginHistoryID INT AUTO_INCREMENT PRIMARY KEY,
  LoginDateTime DATETIME,
  LogoutDateTime DATETIME,
  IPAddress VARCHAR(15),
  DeviceInformation VARCHAR(255),
  Login_User_ID INT NOT NULL,
  FOREIGN KEY (Login_User_ID) REFERENCES User (User_ID) ON DELETE CASCADE
);

CREATE TABLE SubscriptionType (
    SubscriptionTypeID INT AUTO_INCREMENT PRIMARY KEY,
    SubscriptionTypeName ENUM('Free', 'Annual', 'Monthly') NOT NULL,
    SubscriptionTypePrice DECIMAL(10, 2) NOT NULL,
    CHECK (
        (SubscriptionTypeName = 'Free' AND SubscriptionTypePrice = 0) OR
        (SubscriptionTypeName = 'Annual' AND SubscriptionTypePrice = 110) OR
        (SubscriptionTypeName = 'Monthly' AND SubscriptionTypePrice = 10)
    )
);

CREATE TABLE Subscription (
    SubscriptionID INT AUTO_INCREMENT PRIMARY KEY,
    SubscriptionStartDate DATE,
    Subscription_User_ID INT NOT NULL,
    SubscriptionTypeID INT NOT NULL,
    SubscriptionEndDate DATE,
    FOREIGN KEY (Subscription_User_ID) REFERENCES User (User_ID) ON DELETE CASCADE,
    FOREIGN KEY (SubscriptionTypeID) REFERENCES subscriptiontype (SubscriptionTypeID) ON DELETE CASCADE
);

DELIMITER //
CREATE TRIGGER set_subscription_end_date BEFORE INSERT ON Subscription
FOR EACH ROW
BEGIN
    CASE NEW.SubscriptionTypeID
        WHEN 1 THEN SET NEW.SubscriptionEndDate = '9999-12-31';
        WHEN 2 THEN SET NEW.SubscriptionEndDate = DATE_ADD(NEW.SubscriptionStartDate, INTERVAL 1 MONTH);
        WHEN 3 THEN SET NEW.SubscriptionEndDate = DATE_ADD(NEW.SubscriptionStartDate, INTERVAL 12 MONTH);
        ELSE SET NEW.SubscriptionEndDate = NULL;
    END CASE;
END;
//
DELIMITER ;

CREATE TABLE ProfileView (
  ProfileViewID INT AUTO_INCREMENT PRIMARY KEY,
  ViewerUserID INT NOT NULL,
  ProfileUserID INT NOT NULL,
  ViewDateTime DATETIME,
  IsSecretMode BOOLEAN,
  FOREIGN KEY (ViewerUserID) REFERENCES User (User_ID) ON DELETE CASCADE,
  FOREIGN KEY (ProfileUserID) REFERENCES User (User_ID) ON DELETE CASCADE
);

CREATE TABLE Profile_View_Notification (
  NotificationId INT AUTO_INCREMENT PRIMARY KEY,
  NotificationDateTime DATETIME,
  NotificationMessage TEXT,
  ProfileViewID INT NOT NULL,
  FOREIGN KEY (ProfileViewID) REFERENCES ProfileView (ProfileViewID) ON DELETE CASCADE
);
CREATE TABLE Location (
    LocationName VARCHAR(255),
    Latitude DECIMAL(10, 6),
    Longitude DECIMAL(10, 6), 
    Contact_ID INT NOT NULL, 
    PRIMARY KEY (Contact_ID, LocationName),
    FOREIGN KEY (Contact_ID) REFERENCES Contacts(Contact_ID) ON DELETE CASCADE
);
-- select * from Location 
-- select * from contacts
CREATE TABLE Personal(
  Personal_User_ID INT,
  FOREIGN KEY (Personal_User_ID) REFERENCES User (User_ID) ON DELETE CASCADE
);
CREATE TABLE Business (
  Business_User_ID INT,
  IndustryType VARCHAR(100),
  ZipCode VARCHAR(10),
  FOREIGN KEY (Business_User_ID) REFERENCES User (User_ID) ON DELETE CASCADE
);
CREATE TABLE BlockList (
  BlockID INT AUTO_INCREMENT PRIMARY KEY,
  UserID INT NOT NULL,
  BlockedUserID INT NOT NULL,
  BlockDate DATE,
  Reason  VARCHAR(255),
  FOREIGN KEY (UserID) REFERENCES User (User_ID) ON DELETE CASCADE,
  FOREIGN KEY (BlockedUserID) REFERENCES User (User_ID) ON DELETE CASCADE
);
CREATE TABLE CallLog (
  CallLogID INT AUTO_INCREMENT PRIMARY KEY,
  CallerUserID INT NOT NULL,
  ReceiverUserID INT NOT NULL,
  CallDateTime DATETIME,
  CallDuration INT,
  CallType VARCHAR(20),
  Call_Log_BlockID INT,
  FOREIGN KEY (CallerUserID) REFERENCES User (User_ID) ON DELETE CASCADE,
  FOREIGN KEY (ReceiverUserID) REFERENCES User (User_ID) ON DELETE CASCADE,
  FOREIGN KEY (Call_Log_BlockID) REFERENCES BlockList (BlockID)
);
select * from calllog;
CREATE TABLE UserRating (
  RatingID INT AUTO_INCREMENT PRIMARY KEY,
  Review TEXT,
  Rating INT,
  UserRatingTimeStamp DATETIME,
  RatedCallerID INT NOT NULL,
  User_ID INT NOT NULL,
  FOREIGN KEY (User_ID) REFERENCES User (User_ID) ON DELETE CASCADE,
  FOREIGN KEY (RatedCallerID) REFERENCES User (User_ID) ON DELETE CASCADE
);
CREATE TABLE Spam (
  SpamID INT AUTO_INCREMENT PRIMARY KEY,
  ReportedPhoneNumber VARCHAR(20),
  Reason TEXT,
  ReportDate DATE
);

CREATE TABLE Contacts (
  Contact_ID INT AUTO_INCREMENT PRIMARY KEY,
  ContactName VARCHAR(255),
  ContactNumber VARCHAR(20),
  ContactsUser_ID INT NOT NULL,
  FOREIGN KEY (ContactsUser_ID) REFERENCES User (User_ID) ON DELETE CASCADE
);

CREATE TABLE Contact_Email (
  ContactEmail VARCHAR(255) PRIMARY KEY,
  Contact_ID INT NOT NULL,
  FOREIGN KEY (Contact_ID) REFERENCES Contacts (Contact_ID) ON DELETE CASCADE
);
CREATE TABLE UserActivity (
  ActivityID INT AUTO_INCREMENT PRIMARY KEY,
  UserActivity_Timestamp DATETIME,
  ActivityDetails VARCHAR(50)
);
CREATE TABLE Participation (
  P_SpamID INT NOT NULL,
  P_User_ID INT NOT NULL,
  P_ActivityID INT NOT NULL,
  PRIMARY KEY(P_SpamID,P_User_ID),
  FOREIGN KEY (P_SpamID) REFERENCES Spam (SpamID) ON DELETE CASCADE,
  FOREIGN KEY (P_User_ID) REFERENCES User (User_ID) ON DELETE CASCADE,
  FOREIGN KEY (P_ActivityID) REFERENCES UserActivity (ActivityID) ON DELETE CASCADE
);

CREATE TABLE TriggerLog (
    TriggerLogID INT AUTO_INCREMENT PRIMARY KEY,
    TriggerName VARCHAR(255) NOT NULL,
    ExecutionTime DATETIME NOT NULL
);

 DROP TRIGGER IF EXISTS AutomaticSpamBlocking;
 DELIMITER //
 CREATE TRIGGER AutomaticSpamBlocking
 BEFORE INSERT ON CallLog
 FOR EACH ROW
 BEGIN
     -- Log entry to track trigger execution
     INSERT INTO TriggerLog (TriggerName, ExecutionTime) VALUES ('AutomaticSpamBlocking', NOW());

     SET @receiver_subscription_type = (
         SELECT SubscriptionTypeName
         FROM SubscriptionType
         WHERE SubscriptionTypeID = (
             SELECT SubscriptionTypeID
             FROM Subscription
             WHERE Subscription_User_ID = NEW.ReceiverUserID
         )
     );

     -- Check if the receiver is a premium subscriber with 'Monthly' or 'Annual' subscription
     IF @receiver_subscription_type IN ('Monthly', 'Annual') THEN
          SET @is_spam = (
             SELECT COUNT(*)
             FROM Spam
             WHERE ReportedPhoneNumber = (select ContactNumber from user where User_ID = NEW.CallerUserID)
         );

         -- If the calling number is in the spam table, block the call
         IF @is_spam > 0 THEN
             INSERT INTO BlockList (UserID, BlockedUserID, BlockDate, Reason)
             VALUES (NEW.ReceiverUserID, NEW.CallerUserID, NOW(), 'Automatic Spam Blocking');

            -- Update the CallLog to indicate that the call has been blocked
             SET NEW.Call_Log_BlockID = LAST_INSERT_ID(); 
            
         END IF;
     END IF;
 END;
 //
 DELIMITER ;



-- testing the trigger


-- INSERT INTO User (Name, ContactNumber)
-- VALUES
--   ('John Doe', '880-704-1100');

-- select * from user;

-- INSERT INTO CallLog (CallerUserID, ReceiverUserID, CallDateTime, CallDuration, CallType)
-- VALUES
--   (101, 2, '2023-11-28 08:30:00', 0, 'incoming call');
-- select * from triggerlog;


DROP TRIGGER IF EXISTS ProfileViewNotificationTrigger;
DELIMITER //
CREATE TRIGGER ProfileViewNotificationTrigger
AFTER INSERT ON ProfileView
FOR EACH ROW
BEGIN
	INSERT INTO TriggerLog (TriggerName, ExecutionTime) VALUES ('ProfileViewNotificationTrigger', NOW());
    SET @secretMode = (SELECT IsSecretMode FROM ProfileView WHERE ProfileViewID = NEW.ProfileViewID);

    IF @secretMode = FALSE THEN
		-- Get the name of the viewer
        SET @viewerName = (SELECT Name FROM User WHERE User_ID = NEW.ViewerUserID);

        -- Generate a notification for the profile owner
        INSERT INTO profile_view_notification (NotificationDateTime, NotificationMessage, ProfileViewID)
        VALUES (NEW.ViewDateTime, CONCAT('Your profile has been viewed by ', @viewerName), NEW.ProfileViewID);
    END IF;
END;
//
DELIMITER ;

-- testing the above trigger
 
-- Insert sample data into the ProfileView table
-- INSERT INTO ProfileView (ViewerUserID, ProfileUserID, ViewDateTime, IsSecretMode)
-- VALUES
--     (10, 31, '2023-11-28 06:30:00', 0), -- 0 represents FALSE
--     (11, 32, '2023-11-28 07:45:00', 1); -- 1 represents TRUE
--     
select * from ProfileView ;
select * from profile_view_notification ;
