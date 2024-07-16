-- Removes all corrections with a score of 0

DELETE FROM corrections
WHERE score = 0;
