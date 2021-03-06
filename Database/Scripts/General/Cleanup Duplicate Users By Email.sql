
select * from [User]
  WHERE EmailAddress IS NOT NULL
  --AND NOT EXISTS (select 1 from UserSubscription WHERE UserID=[User].ID)
  --AND NOT EXISTS (select 1 from UserComment WHERE UserID=[User].ID)
  --AND NOT EXISTS (select 1 from MediaItem WHERE UserID=[User].ID)
  --AND NOT EXISTS (select 1 from EditQueueItem WHERE ProcessedByUserID=[User].ID)
  --AND NOT EXISTS (select 1 from EditQueueItem WHERE UserID=[User].ID)
  and EmailAddress  IN(
  SELECT EmailAddress FROM [User] GROUP BY EmailAddress
  HAVING COUNT(1)>1
  )
  order by EmailAddress,ID