--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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
-- Name: Candidate; Type: TABLE; Schema: public; Owner: yasem
--

CREATE TABLE public."Candidate" (
    id integer NOT NULL,
    "FirstName" character varying(50),
    "LastName" character varying(50),
    tckn character varying(11),
    "BirthYear" date,
    "EMail" character varying(50),
    "Password" character varying(50),
    "CreatedDate" date
);


ALTER TABLE public."Candidate" OWNER TO yasem;

--
-- Name: Candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: yasem
--

CREATE SEQUENCE public."Candidate_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Candidate_id_seq" OWNER TO yasem;

--
-- Name: Candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yasem
--

ALTER SEQUENCE public."Candidate_id_seq" OWNED BY public."Candidate".id;


--
-- Name: Employer; Type: TABLE; Schema: public; Owner: yasem
--

CREATE TABLE public."Employer" (
    id integer NOT NULL,
    "CompanyName" character varying(50),
    "CompanyWebsite" character varying(50),
    "CompanyEmail" character varying(50),
    "Phone" integer
);


ALTER TABLE public."Employer" OWNER TO yasem;

--
-- Name: Employer_id_seq; Type: SEQUENCE; Schema: public; Owner: yasem
--

CREATE SEQUENCE public."Employer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Employer_id_seq" OWNER TO yasem;

--
-- Name: Employer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yasem
--

ALTER SEQUENCE public."Employer_id_seq" OWNED BY public."Employer".id;


--
-- Name: Jobs; Type: TABLE; Schema: public; Owner: yasem
--

CREATE TABLE public."Jobs" (
    id integer NOT NULL,
    "JobName" character varying(50)
);


ALTER TABLE public."Jobs" OWNER TO yasem;

--
-- Name: Jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: yasem
--

CREATE SEQUENCE public."Jobs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Jobs_id_seq" OWNER TO yasem;

--
-- Name: Jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yasem
--

ALTER SEQUENCE public."Jobs_id_seq" OWNED BY public."Jobs".id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: yasem
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "FirstName" character varying(50),
    "LastName" character varying(50),
    "EMail" character varying(50),
    "Created" date,
    "Password" character varying(10),
    "Status" integer
);


ALTER TABLE public.users OWNER TO yasem;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: yasem
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO yasem;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yasem
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: Candidate id; Type: DEFAULT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public."Candidate" ALTER COLUMN id SET DEFAULT nextval('public."Candidate_id_seq"'::regclass);


--
-- Name: Employer id; Type: DEFAULT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public."Employer" ALTER COLUMN id SET DEFAULT nextval('public."Employer_id_seq"'::regclass);


--
-- Name: Jobs id; Type: DEFAULT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public."Jobs" ALTER COLUMN id SET DEFAULT nextval('public."Jobs_id_seq"'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: Candidate; Type: TABLE DATA; Schema: public; Owner: yasem
--

COPY public."Candidate" (id, "FirstName", "LastName", tckn, "BirthYear", "EMail", "Password", "CreatedDate") FROM stdin;
\.


--
-- Data for Name: Employer; Type: TABLE DATA; Schema: public; Owner: yasem
--

COPY public."Employer" (id, "CompanyName", "CompanyWebsite", "CompanyEmail", "Phone") FROM stdin;
\.


--
-- Data for Name: Jobs; Type: TABLE DATA; Schema: public; Owner: yasem
--

COPY public."Jobs" (id, "JobName") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: yasem
--

COPY public.users (id, "FirstName", "LastName", "EMail", "Created", "Password", "Status") FROM stdin;
\.


--
-- Name: Candidate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yasem
--

SELECT pg_catalog.setval('public."Candidate_id_seq"', 1, false);


--
-- Name: Employer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yasem
--

SELECT pg_catalog.setval('public."Employer_id_seq"', 1, false);


--
-- Name: Jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yasem
--

SELECT pg_catalog.setval('public."Jobs_id_seq"', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yasem
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: Candidate candidate_pk; Type: CONSTRAINT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public."Candidate"
    ADD CONSTRAINT candidate_pk PRIMARY KEY (id);


--
-- Name: Employer employer_pk; Type: CONSTRAINT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public."Employer"
    ADD CONSTRAINT employer_pk PRIMARY KEY (id);


--
-- Name: Jobs jobs_pk; Type: CONSTRAINT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public."Jobs"
    ADD CONSTRAINT jobs_pk PRIMARY KEY (id);


--
-- Name: users users_pk; Type: CONSTRAINT; Schema: public; Owner: yasem
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

