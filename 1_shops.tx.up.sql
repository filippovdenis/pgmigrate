CREATE TABLE public.shops
(
    shop_name text COLLATE pg_catalog."default",
    article_id character varying(36) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.shops
    OWNER to postgres;