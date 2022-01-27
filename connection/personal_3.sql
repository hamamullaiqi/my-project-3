--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-01-27 15:58:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 24609)
-- Name: tb_blog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_blog (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    image character varying(255) NOT NULL,
    author_id integer,
    post_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.tb_blog OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24608)
-- Name: tb_blog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_blog_id_seq OWNER TO postgres;

--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 211
-- Name: tb_blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_blog_id_seq OWNED BY public.tb_blog.id;


--
-- TOC entry 214 (class 1259 OID 32779)
-- Name: tb_experience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_experience (
    id integer NOT NULL,
    experience character varying NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.tb_experience OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 32778)
-- Name: tb_experient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_experient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_experient_id_seq OWNER TO postgres;

--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 213
-- Name: tb_experient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_experient_id_seq OWNED BY public.tb_experience.id;


--
-- TOC entry 210 (class 1259 OID 24590)
-- Name: tb_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.tb_user OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24589)
-- Name: tb_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_user_id_seq OWNER TO postgres;

--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_id_seq OWNED BY public.tb_user.id;


--
-- TOC entry 3175 (class 2604 OID 24612)
-- Name: tb_blog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_blog ALTER COLUMN id SET DEFAULT nextval('public.tb_blog_id_seq'::regclass);


--
-- TOC entry 3177 (class 2604 OID 32782)
-- Name: tb_experience id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_experience ALTER COLUMN id SET DEFAULT nextval('public.tb_experient_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 24593)
-- Name: tb_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user ALTER COLUMN id SET DEFAULT nextval('public.tb_user_id_seq'::regclass);


--
-- TOC entry 3326 (class 0 OID 24609)
-- Dependencies: 212
-- Data for Name: tb_blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_blog (id, title, content, image, author_id, post_at) FROM stdin;
48	judul 1	sdasd	1643260241172-klingking beach.jpg	12	2022-01-27 12:07:39.840061+07
49	sdads	asdasd	1643261034795-Cover.jpg	12	2022-01-27 12:23:54.950349+07
46	Google brings Android games to Windows in limited beta	You’ve always been able to play Android games on your PC, though it’s never really been easy. Projects like Android x86 and Bluestacks have typically been your best bet. Back in December of 2021, Google announced that it intended on bringing Android games to Windows, making use of the Android app layer that comes as part of Windows 11. Now, Google has brought the Google Play Games app to Windows through a very limited beta only available to some users in Hong Kong, South Korea, and Taiwan.	1642731253467-Seminyak Beach.jpg	15	2022-01-21 09:12:43.31181+07
\.


--
-- TOC entry 3328 (class 0 OID 32779)
-- Dependencies: 214
-- Data for Name: tb_experience; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_experience (id, experience, year) FROM stdin;
1	Develop Personal Web	2021
2	Develop Ecommerce	2022
\.


--
-- TOC entry 3324 (class 0 OID 24590)
-- Dependencies: 210
-- Data for Name: tb_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_user (id, name, email, password) FROM stdin;
6	hamamul	fikri@gmail.com	$2b$10$oy7jQ70KH8nKjT6RoItYiODy.1Z6S6LKPemFJdBgcgOtqubGU7nUi
7	laiqi	hamamullaiqi@gmail.com	$2b$10$Q0sJSa7Z9HVDvSu9qHQTz.nwhut5XuAyTexmrx/hDnxjqbUqFwgk6
8	hafiqi	hafiqi@gmail.com	$2b$10$wYOHVwAGmmJWrIcYYgUDreaSlTzzL6JswTO8PdVtQke/WcbgvXN5.
9	damad	damad@gmail.com	$2b$10$eexiQ.D02tlZ1sA5GAashOrEt32bbpdq5eO5T0aN.wOOWQeQIWwwK
10	hazwa	hazwa@gmail.com	$2b$10$2BvxEdSxXl6zzG8UxQb5ienHrB5Qqa/X2axdBGw3/axgNTgNnWvYe
11	away	away@gmail.com	$2b$10$TBsNUfE.mPIdl8wyE37WHehycu/abczkPiGXGj1LnObSgsHRV9zzW
12	wafa	wafa@gmail.com	$2b$10$vTt23iFv2EUiJLaZ5VMJ.eJE802vdq8J7IXXsUu7229jGORUxBRgu
13	wafi	wafi@mail.com	$2b$10$Uk4R3of4iR.UuXudnOg0A.Qkq7jPzvTRmWbhW/Ufvl.0UV55.H7yq
14	wafawafi	wafawafi@gmail.com	$2b$10$Eo1tz1zojTS6krXMclaeGeyMUWbjcaEgsmC9wF3mEl3HBrh7PW11q
15	ali	ali@gmail.com	$2b$10$lFXbgsDrnUDd3.Eos2fvZuXRIwcxlJQ4YYrihj5groEVyiV1lq8Gy
\.


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 211
-- Name: tb_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_blog_id_seq', 49, true);


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 213
-- Name: tb_experient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_experient_id_seq', 2, true);


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_id_seq', 15, true);


--
-- TOC entry 3181 (class 2606 OID 24616)
-- Name: tb_blog tb_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_blog
    ADD CONSTRAINT tb_blog_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 32786)
-- Name: tb_experience tb_experient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_experience
    ADD CONSTRAINT tb_experient_pkey PRIMARY KEY (id);


--
-- TOC entry 3179 (class 2606 OID 24597)
-- Name: tb_user tb_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT tb_user_pkey PRIMARY KEY (id);


-- Completed on 2022-01-27 15:58:12

--
-- PostgreSQL database dump complete
--

