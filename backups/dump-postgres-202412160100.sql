--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-16 01:00:17

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

DROP DATABASE postgres;
--
-- TOC entry 4921 (class 1262 OID 5)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 4921
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 5 (class 2615 OID 16535)
-- Name: Final Project; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Final Project";


ALTER SCHEMA "Final Project" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16536)
-- Name: account; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".account (
    acctid integer NOT NULL,
    cid integer NOT NULL,
    comment character varying
);


ALTER TABLE "Final Project".account OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16541)
-- Name: address; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".address (
    street character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character(2) NOT NULL,
    zip integer NOT NULL
);


ALTER TABLE "Final Project".address OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16544)
-- Name: billing; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".billing (
    acctid integer NOT NULL,
    sid integer NOT NULL,
    billdate date NOT NULL,
    duedate date NOT NULL,
    amount numeric(10,2) NOT NULL,
    bid integer NOT NULL,
    subdate date,
    enddate date
);


ALTER TABLE "Final Project".billing OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16547)
-- Name: credit; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".credit (
    category character varying(6) NOT NULL
);


ALTER TABLE "Final Project".credit OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16550)
-- Name: customer; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".customer (
    cid integer NOT NULL,
    cellno character(10) NOT NULL,
    street character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    state character(2) NOT NULL,
    zip integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE "Final Project".customer OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16553)
-- Name: fee; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".fee (
    category character varying(6) NOT NULL
);


ALTER TABLE "Final Project".fee OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16556)
-- Name: payment; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".payment (
    pid integer NOT NULL,
    acctid integer NOT NULL,
    date date NOT NULL,
    amount numeric(10,2) NOT NULL,
    method character varying(20) NOT NULL
);


ALTER TABLE "Final Project".payment OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16559)
-- Name: phonenumber; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".phonenumber (
    cellno character(10) NOT NULL
);


ALTER TABLE "Final Project".phonenumber OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16562)
-- Name: service; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".service (
    sid integer NOT NULL,
    name character varying(50) NOT NULL,
    amount numeric(10,2) NOT NULL,
    type character varying(8) NOT NULL
);


ALTER TABLE "Final Project".service OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16565)
-- Name: unusual; Type: TABLE; Schema: Final Project; Owner: postgres
--

CREATE TABLE "Final Project".unusual (
    sid integer NOT NULL,
    category character varying(6) NOT NULL
);


ALTER TABLE "Final Project".unusual OWNER TO postgres;

--
-- TOC entry 4906 (class 0 OID 16536)
-- Dependencies: 217
-- Data for Name: account; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".account (acctid, cid, comment) FROM stdin;
1	8	\N
3	3	Occasional late payments
4	10	Multiple service interruptions
5	1	\N
6	6	Account reopened after suspension
7	12	\N
8	9	\N
9	15	Missed payments noted last year
10	13	\N
12	2	\N
13	12	\N
14	4	Balance carried over between months
15	5	\N
17	13	\N
21	9	\N
22	3	Occasional delays in payments
23	10	\N
2	7	\N
16	11	Late payments recorded on occasion
18	14	\N
11	6	Payments made inconsistently
19	6	Temporary suspension last year
20	8	\N
\.


--
-- TOC entry 4907 (class 0 OID 16541)
-- Dependencies: 218
-- Data for Name: address; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".address (street, city, state, zip) FROM stdin;
123 Maple St	Springfield	IL	62701
456 Oak Ave	Madison	WI	53703
789 Pine Dr	Albany	NY	12207
101 Elm Blvd	Seattle	WA	98101
202 Birch Way	Denver	CO	80203
303 Cedar Ct	Austin	TX	73301
404 Cherry Ln	Boston	MA	2108
505 Walnut St	Orlando	FL	32801
606 Ash Cir	Columbus	OH	43215
707 Willow Rd	Phoenix	AZ	85001
808 Poplar Pl	Atlanta	GA	30303
909 Chestnut Pkwy	Nashville	TN	37201
110 Sycamore St	Charlotte	NC	28202
121 Dogwood Dr	Los Angeles	CA	90001
132 Magnolia Ln	Chicago	IL	60601
\.


--
-- TOC entry 4908 (class 0 OID 16544)
-- Dependencies: 219
-- Data for Name: billing; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".billing (acctid, sid, billdate, duedate, amount, bid, subdate, enddate) FROM stdin;
\.


--
-- TOC entry 4909 (class 0 OID 16547)
-- Dependencies: 220
-- Data for Name: credit; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".credit (category) FROM stdin;
\.


--
-- TOC entry 4910 (class 0 OID 16550)
-- Dependencies: 221
-- Data for Name: customer; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".customer (cid, cellno, street, city, state, zip, name) FROM stdin;
1	9876543210	123 Maple St	Springfield	IL	62701	John Doe
2	9123456789	456 Oak Ave	Madison	WI	53703	Jane Smith
3	8765432101	789 Pine Dr	Albany	NY	12207	Alice Johnson
4	8234567890	101 Elm Blvd	Seattle	WA	98101	Robert Brown
5	7981234567	202 Birch Way	Denver	CO	80203	Emily Davis
6	7678901234	303 Cedar Ct	Austin	TX	73301	Michael Wilson
7	7654321890	404 Cherry Ln	Boston	MA	2108	Sarah Miller
8	7432109876	505 Walnut St	Orlando	FL	32801	David Moore
9	7201234567	606 Ash Cir	Columbus	OH	43215	Laura Taylor
10	6908765432	707 Willow Rd	Phoenix	AZ	85001	James Anderson
11	6789012345	808 Poplar Pl	Atlanta	GA	30303	Linda Thomas
12	6578901234	909 Chestnut Pkwy	Nashville	TN	37201	Daniel Harris
13	6456789123	110 Sycamore St	Charlotte	NC	28202	Barbara Lewis
14	6123450987	121 Dogwood Dr	Los Angeles	CA	90001	Paul Clark
15	6009876543	132 Magnolia Ln	Chicago	IL	60601	Jessica Walker
\.


--
-- TOC entry 4911 (class 0 OID 16553)
-- Dependencies: 222
-- Data for Name: fee; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".fee (category) FROM stdin;
\.


--
-- TOC entry 4912 (class 0 OID 16556)
-- Dependencies: 223
-- Data for Name: payment; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".payment (pid, acctid, date, amount, method) FROM stdin;
1	1	2022-09-01	50.00	Credit Card
3	5	2022-09-10	60.00	Debit Card
4	7	2022-09-12	45.99	Credit Card
5	8	2022-09-15	55.00	Bank Transfer
6	10	2022-09-18	120.00	Debit Card
7	12	2022-09-20	33.00	Credit Card
8	13	2022-09-22	49.99	Bank Transfer
9	15	2022-09-25	45.00	Credit Card
10	17	2022-09-27	75.99	Debit Card
11	18	2022-09-28	65.49	Credit Card
12	20	2022-09-29	33.99	Bank Transfer
13	21	2022-09-30	50.00	Debit Card
14	23	2022-09-30	89.99	Credit Card
15	14	2022-09-20	87.25	Bank Transfer
16	1	2022-10-01	50.00	Credit Card
18	5	2022-10-10	60.00	Debit Card
19	7	2022-10-12	45.99	Credit Card
20	8	2022-10-15	55.00	Bank Transfer
21	10	2022-10-18	120.00	Debit Card
22	12	2022-10-20	33.00	Credit Card
23	13	2022-10-22	49.99	Bank Transfer
24	15	2022-10-25	45.00	Credit Card
25	17	2022-10-27	75.99	Debit Card
26	18	2022-10-28	65.49	Credit Card
27	20	2022-10-29	33.99	Bank Transfer
28	21	2022-10-30	50.00	Debit Card
29	23	2022-10-30	89.99	Credit Card
30	14	2022-10-20	80.00	Credit Card
31	14	2022-10-28	75.00	Debit Card
32	1	2022-11-01	50.00	Credit Card
34	5	2022-11-10	60.00	Debit Card
35	7	2022-11-12	45.99	Credit Card
36	8	2022-11-15	55.00	Bank Transfer
37	10	2022-11-18	120.00	Debit Card
38	12	2022-11-20	33.00	Credit Card
39	13	2022-11-22	49.99	Bank Transfer
40	15	2022-11-25	45.00	Credit Card
41	17	2022-11-27	75.99	Debit Card
42	18	2022-11-28	65.49	Credit Card
43	20	2022-11-29	33.99	Bank Transfer
44	21	2022-11-30	50.00	Debit Card
45	23	2022-11-30	89.99	Credit Card
47	1	2022-12-01	50.00	Credit Card
49	5	2022-12-10	60.00	Debit Card
50	7	2022-12-12	45.99	Credit Card
51	8	2022-12-15	55.00	Bank Transfer
52	10	2022-12-18	120.00	Debit Card
53	12	2022-12-20	33.00	Credit Card
54	13	2022-12-22	49.99	Bank Transfer
55	15	2022-12-25	45.00	Credit Card
56	17	2022-12-27	75.99	Debit Card
57	18	2022-12-28	65.49	Credit Card
58	20	2022-12-29	33.99	Bank Transfer
59	21	2022-12-30	50.00	Debit Card
60	23	2022-12-30	89.99	Credit Card
61	1	2023-01-01	50.00	Credit Card
63	5	2023-01-10	60.00	Debit Card
64	7	2023-01-12	45.99	Credit Card
65	8	2023-01-15	55.00	Bank Transfer
66	10	2023-01-18	120.00	Debit Card
67	12	2023-01-20	33.00	Credit Card
68	13	2023-01-22	49.99	Bank Transfer
69	15	2023-01-25	45.00	Credit Card
70	17	2023-01-27	75.99	Debit Card
71	18	2023-01-28	65.49	Credit Card
72	20	2023-01-29	33.99	Bank Transfer
73	21	2023-01-30	50.00	Debit Card
74	23	2023-01-30	89.99	Credit Card
75	1	2023-02-01	50.00	Credit Card
77	5	2023-02-10	60.00	Debit Card
78	7	2023-02-12	45.99	Credit Card
79	8	2023-02-15	55.00	Bank Transfer
80	10	2023-02-18	120.00	Debit Card
81	12	2023-02-20	33.00	Credit Card
82	13	2023-02-22	49.99	Bank Transfer
83	15	2023-02-25	45.00	Credit Card
84	17	2023-02-27	75.99	Debit Card
85	18	2023-02-28	65.49	Credit Card
86	20	2023-02-28	33.99	Bank Transfer
87	21	2023-02-28	50.00	Debit Card
88	23	2023-02-28	89.99	Credit Card
89	14	2023-02-15	87.25	Bank Transfer
90	1	2023-03-01	50.00	Credit Card
92	5	2023-03-10	60.00	Debit Card
93	7	2023-03-12	45.99	Credit Card
94	8	2023-03-15	55.00	Bank Transfer
95	10	2023-03-18	120.00	Debit Card
96	12	2023-03-20	33.00	Credit Card
97	13	2023-03-22	49.99	Bank Transfer
98	15	2023-03-25	45.00	Credit Card
99	17	2023-03-27	75.99	Debit Card
100	18	2023-03-28	65.49	Credit Card
101	20	2023-03-29	33.99	Bank Transfer
102	21	2023-03-30	50.00	Debit Card
103	23	2023-03-30	89.99	Credit Card
104	14	2023-03-10	120.00	Credit Card
105	1	2023-04-01	50.00	Credit Card
107	5	2023-04-10	60.00	Debit Card
108	7	2023-04-12	45.99	Credit Card
109	8	2023-04-15	55.00	Bank Transfer
110	10	2023-04-18	120.00	Debit Card
111	12	2023-04-20	33.00	Credit Card
112	13	2023-04-22	49.99	Bank Transfer
113	15	2023-04-25	45.00	Credit Card
114	17	2023-04-27	75.99	Debit Card
115	18	2023-04-28	65.49	Credit Card
116	20	2023-04-29	33.99	Bank Transfer
117	21	2023-04-30	50.00	Debit Card
118	23	2023-04-30	89.99	Credit Card
119	14	2023-04-28	87.25	Bank Transfer
120	1	2023-05-01	50.00	Credit Card
122	5	2023-05-10	60.00	Debit Card
123	7	2023-05-12	45.99	Credit Card
124	8	2023-05-15	55.00	Bank Transfer
125	10	2023-05-18	120.00	Debit Card
126	12	2023-05-20	33.00	Credit Card
127	13	2023-05-22	49.99	Bank Transfer
128	15	2023-05-25	45.00	Credit Card
129	17	2023-05-27	75.99	Debit Card
130	18	2023-05-28	65.49	Credit Card
131	20	2023-05-29	33.99	Bank Transfer
132	21	2023-05-30	50.00	Debit Card
133	23	2023-05-30	89.99	Credit Card
134	14	2023-05-15	80.00	Credit Card
135	1	2023-06-01	50.00	Credit Card
137	5	2023-06-10	60.00	Debit Card
138	7	2023-06-12	45.99	Credit Card
139	8	2023-06-15	55.00	Bank Transfer
140	10	2023-06-18	120.00	Debit Card
141	12	2023-06-20	33.00	Credit Card
142	13	2023-06-22	49.99	Bank Transfer
143	15	2023-06-25	45.00	Credit Card
144	17	2023-06-27	75.99	Debit Card
145	18	2023-06-28	65.49	Credit Card
146	20	2023-06-29	33.99	Bank Transfer
147	21	2023-06-30	50.00	Debit Card
148	23	2023-06-30	89.99	Credit Card
149	1	2023-07-01	50.00	Credit Card
151	5	2023-07-10	60.00	Debit Card
152	7	2023-07-12	45.99	Credit Card
153	8	2023-07-15	55.00	Bank Transfer
154	10	2023-07-18	120.00	Debit Card
155	12	2023-07-20	33.00	Credit Card
156	13	2023-07-22	49.99	Bank Transfer
157	15	2023-07-25	45.00	Credit Card
158	17	2023-07-27	75.99	Debit Card
159	18	2023-07-28	65.49	Credit Card
160	20	2023-07-29	33.99	Bank Transfer
161	21	2023-07-30	50.00	Debit Card
162	23	2023-07-30	89.99	Credit Card
163	14	2023-07-15	90.00	Credit Card
164	1	2023-08-01	50.00	Credit Card
166	5	2023-08-10	60.00	Debit Card
167	7	2023-08-12	45.99	Credit Card
168	8	2023-08-15	55.00	Bank Transfer
169	10	2023-08-18	120.00	Debit Card
170	12	2023-08-20	33.00	Credit Card
171	13	2023-08-22	49.99	Bank Transfer
172	15	2023-08-25	45.00	Credit Card
173	17	2023-08-27	75.99	Debit Card
174	18	2023-08-28	65.49	Credit Card
175	20	2023-08-29	33.99	Bank Transfer
176	21	2023-08-30	50.00	Debit Card
177	23	2023-08-30	89.99	Credit Card
178	1	2023-09-01	50.00	Credit Card
180	5	2023-09-10	60.00	Debit Card
181	7	2023-09-12	45.99	Credit Card
182	8	2023-09-15	55.00	Bank Transfer
183	10	2023-09-18	120.00	Debit Card
184	12	2023-09-20	33.00	Credit Card
185	13	2023-09-22	49.99	Bank Transfer
186	15	2023-09-25	45.00	Credit Card
187	17	2023-09-27	75.99	Debit Card
188	18	2023-09-28	65.49	Credit Card
189	20	2023-09-29	33.99	Bank Transfer
190	21	2023-09-30	50.00	Debit Card
191	23	2023-09-30	89.99	Credit Card
192	1	2023-10-01	50.00	Credit Card
194	5	2023-10-10	60.00	Debit Card
195	7	2023-10-12	45.99	Credit Card
196	8	2023-10-15	55.00	Bank Transfer
197	10	2023-10-18	120.00	Debit Card
198	12	2023-10-20	33.00	Credit Card
199	13	2023-10-22	49.99	Bank Transfer
200	15	2023-10-25	45.00	Credit Card
201	17	2023-10-27	75.99	Debit Card
202	18	2023-10-28	65.49	Credit Card
203	20	2023-10-29	33.99	Bank Transfer
204	21	2023-10-30	50.00	Debit Card
205	23	2023-10-30	89.99	Credit Card
206	1	2023-11-01	50.00	Credit Card
208	5	2023-11-10	60.00	Debit Card
209	7	2023-11-12	45.99	Credit Card
210	8	2023-11-15	55.00	Bank Transfer
211	10	2023-11-18	120.00	Debit Card
212	12	2023-11-20	33.00	Credit Card
213	13	2023-11-22	49.99	Bank Transfer
214	15	2023-11-25	45.00	Credit Card
215	17	2023-11-27	75.99	Debit Card
216	18	2023-11-28	65.49	Credit Card
217	20	2023-11-29	33.99	Bank Transfer
218	21	2023-11-30	50.00	Debit Card
219	23	2023-11-30	89.99	Credit Card
220	1	2023-12-01	50.00	Credit Card
222	5	2023-12-10	60.00	Debit Card
223	7	2023-12-12	45.99	Credit Card
224	8	2023-12-15	55.00	Bank Transfer
225	10	2023-12-18	120.00	Debit Card
226	12	2023-12-20	33.00	Credit Card
227	13	2023-12-22	49.99	Bank Transfer
228	15	2023-12-25	45.00	Credit Card
229	17	2023-12-27	75.99	Debit Card
230	18	2023-12-28	65.49	Credit Card
231	20	2023-12-29	33.99	Bank Transfer
232	21	2023-12-30	50.00	Debit Card
233	23	2023-12-30	89.99	Credit Card
234	1	2024-01-01	50.00	Credit Card
236	5	2024-01-10	60.00	Debit Card
237	7	2024-01-12	45.99	Credit Card
238	8	2024-01-15	55.00	Bank Transfer
239	10	2024-01-18	120.00	Debit Card
240	12	2024-01-20	33.00	Credit Card
241	13	2024-01-22	49.99	Bank Transfer
242	15	2024-01-25	45.00	Credit Card
243	17	2024-01-27	75.99	Debit Card
244	18	2024-01-28	65.49	Credit Card
245	20	2024-01-29	33.99	Bank Transfer
246	21	2024-01-30	50.00	Debit Card
247	23	2024-01-30	89.99	Credit Card
248	14	2024-01-15	100.00	Credit Card
249	1	2024-02-01	50.00	Credit Card
251	5	2024-02-10	60.00	Debit Card
252	7	2024-02-12	45.99	Credit Card
253	8	2024-02-15	55.00	Bank Transfer
254	10	2024-02-18	120.00	Debit Card
255	12	2024-02-20	33.00	Credit Card
256	13	2024-02-22	49.99	Bank Transfer
257	15	2024-02-25	45.00	Credit Card
258	17	2024-02-27	75.99	Debit Card
259	18	2024-02-28	65.49	Credit Card
260	20	2024-02-28	33.99	Bank Transfer
261	21	2024-02-28	50.00	Debit Card
262	23	2024-02-28	89.99	Credit Card
263	1	2024-03-01	50.00	Credit Card
265	5	2024-03-10	60.00	Debit Card
266	7	2024-03-12	45.99	Credit Card
267	8	2024-03-15	55.00	Bank Transfer
268	10	2024-03-18	120.00	Debit Card
269	12	2024-03-20	33.00	Credit Card
270	13	2024-03-22	49.99	Bank Transfer
271	15	2024-03-25	45.00	Credit Card
272	17	2024-03-27	75.99	Debit Card
273	18	2024-03-28	65.49	Credit Card
274	20	2024-03-29	33.99	Bank Transfer
275	21	2024-03-30	50.00	Debit Card
276	23	2024-03-30	89.99	Credit Card
277	1	2024-04-01	50.00	Credit Card
279	5	2024-04-10	60.00	Debit Card
280	7	2024-04-12	45.99	Credit Card
281	8	2024-04-15	55.00	Bank Transfer
282	10	2024-04-18	120.00	Debit Card
283	12	2024-04-20	33.00	Credit Card
284	13	2024-04-22	49.99	Bank Transfer
285	15	2024-04-25	45.00	Credit Card
286	17	2024-04-27	75.99	Debit Card
287	18	2024-04-28	65.49	Credit Card
288	20	2024-04-29	33.99	Bank Transfer
289	21	2024-04-30	50.00	Debit Card
290	23	2024-04-30	89.99	Credit Card
291	1	2024-05-01	50.00	Credit Card
293	5	2024-05-10	60.00	Debit Card
294	7	2024-05-12	45.99	Credit Card
295	8	2024-05-15	55.00	Bank Transfer
296	10	2024-05-18	120.00	Debit Card
297	12	2024-05-20	33.00	Credit Card
298	13	2024-05-22	49.99	Bank Transfer
299	15	2024-05-25	45.00	Credit Card
300	17	2024-05-27	75.99	Debit Card
301	18	2024-05-28	65.49	Credit Card
302	20	2024-05-29	33.99	Bank Transfer
303	21	2024-05-30	50.00	Debit Card
304	23	2024-05-30	89.99	Credit Card
305	1	2024-06-01	50.00	Credit Card
307	5	2024-06-10	60.00	Debit Card
308	7	2024-06-12	45.99	Credit Card
309	8	2024-06-15	55.00	Bank Transfer
310	10	2024-06-18	120.00	Debit Card
311	12	2024-06-20	33.00	Credit Card
312	13	2024-06-22	49.99	Bank Transfer
313	15	2024-06-25	45.00	Credit Card
314	17	2024-06-27	75.99	Debit Card
315	18	2024-06-28	65.49	Credit Card
316	20	2024-06-29	33.99	Bank Transfer
317	21	2024-06-30	50.00	Debit Card
318	23	2024-06-30	89.99	Credit Card
319	1	2024-07-01	50.00	Credit Card
321	5	2024-07-10	60.00	Debit Card
322	7	2024-07-12	45.99	Credit Card
323	8	2024-07-15	55.00	Bank Transfer
324	10	2024-07-18	120.00	Debit Card
325	12	2024-07-20	33.00	Credit Card
326	13	2024-07-22	49.99	Bank Transfer
327	15	2024-07-25	45.00	Credit Card
328	17	2024-07-27	75.99	Debit Card
329	18	2024-07-28	65.49	Credit Card
330	20	2024-07-29	33.99	Bank Transfer
331	21	2024-07-30	50.00	Debit Card
332	23	2024-07-30	89.99	Credit Card
333	1	2024-08-01	50.00	Credit Card
335	5	2024-08-10	60.00	Debit Card
336	7	2024-08-12	45.99	Credit Card
337	8	2024-08-15	55.00	Bank Transfer
338	10	2024-08-18	120.00	Debit Card
339	12	2024-08-20	33.00	Credit Card
340	13	2024-08-22	49.99	Bank Transfer
341	15	2024-08-25	45.00	Credit Card
342	17	2024-08-27	75.99	Debit Card
343	18	2024-08-28	65.49	Credit Card
344	20	2024-08-29	33.99	Bank Transfer
345	21	2024-08-30	50.00	Debit Card
346	23	2024-08-30	89.99	Credit Card
347	1	2024-09-01	50.00	Credit Card
349	5	2024-09-10	60.00	Debit Card
350	7	2024-09-12	45.99	Credit Card
351	8	2024-09-15	55.00	Bank Transfer
352	10	2024-09-18	120.00	Debit Card
353	12	2024-09-20	33.00	Credit Card
354	13	2024-09-22	49.99	Bank Transfer
355	15	2024-09-25	45.00	Credit Card
356	17	2024-09-27	75.99	Debit Card
357	18	2024-09-28	65.49	Credit Card
358	20	2024-09-29	33.99	Bank Transfer
359	21	2024-09-30	50.00	Debit Card
360	23	2024-09-30	89.99	Credit Card
361	1	2024-10-01	50.00	Credit Card
363	5	2024-10-10	60.00	Debit Card
364	7	2024-10-12	45.99	Credit Card
365	8	2024-10-15	55.00	Bank Transfer
366	10	2024-10-18	120.00	Debit Card
367	12	2024-10-20	33.00	Credit Card
368	13	2024-10-22	49.99	Bank Transfer
369	15	2024-10-25	45.00	Credit Card
370	17	2024-10-27	75.99	Debit Card
371	18	2024-10-28	65.49	Credit Card
372	20	2024-10-29	33.99	Bank Transfer
373	21	2024-10-30	50.00	Debit Card
374	23	2024-10-30	89.99	Credit Card
375	1	2024-11-01	50.00	Credit Card
377	5	2024-11-10	60.00	Debit Card
378	7	2024-11-12	45.99	Credit Card
379	8	2024-11-15	55.00	Bank Transfer
380	10	2024-11-18	120.00	Debit Card
381	12	2024-11-20	33.00	Credit Card
382	13	2024-11-22	49.99	Bank Transfer
383	15	2024-11-25	45.00	Credit Card
384	17	2024-11-27	75.99	Debit Card
385	18	2024-11-28	65.49	Credit Card
386	20	2024-11-29	33.99	Bank Transfer
387	21	2024-11-30	50.00	Debit Card
388	23	2024-11-30	89.99	Credit Card
389	1	2024-12-01	50.00	Credit Card
391	5	2024-12-10	60.00	Debit Card
392	7	2024-12-12	45.99	Credit Card
393	8	2024-12-12	55.00	Bank Transfer
394	10	2024-12-12	120.00	Debit Card
395	12	2024-12-13	33.00	Credit Card
396	13	2024-12-13	49.99	Bank Transfer
397	15	2024-12-13	45.00	Credit Card
398	17	2024-12-13	75.99	Debit Card
399	18	2024-12-13	65.49	Credit Card
400	20	2024-12-13	33.99	Bank Transfer
401	21	2024-12-13	50.00	Debit Card
402	23	2024-12-13	89.99	Credit Card
2	2	2022-09-05	30.00	Bank Transfer
17	2	2022-10-05	30.00	Bank Transfer
33	2	2022-11-05	30.00	Bank Transfer
48	2	2022-12-05	30.00	Bank Transfer
62	2	2023-01-05	30.00	Bank Transfer
76	2	2023-02-05	30.00	Bank Transfer
91	2	2023-03-05	30.00	Bank Transfer
106	2	2023-04-05	30.00	Bank Transfer
121	2	2023-05-05	30.00	Bank Transfer
136	2	2023-06-05	30.00	Bank Transfer
150	2	2023-07-05	30.00	Bank Transfer
165	2	2023-08-05	30.00	Bank Transfer
179	2	2023-09-05	30.00	Bank Transfer
193	2	2023-10-05	30.00	Bank Transfer
207	2	2023-11-05	30.00	Bank Transfer
221	2	2023-12-05	30.00	Bank Transfer
235	2	2024-01-05	30.00	Bank Transfer
250	2	2024-02-05	30.00	Bank Transfer
264	2	2024-03-05	30.00	Bank Transfer
278	2	2024-04-05	30.00	Bank Transfer
292	2	2024-05-05	30.00	Bank Transfer
306	2	2024-06-05	30.00	Bank Transfer
320	2	2024-07-05	30.00	Bank Transfer
334	2	2024-08-05	30.00	Bank Transfer
348	2	2024-09-05	30.00	Bank Transfer
362	2	2024-10-05	30.00	Bank Transfer
376	2	2024-11-05	30.00	Bank Transfer
390	2	2024-12-05	30.00	Bank Transfer
403	19	2022-12-01	30.00	Debit Card
404	19	2023-01-01	20.00	Credit Card
405	19	2023-01-15	20.00	Debit Card
406	19	2023-01-20	20.00	Bank Transfer
407	19	2023-02-01	20.00	Credit Card
408	19	2023-02-14	50.00	Bank Transfer
409	19	2023-03-01	20.00	In-Person
410	19	2023-03-14	20.00	In-Person
411	19	2023-11-01	300.00	In-Person
412	19	2023-12-01	30.00	Debit Card
413	19	2024-01-01	30.00	Credit Card
414	19	2024-02-01	30.00	Bank Transfer
415	19	2024-03-01	30.00	In-Person
416	19	2024-04-01	30.00	Debit Card
417	19	2024-05-01	30.00	Credit Card
418	19	2024-06-01	30.00	Bank Transfer
419	19	2024-07-01	30.00	In-Person
420	19	2024-08-01	30.00	Debit Card
421	19	2024-09-01	30.00	Credit Card
422	19	2024-10-01	30.00	Bank Transfer
423	19	2024-11-01	30.00	Debit Card
424	19	2024-12-01	30.00	Credit Card
425	11	2022-12-01	30.00	Debit Card
426	11	2023-01-01	20.00	Credit Card
427	11	2023-01-20	20.00	Bank Transfer
428	11	2023-02-01	30.00	Debit Card
429	11	2023-03-01	15.00	In-Person
430	11	2023-03-14	20.00	Credit Card
431	11	2023-04-01	20.00	Debit Card
432	11	2023-04-15	15.00	Bank Transfer
433	11	2023-05-01	30.00	In-Person
434	11	2023-06-01	25.00	Debit Card
435	11	2023-06-15	20.00	Credit Card
436	11	2023-07-01	30.00	Debit Card
437	11	2023-08-01	30.00	Bank Transfer
438	11	2023-09-01	25.00	In-Person
439	11	2023-09-15	15.00	Credit Card
440	11	2023-10-01	20.00	Debit Card
441	11	2023-10-15	20.00	In-Person
442	11	2023-11-01	30.00	Bank Transfer
443	11	2023-12-01	30.00	Debit Card
444	11	2024-01-01	30.00	Credit Card
445	11	2024-02-01	20.00	In-Person
446	11	2024-02-14	20.00	Bank Transfer
447	11	2024-03-01	30.00	Debit Card
448	11	2024-04-01	30.00	Credit Card
449	11	2024-05-01	30.00	Bank Transfer
450	11	2024-06-01	25.00	Debit Card
451	11	2024-06-15	15.00	In-Person
452	11	2024-07-01	30.00	Debit Card
453	11	2024-08-01	30.00	Credit Card
454	11	2024-09-01	30.00	Bank Transfer
455	11	2024-10-01	30.00	Debit Card
456	11	2024-11-01	20.00	In-Person
457	11	2024-11-15	10.00	Debit Card
458	11	2024-12-01	30.00	Bank Transfer
459	6	2022-12-01	30.00	Debit Card
460	6	2023-01-01	20.00	Credit Card
461	6	2023-01-15	10.00	Bank Transfer
462	6	2023-02-01	30.00	In-Person
463	6	2023-03-01	25.00	Debit Card
464	6	2023-03-15	15.00	Credit Card
465	6	2023-04-01	30.00	Bank Transfer
466	6	2023-05-01	30.00	In-Person
467	6	2023-06-01	20.00	Debit Card
468	6	2023-06-15	15.00	Bank Transfer
469	6	2023-07-01	30.00	Credit Card
470	6	2023-08-01	30.00	Bank Transfer
471	6	2023-09-01	20.00	In-Person
472	6	2023-09-15	10.00	Debit Card
473	6	2023-10-01	30.00	Credit Card
474	6	2023-11-01	30.00	Bank Transfer
475	6	2024-01-01	20.00	Debit Card
476	6	2024-01-15	10.00	In-Person
477	6	2024-02-01	25.00	Credit Card
478	6	2024-02-15	15.00	Bank Transfer
479	6	2024-03-01	30.00	Debit Card
480	6	2024-04-01	30.00	In-Person
481	6	2024-05-01	20.00	Credit Card
482	6	2024-05-15	10.00	Bank Transfer
483	6	2024-06-01	15.00	Debit Card
484	6	2024-07-01	30.00	In-Person
485	6	2024-08-01	30.00	Credit Card
486	6	2024-09-01	20.00	Bank Transfer
487	6	2024-09-15	10.00	Debit Card
488	6	2024-10-01	15.00	In-Person
489	6	2024-12-01	150.00	In-Person
490	3	2024-03-31	30.00	Debit Card
491	3	2024-04-30	30.00	Credit Card
492	3	2024-05-31	30.00	Bank Transfer
493	3	2024-06-15	30.00	In-Person
494	3	2024-07-31	30.00	Debit Card
495	3	2024-08-15	30.00	Credit Card
496	3	2024-09-30	30.00	Bank Transfer
497	3	2024-10-15	30.00	In-Person
498	3	2024-11-30	30.00	Debit Card
499	3	2024-12-31	30.00	Credit Card
500	22	2024-03-23	30.00	Debit Card
501	22	2024-04-07	30.00	Credit Card
502	22	2024-05-08	30.00	Bank Transfer
503	22	2024-06-05	30.00	In-Person
504	22	2024-07-01	30.00	Debit Card
505	22	2024-08-06	30.00	Credit Card
506	22	2024-09-02	30.00	Bank Transfer
507	22	2024-10-07	30.00	In-Person
508	22	2024-11-05	30.00	Debit Card
509	22	2024-12-09	30.00	Credit Card
510	9	2023-01-01	30.00	Debit Card
511	9	2023-03-01	120.00	Credit Card
512	9	2023-05-01	120.00	Bank Transfer
513	9	2023-06-01	30.00	In-Person
514	9	2023-08-01	120.00	Debit Card
515	9	2023-09-01	30.00	Credit Card
516	9	2023-10-01	30.00	Bank Transfer
517	9	2023-11-01	30.00	In-Person
518	9	2023-12-01	30.00	Debit Card
519	9	2024-01-01	30.00	Credit Card
520	9	2024-03-01	120.00	Bank Transfer
521	9	2024-05-01	120.00	In-Person
522	9	2024-06-01	30.00	Debit Card
523	9	2024-08-01	120.00	Credit Card
524	9	2024-09-01	30.00	Bank Transfer
525	9	2024-10-01	30.00	In-Person
526	9	2024-11-01	30.00	Debit Card
527	9	2024-12-01	30.00	Credit Card
528	16	2023-04-11	30.00	Debit Card
529	16	2023-05-11	30.00	Credit Card
530	16	2023-06-11	30.00	Bank Transfer
531	16	2023-07-25	30.00	In-Person
532	16	2023-08-11	30.00	Debit Card
533	16	2023-09-11	30.00	Credit Card
534	16	2023-10-11	30.00	Bank Transfer
535	16	2023-11-25	30.00	In-Person
536	16	2023-12-11	30.00	Debit Card
537	16	2024-01-11	30.00	Credit Card
538	16	2024-02-11	30.00	Bank Transfer
539	16	2024-03-25	30.00	In-Person
540	16	2024-04-11	30.00	Debit Card
541	16	2024-05-11	30.00	Credit Card
542	16	2024-06-11	30.00	Bank Transfer
543	16	2024-07-25	30.00	In-Person
544	16	2024-08-11	30.00	Debit Card
545	16	2024-09-11	30.00	Credit Card
546	16	2024-10-11	30.00	Bank Transfer
547	16	2024-11-25	30.00	In-Person
548	16	2024-12-11	30.00	Debit Card
549	4	2022-09-01	30.00	Debit Card
550	4	2023-01-01	200.00	Credit Card
551	4	2023-02-01	200.00	Bank Transfer
552	4	2023-09-01	370.00	In-Person
553	4	2024-01-01	300.00	Debit Card
554	4	2024-04-01	240.00	Credit Card
555	4	2024-09-01	330.00	Bank Transfer
\.


--
-- TOC entry 4913 (class 0 OID 16559)
-- Dependencies: 224
-- Data for Name: phonenumber; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".phonenumber (cellno) FROM stdin;
9876543210
9123456789
8765432101
8234567890
7981234567
7678901234
7654321890
7432109876
7201234567
6908765432
6789012345
6578901234
6456789123
6123450987
6009876543
\.


--
-- TOC entry 4914 (class 0 OID 16562)
-- Dependencies: 225
-- Data for Name: service; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".service (sid, name, amount, type) FROM stdin;
\.


--
-- TOC entry 4915 (class 0 OID 16565)
-- Dependencies: 226
-- Data for Name: unusual; Type: TABLE DATA; Schema: Final Project; Owner: postgres
--

COPY "Final Project".unusual (sid, category) FROM stdin;
\.


--
-- TOC entry 4751 (class 2606 OID 16569)
-- Name: unusual (sID, category); Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".unusual
    ADD CONSTRAINT "(sID, category)" PRIMARY KEY (sid, category);


--
-- TOC entry 4731 (class 2606 OID 16571)
-- Name: account acctID; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".account
    ADD CONSTRAINT "acctID" PRIMARY KEY (acctid);


--
-- TOC entry 4733 (class 2606 OID 16573)
-- Name: address address_pk; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".address
    ADD CONSTRAINT address_pk PRIMARY KEY (street, city, state, zip);


--
-- TOC entry 4735 (class 2606 OID 16575)
-- Name: billing b.bID; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".billing
    ADD CONSTRAINT "b.bID" PRIMARY KEY (bid);


--
-- TOC entry 4737 (class 2606 OID 16577)
-- Name: credit c.category; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".credit
    ADD CONSTRAINT "c.category" PRIMARY KEY (category);


--
-- TOC entry 4739 (class 2606 OID 16579)
-- Name: customer cID; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".customer
    ADD CONSTRAINT "cID" PRIMARY KEY (cid);


--
-- TOC entry 4741 (class 2606 OID 16581)
-- Name: fee f.category; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".fee
    ADD CONSTRAINT "f.category" PRIMARY KEY (category);


--
-- TOC entry 4743 (class 2606 OID 16583)
-- Name: payment payment_pk; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".payment
    ADD CONSTRAINT payment_pk PRIMARY KEY (pid);


--
-- TOC entry 4745 (class 2606 OID 16585)
-- Name: phonenumber phoneNo; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".phonenumber
    ADD CONSTRAINT "phoneNo" PRIMARY KEY (cellno);


--
-- TOC entry 4747 (class 2606 OID 16587)
-- Name: service service.sID; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".service
    ADD CONSTRAINT "service.sID" PRIMARY KEY (sid);


--
-- TOC entry 4749 (class 2606 OID 16589)
-- Name: service service_unique; Type: CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".service
    ADD CONSTRAINT service_unique UNIQUE (name);


--
-- TOC entry 4753 (class 2606 OID 16590)
-- Name: billing acctID; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".billing
    ADD CONSTRAINT "acctID" FOREIGN KEY (acctid) REFERENCES "Final Project".account(acctid);


--
-- TOC entry 4754 (class 2606 OID 16595)
-- Name: billing billing_service_fk; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".billing
    ADD CONSTRAINT billing_service_fk FOREIGN KEY (sid) REFERENCES "Final Project".service(sid);


--
-- TOC entry 4755 (class 2606 OID 16600)
-- Name: customer c.address; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".customer
    ADD CONSTRAINT "c.address" FOREIGN KEY (street, city, state, zip) REFERENCES "Final Project".address(street, city, state, zip) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4752 (class 2606 OID 16605)
-- Name: account cID; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".account
    ADD CONSTRAINT "cID" FOREIGN KEY (cid) REFERENCES "Final Project".customer(cid);


--
-- TOC entry 4758 (class 2606 OID 16610)
-- Name: unusual category_credit; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".unusual
    ADD CONSTRAINT category_credit FOREIGN KEY (category) REFERENCES "Final Project".credit(category) ON DELETE CASCADE;


--
-- TOC entry 4759 (class 2606 OID 16615)
-- Name: unusual category_fee; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".unusual
    ADD CONSTRAINT category_fee FOREIGN KEY (category) REFERENCES "Final Project".fee(category) ON DELETE CASCADE;


--
-- TOC entry 4756 (class 2606 OID 16620)
-- Name: customer customer_phonenumber_fk; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".customer
    ADD CONSTRAINT customer_phonenumber_fk FOREIGN KEY (cellno) REFERENCES "Final Project".phonenumber(cellno) ON DELETE CASCADE;


--
-- TOC entry 4757 (class 2606 OID 16625)
-- Name: payment payment_account_fk; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".payment
    ADD CONSTRAINT payment_account_fk FOREIGN KEY (acctid) REFERENCES "Final Project".account(acctid);


--
-- TOC entry 4760 (class 2606 OID 16630)
-- Name: unusual serv_unusual.sID; Type: FK CONSTRAINT; Schema: Final Project; Owner: postgres
--

ALTER TABLE ONLY "Final Project".unusual
    ADD CONSTRAINT "serv_unusual.sID" FOREIGN KEY (sid) REFERENCES "Final Project".service(sid) ON DELETE CASCADE;


-- Completed on 2024-12-16 01:00:18

--
-- PostgreSQL database dump complete
--

