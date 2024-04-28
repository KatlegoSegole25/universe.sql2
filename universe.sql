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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    alien_id integer NOT NULL,
    name character varying(60),
    age_in_years integer,
    distance_from_earth numeric,
    are_deal boolean NOT NULL,
    will_come boolean NOT NULL,
    size integer,
    alt_name text
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.aliens.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_years integer,
    has_life boolean NOT NULL,
    survive_gw boolean NOT NULL,
    size integer,
    temperature numeric,
    alt_name text
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
    name character varying(60) NOT NULL,
    age_in_years integer,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    survive_gw boolean NOT NULL,
    size integer,
    alt_name text,
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
    name character varying(60) NOT NULL,
    age_in_years integer,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    survive_gw boolean NOT NULL,
    size integer,
    alt_name text,
    star_id integer NOT NULL
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
    name character varying(60) NOT NULL,
    age_in_years integer,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    survive_gw boolean NOT NULL,
    size integer,
    alt_name text,
    galaxy_id integer NOT NULL
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
-- Name: aliens alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN alien_id SET DEFAULT nextval('public.aliens_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'Zorblatt', 45, NULL, true, true, 3, 'Zorblatt Prime');
INSERT INTO public.aliens VALUES (2, 'Xenon', 32, NULL, false, true, 2, 'Xenon Alpha');
INSERT INTO public.aliens VALUES (3, 'Quarzoid', 78, NULL, true, true, 4, 'Quarzoid Omega');
INSERT INTO public.aliens VALUES (4, 'Nebulon', 56, NULL, false, true, 5, 'Nebulon Sigma');
INSERT INTO public.aliens VALUES (5, 'Zephyr', 41, NULL, true, true, 3, 'Zephyr Beta');
INSERT INTO public.aliens VALUES (6, 'Ecliptor', 60, NULL, false, true, 4, 'Ecliptor Delta');
INSERT INTO public.aliens VALUES (7, 'Aurora', 38, NULL, true, true, 2, 'Aurora Theta');
INSERT INTO public.aliens VALUES (8, 'Zentari', 49, NULL, false, true, 3, 'Zentari Prime');
INSERT INTO public.aliens VALUES (9, 'Nexor', 67, NULL, true, true, 4, 'Nexor Alpha');
INSERT INTO public.aliens VALUES (10, 'Quasar', 53, NULL, false, true, 5, 'Quasar Omega');
INSERT INTO public.aliens VALUES (11, 'Plasmoid', 44, NULL, true, true, 3, 'Plasmoid Sigma');
INSERT INTO public.aliens VALUES (12, 'Nova', 72, NULL, false, true, 4, 'Nova Beta');
INSERT INTO public.aliens VALUES (13, 'Zenith', 37, NULL, true, true, 2, 'Zenith Delta');
INSERT INTO public.aliens VALUES (14, 'Xanadu', 55, NULL, false, true, 3, 'Xanadu Theta');
INSERT INTO public.aliens VALUES (15, 'Pulsar', 62, NULL, true, true, 4, 'Pulsar Prime');
INSERT INTO public.aliens VALUES (16, 'Quintessence', 48, NULL, false, true, 5, 'Quintessence Alpha');
INSERT INTO public.aliens VALUES (17, 'Vortex', 39, NULL, true, true, 3, 'Vortex Omega');
INSERT INTO public.aliens VALUES (18, 'Asteria', 69, NULL, false, true, 4, 'Asteria Sigma');
INSERT INTO public.aliens VALUES (19, 'Celestia', 50, NULL, true, true, 2, 'Celestia Beta');
INSERT INTO public.aliens VALUES (20, 'Galaxor', 42, NULL, true, true, 3, 'Galaxor Prime');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14, true, true, 1, 5700, 'Milky Way Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, false, true, 1, 3500, 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8, false, true, 2, 3900, 'Triangulum Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 9, false, true, 1, 5500, 'Pinwheel Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 10, false, true, 1, 4800, 'Messier 87');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 9, false, true, 1, 4600, 'Whirlpool Galaxy');
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 10, false, true, 1, 5000, 'Sombrero Galaxy');
INSERT INTO public.galaxy VALUES (8, 'Large Magellanic Cloud', 12, false, true, 2, 5500, 'LMC');
INSERT INTO public.galaxy VALUES (9, 'Small Magellanic Cloud', 12, false, true, 2, 4800, 'SMC');
INSERT INTO public.galaxy VALUES (10, 'Centaurus A', 13, false, true, 1, 4200, 'Centaurus A');
INSERT INTO public.galaxy VALUES (11, 'Messier 81', 9, false, true, 1, 5500, 'Messier 81');
INSERT INTO public.galaxy VALUES (12, 'Messier 82', 9, false, true, 1, 5500, 'Messier 82');
INSERT INTO public.galaxy VALUES (13, 'Whirlpool 2', 9, false, true, 1, 4600, 'Whirlpool Galaxy 2');
INSERT INTO public.galaxy VALUES (14, 'Messier 101', 8, false, true, 1, 4700, 'Messier 101');
INSERT INTO public.galaxy VALUES (15, 'Galaxy1', 14, true, true, 1, 5700, 'Galaxy1');
INSERT INTO public.galaxy VALUES (16, 'Galaxy2', 10, false, true, 1, 3500, 'Galaxy2');
INSERT INTO public.galaxy VALUES (17, 'Galaxy3', 8, false, true, 2, 3900, 'Galaxy3');
INSERT INTO public.galaxy VALUES (18, 'Galaxy4', 9, false, true, 1, 5500, 'Galaxy4');
INSERT INTO public.galaxy VALUES (19, 'Galaxy5', 10, false, true, 1, 4800, 'Galaxy5');
INSERT INTO public.galaxy VALUES (20, 'Galaxy6', 9, false, true, 1, 4600, 'Galaxy6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4, 0.384, false, false, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 8, 9378, false, false, 1, 'Phobos', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 23459, false, false, 1, 'Deimos', 3);
INSERT INTO public.moon VALUES (4, 'Io', 8, 421800, false, false, 1, 'Io', 4);
INSERT INTO public.moon VALUES (5, 'Europa', 455, 671100, false, false, 1, 'Europa', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, 1070400, false, false, 2, 'Ganymede', 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1882700, false, false, 2, 'Callisto', 7);
INSERT INTO public.moon VALUES (8, 'Titan', 10, 1221870, false, false, 2, 'Titan', 8);
INSERT INTO public.moon VALUES (9, 'Rhea', 12, 527040, false, false, 1, 'Rhea', 9);
INSERT INTO public.moon VALUES (10, 'Iapetus', 13, 3560860, false, false, 1, 'Iapetus', 10);
INSERT INTO public.moon VALUES (11, 'Mimas', 8, 185539, false, false, 1, 'Mimas', 11);
INSERT INTO public.moon VALUES (12, 'Enceladus', 9, 238042, false, false, 1, 'Enceladus', 12);
INSERT INTO public.moon VALUES (13, 'Triton', 12, 354759, false, false, 2, 'Triton', 13);
INSERT INTO public.moon VALUES (14, 'Charon', 13, 19591, false, false, 1, 'Charon', 14);
INSERT INTO public.moon VALUES (15, 'Phoebe', 7, 12952000, false, false, 1, 'Phoebe', 15);
INSERT INTO public.moon VALUES (16, 'Ariel', 9, 191240, false, false, 1, 'Ariel', 16);
INSERT INTO public.moon VALUES (17, 'Umbriel', 10, 266300, false, false, 1, 'Umbriel', 17);
INSERT INTO public.moon VALUES (18, 'Dione', 13, 377396, false, false, 1, 'Dione', 18);
INSERT INTO public.moon VALUES (19, 'Tethys', 8, 294619, false, false, 1, 'Tethys', 19);
INSERT INTO public.moon VALUES (20, 'Titania', 9, 435840, false, false, 1, 'Titania', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4, 36, false, false, 1, 'Mercury', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 8, 67, false, false, 1, 'Venus', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 6, 0, true, true, 1, 'Earth', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 8, 35, false, false, 1, 'Mars', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 455, 366, false, false, 4, 'Jupiter', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 4, 778, false, false, 3, 'Saturn', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 5, 1450, false, false, 2, 'Uranus', 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 10, 4550, false, false, 2, 'Neptune', 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 13, 5900, false, false, 1, 'Pluto', 9);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 8, 600, true, false, 2, 'Kepler-22b', 10);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 9, 156, true, false, 2, 'Osiris', 11);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 12, 433, true, false, 1, 'WASP-12b', 12);
INSERT INTO public.planet VALUES (13, 'Kepler-186f', 13, 562, true, false, 2, 'Kepler-186f', 13);
INSERT INTO public.planet VALUES (14, 'Gliese 581g', 7, 20, true, false, 2, 'Zarmina', 14);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1d', 9, 39, true, false, 1, 'TRAPPIST-1d', 15);
INSERT INTO public.planet VALUES (16, 'Proxima Centauri b', 12, 4, true, false, 1, 'Proxima Centauri b', 16);
INSERT INTO public.planet VALUES (17, 'TOI-700 d', 13, 101, true, false, 2, 'TOI-700 d', 17);
INSERT INTO public.planet VALUES (18, 'Tau Ceti e', 8, 12, true, false, 2, 'Tau Ceti e', 18);
INSERT INTO public.planet VALUES (19, 'LHS 1140 b', 9, 41, true, false, 1, 'LHS 1140 b', 19);
INSERT INTO public.planet VALUES (20, 'Gliese 876 d', 7, 15, true, false, 1, 'Gliese 876 d', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4, 0, false, false, 1, 'Sol', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 8, 8, true, false, 1, 'Alpha Canis Majoris', 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 6, 4, false, false, 2, 'Rigel Kentaurus', 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 8, 643, false, false, 4, 'Betelgeuse', 4);
INSERT INTO public.star VALUES (5, 'Vega', 455, 25, false, false, 1, 'Vega', 5);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4, 4, false, false, 3, 'Proxima Centauri', 6);
INSERT INTO public.star VALUES (7, 'Pollux', 5, 34, false, false, 2, 'Pollux', 7);
INSERT INTO public.star VALUES (8, 'Altair', 10, 17, false, false, 1, 'Altair', 8);
INSERT INTO public.star VALUES (9, 'Capella', 12, 42, false, false, 3, 'Capella', 9);
INSERT INTO public.star VALUES (10, 'Aldebaran', 13, 65, false, false, 3, 'Aldebaran', 10);
INSERT INTO public.star VALUES (11, 'Deneb', 8, 1400, false, false, 4, 'Deneb', 11);
INSERT INTO public.star VALUES (12, 'Antares', 9, 550, false, false, 3, 'Antares', 12);
INSERT INTO public.star VALUES (13, 'Arcturus', 7, 36, false, false, 3, 'Arcturus', 13);
INSERT INTO public.star VALUES (14, 'Rigel', 10, 860, false, false, 4, 'Rigel', 14);
INSERT INTO public.star VALUES (15, 'Star1', 4, 1, true, false, 1, 'Star1', 15);
INSERT INTO public.star VALUES (16, 'Star2', 8, 2, true, false, 1, 'Star2', 16);
INSERT INTO public.star VALUES (17, 'Star3', 6, 3, true, false, 2, 'Star3', 17);
INSERT INTO public.star VALUES (18, 'Star4', 8, 4, true, false, 4, 'Star4', 18);
INSERT INTO public.star VALUES (19, 'Star5', 455, 5, true, false, 1, 'Star5', 19);
INSERT INTO public.star VALUES (20, 'Polaris', 10, 434, false, false, 1, 'North Star', 20);


--
-- Name: aliens_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: aliens aliens_alt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_alt_name_key UNIQUE (alt_name);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_alt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_alt_name_key UNIQUE (alt_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_alt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_alt_name_key UNIQUE (alt_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_alt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_alt_name_key UNIQUE (alt_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_alt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_alt_name_key UNIQUE (alt_name);


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

