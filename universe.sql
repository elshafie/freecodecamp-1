--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30) NOT NULL,
    galaxy_types character varying(60),
    description text,
    has_life boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_types character varying(60),
    description text,
    star_id integer NOT NULL,
    moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: table_five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_five (
    table_five_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.table_five OWNER TO freecodecamp;

--
-- Name: table_five_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_five_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_five_id_seq OWNER TO freecodecamp;

--
-- Name: table_five_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_five_id_seq OWNED BY public.table_five.table_five_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: table_five table_five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five ALTER COLUMN table_five_id SET DEFAULT nextval('public.table_five_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'asd', 'many', 'klam kteer awy', true);
INSERT INTO public.galaxy VALUES (2, 'asdasd', 'many', 'klam kteer awy', true);
INSERT INTO public.galaxy VALUES (3, 'asdasda', 'many', 'klam kteer awy', true);
INSERT INTO public.galaxy VALUES (4, 'asdasdsa', 'many', 'klam kteer awy', true);
INSERT INTO public.galaxy VALUES (5, 'asdsa', 'many', 'klam kteer awy', true);
INSERT INTO public.galaxy VALUES (6, 'asdsssa', 'many', 'klam kteer awy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aaa', 120.5, false, 'Hello Again', 1);
INSERT INTO public.moon VALUES (2, 'bbb', 120.5, false, 'Hello Again', 2);
INSERT INTO public.moon VALUES (4, 'ccc', 120.5, false, 'Hello Again', 4);
INSERT INTO public.moon VALUES (5, 'ddd', 120.5, false, 'Hello Again', 5);
INSERT INTO public.moon VALUES (6, 'eee', 120.5, false, 'Hello Again', 6);
INSERT INTO public.moon VALUES (7, 'fff', 120.5, false, 'Hello Again', 7);
INSERT INTO public.moon VALUES (8, 'ggg', 120.5, false, 'Hello Again', 8);
INSERT INTO public.moon VALUES (9, 'hhh', 120.5, false, 'Hello Again', 9);
INSERT INTO public.moon VALUES (10, 'iii', 120.5, false, 'Hello Again', 1);
INSERT INTO public.moon VALUES (11, 'jjj', 120.5, false, 'Hello Again', 2);
INSERT INTO public.moon VALUES (13, 'kkk', 120.5, false, 'Hello Again', 4);
INSERT INTO public.moon VALUES (14, 'lll', 120.5, false, 'Hello Again', 5);
INSERT INTO public.moon VALUES (15, 'mmm', 120.5, false, 'Hello Again', 6);
INSERT INTO public.moon VALUES (16, 'nnn', 120.5, false, 'Hello Again', 7);
INSERT INTO public.moon VALUES (17, 'ooo', 120.5, false, 'Hello Again', 8);
INSERT INTO public.moon VALUES (18, 'ppp', 120.5, false, 'Hello Again', 8);
INSERT INTO public.moon VALUES (19, 'qqq', 120.5, false, 'Hello Again', 9);
INSERT INTO public.moon VALUES (20, 'rrr', 120.5, false, 'Hello Again', 10);
INSERT INTO public.moon VALUES (21, 'sss', 120.5, false, 'Hello Again', 11);
INSERT INTO public.moon VALUES (22, 'ttt', 120.5, false, 'Hello Again', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 'many', 'hello world', 1, 1);
INSERT INTO public.planet VALUES (2, 'mars', false, 'many', 'hello world', 2, 7);
INSERT INTO public.planet VALUES (4, 'atard', false, 'many', 'hello world', 3, 2);
INSERT INTO public.planet VALUES (5, 'zahra', false, 'many', 'hello world', 4, 3);
INSERT INTO public.planet VALUES (6, 'moshtra', false, 'many', 'hello world', 5, 4);
INSERT INTO public.planet VALUES (7, 'zohl', false, 'many', 'hello world', 6, 5);
INSERT INTO public.planet VALUES (8, 'nepton', false, 'many', 'hello world', 1, 6);
INSERT INTO public.planet VALUES (9, 'oranos', false, 'many', 'hello world', 2, 8);
INSERT INTO public.planet VALUES (10, 'ploto', false, 'many', 'hello world', 3, 9);
INSERT INTO public.planet VALUES (11, 'plotonium', false, 'many', 'hello world', 4, 10);
INSERT INTO public.planet VALUES (12, 'uranium', false, 'many', 'hello world', 5, 11);
INSERT INTO public.planet VALUES (13, 'Boom', false, 'many', 'hello world', 6, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'gogo', 120, '', 1);
INSERT INTO public.star VALUES (2, 'yahoo', 320, '', 2);
INSERT INTO public.star VALUES (3, 'google', 720, 'becareful', 3);
INSERT INTO public.star VALUES (4, 'hot', 20, 'dodo', 4);
INSERT INTO public.star VALUES (5, 'hayel', 510, 'bodo', 5);
INSERT INTO public.star VALUES (6, 'hayela', 510, 'kodo', 6);


--
-- Data for Name: table_five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_five VALUES (1, 'aaaa', 'asdsfdasfafa');
INSERT INTO public.table_five VALUES (2, 'asada', 'asdsfdasfafa');
INSERT INTO public.table_five VALUES (3, 'asasfafda', 'asdsfdasfafa');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: table_five_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_five_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moons_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moons_key UNIQUE (moons);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_five table_five_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five
    ADD CONSTRAINT table_five_name_key UNIQUE (name);


--
-- Name: table_five table_five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five
    ADD CONSTRAINT table_five_pkey PRIMARY KEY (table_five_id);


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

