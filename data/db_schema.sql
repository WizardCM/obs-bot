CREATE TABLE "factoids"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    aliases text[] DEFAULT '{}',
    "message" text NOT NULL,
    image_url text,
    buttons json,
    embed BOOL DEFAULT true,
    uses integer DEFAULT 0
);

CREATE TABLE "hardware_stats"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    gpu_id integer,
    cpu_id integer,
    name text NOT NULL,
    counts integer DEFAULT 0
);

CREATE TABLE "commit_messages"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    commit_hash varchar(40) NOT NULL,
    channel_id numeric NOT NULL,
    message_id numeric NOT NULL
);

CREATE TABLE "filters"
(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    "regex" text NOT NULL,
    "bannable" bool DEFAULT false,
    "kickable" bool DEFAULT false
);
