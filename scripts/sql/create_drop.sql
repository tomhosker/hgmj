/*
This code defines a script which resets our database.
*/

-- DROP.
DROP TABLE IF EXISTS JournalEntry;
DROP TABLE IF EXISTS PainScore;

-- CREATE.
CREATE TABLE PainScore (
    score INTEGER PRIMARY KEY,
    description TEXT NOT NULL
);
CREATE TABLE JournalEntry (
    id INTEGER PRIMARY KEY,
    painScore INTEGER NOT NULL,
    day INTEGER NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL,
    FOREIGN KEY(painScore) REFERENCES PainScore(score)
);

-- INSERT.
INSERT INTO PainScore (score, description)
VALUES
    (0, 'No pain.'),
    (1, 'Negligible pain.'),
    (2, 'Little pain.'),
    (3, 'Some pain.'),
    (4, 'Able to cope.'),
    (5, 'Max pain while able to cope.'),
    (6, 'Feeling unable to cope.'),
    (7, 'Frequent suicidal thoughts.'),
    (8, 'Suicidal.'),
    (9, 'Actively suicidal.');
