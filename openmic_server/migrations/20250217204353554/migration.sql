BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "venue" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "venue" (
    "id" bigserial PRIMARY KEY,
    "ownerId" bigint NOT NULL,
    "hubId" bigint NOT NULL,
    "name" text NOT NULL,
    "primaryImageUrl" text NOT NULL,
    "bio" text NOT NULL,
    "address" text NOT NULL,
    "websiteUrl" text NOT NULL,
    "instagramUrl" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "isVerified" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "venue"
    ADD CONSTRAINT "venue_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "venue"
    ADD CONSTRAINT "venue_fk_1"
    FOREIGN KEY("hubId")
    REFERENCES "hub"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR openmic
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('openmic', '20250217204353554', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250217204353554', "timestamp" = now();

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
