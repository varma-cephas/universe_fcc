--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer,
    life_span integer,
    speed numeric,
    is_rotating boolean,
    life_present text,
    life_count integer NOT NULL,
    life_stock text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_life_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_life_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_life_count_seq OWNER TO freecodecamp;

--
-- Name: galaxy_life_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_life_count_seq OWNED BY public.galaxy.life_count;


--
-- Name: inhabitable_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.inhabitable_planet (
    inhabitable_planet_id integer NOT NULL,
    name character varying(30),
    description text,
    life_present text,
    life_count integer NOT NULL,
    life_stock text
);


ALTER TABLE public.inhabitable_planet OWNER TO freecodecamp;

--
-- Name: inhabitable_planet_inhabitable_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.inhabitable_planet_inhabitable_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inhabitable_planet_inhabitable_planet_id_seq OWNER TO freecodecamp;

--
-- Name: inhabitable_planet_inhabitable_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.inhabitable_planet_inhabitable_planet_id_seq OWNED BY public.inhabitable_planet.inhabitable_planet_id;


--
-- Name: inhabitable_planet_life_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.inhabitable_planet_life_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inhabitable_planet_life_count_seq OWNER TO freecodecamp;

--
-- Name: inhabitable_planet_life_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.inhabitable_planet_life_count_seq OWNED BY public.inhabitable_planet.life_count;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer,
    life_span integer,
    speed numeric(4,1),
    is_rotating boolean,
    planet_id integer NOT NULL,
    description text,
    life_present text,
    life_count integer NOT NULL,
    life_stock text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_life_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_life_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_life_count_seq OWNER TO freecodecamp;

--
-- Name: moon_life_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_life_count_seq OWNED BY public.moon.life_count;


--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer,
    life_span integer,
    speed numeric(4,1),
    is_rotating boolean,
    star_id integer NOT NULL,
    life_present text,
    life_count integer NOT NULL,
    life_stock text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_life_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_life_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_life_count_seq OWNER TO freecodecamp;

--
-- Name: planet_life_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_life_count_seq OWNED BY public.planet.life_count;


--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer,
    life_span integer,
    speed numeric(4,1),
    is_rotating boolean,
    galaxy_id integer NOT NULL,
    life_present text,
    life_count integer NOT NULL,
    life_stock text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_life_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_life_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_life_count_seq OWNER TO freecodecamp;

--
-- Name: star_life_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_life_count_seq OWNED BY public.star.life_count;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy life_count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN life_count SET DEFAULT nextval('public.galaxy_life_count_seq'::regclass);


--
-- Name: inhabitable_planet inhabitable_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitable_planet ALTER COLUMN inhabitable_planet_id SET DEFAULT nextval('public.inhabitable_planet_inhabitable_planet_id_seq'::regclass);


--
-- Name: inhabitable_planet life_count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitable_planet ALTER COLUMN life_count SET DEFAULT nextval('public.inhabitable_planet_life_count_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: moon life_count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN life_count SET DEFAULT nextval('public.moon_life_count_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: planet life_count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN life_count SET DEFAULT nextval('public.planet_life_count_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star life_count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN life_count SET DEFAULT nextval('public.star_life_count_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'aaGalaxy', 2, 6, 4.5, true, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'bbGalaxy', 3, 7, 1.3, true, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'ccGalaxy', 5, 8, 1.8, true, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'ddGalaxy', 8, 2, 3.6, true, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'eeGalaxy', 3, 5, 2.2, true, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'ffGalaxy', 3, 9, 1.8, true, NULL, 6, NULL);
INSERT INTO public.galaxy VALUES (7, 'ggGalaxy', 4, 8, 2.5, false, NULL, 7, NULL);
INSERT INTO public.galaxy VALUES (8, 'hhGalaxy', 3, 9, 2.9, false, NULL, 8, NULL);
INSERT INTO public.galaxy VALUES (9, 'iiGalaxy', 5, 7, 1.2, true, NULL, 9, NULL);
INSERT INTO public.galaxy VALUES (10, 'jjGalaxy', 7, 9, 3.1, true, NULL, 10, NULL);
INSERT INTO public.galaxy VALUES (11, 'kkGalaxy', 42, 148, 1.5, false, NULL, 11, NULL);
INSERT INTO public.galaxy VALUES (12, 'llGalaxy', 23, 90, 3.9, false, NULL, 12, NULL);
INSERT INTO public.galaxy VALUES (13, 'mmGalaxy', 50, 79, 1.4, true, NULL, 13, NULL);
INSERT INTO public.galaxy VALUES (14, 'nnGalaxy', 73, 90, 4.1, true, NULL, 14, NULL);
INSERT INTO public.galaxy VALUES (15, 'ooGalaxy', 402, 48, 1.9, false, NULL, 15, NULL);
INSERT INTO public.galaxy VALUES (16, 'ppGalaxy', 230, 900, 2.9, false, NULL, 16, NULL);
INSERT INTO public.galaxy VALUES (17, 'qqGalaxy', 500, 709, 1.4, true, NULL, 17, NULL);
INSERT INTO public.galaxy VALUES (18, 'rrGalaxy', 7003, 990, 2.1, true, NULL, 18, NULL);
INSERT INTO public.galaxy VALUES (19, 'ssGalaxy', 33, 408, 3.9, false, NULL, 19, NULL);
INSERT INTO public.galaxy VALUES (20, 'ttGalaxy', 220, 100, 2.7, false, NULL, 20, NULL);


--
-- Data for Name: inhabitable_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.inhabitable_planet VALUES (1, 'Mars', 'Still Researching', NULL, 1, NULL);
INSERT INTO public.inhabitable_planet VALUES (2, 'Earth', 'Inhabitable', NULL, 2, NULL);
INSERT INTO public.inhabitable_planet VALUES (3, 'Jupiter', 'Mostly Gas', NULL, 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aaMoon', 4, 9, 3.7, false, 1, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'bbMoon', 4, 5, 2.9, false, 2, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, 'ccMoon', 2, 7, 3.9, false, 3, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (4, 'ddMoon', 6, 9, 1.5, false, 7, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, 'eeMoon', 60, 95, 3.5, false, 8, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, 'ffMoon', 106, 900, 1.5, false, 9, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'ggMoon', 60, 98, 1.5, false, 10, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (8, 'hhMoon', 90, 700, 2.9, false, 11, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (9, 'iiMoon', 1096, 109, 2.5, false, 12, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (10, 'jjMoon', 20, 22, 1.5, false, 13, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (11, 'kkMoon', 906, 9000, 2.5, false, 14, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (12, 'llMoon', 6009, 9098, 3.5, false, 15, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (13, 'mmMoon', 30, 700, 1.9, false, 16, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (19, 'ooMoon', 196, 1009, 1.5, false, 14, NULL, NULL, 14, NULL);
INSERT INTO public.moon VALUES (20, 'ppMoon', 200, 202, 1.2, false, 15, NULL, NULL, 15, NULL);
INSERT INTO public.moon VALUES (21, 'qqMoon', 6, 9, 2.5, false, 16, NULL, NULL, 16, NULL);
INSERT INTO public.moon VALUES (22, 'rrMoon', 609, 998, 2.5, false, 17, NULL, NULL, 17, NULL);
INSERT INTO public.moon VALUES (23, 'ssMoon', 300, 730, 1.9, false, 18, NULL, NULL, 18, NULL);
INSERT INTO public.moon VALUES (26, 'ttMoon', 50, 90, 3.3, false, 19, NULL, NULL, 19, NULL);
INSERT INTO public.moon VALUES (27, 'uuMoon', 56, 78, 4.1, false, 20, NULL, NULL, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aaPlant', 3, 4, 2.9, true, 1, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'bbPlanet', 7, 2, 3.1, true, 2, NULL, 2, NULL);
INSERT INTO public.planet VALUES (3, 'ccPlanet', 9, 10, 2.4, true, 3, NULL, 3, NULL);
INSERT INTO public.planet VALUES (7, 'ddPlanet', 304, 809, 2.2, true, 12, NULL, 4, NULL);
INSERT INTO public.planet VALUES (8, 'eePlanet', 204, 18, 1.3, true, 13, NULL, 5, NULL);
INSERT INTO public.planet VALUES (9, 'ffPlanet', 409, 80, 2.3, true, 14, NULL, 6, NULL);
INSERT INTO public.planet VALUES (10, 'ggPlanet', 94, 89, 2.2, true, 15, NULL, 7, NULL);
INSERT INTO public.planet VALUES (11, 'hhPlanet', 24, 98, 1.3, true, 16, NULL, 8, NULL);
INSERT INTO public.planet VALUES (12, 'iiPlanet', 109, 890, 1.3, true, 17, NULL, 9, NULL);
INSERT INTO public.planet VALUES (13, 'jjPlanet', 904, 289, 1.2, true, 18, NULL, 10, NULL);
INSERT INTO public.planet VALUES (14, 'kkPlanet', 24, 98, 1.7, true, 19, NULL, 11, NULL);
INSERT INTO public.planet VALUES (15, 'llPlanet', 102, 8090, 1.9, true, 20, NULL, 12, NULL);
INSERT INTO public.planet VALUES (16, 'mmPlanet', 9004, 5289, 1.6, true, 21, NULL, 13, NULL);
INSERT INTO public.planet VALUES (17, 'nnPlanet', 9003, 9008, 1.1, true, 22, NULL, 14, NULL);
INSERT INTO public.planet VALUES (18, 'ooPlanet', 342, 81190, 2.9, true, 23, NULL, 15, NULL);
INSERT INTO public.planet VALUES (19, 'ppPlanet', 78, 589, 1.2, true, 24, NULL, 16, NULL);
INSERT INTO public.planet VALUES (20, 'qqPlanet', 933, 9008, 1.6, true, 25, NULL, 17, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'aaStar', 3, 2, 2.4, false, 1, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'bbStar', 4, 3, 1.9, false, 2, NULL, 2, NULL);
INSERT INTO public.star VALUES (3, 'ccStar', 6, 9, 1.1, false, 3, NULL, 3, NULL);
INSERT INTO public.star VALUES (12, 'ddStar', 3, 5, 2.3, false, 4, NULL, 4, NULL);
INSERT INTO public.star VALUES (13, 'eeStar', 7, 9, 3.1, false, 5, NULL, 5, NULL);
INSERT INTO public.star VALUES (14, 'ffStar', 3, 5, 2.7, false, 6, NULL, 6, NULL);
INSERT INTO public.star VALUES (15, 'ggStar', 2, 9, 3.1, false, 7, NULL, 7, NULL);
INSERT INTO public.star VALUES (16, 'hhStar', 20, 90, 2.1, false, 8, NULL, 8, NULL);
INSERT INTO public.star VALUES (17, 'iiStar', 78, 29, 4.1, false, 9, NULL, 9, NULL);
INSERT INTO public.star VALUES (18, 'jjStar', 45, 79, 1.1, false, 10, NULL, 10, NULL);
INSERT INTO public.star VALUES (19, 'kkStar', 102, 909, 2.1, false, 11, NULL, 11, NULL);
INSERT INTO public.star VALUES (20, 'llStar', 10, 400, 1.1, false, 12, NULL, 12, NULL);
INSERT INTO public.star VALUES (21, 'mmStar', 708, 299, 2.1, false, 13, NULL, 13, NULL);
INSERT INTO public.star VALUES (22, 'nnStar', 450, 739, 2.1, false, 14, NULL, 14, NULL);
INSERT INTO public.star VALUES (23, 'ooStar', 33, 90, 4.1, false, 15, NULL, 15, NULL);
INSERT INTO public.star VALUES (24, 'ppStar', 80, 309, 1.1, false, 16, NULL, 16, NULL);
INSERT INTO public.star VALUES (25, 'qqStar', 109, 4000, 3.1, false, 17, NULL, 17, NULL);
INSERT INTO public.star VALUES (26, 'rrStar', 308, 259, 3.1, false, 18, NULL, 18, NULL);
INSERT INTO public.star VALUES (27, 'ssStar', 890, 7039, 1.1, false, 19, NULL, 19, NULL);
INSERT INTO public.star VALUES (28, 'ttStar', 933, 450, 2.1, false, 20, NULL, 20, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: galaxy_life_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_life_count_seq', 20, true);


--
-- Name: inhabitable_planet_inhabitable_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.inhabitable_planet_inhabitable_planet_id_seq', 3, true);


--
-- Name: inhabitable_planet_life_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.inhabitable_planet_life_count_seq', 3, true);


--
-- Name: moon_life_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_life_count_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 3, true);


--
-- Name: planet_life_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_life_count_seq', 17, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 11, true);


--
-- Name: star_life_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_life_count_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: galaxy galaxy_life_stock_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_life_stock_key UNIQUE (life_stock);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: inhabitable_planet inhabitable_planet_life_stock_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitable_planet
    ADD CONSTRAINT inhabitable_planet_life_stock_key UNIQUE (life_stock);


--
-- Name: inhabitable_planet inhabitable_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitable_planet
    ADD CONSTRAINT inhabitable_planet_pkey PRIMARY KEY (inhabitable_planet_id);


--
-- Name: moon moon_life_stock_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_life_stock_key UNIQUE (life_stock);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_life_stock_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_life_stock_key UNIQUE (life_stock);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_life_stock_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_life_stock_key UNIQUE (life_stock);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

