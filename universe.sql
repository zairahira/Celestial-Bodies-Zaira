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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean
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
-- Name: knocking_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.knocking_star (
    knocking_star_id integer NOT NULL,
    name character varying(80) NOT NULL,
    has_life boolean
);


ALTER TABLE public.knocking_star OWNER TO freecodecamp;

--
-- Name: knocking_star_knocking_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.knocking_star_knocking_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knocking_star_knocking_star_id_seq OWNER TO freecodecamp;

--
-- Name: knocking_star_knocking_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.knocking_star_knocking_star_id_seq OWNED BY public.knocking_star.knocking_star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: knocking_star knocking_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.knocking_star ALTER COLUMN knocking_star_id SET DEFAULT nextval('public.knocking_star_knocking_star_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (2, 'Butterfly galaxy', 45772200, 78354563, 56, 'Looks like a butterfly', false, false);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', 14500325, 9300244, 420, 'Looks like a cartwheel', false, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 84650325, 84353244, 9020, 'Has a symmetrical dust ring', false, false);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 1437320, 6335300, 60, 'Has a dark dust band around its nucleus', false, false);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 1437320, 6335300, 60, 'Peculiar because it has a super massive  black hole in its heart', false, false);
INSERT INTO public.galaxy VALUES (1, 'Milky way', 4577500, 34563, 456, 'Hosts the planet Earth', false, false);


--
-- Data for Name: knocking_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.knocking_star VALUES (1, 'Pulsar', false);
INSERT INTO public.knocking_star VALUES (2, 'Magnetic Pulsar', false);
INSERT INTO public.knocking_star VALUES (3, 'Magnetar', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Pan', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 12);
INSERT INTO public.moon VALUES (2, 'Atlas', 5353, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 10);
INSERT INTO public.moon VALUES (3, 'Prometheus', 2342, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 11);
INSERT INTO public.moon VALUES (4, 'Pandora', 2535, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 9);
INSERT INTO public.moon VALUES (5, 'Janus', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 8);
INSERT INTO public.moon VALUES (6, 'Epimetheus', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 6);
INSERT INTO public.moon VALUES (7, 'Mimas', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 7);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 7);
INSERT INTO public.moon VALUES (9, 'Tethys', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 3);
INSERT INTO public.moon VALUES (10, 'Dione', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 5);
INSERT INTO public.moon VALUES (11, 'Rhea', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 4);
INSERT INTO public.moon VALUES (12, 'Titan', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 3);
INSERT INTO public.moon VALUES (13, 'Hyperion', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 2);
INSERT INTO public.moon VALUES (14, 'Iapetus', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 12);
INSERT INTO public.moon VALUES (15, 'Phoebe', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 10);
INSERT INTO public.moon VALUES (16, 'Voyager', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 9);
INSERT INTO public.moon VALUES (17, 'Lassell', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 3);
INSERT INTO public.moon VALUES (18, 'Kuiper', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 6);
INSERT INTO public.moon VALUES (19, 'Charon', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 4);
INSERT INTO public.moon VALUES (20, 'Showalter', 4525, 35435, 5, 'A mighty moon somewhere in the universe.', false, true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Pirx', 980044, 6345, 56, 'Pirx is a fictional character from books by Polish science-fiction writer Stanisław Lem.', false, false, 2);
INSERT INTO public.planet VALUES (2, 'Hypatia ', 492349, 34, 34, 'Hypatia was a famous Greek astronomer, mathmatician, and philosopher.', false, false, 4);
INSERT INTO public.planet VALUES (3, 'Dagon', 94333, 45333, 456, 'Dagon was a Semitic deity, often represented as half-man, half-fish', false, false, 1);
INSERT INTO public.planet VALUES (4, '2003-UB', 9434, 834243, 226, 'A mighty planet', false, false, 5);
INSERT INTO public.planet VALUES (5, 'Charon', 35234, 4554534, 6, 'A mighty planet', false, false, 6);
INSERT INTO public.planet VALUES (6, 'Pluto', 42343, 345324, 996, 'A mighty planet', false, false, 3);
INSERT INTO public.planet VALUES (7, 'Mercury', 95435, 4231, 56, 'A mighty planet', false, false, 2);
INSERT INTO public.planet VALUES (8, 'Saturn L', 965765, 980088, 56, 'A mighty planet', false, false, 1);
INSERT INTO public.planet VALUES (9, 'Eris', 945777, 890034, 56, 'Dwarf planet', false, false, 6);
INSERT INTO public.planet VALUES (10, 'Orbitar', 4563, 5342, 56, 'A mighty planet', false, false, 3);
INSERT INTO public.planet VALUES (11, 'Dimidium', 56432, 4223, 56, 'A mighty planet', false, false, 5);
INSERT INTO public.planet VALUES (12, 'Galileo', 94325, 9583, 56, 'Named after the founder Galileo', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 500, 37844, 0, 'Really bright', false, false, 5);
INSERT INTO public.star VALUES (2, 'Lynx', 2300, 9764, 10, 'Named after the animal', false, false, 3);
INSERT INTO public.star VALUES (3, 'Sagittarius', 2087, 2344, 510, 'Is this your Zodiac?', false, false, 4);
INSERT INTO public.star VALUES (4, 'Corvus', 9273, 293, 130, 'Inspired from Arabic word whish means a tent.', false, false, 1);
INSERT INTO public.star VALUES (5, 'Cancer', 2087, 2344, 510, 'Thats my Zodiac!!', false, false, 2);
INSERT INTO public.star VALUES (6, 'Hydra', 2023, 29756, 5132, 'The mythical hydra lived there.', false, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: knocking_star_knocking_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.knocking_star_knocking_star_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_name UNIQUE (galaxy_id);


--
-- Name: knocking_star constraint_name_kstar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.knocking_star
    ADD CONSTRAINT constraint_name_kstar UNIQUE (knocking_star_id);


--
-- Name: moon constraint_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_name_moon UNIQUE (moon_id);


--
-- Name: planet constraint_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_name_planet UNIQUE (planet_id);


--
-- Name: star constraint_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_name_star UNIQUE (star_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: knocking_star knocking_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.knocking_star
    ADD CONSTRAINT knocking_star_pkey PRIMARY KEY (knocking_star_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

