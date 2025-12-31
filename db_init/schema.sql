CREATE TABLE emails (
    id SERIAL PRIMARY KEY,
    message_id TEXT UNIQUE,
    sent_at_utc TIMESTAMP WITH TIME ZONE,
    sent_at_local TIMESTAMP,
    sender TEXT,
    recipients TEXT,
    subject TEXT,
    body_text TEXT,
    folder TEXT,
    file_path TEXT,
    body_length INTEGER,
    date_raw TEXT
);

CREATE INDEX idx_sent_at_utc ON emails (sent_at_utc);
CREATE INDEX idx_sent_at_local ON emails (sent_at_local);
CREATE INDEX idx_sender ON emails (sender);