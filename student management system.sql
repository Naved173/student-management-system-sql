--
-- PostgreSQL database dump
--

\restrict 7OfUDcElQzJc9Gs5IlC21Ho7lpFlOCpHuMs8UBfJFcqYsyjp8l6glOCboHFyBmy

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-07-19 18:03:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16615)
-- Name: Enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Enrollments" (
    enrollment_id integer NOT NULL,
    student_id integer,
    course_id integer,
    enrollment_date date
);


ALTER TABLE public."Enrollments" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16647)
-- Name: attendance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendance (
    attendance_id integer NOT NULL,
    student_id integer,
    course_id integer,
    attendance_date date,
    status character varying(10)
);


ALTER TABLE public.attendance OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16607)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_name character varying(100),
    duration character varying(30),
    fees numeric
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16641)
-- Name: marks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marks (
    mark_id integer NOT NULL,
    student_id integer,
    course_id integer,
    subject character varying(50),
    marks integer
);


ALTER TABLE public.marks OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16635)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    gender character varying(10),
    dob date,
    email character varying(100),
    phone character varying(15)
);


ALTER TABLE public.student OWNER TO postgres;

--
-- TOC entry 5031 (class 0 OID 16615)
-- Dependencies: 220
-- Data for Name: Enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Enrollments" (enrollment_id, student_id, course_id, enrollment_date) FROM stdin;
1	1	101	2026-01-10
2	2	102	2026-01-11
3	3	103	2026-01-12
4	4	104	2026-01-13
5	5	105	2026-01-14
6	6	106	2026-01-15
7	7	107	2026-01-16
8	8	108	2026-01-17
9	9	109	2026-01-18
10	10	110	2026-01-19
11	11	101	2026-01-20
12	12	102	2026-01-21
13	13	103	2026-01-22
14	14	104	2026-01-23
15	15	105	2026-01-24
16	16	106	2026-01-25
17	17	107	2026-01-26
18	18	108	2026-01-27
19	19	109	2026-01-28
20	20	110	2026-01-29
21	21	101	2026-02-01
22	22	102	2026-02-02
23	23	103	2026-02-03
24	24	104	2026-02-04
25	25	105	2026-02-05
26	26	106	2026-02-06
27	27	107	2026-02-07
28	28	108	2026-02-08
29	29	109	2026-02-09
30	30	110	2026-02-10
\.


--
-- TOC entry 5034 (class 0 OID 16647)
-- Dependencies: 223
-- Data for Name: attendance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendance (attendance_id, student_id, course_id, attendance_date, status) FROM stdin;
1	1	101	2026-07-01	Present
2	2	101	2026-07-01	Absent
3	3	101	2026-07-01	Present
4	4	101	2026-07-01	Present
5	5	101	2026-07-01	Absent
6	6	102	2026-07-02	Present
7	7	102	2026-07-02	Present
8	8	102	2026-07-02	Absent
9	9	102	2026-07-02	Present
10	10	102	2026-07-02	Present
11	11	103	2026-07-03	Present
12	12	103	2026-07-03	Absent
13	13	103	2026-07-03	Present
14	14	103	2026-07-03	Present
15	15	103	2026-07-03	Absent
16	16	104	2026-07-04	Present
17	17	104	2026-07-04	Present
18	18	104	2026-07-04	Absent
19	19	104	2026-07-04	Present
20	20	104	2026-07-04	Present
21	21	105	2026-07-05	Absent
22	22	105	2026-07-05	Present
23	23	105	2026-07-05	Present
24	24	105	2026-07-05	Absent
25	25	105	2026-07-05	Present
26	26	106	2026-07-06	Present
27	27	106	2026-07-06	Absent
28	28	106	2026-07-06	Present
29	29	106	2026-07-06	Present
30	30	106	2026-07-06	Absent
\.


--
-- TOC entry 5030 (class 0 OID 16607)
-- Dependencies: 219
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_name, duration, fees) FROM stdin;
101	Computer Science	4 Years	50000.00
102	Information Technology	4 Years	48000.00
103	Electronics Engineering	4 Years	52000.00
104	Mechanical Engineering	4 Years	51000.00
105	Civil Engineering	4 Years	49500.00
106	Business Administration	3 Years	45000.00
107	Commerce	3 Years	40000.00
108	Mathematics	3 Years	42000.00
109	Physics	3 Years	43000.00
110	Chemistry	3 Years	42500.00
\.


--
-- TOC entry 5033 (class 0 OID 16641)
-- Dependencies: 222
-- Data for Name: marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marks (mark_id, student_id, course_id, subject, marks) FROM stdin;
1	1	101	Mathematics	85
2	2	101	Mathematics	90
3	3	101	Mathematics	78
4	4	101	Mathematics	88
5	5	101	Mathematics	91
6	6	102	Science	84
7	7	102	Science	76
8	8	102	Science	89
9	9	102	Science	92
10	10	102	Science	80
11	11	103	English	87
12	12	103	English	75
13	13	103	English	93
14	14	103	English	81
15	15	103	English	86
16	16	104	Computer	95
17	17	104	Computer	88
18	18	104	Computer	79
19	19	104	Computer	90
20	20	104	Computer	82
21	21	105	Physics	84
22	22	105	Physics	91
23	23	105	Physics	77
24	24	105	Physics	89
25	25	105	Physics	85
26	26	106	Chemistry	80
27	27	106	Chemistry	94
28	28	106	Chemistry	83
29	29	106	Chemistry	87
30	30	106	Chemistry	90
\.


--
-- TOC entry 5032 (class 0 OID 16635)
-- Dependencies: 221
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (student_id, first_name, last_name, gender, dob, email, phone) FROM stdin;
1	John	Smith	Male	2003-01-15	john.smith@gmail.com	9876543201
2	Emma	Johnson	Female	2002-02-10	emma.johnson@gmail.com	9876543202
3	David	Brown	Male	2003-03-20	david.brown@gmail.com	9876543203
4	Sophia	Wilson	Female	2002-04-18	sophia.wilson@gmail.com	9876543204
5	Michael	Taylor	Male	2003-05-25	michael.taylor@gmail.com	9876543205
6	Olivia	Anderson	Female	2002-06-12	olivia.anderson@gmail.com	9876543206
7	James	Thomas	Male	2003-07-30	james.thomas@gmail.com	9876543207
8	Ava	Jackson	Female	2002-08-22	ava.jackson@gmail.com	9876543208
9	William	White	Male	2003-09-11	william.white@gmail.com	9876543209
10	Isabella	Harris	Female	2002-10-05	isabella.harris@gmail.com	9876543210
11	Benjamin	Martin	Male	2003-11-15	benjamin.martin@gmail.com	9876543211
12	Mia	Thompson	Female	2002-12-20	mia.thompson@gmail.com	9876543212
13	Lucas	Garcia	Male	2003-01-09	lucas.garcia@gmail.com	9876543213
14	Charlotte	Martinez	Female	2002-02-14	charlotte.martinez@gmail.com	9876543214
15	Henry	Robinson	Male	2003-03-08	henry.robinson@gmail.com	9876543215
16	Amelia	Clark	Female	2002-04-19	amelia.clark@gmail.com	9876543216
17	Alexander	Rodriguez	Male	2003-05-23	alex.rodriguez@gmail.com	9876543217
18	Harper	Lewis	Female	2002-06-16	harper.lewis@gmail.com	9876543218
19	Daniel	Lee	Male	2003-07-04	daniel.lee@gmail.com	9876543219
20	Evelyn	Walker	Female	2002-08-27	evelyn.walker@gmail.com	9876543220
21	Matthew	Hall	Male	2003-09-17	matthew.hall@gmail.com	9876543221
22	Abigail	Allen	Female	2002-10-09	abigail.allen@gmail.com	9876543222
23	Joseph	Young	Male	2003-11-28	joseph.young@gmail.com	9876543223
24	Emily	King	Female	2002-12-03	emily.king@gmail.com	9876543224
25	Samuel	Wright	Male	2003-01-18	samuel.wright@gmail.com	9876543225
26	Ella	Scott	Female	2002-02-26	ella.scott@gmail.com	9876543226
27	Jack	Green	Male	2003-03-12	jack.green@gmail.com	9876543227
28	Grace	Baker	Female	2002-04-07	grace.baker@gmail.com	9876543228
29	Owen	Adams	Male	2003-05-31	owen.adams@gmail.com	9876543229
30	Lily	Nelson	Female	2002-06-21	lily.nelson@gmail.com	9876543230
\.


--
-- TOC entry 4874 (class 2606 OID 16620)
-- Name: Enrollments Enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Enrollments"
    ADD CONSTRAINT "Enrollments_pkey" PRIMARY KEY (enrollment_id);


--
-- TOC entry 4880 (class 2606 OID 16652)
-- Name: attendance attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (attendance_id);


--
-- TOC entry 4872 (class 2606 OID 16614)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4878 (class 2606 OID 16646)
-- Name: marks marks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT marks_pkey PRIMARY KEY (mark_id);


--
-- TOC entry 4876 (class 2606 OID 16640)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4881 (class 2606 OID 16658)
-- Name: attendance attendance_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 4882 (class 2606 OID 16653)
-- Name: attendance attendance_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);


-- Completed on 2026-07-19 18:03:18

--
-- PostgreSQL database dump complete
--

\unrestrict 7OfUDcElQzJc9Gs5IlC21Ho7lpFlOCpHuMs8UBfJFcqYsyjp8l6glOCboHFyBmy

