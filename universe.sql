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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    diameter integer NOT NULL,
    distance_from_planet numeric NOT NULL,
    is_habitable boolean DEFAULT false
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth integer NOT NULL,
    number_of_stars integer NOT NULL,
    has_black_hole boolean DEFAULT false,
    description text
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
    name character varying(100) NOT NULL,
    planet_id integer,
    diameter integer NOT NULL,
    distance_from_planet numeric NOT NULL,
    is_habitable boolean DEFAULT false
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
    name character varying(100) NOT NULL,
    star_id integer,
    diameter integer NOT NULL,
    distance_from_star numeric NOT NULL,
    has_rings boolean DEFAULT false
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
    name character varying(100) NOT NULL,
    galaxy_id integer,
    temperature numeric NOT NULL,
    luminosity integer NOT NULL,
    is_supernova boolean DEFAULT false
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Moon', 1, 3475, 384400, false);
INSERT INTO public.earth VALUES (2, 'Phobos', 2, 22, 6000, false);
INSERT INTO public.earth VALUES (3, 'Deimos', 2, 12, 24000, false);
INSERT INTO public.earth VALUES (4, 'Io', 3, 3643, 421700, false);
INSERT INTO public.earth VALUES (5, 'Europa', 3, 3122, 670900, false);
INSERT INTO public.earth VALUES (6, 'Ganymede', 3, 5262, 1070400, false);
INSERT INTO public.earth VALUES (7, 'Callisto', 3, 4822, 1883000, false);
INSERT INTO public.earth VALUES (8, 'Titan', 4, 5151, 1221870, false);
INSERT INTO public.earth VALUES (9, 'Rhea', 4, 1529, 527600, false);
INSERT INTO public.earth VALUES (10, 'Iapetus', 4, 1470, 3569000, false);
INSERT INTO public.earth VALUES (11, 'Oberon', 5, -762, -583520, false);
INSERT INTO public.earth VALUES (12, 'Titania', 5, -1578, -436300, false);
INSERT INTO public.earth VALUES (13, 'Miranda', 5, -472, -471600, false);
INSERT INTO public.earth VALUES (14, 'Triton', 6, -2707, -354760, false);
INSERT INTO public.earth VALUES (15, 'Proteus', 6, -420, -117500, false);
INSERT INTO public.earth VALUES (16, 'Nereid', 6, -340, -550800, false);
INSERT INTO public.earth VALUES (17, 'Charon', 7, 1212, 19760, false);
INSERT INTO public.earth VALUES (18, 'Styx', 8, 10, 20000, false);
INSERT INTO public.earth VALUES (19, 'Kerberos', 9, 10, 19000, false);
INSERT INTO public.earth VALUES (20, 'Hydra', 10, 30, 22000, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 100, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 1000, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 30000, 5000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000, 30000, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 2800, 20000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 2100, 15000, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3475, 384400, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 22, 6000, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 12, 24000, false);
INSERT INTO public.moon VALUES (4, 'Io', 3, 3643, 421700, false);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 3122, 670900, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 5262, 1070400, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, 4822, 1883000, false);
INSERT INTO public.moon VALUES (8, 'Titan', 4, 5151, 1221870, false);
INSERT INTO public.moon VALUES (9, 'Rhea', 4, 1529, 527600, false);
INSERT INTO public.moon VALUES (10, 'Iapetus', 4, 1470, 3569000, false);
INSERT INTO public.moon VALUES (11, 'Oberon', 5, -762, -583520, false);
INSERT INTO public.moon VALUES (12, 'Titania', 5, -1578, -436300, false);
INSERT INTO public.moon VALUES (13, 'Miranda', 5, -472, -471600, false);
INSERT INTO public.moon VALUES (14, 'Triton', 6, -2707, -354760, false);
INSERT INTO public.moon VALUES (15, 'Proteus', 6, -420, -117500, false);
INSERT INTO public.moon VALUES (16, 'Nereid', 6, -340, -550800, false);
INSERT INTO public.moon VALUES (17, 'Charon', 7, 1212, 19760, false);
INSERT INTO public.moon VALUES (18, 'Styx', 8, 10, 20000, false);
INSERT INTO public.moon VALUES (19, 'Kerberos', 9, 10, 19000, false);
INSERT INTO public.moon VALUES (20, 'Hydra', 10, 30, 22000, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 12742, 149600000, false);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 6779, 227940000, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 2, 139820, 778500000, true);
INSERT INTO public.planet VALUES (4, 'Saturn', 2, 116460, 1429400000, true);
INSERT INTO public.planet VALUES (5, 'Venus', 1, 12104, 108200000, false);
INSERT INTO public.planet VALUES (6, 'Mercury', 1, 4879, 57910000, false);
INSERT INTO public.planet VALUES (7, 'Neptune', 3, 49528, 4495100000, true);
INSERT INTO public.planet VALUES (8, 'Uranus', 3, 50724, 2875000000, true);
INSERT INTO public.planet VALUES (9, 'Pluto', 4, 2376, 590637627, false);
INSERT INTO public.planet VALUES (10, 'Eris', 5, 2326, 96010000, false);
INSERT INTO public.planet VALUES (11, 'Haumea', 5, 1960, 43080000, true);
INSERT INTO public.planet VALUES (12, 'Makemake', 6, 1424, 53060000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5778, 1, false);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 9940, 25, false);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 2, 3500, 126000, true);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 3042, 0, false);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 1, 5790, 2, false);
INSERT INTO public.star VALUES (6, 'Vega', 3, 8500, 40, false);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 20, true);


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
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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
-- Name: earth earth_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

