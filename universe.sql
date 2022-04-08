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
-- Name: exoplanet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exoplanet (
    exoplanet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moons integer,
    age bigint
);


ALTER TABLE public.exoplanet OWNER TO freecodecamp;

--
-- Name: exoplanet_exoplanet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exoplanet_exoplanet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exoplanet_exoplanet_id_seq OWNER TO freecodecamp;

--
-- Name: exoplanet_exoplanet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exoplanet_exoplanet_id_seq OWNED BY public.exoplanet.exoplanet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars bigint,
    diameter_in_light_years numeric,
    age bigint,
    hue character varying(20)
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
    inhabitable boolean,
    planet_id integer,
    age bigint,
    hue character varying(20)
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
    number_of_moons integer,
    diameter_in_kilometers numeric,
    description text,
    inhabitable boolean,
    age bigint,
    hue character varying(20)
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
    galaxy_id integer,
    age bigint,
    hue character varying(20)
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
-- Name: exoplanet exoplanet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet ALTER COLUMN exoplanet_id SET DEFAULT nextval('public.exoplanet_exoplanet_id_seq'::regclass);


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
-- Data for Name: exoplanet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exoplanet VALUES (1, 'HD 22532 B', NULL, NULL);
INSERT INTO public.exoplanet VALUES (2, 'HD 64121 B', NULL, NULL);
INSERT INTO public.exoplanet VALUES (3, 'HD 69123 B', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 3200, 100000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000000, 220000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'LMC', 3000000, 14000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sohito', 666666, 28000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Minto', 50000, 4500, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Vitamix', 3343243242, 234342, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', false, 3, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Io', false, 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Nami', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Klingon', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Monty Python', false, 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Rocky Balboa', false, 12, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Mixalot', false, 11, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Kungfu', true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Stormlight', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Skyward', true, 8, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Tatooine', true, 9, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Dinkywinky', true, 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Dipsy', true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Lala', true, 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Po', true, 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Hippocampus', true, 3, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Leone', true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Mindlessly', false, 9, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Adding', false, 12, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Random', false, 11, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Namess', false, 10, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 12742, 'Earth is the planet we live on.', true, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'PA-99-N2', 0, 34233, 'The first extra-solar planet found on another galaxy.', false, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4, 142984, 'The fifth planet from the sun and the largest in the solar system.', false, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Bjorn', 43, 243423, 'This planet will rock your world', true, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'System', 4, 255500, 'Get down with the system!', false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Sosweet', 12, 59824, 'Always there for your intergalactic cravings.', true, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Zoro', 3, 666, 'Even the devil has to live somewhere.', false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'District 31', 7, 418, 'Where no crime is ever left unsolved.', true, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Lofi Girl', 5, 23423, 'Some damn good music all around.', true, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Riddick', 34, 232255, 'Hostile alien lifeforms guaranteed!', true, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Mushroom Kingdom', 1, 100000000, 'Your childhood memories were probably born here.', true, NULL, NULL);
INSERT INTO public.planet VALUES (12, '343', 41, 1300, 'A planet whose name is a number, why not...', false, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Polaris', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Marco', 5, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Phoenix', 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Joyboy', 4, NULL, NULL);


--
-- Name: exoplanet_exoplanet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exoplanet_exoplanet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: exoplanet exoplanet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet
    ADD CONSTRAINT exoplanet_name_key UNIQUE (name);


--
-- Name: exoplanet exoplanet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet
    ADD CONSTRAINT exoplanet_pkey PRIMARY KEY (exoplanet_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

