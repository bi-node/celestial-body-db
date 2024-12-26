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
    name character varying(20) NOT NULL,
    color text NOT NULL,
    size text,
    extint boolean
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
-- Name: metroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.metroid (
    metroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    what text
);


ALTER TABLE public.metroid OWNER TO freecodecamp;

--
-- Name: metroid_metroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.metroid_metroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.metroid_metroid_id_seq OWNER TO freecodecamp;

--
-- Name: metroid_metroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.metroid_metroid_id_seq OWNED BY public.metroid.metroid_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_ice boolean NOT NULL,
    planet_id integer,
    what text
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
    name character varying(20) NOT NULL,
    diameter numeric(5,2),
    position_from_sun integer,
    color text,
    star_id integer
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
    name character varying(20) NOT NULL,
    is_milky_way boolean,
    type integer NOT NULL,
    galaxy_id integer,
    what text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: metroid metroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.metroid ALTER COLUMN metroid_id SET DEFAULT nextval('public.metroid_metroid_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'red', '20', false);
INSERT INTO public.galaxy VALUES (1, 'Milkyway Galaxy', 'red', '20', false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'red', '20', false);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 'red', '20', false);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel Galaxy', 'red', '20', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'red', '20', false);


--
-- Data for Name: metroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.metroid VALUES (1, 'adf', NULL);
INSERT INTO public.metroid VALUES (2, 'adsadff', NULL);
INSERT INTO public.metroid VALUES (3, 'adsaddfff', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'xxx', false, 3, 'x');
INSERT INTO public.moon VALUES (2, 'xxx', false, 3, 'xx');
INSERT INTO public.moon VALUES (3, 'xxx', false, 3, 'xxx');
INSERT INTO public.moon VALUES (4, 'xxx', false, 3, 'aaa');
INSERT INTO public.moon VALUES (5, 'xxx', false, 3, 'fff');
INSERT INTO public.moon VALUES (6, 'xxx', false, 3, 'rrr');
INSERT INTO public.moon VALUES (7, 'xxx', false, 3, 'rr');
INSERT INTO public.moon VALUES (8, 'xxx', false, 3, 'r\');
INSERT INTO public.moon VALUES (9, 'xxx', false, 3, 'adfadfasdfasdfasadfasdf');
INSERT INTO public.moon VALUES (10, 'xxx', false, 3, 'adfadfasdfasdfasadfasd');
INSERT INTO public.moon VALUES (12, 'xxx', false, 3, 'adfadfasdfasdfasadfas');
INSERT INTO public.moon VALUES (13, 'xxx', false, 3, 'adfadfasdfasdfasadas');
INSERT INTO public.moon VALUES (14, 'xxx', false, 3, 'adfadfasdfasdfasads');
INSERT INTO public.moon VALUES (15, 'xxx', false, 3, 'adfadfasdfasdfasas');
INSERT INTO public.moon VALUES (16, 'xxx', false, 3, 'adfadfasdfasdfass');
INSERT INTO public.moon VALUES (17, 'xxx', false, 3, 'adfadfasdfasds');
INSERT INTO public.moon VALUES (18, 'xxx', false, 3, 'adfadfasdfs');
INSERT INTO public.moon VALUES (19, 'xxx', false, 3, 'adfadfass');
INSERT INTO public.moon VALUES (20, 'xxx', false, 3, 'adfadfa');
INSERT INTO public.moon VALUES (21, 'xxx', false, 3, 'adfadf');
INSERT INTO public.moon VALUES (22, 'xxx', false, 3, 'adfad');
INSERT INTO public.moon VALUES (23, 'xxx', false, 3, 'adfd');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4.87, 1, 'gray', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 121.04, 2, 'yellow', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 150.11, 3, 'blue', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 150.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 135.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 188.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 100.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 99.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 50.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (10, 'Lionel Messi', 50.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (11, 'Proxima', 50.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (12, 'Binod', 50.11, 4, 'red', 1);
INSERT INTO public.planet VALUES (13, 'Maya', 50.11, 4, 'red', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 5, 1, 'adf');
INSERT INTO public.star VALUES (2, 'Sirius', true, 1, 1, 'adfd');
INSERT INTO public.star VALUES (3, 'Andromeda Star', false, 4, 2, 'adfxxd');
INSERT INTO public.star VALUES (4, 'Whirlpool Star', false, 4, 3, 'adfxxdvv');
INSERT INTO public.star VALUES (5, 'Pinwheel Star', false, 1, 4, 'aIIdfxxdvv');
INSERT INTO public.star VALUES (6, 'Triangulum Star', false, 1, 5, 'aIIdfxxd44vv');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: metroid_metroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.metroid_metroid_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: metroid metroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.metroid
    ADD CONSTRAINT metroid_pkey PRIMARY KEY (metroid_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_what_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_what_key UNIQUE (what);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: metroid name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.metroid
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_what_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_what_key UNIQUE (what);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


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

