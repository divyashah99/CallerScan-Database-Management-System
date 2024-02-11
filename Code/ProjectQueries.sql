use callerscan;


-- Aggregate Function with Group By and Having:
-- Find the total count of logins for each user, but only show users who have logged in more than 10 times.

SELECT Login_User_ID, COUNT(*) AS LoginCount
FROM login_history
GROUP BY Login_User_ID
HAVING LoginCount > 10;

-- Order By and Join:
-- Retrieve the names of users who have subscribed to the "Monthly" subscription type, and order the results by their names.

SELECT User.Name
FROM User
JOIN Subscription ON User.User_ID = Subscription.Subscription_User_ID
JOIN SubscriptionType ON Subscription.SubscriptionTypeID = SubscriptionType.SubscriptionTypeID
WHERE SubscriptionType.SubscriptionTypeName = 'Monthly'
ORDER BY User.Name;

-- Nested Query:
-- Find the users who have viewed profiles in secret mode more than 5 times.

SELECT User.User_ID, User.Name
FROM User
JOIN (SELECT ViewerUserID, COUNT(*) AS SecretViewCount
      FROM ProfileView
      WHERE IsSecretMode = 1
      GROUP BY ViewerUserID
      HAVING SecretViewCount > 5) AS SubQuery
ON User.User_ID = SubQuery.ViewerUserID;

-- Queries with Subqueries in FROM/WHERE:
-- Find users who have not received any ratings.

SELECT User.User_ID, User.Name
FROM User
LEFT JOIN UserRating ON User.User_ID = UserRating.User_ID
WHERE UserRating.RatingID IS NULL;

-- Correlated Subquery:
-- Find the users who have blocked other users and received ratings.

SELECT DISTINCT User.Name
FROM User
WHERE User.User_ID IN (
    SELECT DISTINCT BlockList.UserID
    FROM BlockList
    WHERE BlockList.UserID = User.User_ID
) AND User.User_ID IN (
    SELECT DISTINCT UserRating.RatedCallerID
    FROM UserRating
);

-- Queries with EXISTS:
-- Find users who have participated in any activities.
SELECT User.Name
FROM User
WHERE EXISTS (
    SELECT 1
    FROM Participation
    WHERE Participation.P_User_ID = User.User_ID
);
 
-- Find all users who have made or received more than 10 calls in the past week, grouped by subscription type.
-- SELECT st.SubscriptionTypeName, COUNT(u.User_ID) AS UserCount
-- FROM User u
-- INNER JOIN Subscription s ON u.User_ID = s.Subscription_User_ID
-- INNER JOIN SubscriptionType st ON s.SubscriptionTypeID = st.SubscriptionTypeID
-- WHERE EXISTS (
--     SELECT 1
--     FROM CallLog c
--     WHERE (c.CallerUserID = u.User_ID OR c.ReceiverUserID = u.User_ID)
--     AND c.CallDateTime >= DATE_SUB(NOW(), INTERVAL 4 WEEK)
-- )
-- GROUP BY st.SubscriptionTypeName
-- HAVING UserCount > 10;

-- Find all users who have made or received more than 10 calls in  in the month of November 2023, grouped by subscription type.
SELECT st.SubscriptionTypeName, COUNT(u.User_ID) AS UserCount
FROM User u
INNER JOIN Subscription s ON u.User_ID = s.Subscription_User_ID
INNER JOIN SubscriptionType st ON s.SubscriptionTypeID = st.SubscriptionTypeID
WHERE EXISTS (
    SELECT 1
    FROM CallLog c
    WHERE (c.CallerUserID = u.User_ID OR c.ReceiverUserID = u.User_ID)
    AND YEAR(c.CallDateTime) = 2023
    AND MONTH(c.CallDateTime) = 11
)
GROUP BY st.SubscriptionTypeName
HAVING UserCount > 10;


-- Find a particular business using industry type -Entertainment and zip code - 24017-1241 in the "Business" table
SELECT User.Name, User.ContactNumber, Business.IndustryType, Business.ZipCode
FROM User
JOIN Business ON User.User_ID = Business.Business_User_ID
WHERE Business.IndustryType = 'Entertainment' -- Replace 'YourIndustryType' with the desired industry type
AND Business.ZipCode = '24017-1241'; -- Replace 'YourZipCode' with the desired zip code

