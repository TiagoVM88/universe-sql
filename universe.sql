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
    galaxy_type character varying(10),
    age_in_millions_of_yrs integer,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_inteligent boolean
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    moon_type text,
    moon_code text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    distance_to_earth numeric,
    star_id integer,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    age_in_millions_of_yrs integer NOT NULL,
    star_type character varying(15)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gal1', 'gas', 1000, true);
INSERT INTO public.galaxy VALUES (2, 'gal2', 'solid', 800, true);
INSERT INTO public.galaxy VALUES (3, 'gal3', 'solid', 100, true);
INSERT INTO public.galaxy VALUES (4, 'gal4', '', 100, true);
INSERT INTO public.galaxy VALUES (5, 'gal5', '', 10, false);
INSERT INTO public.galaxy VALUES (6, 'gal6', '', 10000, false);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (1, '1', NULL);
INSERT INTO public.life VALUES (2, '1', NULL);
INSERT INTO public.life VALUES (3, '1', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 2, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon2', 4, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'x23n', true, 1000, 3, true);
INSERT INTO public.planet VALUES (21, 'Z1', true, 10, 5, false);
INSERT INTO public.planet VALUES (2, 'Z3', false, 150, 5, false);
INSERT INTO public.planet VALUES (6, 'AZ3', false, 2150, 5, false);
INSERT INTO public.planet VALUES (3, 'aa12AZ3', false, 250, 1, false);
INSERT INTO public.planet VALUES (4, 'ROGER', false, 250, 2, true);
INSERT INTO public.planet VALUES (5, 'ROGER', true, 20, 4, true);
INSERT INTO public.planet VALUES (7, 'ALPHA', true, 20111, 2, true);
INSERT INTO public.planet VALUES (8, 'BETA', false, 521, 2, false);
INSERT INTO public.planet VALUES (9, 'CHARLIE', false, 1, 6, true);
INSERT INTO public.planet VALUES (10, 'DELTA', false, 1000, 2, true);
INSERT INTO public.planet VALUES (11, 'OMEGA', false, 999999999, 4, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 1, 90, NULL);
INSERT INTO public.star VALUES (2, 'xenon', 5, 20, NULL);
INSERT INTO public.star VALUES (3, 'zeus', 3, 20, NULL);
INSERT INTO public.star VALUES (4, 'thor', 5, 250, NULL);
INSERT INTO public.star VALUES (5, 'burst', 3, 50, NULL);
INSERT INTO public.star VALUES (6, 'god', 4, 5, NULL);


--
-- Name: galaxy galaxypk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxypk PRIMARY KEY (galaxy_id);


--
-- Name: life life_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_galaxy_id UNIQUE (life_id);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id UNIQUE (moon_id);


--
-- Name: moon moon_moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_code_key UNIQUE (moon_code);


--
-- Name: moon moonpk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonpk PRIMARY KEY (moon_id);


--
-- Name: planet planet_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id UNIQUE (planet_id);


--
-- Name: planet planetpk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetpk PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id UNIQUE (star_id);


--
-- Name: star starpk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starpk PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

