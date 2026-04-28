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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    origin character varying(30) NOT NULL,
    age_in_billions_of_years numeric(4,2),
    galaxy_type text
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
    has_life boolean,
    radius_in_km text NOT NULL,
    orbits_around_sun boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    orbits_sun_in_earth_years integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    system_structure character varying(30) NOT NULL,
    moon_count integer,
    is_spherical boolean,
    radius_in_km text
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
    system_structure character varying(30),
    meaning text,
    galaxy_type character varying(30) NOT NULL
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Greek', 11.90, 'Giant Barred Spiral');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Greek', 13.60, 'Barred Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'English', 23.10, 'Late Type Spiral');
INSERT INTO public.galaxy VALUES (4, 'Messier', 'French', 13.25, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Spanish', 13.30, 'Unbarred Spiral');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Greek', 13.27, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (4, 'Europa', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (5, 'Ganymede', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (6, 'Callisto', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (7, 'Titan', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (8, 'Miranda', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (9, 'Umbriel', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (10, 'Nereid', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (11, 'Nix', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (12, 'Dysnomia', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (13, 'Lo', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (14, 'Thebe', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (15, 'Adrastea', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (16, 'Thalassa', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (17, 'Proteus', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (18, 'Naiad', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (19, 'Triton', false, 'Less Than 3390', true);
INSERT INTO public.moon VALUES (20, 'Galatea', false, 'Less Than 3390', true);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'Earth', 'Rocky', 1);
INSERT INTO public.more_info VALUES (2, 'Jupiter', 'Gas Giant', 12);
INSERT INTO public.more_info VALUES (3, 'Neptune', 'Ice Giant', 165);
INSERT INTO public.more_info VALUES (4, 'Pluto', 'Dwarf', 248);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Solar', 0, true, 'Exactly 2440');
INSERT INTO public.planet VALUES (2, 'Venus', 'Solar', 0, true, 'Exactly 6052');
INSERT INTO public.planet VALUES (3, 'Earth', 'Solar', 1, true, 'Exactly 6371');
INSERT INTO public.planet VALUES (4, 'Mars', 'Solar', 2, true, 'Less Than 3390');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Solar', 95, true, 'Exactly 71492');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Solar', 146, true, 'Exactly 58232');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Solar', 28, true, 'Exactly 25362');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Solar', 16, true, 'Exactly 24622');
INSERT INTO public.planet VALUES (9, 'Pluto', 'Solar', 5, true, 'Exactly 1188');
INSERT INTO public.planet VALUES (10, 'Ceres', 'Solar', 0, true, 'Exactly 470');
INSERT INTO public.planet VALUES (11, 'Eris', 'Solar', 1, true, 'Exactly 1163');
INSERT INTO public.planet VALUES (12, 'Charon', 'Solar', 0, true, 'Exactly 606');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Helios', 'Solar', 'Sun', 'Barred Spiral');
INSERT INTO public.star VALUES (2, 'Sirius', 'Binary', 'Scorching', 'Barred Spiral');
INSERT INTO public.star VALUES (3, 'Capella', 'Two Binary', 'Little Goat', 'Barred Spiral');
INSERT INTO public.star VALUES (4, 'Rigel', 'Multiple Star', 'Foot Of Giant', 'Barred Spiral');
INSERT INTO public.star VALUES (5, 'Vega', 'Dual Belt', 'Falling Vulture', 'Barred Spiral');
INSERT INTO public.star VALUES (6, 'Polaris', 'Triple Star', 'Pole Star', 'Barred Spiral');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


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
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info more_info_planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_planet_type_key UNIQUE (planet_type);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_radius_in_km_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_radius_in_km_key UNIQUE (radius_in_km);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_system_structure_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_system_structure_key UNIQUE (system_structure);


--
-- Name: moon moon_radius_in_km_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_radius_in_km_fkey FOREIGN KEY (radius_in_km) REFERENCES public.planet(radius_in_km);


--
-- Name: planet planet_system_structure_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_system_structure_fkey FOREIGN KEY (system_structure) REFERENCES public.star(system_structure);


--
-- Name: star star_galaxy_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_type_fkey FOREIGN KEY (galaxy_type) REFERENCES public.galaxy(galaxy_type);


--
-- PostgreSQL database dump complete
--

