--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    guesses integer NOT NULL
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
    user_name character varying(22) NOT NULL,
    user_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 60, 364);
INSERT INTO public.games VALUES (2, 60, 181);
INSERT INTO public.games VALUES (3, 61, 790);
INSERT INTO public.games VALUES (4, 61, 871);
INSERT INTO public.games VALUES (5, 60, 193);
INSERT INTO public.games VALUES (6, 60, 28);
INSERT INTO public.games VALUES (7, 60, 777);
INSERT INTO public.games VALUES (8, 62, 658);
INSERT INTO public.games VALUES (9, 62, 72);
INSERT INTO public.games VALUES (10, 63, 67);
INSERT INTO public.games VALUES (11, 63, 468);
INSERT INTO public.games VALUES (12, 62, 729);
INSERT INTO public.games VALUES (13, 62, 976);
INSERT INTO public.games VALUES (14, 62, 795);
INSERT INTO public.games VALUES (15, 3, 3);
INSERT INTO public.games VALUES (16, 64, 152);
INSERT INTO public.games VALUES (17, 64, 357);
INSERT INTO public.games VALUES (18, 65, 743);
INSERT INTO public.games VALUES (19, 65, 384);
INSERT INTO public.games VALUES (20, 64, 922);
INSERT INTO public.games VALUES (21, 64, 4);
INSERT INTO public.games VALUES (22, 64, 209);
INSERT INTO public.games VALUES (23, 66, 374);
INSERT INTO public.games VALUES (24, 66, 74);
INSERT INTO public.games VALUES (25, 67, 384);
INSERT INTO public.games VALUES (26, 67, 544);
INSERT INTO public.games VALUES (27, 66, 805);
INSERT INTO public.games VALUES (28, 66, 422);
INSERT INTO public.games VALUES (29, 66, 295);
INSERT INTO public.games VALUES (30, 68, 375);
INSERT INTO public.games VALUES (31, 68, 989);
INSERT INTO public.games VALUES (32, 69, 397);
INSERT INTO public.games VALUES (33, 69, 170);
INSERT INTO public.games VALUES (34, 68, 277);
INSERT INTO public.games VALUES (35, 68, 772);
INSERT INTO public.games VALUES (36, 68, 829);
INSERT INTO public.games VALUES (37, 70, 692);
INSERT INTO public.games VALUES (38, 70, 546);
INSERT INTO public.games VALUES (39, 71, 921);
INSERT INTO public.games VALUES (40, 71, 160);
INSERT INTO public.games VALUES (41, 70, 745);
INSERT INTO public.games VALUES (42, 70, 139);
INSERT INTO public.games VALUES (43, 70, 511);
INSERT INTO public.games VALUES (44, 72, 731);
INSERT INTO public.games VALUES (45, 72, 105);
INSERT INTO public.games VALUES (46, 73, 392);
INSERT INTO public.games VALUES (47, 73, 21);
INSERT INTO public.games VALUES (48, 72, 125);
INSERT INTO public.games VALUES (49, 72, 350);
INSERT INTO public.games VALUES (50, 72, 473);
INSERT INTO public.games VALUES (51, 74, 301);
INSERT INTO public.games VALUES (52, 74, 56);
INSERT INTO public.games VALUES (53, 75, 623);
INSERT INTO public.games VALUES (54, 75, 953);
INSERT INTO public.games VALUES (55, 74, 51);
INSERT INTO public.games VALUES (56, 74, 180);
INSERT INTO public.games VALUES (57, 74, 664);
INSERT INTO public.games VALUES (58, 76, 383);
INSERT INTO public.games VALUES (59, 76, 884);
INSERT INTO public.games VALUES (60, 77, 693);
INSERT INTO public.games VALUES (61, 77, 218);
INSERT INTO public.games VALUES (62, 76, 19);
INSERT INTO public.games VALUES (63, 76, 682);
INSERT INTO public.games VALUES (64, 76, 110);
INSERT INTO public.games VALUES (65, 78, 696);
INSERT INTO public.games VALUES (66, 78, 421);
INSERT INTO public.games VALUES (67, 79, 687);
INSERT INTO public.games VALUES (68, 79, 328);
INSERT INTO public.games VALUES (69, 78, 346);
INSERT INTO public.games VALUES (70, 78, 556);
INSERT INTO public.games VALUES (71, 78, 280);
INSERT INTO public.games VALUES (72, 80, 550);
INSERT INTO public.games VALUES (73, 80, 67);
INSERT INTO public.games VALUES (74, 81, 742);
INSERT INTO public.games VALUES (75, 81, 933);
INSERT INTO public.games VALUES (76, 80, 213);
INSERT INTO public.games VALUES (77, 80, 678);
INSERT INTO public.games VALUES (78, 80, 512);
INSERT INTO public.games VALUES (79, 82, 705);
INSERT INTO public.games VALUES (80, 82, 844);
INSERT INTO public.games VALUES (81, 83, 46);
INSERT INTO public.games VALUES (82, 83, 795);
INSERT INTO public.games VALUES (83, 82, 246);
INSERT INTO public.games VALUES (84, 82, 392);
INSERT INTO public.games VALUES (85, 82, 80);
INSERT INTO public.games VALUES (86, 84, 391);
INSERT INTO public.games VALUES (87, 84, 498);
INSERT INTO public.games VALUES (88, 85, 663);
INSERT INTO public.games VALUES (89, 85, 892);
INSERT INTO public.games VALUES (90, 84, 221);
INSERT INTO public.games VALUES (91, 84, 891);
INSERT INTO public.games VALUES (92, 84, 934);
INSERT INTO public.games VALUES (93, 86, 210);
INSERT INTO public.games VALUES (94, 86, 284);
INSERT INTO public.games VALUES (95, 87, 564);
INSERT INTO public.games VALUES (96, 87, 67);
INSERT INTO public.games VALUES (97, 86, 475);
INSERT INTO public.games VALUES (98, 86, 106);
INSERT INTO public.games VALUES (99, 86, 658);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1703285111973', 1);
INSERT INTO public.users VALUES ('user_1703285111972', 2);
INSERT INTO public.users VALUES ('achorn', 3);
INSERT INTO public.users VALUES ('user_1703285178052', 4);
INSERT INTO public.users VALUES ('user_1703285178051', 5);
INSERT INTO public.users VALUES ('user_1703285255031', 6);
INSERT INTO public.users VALUES ('user_1703285255030', 7);
INSERT INTO public.users VALUES ('user_1703285292500', 8);
INSERT INTO public.users VALUES ('user_1703285292499', 10);
INSERT INTO public.users VALUES ('user_1703285319451', 16);
INSERT INTO public.users VALUES ('user_1703285319450', 17);
INSERT INTO public.users VALUES ('user_1703285408514', 18);
INSERT INTO public.users VALUES ('user_1703285408513', 19);
INSERT INTO public.users VALUES ('user_1703285464804', 20);
INSERT INTO public.users VALUES ('user_1703285464803', 21);
INSERT INTO public.users VALUES ('user_1703285489825', 22);
INSERT INTO public.users VALUES ('user_1703285489824', 23);
INSERT INTO public.users VALUES ('user_1703285529751', 24);
INSERT INTO public.users VALUES ('user_1703285529750', 25);
INSERT INTO public.users VALUES ('user_1703285536125', 26);
INSERT INTO public.users VALUES ('user_1703285536124', 27);
INSERT INTO public.users VALUES ('user_1703285574575', 28);
INSERT INTO public.users VALUES ('user_1703285574574', 29);
INSERT INTO public.users VALUES ('user_1703285598491', 30);
INSERT INTO public.users VALUES ('user_1703285598490', 31);
INSERT INTO public.users VALUES ('user_1703285603562', 32);
INSERT INTO public.users VALUES ('user_1703285603561', 33);
INSERT INTO public.users VALUES ('user_1703285643389', 34);
INSERT INTO public.users VALUES ('user_1703285643388', 35);
INSERT INTO public.users VALUES ('user_1703285656724', 36);
INSERT INTO public.users VALUES ('user_1703285656723', 37);
INSERT INTO public.users VALUES ('user_1703285675465', 38);
INSERT INTO public.users VALUES ('user_1703285675464', 39);
INSERT INTO public.users VALUES ('user_1703285699439', 40);
INSERT INTO public.users VALUES ('user_1703285699438', 41);
INSERT INTO public.users VALUES ('user_1703285792434', 42);
INSERT INTO public.users VALUES ('user_1703285792433', 43);
INSERT INTO public.users VALUES ('user_1703285852221', 44);
INSERT INTO public.users VALUES ('user_1703285852220', 45);
INSERT INTO public.users VALUES ('user_1703285926612', 46);
INSERT INTO public.users VALUES ('user_1703285926611', 47);
INSERT INTO public.users VALUES ('user_1703286005608', 48);
INSERT INTO public.users VALUES ('user_1703286005607', 49);
INSERT INTO public.users VALUES ('user_1703286047863', 50);
INSERT INTO public.users VALUES ('user_1703286047862', 51);
INSERT INTO public.users VALUES ('user_1703286072581', 52);
INSERT INTO public.users VALUES ('user_1703286072580', 53);
INSERT INTO public.users VALUES ('user_1703286268593', 54);
INSERT INTO public.users VALUES ('user_1703286268592', 55);
INSERT INTO public.users VALUES ('user_1703286330633', 56);
INSERT INTO public.users VALUES ('user_1703286330632', 57);
INSERT INTO public.users VALUES ('user_1703287250910', 58);
INSERT INTO public.users VALUES ('user_1703287250909', 59);
INSERT INTO public.users VALUES ('user_1703287417370', 60);
INSERT INTO public.users VALUES ('user_1703287417369', 61);
INSERT INTO public.users VALUES ('user_1703287434943', 62);
INSERT INTO public.users VALUES ('user_1703287434942', 63);
INSERT INTO public.users VALUES ('user_1703287496884', 64);
INSERT INTO public.users VALUES ('user_1703287496883', 65);
INSERT INTO public.users VALUES ('user_1703287543240', 66);
INSERT INTO public.users VALUES ('user_1703287543239', 67);
INSERT INTO public.users VALUES ('user_1703287566309', 68);
INSERT INTO public.users VALUES ('user_1703287566308', 69);
INSERT INTO public.users VALUES ('user_1703287650801', 70);
INSERT INTO public.users VALUES ('user_1703287650800', 71);
INSERT INTO public.users VALUES ('user_1703287659148', 72);
INSERT INTO public.users VALUES ('user_1703287659147', 73);
INSERT INTO public.users VALUES ('user_1703287683703', 74);
INSERT INTO public.users VALUES ('user_1703287683702', 75);
INSERT INTO public.users VALUES ('user_1703287713519', 76);
INSERT INTO public.users VALUES ('user_1703287713518', 77);
INSERT INTO public.users VALUES ('user_1703287731181', 78);
INSERT INTO public.users VALUES ('user_1703287731180', 79);
INSERT INTO public.users VALUES ('user_1703287740922', 80);
INSERT INTO public.users VALUES ('user_1703287740921', 81);
INSERT INTO public.users VALUES ('user_1703287752162', 82);
INSERT INTO public.users VALUES ('user_1703287752161', 83);
INSERT INTO public.users VALUES ('user_1703287755467', 84);
INSERT INTO public.users VALUES ('user_1703287755466', 85);
INSERT INTO public.users VALUES ('user_1703287778912', 86);
INSERT INTO public.users VALUES ('user_1703287778911', 87);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 99, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 87, true);


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
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

