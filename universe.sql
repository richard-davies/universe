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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth integer,
    oxygen_levels integer,
    speed numeric NOT NULL,
    history text,
    has_life boolean,
    dangerous boolean,
    star_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth integer,
    number_of_stars integer,
    rotational_vortex_speed numeric NOT NULL,
    history text,
    has_life boolean,
    safe_traveling boolean
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
    distance_from_earth integer,
    oxygen_levels integer,
    rotational_speed numeric NOT NULL,
    history text,
    has_life boolean,
    safe_landing boolean,
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
    name character varying NOT NULL,
    distance_from_earth integer,
    oxygen_levels integer,
    rotational_speed numeric NOT NULL,
    history text,
    has_life boolean,
    safe_landing boolean,
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
    name character varying NOT NULL,
    distance_from_earth integer,
    lumix_levels integer,
    rotational_speed numeric NOT NULL,
    history text,
    gives_life boolean,
    safe_landing boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'kool', 300, 0, 300.56, 'causing mayhem', true, true, 1);
INSERT INTO public.asteroid VALUES (2, 'kas', 300, 0, 300.34, 'beautiful', true, true, 2);
INSERT INTO public.asteroid VALUES (3, 'kaskool', 300, 0, 300.23, 'nothing to see here', true, true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaga 01', 5, 10, 45.5, 'Very interesting', true, true);
INSERT INTO public.galaxy VALUES (2, 'gorgon', 5, 10, 45.5, 'Nasty', true, true);
INSERT INTO public.galaxy VALUES (3, 'octobi', 5, 10, 45.5, 'octogonal form', true, true);
INSERT INTO public.galaxy VALUES (4, 'mastergo', 5, 10, 45.5, 'Must see', true, true);
INSERT INTO public.galaxy VALUES (5, 'julianna', 5, 10, 45.5, 'Long and thin', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaga 02', 5, 10, 45.5, 'Napoleon was obsessed with it', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonraker', 20, 0, 32.4, '007', true, true, 1);
INSERT INTO public.moon VALUES (2, 'moontraker', 20, 0, 32.4, 'keep listening', true, true, 2);
INSERT INTO public.moon VALUES (3, 'moonsaker', 20, 0, 32.4, 'the best', true, true, 3);
INSERT INTO public.moon VALUES (4, 'moonfaker', 20, 0, 32.4, 'does it really exists?', true, true, 1);
INSERT INTO public.moon VALUES (5, 'moony', 20, 0, 32.4, 'everybody loves moony', true, true, 4);
INSERT INTO public.moon VALUES (6, 'toony', 20, 0, 32.4, 'same olo same old', true, true, 1);
INSERT INTO public.moon VALUES (7, 'losis', 20, 0, 32.4, 'and osmosis', true, true, 5);
INSERT INTO public.moon VALUES (8, 'caneloni', 20, 0, 32.4, 'fine italian cousine', true, true, 6);
INSERT INTO public.moon VALUES (9, 'astramoon', 20, 0, 32.4, 'the best floor to land', true, true, 1);
INSERT INTO public.moon VALUES (10, 'loone', 20, 0, 32.4, 'for a peaceful vacation', true, true, 7);
INSERT INTO public.moon VALUES (11, 'medes', 20, 0, 32.4, 'and there is water', true, true, 1);
INSERT INTO public.moon VALUES (12, 'gali', 20, 0, 32.4, 'smells like garlic', true, true, 8);
INSERT INTO public.moon VALUES (13, 'iber', 20, 0, 32.4, 'beautiful', true, true, 1);
INSERT INTO public.moon VALUES (14, 'marik', 20, 0, 32.4, 'need more references', true, true, 1);
INSERT INTO public.moon VALUES (15, 'justin', 20, 0, 32.4, 'just in ', true, true, 3);
INSERT INTO public.moon VALUES (16, 'lonso', 20, 0, 32.4, 'famous for its formula one tournament', true, true, 5);
INSERT INTO public.moon VALUES (17, 'alexis', 20, 0, 32.4, 'nothing to add', true, true, 3);
INSERT INTO public.moon VALUES (18, 'giesswein', 20, 0, 32.4, 'well made and comfortable', true, true, 2);
INSERT INTO public.moon VALUES (19, 'hallo', 20, 0, 32.4, 'who does not love halo', true, true, 8);
INSERT INTO public.moon VALUES (20, 'latimer', 20, 0, 32.4, 'last but not least', true, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'wind', 20, 2, 32.4, 'Where the concept of wind started', true, true, 1);
INSERT INTO public.planet VALUES (2, 'fire', 20, 2, 32.4, 'too hot to be true', true, true, 2);
INSERT INTO public.planet VALUES (3, 'mortimer', 20, 2, 32.4, 'time is all that counts', true, true, 3);
INSERT INTO public.planet VALUES (4, 'lost', 20, 2, 32.4, 'Recommended travel to found', true, true, 4);
INSERT INTO public.planet VALUES (5, 'found', 20, 2, 32.4, 'Nice to be there', true, true, 2);
INSERT INTO public.planet VALUES (6, 'aspergos', 20, 2, 32.4, 'Badly eeds an historian', true, true, 3);
INSERT INTO public.planet VALUES (7, '1000mx', 20, 2, 32.4, 'Good audio to do recordings', true, true, 1);
INSERT INTO public.planet VALUES (8, 'wilkins', 20, 2, 32.4, 'too much history for one day', true, true, 5);
INSERT INTO public.planet VALUES (9, 'lepold', 20, 2, 32.4, 'field not null but barely', true, true, 5);
INSERT INTO public.planet VALUES (10, 'magnum', 20, 2, 32.4, 'you will never finish it', true, true, 5);
INSERT INTO public.planet VALUES (11, 'hot chocolate', 20, 2, 32.4, 'plenty of cocoa here', true, true, 2);
INSERT INTO public.planet VALUES (12, 'lestrange', 20, 2, 32.4, 'home of belatrix the great', true, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sonix', 20, 3, 45.5, 'too long', true, false, 1);
INSERT INTO public.star VALUES (2, 'monix', 20, 3, 45.5, 'really beautiful', true, false, 3);
INSERT INTO public.star VALUES (3, 'astur', 20, 3, 45.5, 'northern star', true, false, 2);
INSERT INTO public.star VALUES (4, 'bardar', 20, 3, 45.5, 'kind of musical', true, false, 1);
INSERT INTO public.star VALUES (5, 'alum', 20, 3, 45.5, 'nice and light', true, false, 4);
INSERT INTO public.star VALUES (6, 'deslum', 20, 3, 45.5, 'too much light', true, false, 5);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

