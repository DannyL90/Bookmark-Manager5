ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);

-- Add Titles to Database
UPDATE bookmarks
SET title = 'Makers Academy'
WHERE id = 1;