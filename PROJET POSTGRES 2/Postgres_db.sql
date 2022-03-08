--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-03-06 10:06:26 WAT

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
-- TOC entry 210 (class 1259 OID 16968)
-- Name: don_sangs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.don_sangs (
    code_don integer NOT NULL,
    qte_don character varying(255) NOT NULL,
    lieu_don character varying(255) NOT NULL,
    date_don date NOT NULL,
    code_d integer NOT NULL
);


ALTER TABLE public.don_sangs OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16966)
-- Name: don_sangs_code_d_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.don_sangs_code_d_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.don_sangs_code_d_seq OWNER TO postgres;

--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 209
-- Name: don_sangs_code_d_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.don_sangs_code_d_seq OWNED BY public.don_sangs.code_d;


--
-- TOC entry 208 (class 1259 OID 16964)
-- Name: don_sangs_code_don_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.don_sangs_code_don_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.don_sangs_code_don_seq OWNER TO postgres;

--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 208
-- Name: don_sangs_code_don_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.don_sangs_code_don_seq OWNED BY public.don_sangs.code_don;


--
-- TOC entry 203 (class 1259 OID 16933)
-- Name: donneurs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.donneurs (
    code_d integer NOT NULL,
    num_nni character varying(12) NOT NULL,
    nom_d character varying(255) NOT NULL,
    prenom_d character varying(255) NOT NULL,
    adresse_d character varying(255) NOT NULL,
    date_d date NOT NULL,
    sexe_d character varying(255) NOT NULL,
    groupe_d character varying(255) NOT NULL,
    rhesus_d character varying(255) NOT NULL
);


ALTER TABLE public.donneurs OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16931)
-- Name: donneurs_code_d_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.donneurs_code_d_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donneurs_code_d_seq OWNER TO postgres;

--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 202
-- Name: donneurs_code_d_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.donneurs_code_d_seq OWNED BY public.donneurs.code_d;


--
-- TOC entry 205 (class 1259 OID 16944)
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    code_pt integer NOT NULL,
    nom_pt character varying(255) NOT NULL,
    prenom_pt character varying(255) NOT NULL,
    adresse_pt character varying(255) NOT NULL,
    sexe_pt character varying(255) NOT NULL
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16942)
-- Name: patients_code_pt_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_code_pt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patients_code_pt_seq OWNER TO postgres;

--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 204
-- Name: patients_code_pt_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_code_pt_seq OWNED BY public.patients.code_pt;


--
-- TOC entry 218 (class 1259 OID 17007)
-- Name: prelevements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prelevements (
    code_p integer NOT NULL,
    lieu_p character varying(255) NOT NULL,
    date_p date NOT NULL,
    code_d integer NOT NULL,
    code_tech integer NOT NULL,
    code_pt integer NOT NULL
);


ALTER TABLE public.prelevements OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17001)
-- Name: prelevements_code_d_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prelevements_code_d_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prelevements_code_d_seq OWNER TO postgres;

--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 215
-- Name: prelevements_code_d_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prelevements_code_d_seq OWNED BY public.prelevements.code_d;


--
-- TOC entry 214 (class 1259 OID 16999)
-- Name: prelevements_code_p_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prelevements_code_p_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prelevements_code_p_seq OWNER TO postgres;

--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 214
-- Name: prelevements_code_p_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prelevements_code_p_seq OWNED BY public.prelevements.code_p;


--
-- TOC entry 217 (class 1259 OID 17005)
-- Name: prelevements_code_pt_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prelevements_code_pt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prelevements_code_pt_seq OWNER TO postgres;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 217
-- Name: prelevements_code_pt_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prelevements_code_pt_seq OWNED BY public.prelevements.code_pt;


--
-- TOC entry 216 (class 1259 OID 17003)
-- Name: prelevements_code_tech_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prelevements_code_tech_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prelevements_code_tech_seq OWNER TO postgres;

--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 216
-- Name: prelevements_code_tech_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prelevements_code_tech_seq OWNED BY public.prelevements.code_tech;


--
-- TOC entry 213 (class 1259 OID 16987)
-- Name: resultats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resultats (
    code_r integer NOT NULL,
    date_r date NOT NULL,
    code_tech integer NOT NULL
);


ALTER TABLE public.resultats OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16983)
-- Name: resultats_code_r_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resultats_code_r_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultats_code_r_seq OWNER TO postgres;

--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 211
-- Name: resultats_code_r_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resultats_code_r_seq OWNED BY public.resultats.code_r;


--
-- TOC entry 212 (class 1259 OID 16985)
-- Name: resultats_code_tech_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resultats_code_tech_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultats_code_tech_seq OWNER TO postgres;

--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 212
-- Name: resultats_code_tech_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resultats_code_tech_seq OWNED BY public.resultats.code_tech;


--
-- TOC entry 207 (class 1259 OID 16955)
-- Name: techniciens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.techniciens (
    code_tech integer NOT NULL,
    matricule_tech character varying(255) NOT NULL,
    nom_tech character varying(255) NOT NULL,
    prenom_tech character varying(255) NOT NULL,
    fonction_tech character varying(255) NOT NULL
);


ALTER TABLE public.techniciens OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16953)
-- Name: techniciens_code_tech_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.techniciens_code_tech_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.techniciens_code_tech_seq OWNER TO postgres;

--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 206
-- Name: techniciens_code_tech_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.techniciens_code_tech_seq OWNED BY public.techniciens.code_tech;


--
-- TOC entry 223 (class 1259 OID 17039)
-- Name: tests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tests (
    code_t integer NOT NULL,
    resultat_t character varying(255) NOT NULL,
    date_t date NOT NULL,
    code_don integer NOT NULL,
    code_tech integer NOT NULL,
    code_pt integer NOT NULL
);


ALTER TABLE public.tests OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17033)
-- Name: tests_code_don_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_code_don_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_code_don_seq OWNER TO postgres;

--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 220
-- Name: tests_code_don_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_code_don_seq OWNED BY public.tests.code_don;


--
-- TOC entry 222 (class 1259 OID 17037)
-- Name: tests_code_pt_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_code_pt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_code_pt_seq OWNER TO postgres;

--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 222
-- Name: tests_code_pt_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_code_pt_seq OWNED BY public.tests.code_pt;


--
-- TOC entry 219 (class 1259 OID 17031)
-- Name: tests_code_t_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_code_t_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_code_t_seq OWNER TO postgres;

--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 219
-- Name: tests_code_t_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_code_t_seq OWNED BY public.tests.code_t;


--
-- TOC entry 221 (class 1259 OID 17035)
-- Name: tests_code_tech_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_code_tech_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_code_tech_seq OWNER TO postgres;

--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 221
-- Name: tests_code_tech_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_code_tech_seq OWNED BY public.tests.code_tech;


--
-- TOC entry 2899 (class 2604 OID 16971)
-- Name: don_sangs code_don; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_sangs ALTER COLUMN code_don SET DEFAULT nextval('public.don_sangs_code_don_seq'::regclass);


--
-- TOC entry 2900 (class 2604 OID 16972)
-- Name: don_sangs code_d; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_sangs ALTER COLUMN code_d SET DEFAULT nextval('public.don_sangs_code_d_seq'::regclass);


--
-- TOC entry 2896 (class 2604 OID 16936)
-- Name: donneurs code_d; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donneurs ALTER COLUMN code_d SET DEFAULT nextval('public.donneurs_code_d_seq'::regclass);


--
-- TOC entry 2897 (class 2604 OID 16947)
-- Name: patients code_pt; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN code_pt SET DEFAULT nextval('public.patients_code_pt_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 17010)
-- Name: prelevements code_p; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements ALTER COLUMN code_p SET DEFAULT nextval('public.prelevements_code_p_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 17011)
-- Name: prelevements code_d; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements ALTER COLUMN code_d SET DEFAULT nextval('public.prelevements_code_d_seq'::regclass);


--
-- TOC entry 2905 (class 2604 OID 17012)
-- Name: prelevements code_tech; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements ALTER COLUMN code_tech SET DEFAULT nextval('public.prelevements_code_tech_seq'::regclass);


--
-- TOC entry 2906 (class 2604 OID 17013)
-- Name: prelevements code_pt; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements ALTER COLUMN code_pt SET DEFAULT nextval('public.prelevements_code_pt_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 16990)
-- Name: resultats code_r; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultats ALTER COLUMN code_r SET DEFAULT nextval('public.resultats_code_r_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 16991)
-- Name: resultats code_tech; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultats ALTER COLUMN code_tech SET DEFAULT nextval('public.resultats_code_tech_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 16958)
-- Name: techniciens code_tech; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.techniciens ALTER COLUMN code_tech SET DEFAULT nextval('public.techniciens_code_tech_seq'::regclass);


--
-- TOC entry 2907 (class 2604 OID 17042)
-- Name: tests code_t; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests ALTER COLUMN code_t SET DEFAULT nextval('public.tests_code_t_seq'::regclass);


--
-- TOC entry 2908 (class 2604 OID 17043)
-- Name: tests code_don; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests ALTER COLUMN code_don SET DEFAULT nextval('public.tests_code_don_seq'::regclass);


--
-- TOC entry 2909 (class 2604 OID 17044)
-- Name: tests code_tech; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests ALTER COLUMN code_tech SET DEFAULT nextval('public.tests_code_tech_seq'::regclass);


--
-- TOC entry 2910 (class 2604 OID 17045)
-- Name: tests code_pt; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests ALTER COLUMN code_pt SET DEFAULT nextval('public.tests_code_pt_seq'::regclass);


--
-- TOC entry 3067 (class 0 OID 16968)
-- Dependencies: 210
-- Data for Name: don_sangs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.don_sangs (code_don, qte_don, lieu_don, date_don, code_d) FROM stdin;
2	2 poche	salle de prélèvement	2022-01-02	2
3	3 poche	salle de prélèvement	2022-01-03	3
4	4 poche	salle de prélèvement	2022-01-04	4
5	5 poche	salle de prélèvement	2022-01-05	5
6	6 poche	salle de prélèvement	2022-01-06	6
7	7 poche	salle de prélèvement	2022-01-07	7
8	8 poche	salle de prélèvement	2022-01-08	8
9	1 poche	salle de prélèvement	2022-01-09	9
10	2 poche	salle de prélèvement	2022-01-10	10
11	3 poche	salle de prélèvement	2022-01-11	11
12	4 poche	salle de prélèvement	2022-01-12	12
13	1 poche	salle de prélèvement	2022-01-13	13
14	1 poche	salle de prélèvement	2022-01-14	14
15	1 poche	salle de prélèvement	2022-01-15	15
16	1 poche	salle de prélèvement	2022-01-16	16
17	1 poche	salle de prélèvement	2022-01-17	17
18	2 poche	salle de prélèvement	2022-01-18	18
19	1 poche	salle de prélèvement	2022-01-19	19
20	2 poche	salle de prélèvement	2022-01-20	20
21	3 poche	salle de prélèvement	2022-01-21	21
22	4 poche	salle de prélèvement	2022-01-22	22
23	1 poche	salle de prélèvement	2022-01-23	23
24	1 poche	salle de prélèvement	2022-01-24	24
25	1 poche	salle de prélèvement	2022-01-25	25
26	1 poche	salle de prélèvement	2022-01-26	26
27	1 poche	salle de prélèvement	2022-01-27	27
28	1 poche	salle de prélèvement	2022-01-28	28
29	1 poche	salle de prélèvement	2022-01-29	29
30	2 poche	salle de prélèvement	2022-01-30	30
31	2 poche	salle de prélèvement	2022-01-31	31
32	2 poche	salle de prélèvement	2022-02-01	32
33	2 poche	salle de prélèvement	2022-02-02	33
34	2 poche	salle de prélèvement	2022-02-03	34
35	2 poche	salle de prélèvement	2022-02-04	35
36	2 poche	salle de prélèvement	2022-02-05	36
37	2 poche	salle de prélèvement	2022-02-06	37
38	2 poche	salle de prélèvement	2022-02-07	38
39	2 poche	salle de prélèvement	2022-02-08	39
40	2 poche	salle de prélèvement	2022-02-09	40
41	2 poche	salle de prélèvement	2022-02-10	41
42	1 poche	salle de prélèvement	2022-02-11	42
43	1 poche	salle de prélèvement	2022-02-12	43
44	1 poche	salle de prélèvement	2022-02-13	44
45	1 poche	salle de prélèvement	2022-02-14	45
46	1 poche	salle de prélèvement	2022-02-15	46
47	1 poche	salle de prélèvement	2022-02-16	47
48	1 poche	salle de prélèvement	2022-02-17	48
49	1 poche	salle de prélèvement	2022-02-18	49
50	2 poche	salle de prélèvement	2022-02-19	50
51	1 poche	salle de prélèvement	2022-02-20	51
52	2 poche	salle de prélèvement	2022-02-21	52
53	3 poche	salle de prélèvement	2022-02-22	53
54	4 poche	salle de prélèvement	2022-02-23	54
55	5 poche	salle de prélèvement	2022-02-24	55
56	2 poche	salle de prélèvement	2022-02-25	56
57	2 poche	salle de prélèvement	2022-02-26	57
58	1 poche	salle de prélèvement	2022-02-27	58
59	1 poche	salle de prélèvement	2022-02-28	59
60	1 poche	salle de prélèvement	2022-03-01	60
61	1 poche	salle de prélèvement	2022-03-02	61
62	1 poche	salle de prélèvement	2022-03-03	62
63	1 poche	salle de prélèvement	2022-03-04	63
64	1 poche	salle de prélèvement	2022-03-05	64
65	1 poche	salle de prélèvement	2022-03-06	65
66	2 poche	salle de prélèvement	2022-03-07	66
67	2 poche	salle de prélèvement	2022-03-08	67
68	2 poche	salle de prélèvement	2022-03-09	68
69	2 poche	salle de prélèvement	2022-03-10	69
70	2 poche	salle de prélèvement	2022-03-11	70
71	2 poche	salle de prélèvement	2022-03-12	71
72	2 poche	salle de prélèvement	2022-03-13	72
73	2 poche	salle de prélèvement	2022-03-14	73
74	2 poche	salle de prélèvement	2022-03-15	74
75	2 poche	salle de prélèvement	2022-03-16	75
76	2 poche	salle de prélèvement	2022-03-17	76
77	2 poche	salle de prélèvement	2022-03-18	77
78	1 poche	salle de prélèvement	2022-03-19	78
79	1 poche	salle de prélèvement	2022-03-20	79
80	1 poche	salle de prélèvement	2022-03-21	80
81	1 poche	salle de prélèvement	2022-03-22	81
82	1 poche	salle de prélèvement	2022-03-23	82
83	1 poche	salle de prélèvement	2022-03-24	83
84	1 poche	salle de prélèvement	2022-03-25	84
85	1 poche	salle de prélèvement	2022-03-26	85
86	2 poche	salle de prélèvement	2022-03-27	86
87	2 poche	salle de prélèvement	2022-03-28	87
88	2 poche	salle de prélèvement	2022-03-29	88
89	2 poche	salle de prélèvement	2022-03-30	89
90	2 poche	salle de prélèvement	2022-03-31	90
91	2 poche	salle de prélèvement	2022-04-01	91
92	1 poche	salle de prélèvement	2022-04-02	92
93	1 poche	salle de prélèvement	2022-04-03	93
94	1 poche	salle de prélèvement	2022-04-04	94
95	1 poche	salle de prélèvement	2022-04-05	95
96	1 poche	salle de prélèvement	2022-04-06	96
97	2 poche	salle de prélèvement	2022-04-07	97
98	2 poche	salle de prélèvement	2022-04-08	98
99	2 poche	salle de prélèvement	2022-04-09	99
100	1 poche	salle de prélèvement	2022-04-10	100
\.


--
-- TOC entry 3060 (class 0 OID 16933)
-- Dependencies: 203
-- Data for Name: donneurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.donneurs (code_d, num_nni, nom_d, prenom_d, adresse_d, date_d, sexe_d, groupe_d, rhesus_d) FROM stdin;
2	36987-1215	Mayor A	Chantler	79 Carey Drive	2021-10-03	Agender	B	 positif
3	36987-2971	Matti	Veneur	0 Fair Oaks Court	2021-10-04	Male	A	 positif
4	0904-5880	Garth	Henden	8 Rutledge Crossing	2021-10-05	Male	A	 positif
5	64117-963	Katrinka	Whittlesey	3747 Lerdahl Place	2021-10-06	Female	A	 positif
6	10096-0268	Vanessa	Mathonnet	4 Ruskin Alley	2021-10-07	Female	B	 positif
7	55154-8250	Ashlen	Cartmer	63807 Roth Place	2021-10-08	Male	A	 positif
8	0069-0136	Laural	Bingall	913 Karstens Alley	2021-10-09	Female	A	 positif
9	53808-0230	Duane	Heinonen	40 Service Junction	2021-10-10	Female	A	 positif
10	55111-695	Pattin	Weekley	9226 Glendale Road	2021-10-11	Male	A	 positif
11	55316-243	Gayleen	Reddel	0 Johnson Place	2021-10-12	Female	B	 positif
12	0032-1206	Onida	Station	22150 Lukken Place	2021-10-13	Female	B	 positif
13	17089-378	Nixie	Menco	79 Troy Center	2021-10-14	Female	B	 positif
14	59351-0319	Jenica	Troughton	330 Muir Drive	2021-10-15	Male	B	 positif
15	46122-142	Olly	Solleme	8238 Petterle Road	2021-10-16	Female	A	 positif
16	58142-7115	Ariel	Ivanishin	5221 Schurz Parkway	2021-10-17	Female	B	 positif
17	49781-048	Valle	Pennino	07900 Laurel Plaza	2021-10-18	Male	B	 positif
18	68001-214	Minda	Brannigan	3837 Carioca Plaza	2021-10-19	Female	B	 positif
19	49947-001	Kirbee	Cavie	9 Ryan Trail	2021-10-20	Female	B	 positif
20	25021-301	Rivy	Woodard	88 Hollow Ridge Place	2021-10-21	Male	O	 positif
21	0641-6070	Ainslee	Wanjek	93 Loftsgordon Street	2021-10-22	Male	B	 positif
22	57287-100	Zabrina	Rohloff	7829 Milwaukee Place	2021-10-23	Male	B	 positif
23	41167-0243	Frans	Senior	23844 Fuller Place	2021-10-24	Male	B	 positif
24	54868-5456	Reese	Mechic	1 Sage Pass	2021-10-25	Female	O	 positif
25	49348-890	Abbe	Sherebrook	9247 Pleasure Crossing	2021-10-26	Male	B	 positif
26	60881-555	Fin	Tomasicchio	457 Delaware Hill	2021-10-27	Agender	O	 positif
27	65517-2021	Salomone	Hedgeman	8519 Steensland Lane	2021-10-28	Male	O	 positif
28	64725-0319	Sholom	Khilkov	16052 Tony Court	2021-10-29	Male	O	 positif
29	76335-006	Crawford	Huge	9 Fair Oaks Parkway	2021-10-30	Female	O	 positif
30	63739-553	Caro	Legendre	63 Bunting Road	2021-10-31	Female	O	 positif
31	11410-309	Gualterio	Oluwatoyin	2299 Browning Hill	2021-11-01	Male	O	 positif
32	58118-0020	Ed	FitzAlan	24 Barnett Center	2021-11-02	Female	O	 positif
33	68084-458	Chelsae	Lowrey	9 Roth Parkway	2021-11-03	Female	O	 positif
34	0615-7530	Tildy	Moatt	28379 Barby Point	2021-11-04	Male	A	 positif
35	56104-031	Rubia	Ramelet	59 Mifflin Court	2021-11-05	Female	B	 positif
36	36800-068	Philippe	Avory	14 Coolidge Point	2021-11-06	Female	O	 positif
37	76020-300	Melli	Soonhouse	7 North Circle	2021-11-07	Male	O	 positif
38	57520-0774	Thaxter	Curless	51444 Namekagon Street	2021-11-08	Female	O	 positif
39	51991-649	Joey	Pottell	62225 Toban Lane	2021-11-09	Male	O	 positif
40	0037-2250	Roobbie	Hevey	4277 Mockingbird Terrace	2021-11-10	Male	B	 positif
41	55154-2084	Roxanna	Wingfield	68 Esch Parkway	2021-11-11	Male	O	 positif
42	52959-662	Lowell	Westell	6798 Declaration Parkway	2021-11-12	Male	O	 positif
43	13668-158	Mal	Parfett	28919 Golf Course Alley	2021-11-13	Male	B	 positif
44	68084-763	Bret	McMorran	12506 Forest Run Street	2021-11-14	Male	O	 positif
45	55714-4416	Helenka	Glass	68 Fairview Center	2021-11-15	Male	O	 positif
46	59726-120	Evered	Shoebridge	87 Dryden Crossing	2021-11-16	Female	O	 positif
47	55289-944	Clarie	Binden	12 Hudson Point	2021-11-17	Male	O	 positif
48	24653-286	Rinaldo	Sparwell	423 Green Road	2021-11-18	Male	B	 positif
49	50458-490	Sarene	L' Anglois	9814 Waxwing Parkway	2021-11-19	Male	O	 positif
50	13537-520	Marvin	Cheal	52 Village Parkway	2021-11-20	Genderqueer	O	 positif
51	46672-036	Helen	Stripling	7653 Ohio Pass	2021-11-21	Female	O	 positif
52	54868-6103	Shay	Bonass	96 Stephen Circle	2021-11-22	Female	O	 positif
53	55711-064	Valaree	Dutnall	38804 Basil Place	2021-11-23	Male	O	 positif
54	64578-0106	Albina	Devo	327 New Castle Way	2021-11-24	Female	O	 négatif
55	67046-925	Orly	Lebarree	4 Grover Terrace	2021-11-25	Male	O	 négatif
56	54473-230	Kimmie	Timmis	523 Lerdahl Center	2021-11-26	Male	O	 négatif
57	0781-6156	Pail	Pratley	28 Park Meadow Point	2021-11-27	Male	O	 négatif
58	0363-0340	Evangeline	Folder	1 Michigan Street	2021-11-28	Female	O	 négatif
59	53808-0962	Isacco	Kaser	91994 Ludington Crossing	2021-11-29	Male	O	 négatif
60	60512-6537	Boycey	Agg	0756 Fallview Road	2021-11-30	Female	O	 négatif
61	16714-352	Billi	Simpkins	32200 Shasta Street	2021-12-01	Female	O	 négatif
62	11673-288	Tome	Bowler	4585 Grayhawk Point	2021-12-02	Male	O	 négatif
63	10096-0158	Dell	Kalvin	7 Mallard Circle	2021-12-03	Male	O	 négatif
64	55289-067	Marlo	Cliff	7 Hoepker Crossing	2021-12-04	Female	O	 négatif
65	43353-536	Lila	Gandey	8888 Grover Avenue	2021-12-05	Female	O	 négatif
66	49825-112	Alexis	Witheridge	3 Michigan Junction	2021-12-06	Male	O	 négatif
67	16714-653	Thorpe	Wadwell	14 Loomis Plaza	2021-12-07	Male	O	 négatif
68	63094-0801	Anastassia	Ortiga	91170 Schurz Court	2021-12-08	Female	O	 négatif
69	53808-0654	Andre	Bourgeois	461 Sunbrook Park	2021-12-09	Female	O	 négatif
70	0268-1168	Joel	Bellerby	113 Old Shore Park	2021-12-10	Female	O	 négatif
71	57664-102	Perry	M'Quharg	874 Basil Crossing	2021-12-11	Male	O	 négatif
72	17518-002	Odele	Lilliman	58149 Warner Plaza	2021-12-12	Female	O	 négatif
73	43853-0005	Paxton	Escott	58459 Gina Point	2021-12-13	Male	O	 négatif
74	65841-748	Lynea	Hebard	344 Kinsman Circle	2021-12-14	Female	O	 négatif
75	62756-513	Ingar	Cullinan	350 Morningstar Road	2021-12-15	Female	O	 négatif
76	43455-0005	Norton	Sarton	0415 Redwing Road	2021-12-16	Male	O	 négatif
77	16729-089	Dewain	Klasen	6608 Sunbrook Junction	2021-12-17	Female	O	 négatif
78	16590-163	Tiff	Gallard	5111 Larry Crossing	2021-12-18	Male	O	 négatif
79	59779-993	Candis	Chiese	69280 Texas Trail	2021-12-19	Female	O	 négatif
80	36987-2879	Frieda	Clemot	3 Sutherland Circle	2021-12-20	Male	AB	 négatif
81	14783-081	Randell	Jewel	19810 Crest Line Pass	2021-12-21	Male	AB	 négatif
82	43419-339	Linda	Woollcott	74 Cascade Drive	2021-12-22	Female	AB	 négatif
83	0187-2200	Ilaire	Gluyas	1896 Lillian Point	2021-12-23	Male	AB	 négatif
84	43742-0456	Allix	Hawkings	1410 Lindbergh Junction	2021-12-24	Agender	AB	 négatif
85	41163-432	Valery	Muckian	182 New Castle Court	2021-12-25	Male	AB	 négatif
86	30727-300	Arch	Kondratovich	2366 Mallard Road	2021-12-26	Female	AB	 négatif
87	43269-613	Micky	Lorand	264 Badeau Pass	2021-12-27	Female	AB	 négatif
88	68788-9904	Emogene	Yourell	7 Atwood Lane	2021-12-28	Female	AB	 négatif
89	68016-282	Leland	Lambart	57496 Tennessee Drive	2021-12-29	Male	B	 négatif
90	64725-0041	Jarred	Donet	7530 Alpine Terrace	2021-12-30	Male	B	 négatif
91	41520-343	Nap	Yeardley	8578 Farmco Place	2021-12-31	Male	B	 négatif
92	11673-428	Averell	Goane	13312 Scoville Point	2022-01-01	Female	B	 négatif
93	48951-1001	Zeke	Dukesbury	096 Brickson Park Court	2022-01-02	Male	B	 négatif
94	60637-001	Farlay	Derisley	53012 Hanson Alley	2022-01-03	Male	B	 négatif
95	54569-1023	Catlin	Blaksland	8571 Coleman Street	2022-01-04	Polygender	A	 négatif
96	54868-4973	Alfy	Burland	9137 Corry Junction	2022-01-05	Female	A	 négatif
97	13537-461	Tabbitha	Mease	072 Chive Alley	2022-01-06	Male	A	 négatif
98	40046-0064	Baudoin	Grover	443 Kinsman Junction	2022-01-07	Male	A	 négatif
99	62011-0226	Isabelle	Van Hove	026 Summerview Way	2022-01-08	Male	A	 négatif
100	54973-7511	Sax	Pallister	8027 Corben Parkway	2022-01-09	Female	A	 négatif
\.


--
-- TOC entry 3062 (class 0 OID 16944)
-- Dependencies: 205
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (code_pt, nom_pt, prenom_pt, adresse_pt, sexe_pt) FROM stdin;
1	Solène	Patman	5 Ronald Regan Center	Female
2	Maëlys	Hane	0544 West Street	Female
3	Geneviève	Mundy	10 International Lane	Male
4	Ophélie	Wickenden	5 Corben Center	Female
5	Michèle	Prangnell	37883 Garrison Plaza	Male
6	Marlène	Gurr	4138 Hagan Lane	Female
7	Vérane	Tilberry	86 Bunting Junction	Genderqueer
8	Thérèse	Simes	63 Springview Park	Male
9	Judicaël	Osgar	6 Golf Course Road	Male
10	Nadège	Guidotti	57 Schiller Crossing	Male
11	Maïté	Davitt	8070 Erie Alley	Male
12	Nadège	Arnet	553 Havey Lane	Female
13	Noëlla	Hedges	05978 Lerdahl Street	Male
14	Måns	Tenman	15148 Acker Road	Male
15	Maëlann	Barlas	407 Milwaukee Point	Female
16	Aí	Sugar	100 Jackson Place	Male
17	Frédérique	Ezzle	12694 Fieldstone Crossing	Female
18	Maïté	Dyshart	7 Bartillon Drive	Male
19	Pénélope	Blackster	00732 Bluestem Alley	Female
20	Méline	Luno	3266 Judy Way	Male
21	Lèi	Dunston	513 Onsgard Hill	Female
22	Maéna	Burnside	0 Derek Parkway	Male
23	Léane	De Bellis	8 Dahle Parkway	Male
24	Loïca	Cossum	312 Bowman Court	Bigender
25	Nadège	Raddon	65 Hazelcrest Street	Male
26	Loïc	Bowart	689 Ridgeway Trail	Female
27	Lèi	Beddo	942 Barby Court	Female
28	Mélinda	Windybank	1 Dexter Drive	Female
29	Noémie	Canavan	43 Schlimgen Plaza	Female
30	Estève	Bazylets	1 Hovde Pass	Female
31	Mélinda	Ryal	6162 Westend Circle	Male
32	Styrbjörn	Hainge	270 Ruskin Avenue	Female
33	Erwéi	Euplate	98 Almo Circle	Agender
34	Cécile	Denziloe	65434 Sugar Drive	Polygender
35	Örjan	Imlach	57652 Fordem Terrace	Female
36	Maëlla	Mougenel	8383 Schurz Parkway	Non-binary
37	Géraldine	Bizzey	55 Red Cloud Place	Male
38	Océanne	Halesworth	43987 Dorton Crossing	Female
39	Lucrèce	Billham	0321 Delaware Pass	Female
40	Gérald	Blick	3 Westerfield Terrace	Female
41	Vénus	Wale	6 Northwestern Avenue	Female
42	Cloé	Tozer	523 Schmedeman Hill	Male
43	Fèi	Cohn	935 Crowley Circle	Male
44	Andréanne	Alker	91 Mccormick Road	Male
45	Solène	Douche	9 Fordem Crossing	Female
46	Nuó	Saltrese	08 Shelley Road	Male
47	Esbjörn	Sysland	89896 Merry Avenue	Male
48	Frédérique	Graben	4 Mariners Cove Way	Male
49	Inès	Derrick	5888 Surrey Terrace	Male
50	Céline	Desport	02706 Schurz Road	Male
51	André	Harle	38542 Anderson Parkway	Male
52	Naéva	Onions	126 3rd Hill	Male
53	Maëlla	Morison	435 American Crossing	Male
54	Åsa	Ribey	81849 Forster Drive	Female
55	Naéva	MacElane	76022 Glendale Drive	Male
56	Aurélie	Goodley	4824 Lighthouse Bay Park	Female
57	Gaëlle	Farn	22 Schmedeman Circle	Female
58	Anaé	Currell	484 Dahle Court	Female
59	Ophélie	Beament	125 Hooker Place	Male
60	Eloïse	Welch	8748 Vermont Avenue	Male
61	Chloé	Josovich	692 Moose Pass	Female
62	Daphnée	Gaythor	34544 Farwell Road	Male
63	Nélie	Patching	320 Loomis Plaza	Male
64	Léandre	Cutchie	9544 Mccormick Parkway	Female
65	Clémence	McTear	36082 Carberry Junction	Male
66	Magdalène	Kippax	78110 5th Place	Male
67	Desirée	Cortez	06028 Gateway Hill	Female
68	Laïla	Joseph	67 Fisk Plaza	Female
69	Torbjörn	Lewsam	21 Scoville Point	Genderqueer
70	Märta	Neeves	0 Thompson Terrace	Female
71	Thérèsa	Clerk	56 Evergreen Park	Male
72	Léonore	Dohms	3 Buhler Road	Male
73	Céline	Ivanichev	005 Mifflin Plaza	Genderfluid
74	Tán	Slessor	9027 Maple Wood Circle	Female
75	Måns	Kernar	823 Luster Parkway	Male
76	Stévina	Ewing	394 Fieldstone Park	Female
77	Börje	Lehon	7154 Becker Terrace	Male
78	Maïté	Goodlet	6 Ramsey Avenue	Male
79	Cinéma	Dalling	7 Oneill Plaza	Male
80	Yóu	Stoffers	661 Fieldstone Pass	Female
81	Rébecca	Hambly	20 Victoria Trail	Male
82	Åsa	Ascraft	3375 Bultman Crossing	Male
83	André	Schimank	14 Armistice Center	Female
84	Léane	Longhi	464 Stone Corner Point	Female
85	Yú	Nolleth	3 Talisman Way	Female
86	Dorothée	Scarlan	6 Florence Circle	Female
87	Réservés	Archbold	797 Summit Point	Male
88	Félicie	Klimkowski	7260 Anhalt Pass	Bigender
89	Gaëlle	Kunze	426 Moulton Center	Female
90	Anaëlle	Tollerfield	63724 8th Trail	Female
91	Léa	Strainge	2 Hanson Circle	Male
92	Pål	Flagg	79 Melby Crossing	Male
93	Noëlla	Christoffels	3 Old Gate Pass	Male
94	Clémence	Grumbridge	739 Nelson Place	Male
95	Jú	Birtwistle	9898 Graedel Street	Female
96	Tán	Harvison	00 Katie Avenue	Female
97	Mylène	Kulicke	6 Fulton Point	Female
98	Fèi	Tattersdill	6083 Petterle Terrace	Polygender
99	Maëlle	Spataro	65975 Northwestern Alley	Male
100	Cécilia	Squire	47358 High Crossing Avenue	Female
\.


--
-- TOC entry 3075 (class 0 OID 17007)
-- Dependencies: 218
-- Data for Name: prelevements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prelevements (code_p, lieu_p, date_p, code_d, code_tech, code_pt) FROM stdin;
2	labo	2022-01-01	2	2	2
3	labo	2022-01-02	3	3	3
4	labo	2022-01-03	4	4	4
5	labo	2022-01-04	5	5	5
6	labo	2022-01-05	6	6	6
7	labo	2022-01-06	7	7	7
8	labo	2022-01-07	8	8	8
9	labo	2022-01-08	9	9	9
10	labo	2022-01-09	10	10	10
11	labo	2022-01-10	11	11	11
12	labo	2022-01-11	12	12	12
13	labo	2022-01-12	13	13	13
14	labo	2022-01-13	14	14	14
15	labo	2022-01-14	15	15	15
16	labo	2022-01-15	16	16	16
17	labo	2022-01-16	17	17	17
18	labo	2022-01-17	18	18	18
19	labo	2022-01-18	19	19	19
20	labo	2022-01-19	20	20	20
21	labo	2022-01-20	21	21	21
22	labo	2022-01-21	22	22	22
23	labo	2022-01-22	23	23	23
24	labo	2022-01-23	24	24	24
25	labo	2022-01-24	25	25	25
26	labo	2022-01-25	26	26	26
27	labo	2022-01-26	27	27	27
28	labo	2022-01-27	28	28	28
29	labo	2022-01-28	29	29	29
30	labo	2022-01-29	30	30	30
31	labo	2022-01-30	31	31	31
32	labo	2022-01-31	32	32	32
33	labo	2022-02-01	33	33	33
34	labo	2022-02-02	34	34	34
35	labo	2022-02-03	35	35	35
36	labo	2022-02-04	36	36	36
37	labo	2022-02-05	37	37	37
38	labo	2022-02-06	38	38	38
39	labo	2022-02-07	39	39	39
40	labo	2022-02-08	40	40	40
41	labo	2022-02-09	41	41	41
42	labo	2022-02-10	42	42	42
43	labo	2022-02-11	43	43	43
44	labo	2022-02-12	44	44	44
45	labo	2022-02-13	45	45	45
46	labo	2022-02-14	46	46	46
47	labo	2022-02-15	47	47	47
48	labo	2022-02-16	48	48	48
49	labo	2022-02-17	49	49	49
50	labo	2022-02-18	50	50	50
51	labo	2022-02-19	51	51	51
52	labo	2022-02-20	52	52	52
53	labo	2022-02-21	53	53	53
54	labo	2022-02-22	54	54	54
55	labo	2022-02-23	55	55	55
56	labo	2022-02-24	56	56	56
57	labo	2022-02-25	57	57	57
58	labo	2022-02-26	58	58	58
59	labo	2022-02-27	59	59	59
60	labo	2022-02-28	60	60	60
61	labo	2022-03-01	61	61	61
62	labo	2022-03-02	62	62	62
63	labo	2022-03-03	63	63	63
64	labo	2022-03-04	64	64	64
65	labo	2022-03-05	65	65	65
66	labo	2022-03-06	66	66	66
67	labo	2022-03-07	67	67	67
68	labo	2022-03-08	68	68	68
69	labo	2022-03-09	69	69	69
70	labo	2022-03-10	70	70	70
71	labo	2022-03-11	71	71	71
72	labo	2022-03-12	72	72	72
73	labo	2022-03-13	73	73	73
74	labo	2022-03-14	74	74	74
75	labo	2022-03-15	75	75	75
76	labo	2022-03-16	76	76	76
77	labo	2022-03-17	77	77	77
78	labo	2022-03-18	78	78	78
79	labo	2022-03-19	79	79	79
80	labo	2022-03-20	80	80	80
81	labo	2022-03-21	81	81	81
82	labo	2022-03-22	82	82	82
83	labo	2022-03-23	83	83	83
84	labo	2022-03-24	84	84	84
85	labo	2022-03-25	85	85	85
86	labo	2022-03-26	86	86	86
87	labo	2022-03-27	87	87	87
88	labo	2022-03-28	88	88	88
89	labo	2022-03-29	89	89	89
90	labo	2022-03-30	90	90	90
91	labo	2022-03-31	91	91	91
92	labo	2022-04-01	92	92	92
93	labo	2022-04-02	93	93	93
94	labo	2022-04-03	94	94	94
95	labo	2022-04-04	95	95	95
96	labo	2022-04-05	96	96	96
97	labo	2022-04-06	97	97	97
98	labo	2022-04-07	98	98	98
99	labo	2022-04-08	99	99	99
100	labo	2022-04-09	100	100	100
\.


--
-- TOC entry 3070 (class 0 OID 16987)
-- Dependencies: 213
-- Data for Name: resultats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resultats (code_r, date_r, code_tech) FROM stdin;
2	2021-11-09	2
3	2021-11-10	3
4	2021-11-11	4
5	2021-11-12	5
6	2021-11-13	6
7	2021-11-14	7
8	2021-11-15	8
9	2021-11-16	9
10	2021-11-17	10
11	2021-11-18	11
12	2021-11-19	12
13	2021-11-20	13
14	2021-11-21	14
15	2021-11-22	15
16	2021-11-23	16
17	2021-11-24	17
18	2021-11-25	18
19	2021-11-26	19
20	2021-11-27	20
21	2021-11-28	21
22	2021-11-29	22
23	2021-11-30	23
24	2021-12-01	24
25	2021-12-02	25
26	2021-12-03	26
27	2021-12-04	27
28	2021-12-05	28
29	2021-12-06	29
30	2021-12-07	30
31	2021-12-08	31
32	2021-12-09	32
33	2021-12-10	33
34	2021-12-11	34
35	2021-12-12	35
36	2021-12-13	36
37	2021-12-14	37
38	2021-12-15	38
39	2021-12-16	39
40	2021-12-17	40
41	2021-12-18	41
42	2021-12-19	42
43	2021-12-20	43
44	2021-12-21	44
45	2021-12-22	45
46	2021-12-23	46
47	2021-12-24	47
48	2021-12-25	48
49	2021-12-26	49
50	2021-12-27	50
51	2021-12-28	51
52	2021-12-29	52
53	2021-12-30	53
54	2021-12-31	54
55	2022-01-01	55
56	2022-01-02	56
57	2022-01-03	57
58	2022-01-04	58
59	2022-01-05	59
60	2022-01-06	60
61	2022-01-07	61
62	2022-01-08	62
63	2022-01-09	63
64	2022-01-10	64
65	2022-01-11	65
66	2022-01-12	66
67	2022-01-13	67
68	2022-01-14	68
69	2022-01-15	69
70	2022-01-16	70
71	2022-01-17	71
72	2022-01-18	72
73	2022-01-19	73
74	2022-01-20	74
75	2022-01-21	75
76	2022-01-22	76
77	2022-01-23	77
78	2022-01-24	78
79	2022-01-25	79
80	2022-01-26	80
81	2022-01-27	81
82	2022-01-28	82
83	2022-01-29	83
84	2022-01-30	84
85	2022-01-31	85
86	2022-02-01	86
87	2022-02-02	87
88	2022-02-03	88
89	2022-02-04	89
90	2022-02-05	90
91	2022-02-06	91
92	2022-02-07	92
93	2022-02-08	93
94	2022-02-09	94
95	2022-02-10	95
96	2022-02-11	96
97	2022-02-12	97
98	2022-02-13	98
99	2022-02-14	99
100	2022-02-15	100
\.


--
-- TOC entry 3064 (class 0 OID 16955)
-- Dependencies: 207
-- Data for Name: techniciens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.techniciens (code_tech, matricule_tech, nom_tech, prenom_tech, fonction_tech) FROM stdin;
2	59614-221	Andrée	Tibbotts	techniciens
3	59667-0060	Kallisté	Wooldridge	techniciens
4	53208-502	Torbjörn	Snoxall	techniciens
5	43269-773	Amélie	Etienne	techniciens
6	55154-4377	Félicie	Le Lievre	techniciens
7	49288-0814	Régine	Tainton	techniciens
8	59779-380	Magdalène	Montague	techniciens
9	0781-5345	Hélène	Cacacie	techniciens
10	52533-001	Anaé	Hounihan	techniciens
11	49349-826	Réservés	Burghill	techniciens supérieur
12	62175-381	Gérald	Woodworth	techniciens supérieur
13	53808-0215	Mélanie	Fardy	techniciens supérieur
14	55154-8385	Maëly	Edmons	techniciens supérieur
15	0703-4182	Cinéma	Monelle	techniciens supérieur
16	43419-749	Géraldine	Sharpless	techniciens supérieur
17	0264-7605	Geneviève	Barling	techniciens supérieur
18	0185-0065	Réjane	Teodori	techniciens supérieur
19	37000-140	Réservés	Bech	techniciens supérieur
20	57894-350	Bérénice	Pinel	techniciens supérieur
21	60429-034	Laurélie	Swindles	techniciens supérieur
22	61442-103	Maïté	Truett	techniciens supérieur
23	68382-248	Anaël	Towndrow	techniciens supérieur
24	50114-6129	Océanne	Forman	techniciens supérieur
25	59746-329	Cécilia	Pitcaithley	techniciens supérieur
26	65342-1392	Cléa	Durbin	techniciens supérieur
27	54706-0001	Renée	Jarrel	techniciens supérieur
28	62011-0120	Mélanie	Cowperthwaite	techniciens supérieur
29	42291-697	Béatrice	Spridgeon	techniciens supérieur
30	21695-854	Angèle	Heavyside	techniciens supérieur
31	55312-371	Méthode	Perrycost	techniciens
32	41520-458	Kallisté	O'Cahill	techniciens
33	65044-6587	Mélanie	Talman	techniciens
34	52125-042	Amélie	Bratton	techniciens
35	0555-0323	Anaé	Jandak	techniciens
36	0228-2637	Lóng	Maughan	techniciens
37	68084-241	Dafnée	Diano	techniciens
38	60258-801	Styrbjörn	Twede	techniciens
39	49035-017	Faîtes	MacColm	techniciens
40	0078-0562	Geneviève	Breagan	techniciens
41	0603-4209	Cunégonde	Adamsen	techniciens
42	0378-8700	Marie-thérèse	Birney	techniciens
43	67046-520	Mélia	Geany	techniciens
44	17238-193	Laïla	Stiant	techniciens
45	0573-1999	Renée	Duffit	techniciens
46	47781-264	Pò	Juarez	techniciens supérieur
47	60512-6489	Åsa	Callf	techniciens supérieur
48	0002-8797	Åslög	Mackelworth	techniciens supérieur
49	37808-188	Mélissandre	Duiguid	techniciens supérieur
50	0186-0004	Mårten	Ligoe	techniciens supérieur
51	0363-0223	Loïca	Thorneloe	techniciens supérieur
52	55239-003	Naéva	O'Fihily	techniciens supérieur
53	0093-5124	Personnalisée	Kissock	techniciens supérieur
54	67938-1000	Méthode	Yeldham	techniciens supérieur
55	0268-6218	Annotés	Boydle	techniciens supérieur
56	0007-4205	Pål	Bellew	techniciens supérieur
57	55154-4774	Björn	Kliemchen	techniciens supérieur
58	50436-9055	Loïs	Waslin	techniciens supérieur
59	54868-1890	Dà	Keveren	techniciens supérieur
60	55154-5468	Thérèsa	Adney	techniciens
61	60986-1003	Rachèle	Cordero	techniciens
62	0179-0137	Néhémie	Chatwin	techniciens
63	63629-2884	Annotés	Ilbert	techniciens
64	76331-807	Eléonore	Zuann	techniciens
65	57520-0888	Zhì	Blindt	techniciens
66	59762-3110	Wá	Beinke	techniciens
67	45802-176	Maï	Delhay	techniciens
68	65044-4825	Dà	Malenoir	techniciens
69	64942-1234	Amélie	Dust	techniciens
70	68084-735	Stévina	Fleetham	techniciens
71	29300-111	Magdalène	Mallan	techniciens
72	57687-242	Léonie	Aldam	techniciens
73	67510-0663	Béatrice	Tailby	techniciens
74	55154-2373	Lóng	Fitzsimons	techniciens
75	42291-602	Wá	Howsego	techniciens
76	49999-832	Gwenaëlle	Ohrt	techniciens
77	63981-100	Nadège	McIlvaney	techniciens
78	51079-131	Mélodie	Ellor	techniciens
79	68428-158	Mén	Evanson	techniciens spécialiste
80	62789-0001	Adélaïde	Berens	techniciens spécialiste
81	66184-141	Josée	Riach	techniciens spécialiste
82	58503-055	Maëly	Boulter	techniciens spécialiste
83	0054-8179	Ophélie	Dawbury	techniciens spécialiste
84	52584-921	Céline	Lorrie	techniciens spécialiste
85	66538-501	Bérénice	Brownscombe	techniciens spécialiste
86	52605-117	Gaïa	Shewsmith	techniciens spécialiste
87	55910-988	Salomé	Conibere	techniciens spécialiste
88	51143-066	Régine	Dallicoat	techniciens spécialiste
89	17575-006	Åsa	Attiwill	techniciens spécialiste
90	55910-666	Néhémie	Chree	techniciens spécialiste
91	64809-100	Cinéma	Wasielewicz	techniciens spécialiste
92	41250-112	Dorothée	Whear	techniciens spécialiste
93	47993-200	Marie-hélène	Govern	techniciens spécialiste
94	63730-204	Frédérique	Clemenceau	techniciens spécialiste
95	0603-3339	Adèle	Cicchinelli	techniciens supérieur
96	49614-220	Börje	Element	techniciens supérieur
97	49527-002	Eléonore	Cowperthwaite	techniciens supérieur
98	58668-2151	Clémence	Loughren	techniciens supérieur
99	44087-3322	Dorothée	Lyfe	techniciens supérieur
100	50436-3986	Maéna	Gatlin	techniciens supérieur
\.


--
-- TOC entry 3080 (class 0 OID 17039)
-- Dependencies: 223
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tests (code_t, resultat_t, date_t, code_don, code_tech, code_pt) FROM stdin;
2	HBS négatif	2012-05-21	2	2	2
3	HBS négatif	2013-05-21	3	3	3
4	HBS négatif	2014-05-21	4	4	4
5	HBS négatif	2015-05-21	5	5	5
6	HBS négatif	2016-05-21	6	6	6
7	HBS négatif	2017-05-21	7	7	7
8	HBS négatif	2018-05-21	8	8	8
9	HBS négatif	2019-05-21	9	9	9
10	HBS négatif	2020-05-21	10	10	10
11	HBS négatif	2021-05-21	11	11	11
12	HBS négatif	2022-05-21	12	12	12
13	HIV négatif	2023-05-21	13	13	13
14	HIV négatif	2024-05-21	14	14	14
15	HIV négatif	2025-05-21	15	15	15
16	HIV négatif	2026-05-21	16	16	16
17	HIV négatif	2027-05-21	17	17	17
18	HIV négatif	2028-05-21	18	18	18
19	HIV négatif	2029-05-21	19	19	19
20	HIV négatif	2030-05-21	20	20	20
21	HIV négatif	2031-05-21	21	21	21
22	HIV négatif	2001-06-21	22	22	22
23	HIV positif	2002-06-21	23	23	23
24	HIV positif	2003-06-21	24	24	24
25	HIV positif	2004-06-21	25	25	25
26	HIV positif	2005-06-21	26	26	26
27	HIV positif	2006-06-21	27	27	27
28	HIV positif	2007-06-21	28	28	28
29	HIV positif	2008-06-21	29	29	29
30	HIV positif	2009-06-21	30	30	30
31	HIV positif	2010-06-21	31	31	31
32	HIV positif	2011-06-21	32	32	32
33	HIV positif	2012-06-21	33	33	33
34	HIV positif	2013-06-21	34	34	34
35	HIV positif	2014-06-21	35	35	35
36	HIV positif	2015-06-21	36	36	36
37	HIV positif	2016-06-21	37	37	37
38	HBS négatif	2017-06-21	38	38	38
39	HBS négatif	2018-06-21	39	39	39
40	HBS négatif	2019-06-21	40	40	40
41	HBS négatif	2020-06-21	41	41	41
42	HBS négatif	2021-06-21	42	42	42
43	HBS négatif	2022-06-21	43	43	43
44	HBS négatif	2023-06-21	44	44	44
45	HBS négatif	2024-06-21	45	45	45
46	HBS négatif	2025-06-21	46	46	46
47	HBS négatif	2026-06-21	47	47	47
48	HBS négatif	2027-06-21	48	48	48
49	HBS négatif	2028-06-21	49	49	49
50	HBS négatif	2029-06-21	50	50	50
51	HBS négatif	2030-06-21	51	51	51
52	HIV positif	2001-07-21	52	52	52
53	HIV positif	2002-07-21	53	53	53
54	HIV positif	2003-07-21	54	54	54
55	HIV positif	2004-07-21	55	55	55
56	HIV positif	2005-07-21	56	56	56
57	HIV positif	2006-07-21	57	57	57
58	HIV positif	2007-07-21	58	58	58
59	HIV positif	2008-07-21	59	59	59
60	HIV positif	2009-07-21	60	60	60
61	HIV positif	2010-07-21	61	61	61
62	HIV positif	2011-07-21	62	62	62
63	HIV positif	2012-07-21	63	63	63
64	HIV positif	2013-07-21	64	64	64
65	HIV positif	2014-07-21	65	65	65
66	HIV positif	2015-07-21	66	66	66
67	HIV positif	2016-07-21	67	67	67
68	HIV positif	2017-07-21	68	68	68
69	HIV positif	2018-07-21	69	69	69
70	Bilan négatif	2019-07-21	70	70	70
71	Bilan négatif	2020-07-21	71	71	71
72	Bilan négatif	2021-07-21	72	72	72
73	Bilan négatif	2022-07-21	73	73	73
74	Bilan négatif	2023-07-21	74	74	74
75	Bilan négatif	2024-07-21	75	75	75
76	Bilan négatif	2025-07-21	76	76	76
77	Bilan négatif	2026-07-21	77	77	77
78	Bilan négatif	2027-07-21	78	78	78
79	Bilan négatif	2028-07-21	79	79	79
80	Bilan négatif	2029-07-21	80	80	80
81	Bilan négatif	2030-07-21	81	81	81
82	Bilan négatif	2031-07-21	82	82	82
83	Bilan négatif	2001-08-21	83	83	83
84	Bilan négatif	2002-08-21	84	84	84
85	Bilan négatif	2003-08-21	85	85	85
86	Bilan négatif	2004-08-21	86	86	86
87	HBS négatif	2005-08-21	87	87	87
88	HBS négatif	2006-08-21	88	88	88
89	HBS négatif	2007-08-21	89	89	89
90	HBS négatif	2008-08-21	90	90	90
91	HBS négatif	2009-08-21	91	91	91
92	HBS négatif	2010-08-21	92	92	92
93	HBS négatif	2011-08-21	93	93	93
94	HBS négatif	2012-08-21	94	94	94
95	HBS négatif	2013-08-21	95	95	95
96	HBS négatif	2014-08-21	96	96	96
97	HBS négatif	2015-08-21	97	97	97
98	HBS négatif	2016-08-21	98	98	98
99	HBS négatif	2017-08-21	99	99	99
100	HBS négatif	2018-08-21	100	100	100
\.


--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 209
-- Name: don_sangs_code_d_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.don_sangs_code_d_seq', 1, false);


--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 208
-- Name: don_sangs_code_don_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.don_sangs_code_don_seq', 1, false);


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 202
-- Name: donneurs_code_d_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.donneurs_code_d_seq', 1, false);


--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 204
-- Name: patients_code_pt_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_code_pt_seq', 1, false);


--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 215
-- Name: prelevements_code_d_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prelevements_code_d_seq', 1, false);


--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 214
-- Name: prelevements_code_p_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prelevements_code_p_seq', 1, false);


--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 217
-- Name: prelevements_code_pt_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prelevements_code_pt_seq', 1, false);


--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 216
-- Name: prelevements_code_tech_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prelevements_code_tech_seq', 1, false);


--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 211
-- Name: resultats_code_r_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultats_code_r_seq', 1, false);


--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 212
-- Name: resultats_code_tech_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultats_code_tech_seq', 1, false);


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 206
-- Name: techniciens_code_tech_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.techniciens_code_tech_seq', 1, false);


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 220
-- Name: tests_code_don_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_code_don_seq', 1, false);


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 222
-- Name: tests_code_pt_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_code_pt_seq', 1, false);


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 219
-- Name: tests_code_t_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_code_t_seq', 1, false);


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 221
-- Name: tests_code_tech_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_code_tech_seq', 1, false);


--
-- TOC entry 2918 (class 2606 OID 16977)
-- Name: don_sangs don_sangs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_sangs
    ADD CONSTRAINT don_sangs_pkey PRIMARY KEY (code_don);


--
-- TOC entry 2912 (class 2606 OID 16941)
-- Name: donneurs donneurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donneurs
    ADD CONSTRAINT donneurs_pkey PRIMARY KEY (code_d);


--
-- TOC entry 2914 (class 2606 OID 16952)
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (code_pt);


--
-- TOC entry 2922 (class 2606 OID 17015)
-- Name: prelevements prelevements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements
    ADD CONSTRAINT prelevements_pkey PRIMARY KEY (code_p);


--
-- TOC entry 2920 (class 2606 OID 16993)
-- Name: resultats resultats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultats
    ADD CONSTRAINT resultats_pkey PRIMARY KEY (code_r);


--
-- TOC entry 2916 (class 2606 OID 16963)
-- Name: techniciens techniciens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.techniciens
    ADD CONSTRAINT techniciens_pkey PRIMARY KEY (code_tech);


--
-- TOC entry 2924 (class 2606 OID 17047)
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (code_t);


--
-- TOC entry 2925 (class 2606 OID 16978)
-- Name: don_sangs don_sangs_code_d_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_sangs
    ADD CONSTRAINT don_sangs_code_d_fkey FOREIGN KEY (code_d) REFERENCES public.donneurs(code_d);


--
-- TOC entry 2927 (class 2606 OID 17016)
-- Name: prelevements prelevements_code_d_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements
    ADD CONSTRAINT prelevements_code_d_fkey FOREIGN KEY (code_d) REFERENCES public.donneurs(code_d);


--
-- TOC entry 2929 (class 2606 OID 17026)
-- Name: prelevements prelevements_code_pt_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements
    ADD CONSTRAINT prelevements_code_pt_fkey FOREIGN KEY (code_pt) REFERENCES public.patients(code_pt);


--
-- TOC entry 2928 (class 2606 OID 17021)
-- Name: prelevements prelevements_code_tech_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prelevements
    ADD CONSTRAINT prelevements_code_tech_fkey FOREIGN KEY (code_tech) REFERENCES public.techniciens(code_tech);


--
-- TOC entry 2926 (class 2606 OID 16994)
-- Name: resultats resultats_code_tech_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultats
    ADD CONSTRAINT resultats_code_tech_fkey FOREIGN KEY (code_tech) REFERENCES public.techniciens(code_tech);


--
-- TOC entry 2930 (class 2606 OID 17048)
-- Name: tests tests_code_don_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_code_don_fkey FOREIGN KEY (code_don) REFERENCES public.don_sangs(code_don);


--
-- TOC entry 2932 (class 2606 OID 17058)
-- Name: tests tests_code_pt_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_code_pt_fkey FOREIGN KEY (code_pt) REFERENCES public.patients(code_pt);


--
-- TOC entry 2931 (class 2606 OID 17053)
-- Name: tests tests_code_tech_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_code_tech_fkey FOREIGN KEY (code_tech) REFERENCES public.techniciens(code_tech);


-- Completed on 2022-03-06 10:06:27 WAT

--
-- PostgreSQL database dump complete
--

