BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "event_template" (
    "id" bigserial PRIMARY KEY,
    "ownerId" bigint NOT NULL,
    "venueId" bigint NOT NULL,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "startsOn" timestamp without time zone NOT NULL,
    "repeats" boolean NOT NULL,
    "dayOfWeek" bigint NOT NULL,
    "primaryImageUrl" text NOT NULL,
    "forMusic" boolean NOT NULL,
    "forComedy" boolean NOT NULL,
    "forPoetry" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "event_template"
    ADD CONSTRAINT "event_template_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "event_template"
    ADD CONSTRAINT "event_template_fk_1"
    FOREIGN KEY("venueId")
    REFERENCES "venue"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR openmic
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('openmic', '20250308082212688', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250308082212688', "timestamp" = now();

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
