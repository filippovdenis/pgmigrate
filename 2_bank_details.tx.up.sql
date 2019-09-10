CREATE SEQUENCE public.bank_details_bank_detail_id_seq;

ALTER SEQUENCE public.bank_details_bank_detail_id_seq
    OWNER TO postgres;
	
--gopg:split

CREATE TABLE public.bank_details
(
    bank_detail_id integer NOT NULL DEFAULT nextval('bank_details_bank_detail_id_seq'::regclass),
    source_id integer,
    bank_name text COLLATE pg_catalog."default",
    trans_date bigint,
    bank_data text COLLATE pg_catalog."default",
    CONSTRAINT bank_details_pkey PRIMARY KEY (bank_detail_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.bank_details
    OWNER to postgres;