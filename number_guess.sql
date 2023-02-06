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

DROP DATABASE guessing_game;
--
-- Name: guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guessing_game OWNER TO freecodecamp;

\connect guessing_game

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
-- Name: games_played; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_played (
    game_id integer NOT NULL,
    username character varying(22),
    guesses integer
);


ALTER TABLE public.games_played OWNER TO freecodecamp;

--
-- Name: games_played_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_played_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_played_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_played_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_played_game_id_seq OWNED BY public.games_played.game_id;


--
-- Name: games_played game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_played ALTER COLUMN game_id SET DEFAULT nextval('public.games_played_game_id_seq'::regclass);


--
-- Data for Name: games_played; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_played VALUES (1, 'test', 4);
INSERT INTO public.games_played VALUES (2, 'test', 2);
INSERT INTO public.games_played VALUES (3, 'test', 4);
INSERT INTO public.games_played VALUES (4, 'test', 12);
INSERT INTO public.games_played VALUES (5, 'user_1675717920536', 71);
INSERT INTO public.games_played VALUES (6, 'user_1675717920536', 419);
INSERT INTO public.games_played VALUES (7, 'user_1675717920535', 32);
INSERT INTO public.games_played VALUES (8, 'user_1675717920535', 182);
INSERT INTO public.games_played VALUES (9, 'user_1675717920536', 750);
INSERT INTO public.games_played VALUES (10, 'user_1675717920536', 786);
INSERT INTO public.games_played VALUES (11, 'user_1675717920536', 848);
INSERT INTO public.games_played VALUES (12, 'user_1675717966188', 215);
INSERT INTO public.games_played VALUES (13, 'user_1675717966188', 690);
INSERT INTO public.games_played VALUES (14, 'user_1675717966187', 269);
INSERT INTO public.games_played VALUES (15, 'user_1675717966187', 229);
INSERT INTO public.games_played VALUES (16, 'user_1675717966188', 737);
INSERT INTO public.games_played VALUES (17, 'user_1675717966188', 89);
INSERT INTO public.games_played VALUES (18, 'user_1675717966188', 264);
INSERT INTO public.games_played VALUES (19, 'user_1675718021883', 223);
INSERT INTO public.games_played VALUES (20, 'user_1675718021883', 535);
INSERT INTO public.games_played VALUES (21, 'user_1675718021882', 359);
INSERT INTO public.games_played VALUES (22, 'user_1675718021882', 835);
INSERT INTO public.games_played VALUES (23, 'user_1675718021883', 651);
INSERT INTO public.games_played VALUES (24, 'user_1675718021883', 135);
INSERT INTO public.games_played VALUES (25, 'user_1675718021883', 975);
INSERT INTO public.games_played VALUES (26, '1234567890123456789012', 11);
INSERT INTO public.games_played VALUES (27, 'user_1675718079023', 895);
INSERT INTO public.games_played VALUES (28, 'user_1675718079023', 97);
INSERT INTO public.games_played VALUES (29, 'user_1675718079022', 630);
INSERT INTO public.games_played VALUES (30, 'user_1675718079022', 982);
INSERT INTO public.games_played VALUES (31, 'user_1675718079023', 338);
INSERT INTO public.games_played VALUES (32, 'user_1675718079023', 609);
INSERT INTO public.games_played VALUES (33, 'user_1675718079023', 970);
INSERT INTO public.games_played VALUES (34, 'user_1675718132231', 297);
INSERT INTO public.games_played VALUES (35, 'user_1675718132231', 864);
INSERT INTO public.games_played VALUES (36, 'user_1675718132230', 772);
INSERT INTO public.games_played VALUES (37, 'user_1675718132230', 583);
INSERT INTO public.games_played VALUES (38, 'user_1675718132231', 804);
INSERT INTO public.games_played VALUES (39, 'user_1675718132231', 19);
INSERT INTO public.games_played VALUES (40, 'user_1675718132231', 929);


--
-- Name: games_played_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_played_game_id_seq', 40, true);


--
-- Name: games_played games_played_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_played
    ADD CONSTRAINT games_played_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

