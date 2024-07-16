-- Creates a full-text index on the full_name column

CREATE FULLTEXT INDEX idx_full_name ON names (full_name);
