CREATE TABLE public.bank_transactions
(
    bank_transaction_id character varying(36) COLLATE pg_catalog."default" NOT NULL,
    bank_name text COLLATE pg_catalog."default",
    trans_date bigint,
    operation text COLLATE pg_catalog."default",
    card_name text COLLATE pg_catalog."default",
    shop_name text COLLATE pg_catalog."default",
    article_id character varying(36) COLLATE pg_catalog."default",
    amount numeric,
    currency text COLLATE pg_catalog."default",
    currency_amount numeric,
    balance numeric,
    CONSTRAINT bank_transactions_pkey PRIMARY KEY (bank_transaction_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.bank_transactions
    OWNER to postgres;