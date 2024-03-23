CREATE TABLE scores
(
    id bigserial NOT NULL PRIMARY KEY,
    user_id integer NOT NULL,
    user_name character varying NOT NULL,
    user_country character varying(2) NOT NULL DEFAULT 'XX',
    server character varying NOT NULL DEFAULT 'ppy.sh',
    beatmap_id integer,
    beatmap_text character varying NOT NULL,
    beatmap_checksum character(32) NOT NULL,
    checksum character(32) NOT NULL,
    mode smallint NOT NULL,
    submitted_at time with time zone NOT NULL DEFAULT now(),
    pp real NOT NULL,
    pp_fc real,
    acc real NOT NULL,
    total_score bigint NOT NULL,
    max_combo bigint NOT NULL,
    mods integer NOT NULL,
    perfect boolean NOT NULL,
    passed boolean NOT NULL,
    length integer NOT NULL,
    grade character varying(2) NOT NULL DEFAULT 'F',
    c300 integer NOT NULL,
    c100 integer NOT NULL,
    c50 integer NOT NULL,
    cgeki integer NOT NULL,
    ckatu integer NOT NULL,
    cmiss integer NOT NULL,
    replay_filename character varying,
    replay_available boolean NOT NULL DEFAULT true
);

CREATE TABLE messages
(
    id bigserial NOT NULL PRIMARY KEY,
    sender_id integer NOT NULL,
    sender_name character varying NOT NULL,
    target_name character varying NOT NULL,
    server character varying NOT NULL DEFAULT 'ppy.sh',
    message character varying NOT NULL,
    created_at time with time zone NOT NULL DEFAULT now()
);