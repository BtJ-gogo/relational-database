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
    name character varying(30) NOT NULL,
    discription text,
    type character varying(30),
    radius_ly integer
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
-- Name: mars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mars (
    mars_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    date date,
    no integer
);


ALTER TABLE public.mars OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mars_mars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mars_mars_id_seq OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mars_mars_id_seq OWNED BY public.mars.mars_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    date date,
    no integer
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
    has_life boolean,
    star_id integer NOT NULL,
    is_spherical boolean,
    num_statellites integer NOT NULL,
    radius numeric(10,2) NOT NULL,
    temperature integer,
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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    radius integer
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
-- Name: mars mars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars ALTER COLUMN mars_id SET DEFAULT nextval('public.mars_mars_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', NULL, NULL, NULL);


--
-- Data for Name: mars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mars VALUES (1, 'Joe', 'No problem', 1, '2024-07-01', NULL);
INSERT INTO public.mars VALUES (2, 'Joe', 'No problem', 1, '2024-07-02', NULL);
INSERT INTO public.mars VALUES (3, 'Joe', 'No problem', 1, '2024-07-03', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mike', 'No problem', 1, '2024-07-01', NULL);
INSERT INTO public.moon VALUES (21, 'mike', 'No problem', 1, '2024-07-02', NULL);
INSERT INTO public.moon VALUES (22, 'mike', 'No problem', 1, '2024-07-03', NULL);
INSERT INTO public.moon VALUES (23, 'mike', 'No problem', 1, '2024-07-04', NULL);
INSERT INTO public.moon VALUES (24, 'mike', 'No problem', 1, '2024-07-05', NULL);
INSERT INTO public.moon VALUES (25, 'mike', 'No problem', 1, '2024-07-06', NULL);
INSERT INTO public.moon VALUES (26, 'mike', 'No problem', 1, '2024-07-07', NULL);
INSERT INTO public.moon VALUES (27, 'mike', 'No problem', 1, '2024-07-08', NULL);
INSERT INTO public.moon VALUES (28, 'mike', 'No problem', 1, '2024-07-09', NULL);
INSERT INTO public.moon VALUES (29, 'mike', 'No problem', 1, '2024-07-10', NULL);
INSERT INTO public.moon VALUES (30, 'mike', 'No problem', 1, '2024-07-11', NULL);
INSERT INTO public.moon VALUES (31, 'mike', 'No problem', 1, '2024-07-12', NULL);
INSERT INTO public.moon VALUES (32, 'mike', 'No problem', 1, '2024-07-13', NULL);
INSERT INTO public.moon VALUES (33, 'mike', 'No problem', 1, '2024-07-14', NULL);
INSERT INTO public.moon VALUES (34, 'mike', 'No problem', 1, '2024-07-15', NULL);
INSERT INTO public.moon VALUES (35, 'mike', 'No problem', 1, '2024-07-16', NULL);
INSERT INTO public.moon VALUES (36, 'mike', 'No problem', 1, '2024-07-17', NULL);
INSERT INTO public.moon VALUES (37, 'mike', 'No problem', 1, '2024-07-18', NULL);
INSERT INTO public.moon VALUES (38, 'mike', 'No problem', 1, '2024-07-19', NULL);
INSERT INTO public.moon VALUES (39, 'mike', 'No problem', 1, '2024-07-20', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'moon', NULL, 1, NULL, 2, 3389.50, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'mars', NULL, 1, NULL, 0, 1737.40, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'mercury', NULL, 1, NULL, 0, 24439.70, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'venus', NULL, 1, NULL, 0, 6052.00, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'earth', NULL, 1, NULL, 1, 6371.00, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'jupiter', NULL, 1, NULL, 79, 69911.00, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'saturn', NULL, 1, NULL, 83, 58232.00, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'uranus', NULL, 1, NULL, 27, 25362.00, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'neptune', NULL, 1, NULL, 14, 24622.00, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'pluto', NULL, 1, NULL, 5, 1188.30, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'haumea', NULL, 1, NULL, 2, 816.00, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'eris', NULL, 1, NULL, 1, 1163.00, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'makemake', NULL, 1, NULL, 1, 715.00, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Mirach', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'M33-1', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'NGC 5195-A', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'M104-A', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'LMC-VarA', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: mars_mars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mars_mars_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: mars mars_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_no_key UNIQUE (no);


--
-- Name: mars mars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_pkey PRIMARY KEY (mars_id);


--
-- Name: moon moon_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_no_key UNIQUE (no);


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

