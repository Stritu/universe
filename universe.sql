--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    is_hostile boolean NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    is_spiral boolean
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
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    crater_count integer NOT NULL,
    distance_from_planet numeric,
    has_life boolean NOT NULL,
    description text
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
    name character varying NOT NULL,
    star_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_star numeric NOT NULL,
    has_life boolean NOT NULL,
    description text
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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_light_years numeric,
    is_active boolean NOT NULL
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
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


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
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'Zorg', 'Green humanoid from Mars', true, 120);
INSERT INTO public.alien VALUES (2, 'Blip', 'Small blue creature from Europa', false, 50);
INSERT INTO public.alien VALUES (3, 'Krell', 'Tall reptilian from Titan', true, 200);
INSERT INTO public.alien VALUES (4, 'Martian', 'Classic red planet native', true, 150);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0, 'Our home galaxy with billions of stars', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2500000, 'Nearest large spiral galaxy to Milky Way', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 3000000, 'Third largest galaxy in Local Group', true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 13000, 163000, 'Dwarf irregular satellite galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 29000, 29000000, 'Galaxy with bright nucleus and dust lane', false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 23000, 23000000, 'Grand design spiral galaxy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 100, 384400, false, 'Earth only natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 50, 9376, false, 'Larger moon of Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 30, 23463, false, 'Smaller outer moon of Mars');
INSERT INTO public.moon VALUES (4, 'Io', 3, 200, 421700, false, 'Volcanic moon of Jupiter');
INSERT INTO public.moon VALUES (5, 'Europa', 3, 80, 671000, false, 'Icy moon with subsurface ocean');
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 120, 1070400, false, 'Largest moon in solar system');
INSERT INTO public.moon VALUES (7, 'Callisto', 3, 300, 1882700, false, 'Heavily cratered moon of Jupiter');
INSERT INTO public.moon VALUES (8, 'Titan', 4, 60, 1221870, false, 'Largest moon of Saturn with atmosphere');
INSERT INTO public.moon VALUES (9, 'Enceladus', 4, 40, 237948, false, 'Icy moon with geysers');
INSERT INTO public.moon VALUES (10, 'Rhea', 4, 150, 527108, false, 'Second largest moon of Saturn');
INSERT INTO public.moon VALUES (11, 'Mimas', 4, 90, 185539, false, 'Small moon with giant crater');
INSERT INTO public.moon VALUES (12, 'Venus-I', 5, 10, 100000, false, 'Fictional moon of Venus for research');
INSERT INTO public.moon VALUES (13, 'Proxima-b-I', 6, 25, 50000, false, 'First moon of Proxima b');
INSERT INTO public.moon VALUES (14, 'Proxima-c-I', 7, 35, 75000, false, 'Moon of Proxima c');
INSERT INTO public.moon VALUES (15, 'Sirius-b-I', 8, 45, 60000, false, 'Moon of Sirius b');
INSERT INTO public.moon VALUES (16, 'Aldebaran-b-I', 9, 55, 80000, false, 'Moon of Aldebaran b');
INSERT INTO public.moon VALUES (17, 'Betelgeuse-b-I', 10, 15, 90000, false, 'Moon of Betelgeuse b');
INSERT INTO public.moon VALUES (18, 'VY-1-I', 11, 20, 95000, false, 'Moon of VY-CMa-1');
INSERT INTO public.moon VALUES (19, 'UY-1-I', 12, 22, 98000, false, 'Moon of UY-Scuti-1');
INSERT INTO public.moon VALUES (20, 'T1b-I', 13, 18, 30000, false, 'Inner moon of TRAPPIST-1b');
INSERT INTO public.moon VALUES (21, 'T1e-I', 14, 28, 35000, false, 'First moon of TRAPPIST-1e');
INSERT INTO public.moon VALUES (22, 'T1e-II', 14, 32, 55000, false, 'Second moon of TRAPPIST-1e');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 4540, 1, true, 'Blue planet with life');
INSERT INTO public.planet VALUES (2, 'Mars', 1, 4600, 1.52, false, 'Red planet with thin atmosphere');
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 4600, 5.2, false, 'Largest gas giant in solar system');
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 4600, 9.58, false, 'Gas giant famous for its rings');
INSERT INTO public.planet VALUES (5, 'Venus', 1, 4600, 0.72, false, 'Hottest planet with thick atmosphere');
INSERT INTO public.planet VALUES (6, 'Proxima Centauri b', 2, 4850, 0.05, true, 'Potentially habitable exoplanet');
INSERT INTO public.planet VALUES (7, 'Proxima Centauri c', 2, 4850, 1.48, false, 'Cold super Earth candidate');
INSERT INTO public.planet VALUES (8, 'Sirius b', 3, 250, 2.5, false, 'Rocky planet around Sirius');
INSERT INTO public.planet VALUES (9, 'Aldebaran b', 4, 6400, 1.46, false, 'Gas giant around orange giant star');
INSERT INTO public.planet VALUES (10, 'Betelgeuse b', 5, 8, 3.1, false, 'Young hot Jupiter');
INSERT INTO public.planet VALUES (11, 'VY-CMa-1', 6, 7, 4.2, false, 'Exoplanet around hypergiant star');
INSERT INTO public.planet VALUES (12, 'UY-Scuti-1', 7, 7, 5.5, false, 'Distant gas giant');
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1b', 8, 7600, 0.01, false, 'Hot rocky exoplanet');
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1e', 8, 7600, 0.03, true, 'Earth sized planet in habitable zone');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, 0, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 4850, 4.24, true);
INSERT INTO public.star VALUES (3, 'Sirius', 2, 250, 8.6, true);
INSERT INTO public.star VALUES (4, 'Aldebaran', 2, 6400, 65.3, true);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 3, 8, 548, false);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 4, 7, 4890, true);
INSERT INTO public.star VALUES (7, 'UY Scuti', 5, 7, 5100, false);
INSERT INTO public.star VALUES (8, 'TRAPPIST-1', 6, 7600, 39.5, true);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


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

