CREATE SEQUENCE public.scope_id_seq;
CREATE SEQUENCE public.version_id_seq;

CREATE TABLE public.scope (
	id int4 NOT NULL DEFAULT nextval('scope_id_seq'::regclass),
	"name" varchar(255) NULL,
	CONSTRAINT scope_pkey PRIMARY KEY (id)
);

CREATE TABLE public.version (
    id int4 NOT NULL DEFAULT nextval('version_id_seq'::regclass),
    version varchar(255) NULL,
    released date NULL,
    scope_id int4 NULL,
    CONSTRAINT version_pkey PRIMARY KEY (id)
);

INSERT INTO public.scope ("name") VALUES ('JPA');
INSERT INTO public.scope ("name") VALUES ('EclipseLink');

INSERT INTO public.version (version, released, scope_id) VALUES ('3.1.0', '2022-03-30', 1);
INSERT INTO public.version (version, released, scope_id) VALUES ('3.0.0', '2020-10-21', 1);

INSERT INTO public.version (version, released, scope_id) VALUES ('4.0.2', '2023-06-16', 2);
INSERT INTO public.version (version, released, scope_id) VALUES ('3.0.4', '2023-10-25', 2);
