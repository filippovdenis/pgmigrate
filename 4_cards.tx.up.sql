CREATE SEQUENCE public.cards_card_id_seq;

ALTER SEQUENCE public.cards_card_id_seq
    OWNER TO postgres;

--gopg:split

CREATE TABLE public.cards
(
    card_id integer NOT NULL DEFAULT nextval('cards_card_id_seq'::regclass),
    card_name text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cards_pk PRIMARY KEY (card_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.cards
    OWNER to postgres;