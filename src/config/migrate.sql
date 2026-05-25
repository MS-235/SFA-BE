-- ============================================================
-- Admin Auth Tables for Neon PostgreSQL
-- Based on sfaschema.sql structure
-- Run this once in your Neon SQL Editor before starting the app
-- ============================================================

-- Admin users table (mirrors Tbl_User_Info structure)
CREATE TABLE IF NOT EXISTS "admin_users" (
    "id"              SERIAL PRIMARY KEY,
    "c_code"          VARCHAR(10)  NOT NULL UNIQUE,
    "c_name"          VARCHAR(500),
    "c_user_id"       VARCHAR(20)  NOT NULL UNIQUE,
    "c_password"      VARCHAR(255) NOT NULL,  -- bcrypt hashed
    "n_lock"          INTEGER      NOT NULL DEFAULT 0,
    "n_type"          INTEGER      NOT NULL DEFAULT 1, -- 1=admin, 2=superadmin
    "n_attempts"      INTEGER      NOT NULL DEFAULT 0,
    "mobile_number"   VARCHAR(200),
    "c_description"   VARCHAR(250),
    "d_create_date"   TIMESTAMP    DEFAULT NOW(),
    "d_modify_date"   TIMESTAMP    DEFAULT NOW()
);

-- Refresh token store (mirrors Tbl_Device_Login_Token_Details structure)
CREATE TABLE IF NOT EXISTS "admin_refresh_tokens" (
    "id"                  SERIAL PRIMARY KEY,
    "c_token_id"          VARCHAR(512) NOT NULL UNIQUE,  -- the refresh token itself
    "c_user_id"           VARCHAR(20)  NOT NULL,
    "c_code"              VARCHAR(10)  NOT NULL,
    "d_token_issued_date" TIMESTAMP    NOT NULL DEFAULT NOW(),
    "d_token_valid_to"    TIMESTAMP    NOT NULL,
    "n_enable"            INTEGER      NOT NULL DEFAULT 1,  -- 1=active, 0=revoked
    CONSTRAINT fk_admin_user FOREIGN KEY ("c_user_id")
        REFERENCES "admin_users" ("c_user_id") ON DELETE CASCADE
);

-- Index for fast token lookup
CREATE INDEX IF NOT EXISTS idx_refresh_token ON "admin_refresh_tokens" ("c_token_id");
CREATE INDEX IF NOT EXISTS idx_refresh_user  ON "admin_refresh_tokens" ("c_user_id");

-- ============================================================
-- Optional: seed a default superadmin
-- Password is: Admin@123  (change immediately after first login)
-- bcrypt hash of "Admin@123" with 10 rounds
-- ============================================================
-- INSERT INTO "admin_users" (c_code, c_name, c_user_id, c_password, n_type)
-- VALUES ('ADM001', 'Super Admin', 'superadmin',
--         '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lh8y', 2)
-- ON CONFLICT DO NOTHING;
