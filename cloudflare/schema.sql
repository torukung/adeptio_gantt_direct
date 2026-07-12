-- Adeptio Project Tracking — Cloudflare D1 schema (already applied to live D1)
CREATE TABLE IF NOT EXISTS app_state (
  id          TEXT PRIMARY KEY,
  doc         TEXT NOT NULL,
  rev         INTEGER NOT NULL DEFAULT 1,
  updated_at  TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS backups (
  id      TEXT PRIMARY KEY,
  ws      TEXT NOT NULL,
  ts      TEXT NOT NULL,
  period  TEXT NOT NULL,
  doc     TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_backups_ws_ts ON backups(ws, ts DESC);
