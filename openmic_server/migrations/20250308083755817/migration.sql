BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "events" (
    "id" bigserial PRIMARY KEY,
    "templateId" bigint NOT NULL,
    "startsOn" timestamp without time zone NOT NULL,
    "description" text,
    "forMusic" boolean NOT NULL,
    "forComedy" boolean NOT NULL,
    "forPoetry" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "events"
    ADD CONSTRAINT "events_fk_0"
    FOREIGN KEY("templateId")
    REFERENCES "event_template"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR openmic
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('openmic', '20250308083755817', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250308083755817', "timestamp" = now();

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
