BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "hub" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL
);


--
-- MIGRATION VERSION FOR openmic
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('openmic', '20250129143758905', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250129143758905', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
