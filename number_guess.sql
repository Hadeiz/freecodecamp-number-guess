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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    tries integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (3, 3, 4);
INSERT INTO public.games VALUES (4, 3, 3);
INSERT INTO public.games VALUES (5, 3, 3);
INSERT INTO public.games VALUES (6, 3, 3);
INSERT INTO public.games VALUES (7, 4, 4);
INSERT INTO public.games VALUES (8, 4, 2);
INSERT INTO public.games VALUES (9, 5, 7);
INSERT INTO public.games VALUES (10, 5, 7);
INSERT INTO public.games VALUES (11, 4, 8);
INSERT INTO public.games VALUES (12, 4, 4);
INSERT INTO public.games VALUES (13, 4, 4);
INSERT INTO public.games VALUES (14, 6, 6);
INSERT INTO public.games VALUES (15, 6, 3);
INSERT INTO public.games VALUES (16, 7, 2);
INSERT INTO public.games VALUES (17, 7, 4);
INSERT INTO public.games VALUES (18, 6, 9);
INSERT INTO public.games VALUES (19, 6, 6);
INSERT INTO public.games VALUES (20, 6, 4);
INSERT INTO public.games VALUES (21, 8, 5);
INSERT INTO public.games VALUES (22, 8, 11);
INSERT INTO public.games VALUES (23, 9, 8);
INSERT INTO public.games VALUES (24, 9, 8);
INSERT INTO public.games VALUES (25, 8, 11);
INSERT INTO public.games VALUES (26, 8, 10);
INSERT INTO public.games VALUES (27, 8, 4);
INSERT INTO public.games VALUES (28, 10, 3);
INSERT INTO public.games VALUES (29, 10, 5);
INSERT INTO public.games VALUES (30, 11, 3);
INSERT INTO public.games VALUES (31, 11, 4);
INSERT INTO public.games VALUES (32, 10, 6);
INSERT INTO public.games VALUES (33, 10, 10);
INSERT INTO public.games VALUES (34, 10, 3);
INSERT INTO public.games VALUES (35, 12, 769);
INSERT INTO public.games VALUES (36, 12, 906);
INSERT INTO public.games VALUES (37, 13, 414);
INSERT INTO public.games VALUES (38, 13, 338);
INSERT INTO public.games VALUES (39, 12, 767);
INSERT INTO public.games VALUES (40, 12, 808);
INSERT INTO public.games VALUES (41, 12, 595);
INSERT INTO public.games VALUES (42, 14, 23);
INSERT INTO public.games VALUES (43, 14, 660);
INSERT INTO public.games VALUES (44, 15, 994);
INSERT INTO public.games VALUES (45, 15, 965);
INSERT INTO public.games VALUES (46, 14, 704);
INSERT INTO public.games VALUES (47, 14, 25);
INSERT INTO public.games VALUES (48, 14, 716);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'Kjartan');
INSERT INTO public.users VALUES (4, 'user_1773689592417');
INSERT INTO public.users VALUES (5, 'user_1773689592416');
INSERT INTO public.users VALUES (6, 'user_1773689625438');
INSERT INTO public.users VALUES (7, 'user_1773689625437');
INSERT INTO public.users VALUES (8, 'user_1773689724758');
INSERT INTO public.users VALUES (9, 'user_1773689724757');
INSERT INTO public.users VALUES (10, 'user_1773689731230');
INSERT INTO public.users VALUES (11, 'user_1773689731229');
INSERT INTO public.users VALUES (12, 'user_1773689774874');
INSERT INTO public.users VALUES (13, 'user_1773689774873');
INSERT INTO public.users VALUES (14, 'user_1773689791836');
INSERT INTO public.users VALUES (15, 'user_1773689791835');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 48, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

