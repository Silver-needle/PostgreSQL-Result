--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

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
-- Name: address; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.address (
    id integer NOT NULL,
    index integer NOT NULL,
    country character varying(50) NOT NULL,
    region character varying(50) NOT NULL,
    city character varying(50) NOT NULL,
    street character varying(50) NOT NULL,
    house character varying(50) NOT NULL
);


ALTER TABLE public.address OWNER TO sergey;

--
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_id_seq OWNER TO sergey;

--
-- Name: address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;


--
-- Name: baskets; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    user_buyer_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.baskets OWNER TO sergey;

--
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baskets_id_seq OWNER TO sergey;

--
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;


--
-- Name: baskets_product; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.baskets_product (
    id integer NOT NULL,
    quantity integer NOT NULL,
    product_id integer NOT NULL,
    basket_id integer NOT NULL
);


ALTER TABLE public.baskets_product OWNER TO sergey;

--
-- Name: baskets_product_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.baskets_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baskets_product_id_seq OWNER TO sergey;

--
-- Name: baskets_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.baskets_product_id_seq OWNED BY public.baskets_product.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.feedbacks (
    id integer NOT NULL,
    text text NOT NULL,
    user_buyer_id integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.feedbacks OWNER TO sergey;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.feedbacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedbacks_id_seq OWNER TO sergey;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: likes_products; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.likes_products (
    id integer NOT NULL,
    user_buyer_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.likes_products OWNER TO sergey;

--
-- Name: likes_products_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.likes_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_products_id_seq OWNER TO sergey;

--
-- Name: likes_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.likes_products_id_seq OWNED BY public.likes_products.id;


--
-- Name: likes_seller; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.likes_seller (
    id integer NOT NULL,
    user_buyer_id integer NOT NULL,
    user_seller_id integer NOT NULL
);


ALTER TABLE public.likes_seller OWNER TO sergey;

--
-- Name: likes_seller_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.likes_seller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_seller_id_seq OWNER TO sergey;

--
-- Name: likes_seller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.likes_seller_id_seq OWNED BY public.likes_seller.id;


--
-- Name: order_products; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.order_products (
    id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    price money NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.order_products OWNER TO sergey;

--
-- Name: order_products_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.order_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_products_id_seq OWNER TO sergey;

--
-- Name: order_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.order_products_id_seq OWNED BY public.order_products.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    user_buyer_id integer NOT NULL,
    order_status_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    address_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.orders OWNER TO sergey;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO sergey;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: payment_method; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.payment_method (
    id integer NOT NULL,
    type character varying(30) NOT NULL
);


ALTER TABLE public.payment_method OWNER TO sergey;

--
-- Name: payment_method_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_method_id_seq OWNER TO sergey;

--
-- Name: payment_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.payment_method_id_seq OWNED BY public.payment_method.id;


--
-- Name: payment_status; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.payment_status (
    id integer NOT NULL,
    status character varying(50) NOT NULL
);


ALTER TABLE public.payment_status OWNER TO sergey;

--
-- Name: payment_status_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.payment_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_status_id_seq OWNER TO sergey;

--
-- Name: payment_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.payment_status_id_seq OWNED BY public.payment_status.id;


--
-- Name: product_catalogs; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.product_catalogs (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.product_catalogs OWNER TO sergey;

--
-- Name: product_catalogs_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.product_catalogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_catalogs_id_seq OWNER TO sergey;

--
-- Name: product_catalogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.product_catalogs_id_seq OWNED BY public.product_catalogs.id;


--
-- Name: product_groups; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.product_groups (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.product_groups OWNER TO sergey;

--
-- Name: product_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.product_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_groups_id_seq OWNER TO sergey;

--
-- Name: product_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.product_groups_id_seq OWNED BY public.product_groups.id;


--
-- Name: product_photos; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.product_photos (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    size integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.product_photos OWNER TO sergey;

--
-- Name: product_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.product_photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_photos_id_seq OWNER TO sergey;

--
-- Name: product_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.product_photos_id_seq OWNED BY public.product_photos.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    price money NOT NULL,
    description text NOT NULL,
    photo_id integer NOT NULL,
    user_seller_id integer NOT NULL,
    catalog_id integer NOT NULL,
    group_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.products OWNER TO sergey;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO sergey;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: user_types; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.user_types (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.user_types OWNER TO sergey;

--
-- Name: user_types_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.user_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_types_id_seq OWNER TO sergey;

--
-- Name: user_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.user_types_id_seq OWNED BY public.user_types.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: sergey
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(120) NOT NULL,
    password character varying(50) NOT NULL,
    phone character varying(15),
    type_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO sergey;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: sergey
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO sergey;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergey
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: address id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);


--
-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);


--
-- Name: baskets_product id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.baskets_product ALTER COLUMN id SET DEFAULT nextval('public.baskets_product_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: likes_products id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.likes_products ALTER COLUMN id SET DEFAULT nextval('public.likes_products_id_seq'::regclass);


--
-- Name: likes_seller id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.likes_seller ALTER COLUMN id SET DEFAULT nextval('public.likes_seller_id_seq'::regclass);


--
-- Name: order_products id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.order_products ALTER COLUMN id SET DEFAULT nextval('public.order_products_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payment_method id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.payment_method ALTER COLUMN id SET DEFAULT nextval('public.payment_method_id_seq'::regclass);


--
-- Name: payment_status id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.payment_status ALTER COLUMN id SET DEFAULT nextval('public.payment_status_id_seq'::regclass);


--
-- Name: product_catalogs id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_catalogs ALTER COLUMN id SET DEFAULT nextval('public.product_catalogs_id_seq'::regclass);


--
-- Name: product_groups id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_groups ALTER COLUMN id SET DEFAULT nextval('public.product_groups_id_seq'::regclass);


--
-- Name: product_photos id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_photos ALTER COLUMN id SET DEFAULT nextval('public.product_photos_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: user_types id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.user_types ALTER COLUMN id SET DEFAULT nextval('public.user_types_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.address (id, index, country, region, city, street, house) FROM stdin;
1	694447	Russian Federation	Ryazan Oblast	Ryazan	street15	1
2	400321	Russian Federation	Voronezh Oblast	Voronezh	street10	19
3	171222	Russian Federation	Ryazan Oblast	Ryazan	street15	1
4	191737	Russian Federation	Ivanovo Oblast	Ivanovo	street2	13
5	248110	Russian Federation	Oryol Oblast	Oryol	street10	1
6	676943	Russian Federation	Sevastopol City	Sevastopol	street1	7
7	391099	Russian Federation	Tambov Oblast	Tambov	street11	1
8	651360	Russian Federation	Omsk Oblast	Omsk	street11	7
9	445913	Russian Federation	Nizhny Novgorod Oblast	Nizhny	street1	11
10	621633	Russian Federation	Arkhangelsk Oblast	Onega	street7	15
\.


--
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.baskets (id, user_buyer_id, created_at) FROM stdin;
1	39	2022-11-22 15:48:56
2	17	2023-06-30 00:27:01
3	57	2021-01-05 17:41:26
4	99	2020-07-29 10:27:43
5	52	2019-08-03 05:36:29
6	54	2024-02-07 00:53:08
7	44	2019-10-27 00:45:30
8	28	2019-07-24 08:36:00
9	33	2020-09-09 16:39:24
10	72	2020-03-30 10:20:49
11	50	2021-09-01 22:11:56
12	49	2023-02-19 13:56:39
13	29	2023-12-08 20:38:20
14	53	2022-08-16 05:34:36
15	38	2020-09-07 07:13:28
\.


--
-- Data for Name: baskets_product; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.baskets_product (id, quantity, product_id, basket_id) FROM stdin;
1	16	45	1
2	83	98	2
3	91	83	3
4	66	71	4
5	11	51	5
6	75	94	6
7	43	91	7
8	21	72	8
9	4	23	9
10	57	83	10
11	77	8	11
12	10	22	12
13	74	96	13
14	35	95	14
15	11	91	15
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.feedbacks (id, text, user_buyer_id, product_id, created_at) FROM stdin;
1	Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,	53	87	2021-02-13 19:52:49
2	in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris	8	33	2022-11-04 09:12:39
3	id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut	68	46	2020-08-03 19:52:24
4	mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed	8	5	2024-02-23 12:01:45
5	orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero	8	7	2023-06-10 05:24:52
6	ac mattis ornare, lectus ante dictum mi, ac mattis velit	29	37	2019-10-09 05:08:34
7	Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat	20	19	2023-01-09 22:03:54
8	lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante	96	5	2020-04-22 02:41:16
9	eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit	92	13	2021-01-12 23:10:28
10	risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non	41	27	2023-01-03 11:23:37
11	at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac	21	86	2020-03-24 09:31:16
12	cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut	3	92	2021-02-12 17:59:31
13	tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit	85	10	2022-06-04 09:45:56
14	pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero.	50	59	2021-01-04 19:51:32
15	malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris	81	85	2022-07-10 05:22:40
16	placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante,	73	41	2020-12-03 07:16:57
17	sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet	15	13	2022-02-17 00:01:06
18	Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien	21	54	2020-11-04 01:29:35
19	massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede	85	53	2021-03-07 04:45:50
20	Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est.	21	38	2022-03-19 04:10:32
21	quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam	93	100	2022-07-08 05:42:25
22	iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,	63	27	2023-12-10 13:05:38
23	pede, ultrices a, auctor non, feugiat nec, diam. Duis mi	86	32	2020-02-25 23:31:06
24	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,	98	80	2021-11-18 11:30:14
25	pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,	70	68	2023-12-29 16:46:38
26	urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum	8	85	2020-05-25 09:27:44
27	placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,	43	30	2020-10-12 20:25:46
28	non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed	20	100	2019-06-10 11:46:24
29	Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc	49	91	2020-07-06 21:21:20
30	dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec	92	40	2021-08-13 01:40:01
\.


--
-- Data for Name: likes_products; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.likes_products (id, user_buyer_id, product_id) FROM stdin;
1	3	21
2	8	99
3	11	83
4	12	38
5	1	54
6	13	94
7	14	51
8	15	55
9	16	84
10	17	92
11	18	50
12	19	76
13	20	39
14	21	82
15	22	96
16	23	40
17	24	52
18	25	43
19	26	80
20	27	76
21	28	78
22	29	42
23	30	20
24	31	67
25	32	32
26	33	23
27	35	22
28	36	72
29	38	56
30	39	5
31	40	41
32	41	60
33	42	75
34	43	88
35	44	52
36	46	50
37	47	53
38	48	25
39	49	22
40	50	76
41	51	68
42	52	38
43	53	73
44	54	82
45	57	9
46	58	70
47	59	3
48	60	74
49	61	58
50	62	78
51	63	33
52	64	47
53	65	39
54	66	11
55	68	35
56	69	23
57	70	63
58	71	45
59	72	97
60	73	7
61	74	50
62	76	57
63	77	99
64	78	67
65	79	2
66	81	38
67	82	9
68	83	86
69	85	57
70	86	51
71	89	59
72	92	75
73	93	86
74	94	4
75	95	67
76	96	35
77	97	63
78	98	29
79	99	5
80	100	41
\.


--
-- Data for Name: likes_seller; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.likes_seller (id, user_buyer_id, user_seller_id) FROM stdin;
1	3	2
2	8	91
3	11	84
4	12	45
5	1	55
6	13	91
7	14	55
8	15	55
9	16	84
10	17	90
11	18	56
12	19	75
13	20	37
14	21	80
15	22	90
16	23	37
17	24	55
18	25	45
19	26	80
20	27	75
21	28	80
22	29	45
23	30	10
24	31	67
25	32	34
26	33	10
27	35	10
28	36	87
29	38	56
30	39	5
31	40	45
32	41	80
33	42	75
34	43	88
35	44	55
36	46	55
37	47	56
38	48	34
39	49	10
40	50	75
41	51	67
42	52	37
43	53	75
44	54	80
45	57	9
46	58	75
47	59	2
48	60	75
49	61	58
50	62	75
51	63	34
52	64	45
53	65	37
54	66	10
55	68	34
56	69	9
57	70	5
58	71	84
59	72	90
60	73	7
61	74	2
62	76	4
63	77	5
64	78	80
65	79	2
66	81	37
67	82	9
68	83	84
69	85	75
70	86	2
71	89	9
72	92	84
73	93	87
74	94	4
75	95	55
76	96	55
77	97	2
78	98	5
79	99	5
80	100	91
\.


--
-- Data for Name: order_products; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.order_products (id, order_id, product_id, price, quantity) FROM stdin;
1	1	38	42,00 ₽	30
2	2	40	61,00 ₽	14
3	3	82	86,00 ₽	34
4	4	61	64,00 ₽	40
5	5	89	85,00 ₽	7
6	6	51	31,00 ₽	3
7	7	39	56,00 ₽	26
8	8	43	73,00 ₽	4
9	9	59	62,00 ₽	34
10	10	42	11,00 ₽	2
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.orders (id, user_buyer_id, order_status_id, payment_method_id, address_id, created_at) FROM stdin;
1	76	1	2	1	2023-06-11 09:56:24
2	3	2	1	2	2022-10-24 04:21:25
3	70	2	2	3	2023-06-01 20:37:30
4	16	2	1	4	2023-07-30 01:09:30
5	99	1	1	5	2023-12-14 06:55:47
6	86	2	1	6	2022-08-09 11:57:22
7	19	2	2	7	2023-10-02 19:33:09
8	89	2	2	8	2022-07-25 10:17:16
9	26	2	1	9	2022-10-16 18:28:13
10	71	2	1	10	2022-05-25 15:28:03
\.


--
-- Data for Name: payment_method; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.payment_method (id, type) FROM stdin;
1	cash
2	cashless
\.


--
-- Data for Name: payment_status; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.payment_status (id, status) FROM stdin;
1	paid
2	not paid
\.


--
-- Data for Name: product_catalogs; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.product_catalogs (id, name) FROM stdin;
1	drinks
\.


--
-- Data for Name: product_groups; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.product_groups (id, name) FROM stdin;
1	Coffee
2	Tea
\.


--
-- Data for Name: product_photos; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.product_photos (id, url, size, product_id, created_at) FROM stdin;
1	http://netflix.com/sub/cars?q=4	9	1	2023-01-03 07:12:08
2	https://facebook.com/one?p=8	12	2	2021-07-26 02:24:56
3	https://guardian.co.uk/sub/cars?ad=115	27	3	2020-09-16 09:15:43
4	http://twitter.com/sub?search=1	33	4	2023-12-20 09:00:11
5	https://zoom.us/en-us?k=0	11	5	2020-02-26 23:56:25
6	https://guardian.co.uk/en-us?q=0	36	6	2019-08-07 04:20:16
7	http://walmart.com/one?str=se	28	7	2021-02-20 03:32:40
8	http://reddit.com/settings?g=1	12	8	2022-05-30 03:31:32
9	http://google.com/site?q=0	30	9	2023-10-02 10:26:49
10	http://guardian.co.uk/one?q=0	18	10	2020-10-14 02:11:44
11	http://reddit.com/one?client=g	37	11	2023-08-06 20:22:18
12	https://twitter.com/group/9?q=11	25	12	2023-02-06 16:55:46
13	https://reddit.com/fr?p=8	14	13	2022-08-29 06:15:41
14	http://baidu.com/group/9?page=1&offset=1	16	14	2021-12-23 23:22:55
15	https://baidu.com/site?q=4	15	15	2019-06-05 12:28:30
16	https://facebook.com/en-us?search=1	19	16	2021-11-13 00:47:39
17	https://pinterest.com/one?client=g	4	17	2022-03-01 11:26:26
18	http://guardian.co.uk/user/110?gi=100	33	18	2023-08-03 06:36:50
19	http://youtube.com/group/9?client=g	8	19	2020-12-18 17:47:11
20	https://naver.com/fr?p=8	27	20	2020-03-23 17:04:55
21	https://google.com/group/9?g=1	34	21	2020-11-07 15:46:30
22	http://reddit.com/en-us?q=test	35	22	2024-02-23 08:48:46
23	http://cnn.com/en-ca?search=1&q=de	26	23	2021-03-16 01:27:57
24	https://zoom.us/one?q=4	26	24	2022-07-10 04:43:08
25	https://reddit.com/en-us?q=11	7	25	2023-07-13 14:24:07
26	http://reddit.com/sub?str=se	33	26	2020-04-07 18:25:25
27	https://nytimes.com/settings?p=8	11	27	2022-06-27 20:46:00
28	http://yahoo.com/fr?q=test	33	28	2020-05-05 07:21:54
29	https://twitter.com/fr?g=1	33	29	2021-11-30 17:11:14
30	http://youtube.com/fr?k=0	23	30	2019-12-11 21:23:02
31	http://nytimes.com/fr?q=0	16	31	2020-08-28 14:32:24
32	http://instagram.com/user/110?ab=441&aad=2	27	32	2019-12-05 07:04:47
33	https://walmart.com/sub/cars?g=1	25	33	2023-01-21 01:07:52
34	https://whatsapp.com/site?str=se	5	34	2022-11-20 11:43:28
35	http://bbc.co.uk/fr?q=11	27	35	2023-07-22 21:36:06
36	https://zoom.us/en-us?str=se	9	36	2021-03-19 23:42:22
37	https://guardian.co.uk/en-ca?search=1	3	37	2022-02-12 04:03:54
38	https://cnn.com/group/9?ad=115	32	38	2022-05-03 23:42:10
39	https://google.com/one?k=0	29	39	2022-06-09 04:23:57
40	http://naver.com/one?client=g	10	40	2024-01-23 18:34:15
41	http://facebook.com/settings?q=0	36	41	2021-02-26 04:34:49
42	http://naver.com/en-us?g=1	11	42	2021-06-17 23:20:24
43	http://google.com/one?page=1&offset=1	17	43	2020-02-27 08:51:58
44	http://whatsapp.com/site?p=8	31	44	2019-10-23 05:58:39
45	https://pinterest.com/fr?q=test	7	45	2021-03-22 15:52:50
46	http://baidu.com/sub?p=8	28	46	2020-08-15 08:36:15
47	https://nytimes.com/user/110?g=1	13	47	2021-07-30 09:44:10
48	https://bbc.co.uk/one?ab=441&aad=2	24	48	2019-07-30 14:00:29
49	http://youtube.com/fr?q=test	15	49	2019-08-23 09:21:25
50	https://facebook.com/fr?q=11	14	50	2023-01-03 14:04:15
51	https://netflix.com/en-us?page=1&offset=1	22	51	2019-04-09 13:12:46
52	https://youtube.com/group/9?ad=115	34	52	2022-02-02 09:13:05
53	http://zoom.us/user/110?p=8	5	53	2023-03-26 01:32:37
54	https://cnn.com/sub?search=1	16	54	2020-07-12 07:21:13
55	http://google.com/site?gi=100	11	55	2023-09-21 15:12:57
56	https://naver.com/fr?g=1	23	56	2023-05-24 21:39:01
57	https://walmart.com/one?p=8	20	57	2020-09-16 22:47:13
58	http://whatsapp.com/sub/cars?q=4	4	58	2020-03-17 08:09:13
59	http://cnn.com/sub/cars?q=test	4	59	2023-05-03 04:45:41
60	https://google.com/sub/cars?ab=441&aad=2	7	60	2019-09-26 18:26:05
61	https://instagram.com/user/110?p=8	18	61	2023-06-25 03:47:16
62	http://twitter.com/fr?q=4	18	62	2019-09-25 04:18:27
63	http://netflix.com/sub?gi=100	13	63	2020-06-26 22:49:11
64	http://walmart.com/sub/cars?ad=115	14	64	2023-03-18 08:02:26
65	https://google.com/settings?q=0	25	65	2019-09-01 20:04:02
66	https://guardian.co.uk/user/110?q=11	32	66	2023-07-04 23:20:54
67	https://guardian.co.uk/group/9?gi=100	36	67	2022-10-18 02:50:27
68	http://guardian.co.uk/sub?page=1&offset=1	4	68	2019-08-21 00:57:23
69	https://facebook.com/settings?q=11	11	69	2022-10-12 02:40:33
70	http://ebay.com/settings?q=0	17	70	2021-08-19 01:20:52
71	https://zoom.us/en-ca?ab=441&aad=2	6	71	2022-05-17 22:14:13
72	https://yahoo.com/settings?q=test	37	72	2019-04-06 10:50:50
73	https://bbc.co.uk/group/9?search=1	13	73	2023-02-18 00:06:56
74	https://bbc.co.uk/group/9?client=g	10	74	2022-02-25 03:49:31
75	https://bbc.co.uk/fr?g=1	13	75	2022-05-31 19:44:00
76	http://youtube.com/sub/cars?page=1&offset=1	32	76	2019-07-21 19:37:42
77	https://naver.com/user/110?page=1&offset=1	37	77	2024-02-04 09:32:32
78	https://youtube.com/en-us?p=8	34	78	2022-03-28 23:42:27
79	http://youtube.com/group/9?q=test	13	79	2020-02-01 23:11:04
80	http://baidu.com/one?q=11	35	80	2022-06-10 17:00:25
81	https://instagram.com/en-ca?gi=100	28	81	2021-01-28 01:33:55
82	https://zoom.us/one?q=0	23	82	2023-09-25 15:40:50
83	https://zoom.us/group/9?search=1&q=de	26	83	2019-08-12 04:54:55
84	http://naver.com/fr?ad=115	13	84	2021-05-28 20:07:12
85	http://guardian.co.uk/en-us?page=1&offset=1	4	85	2021-01-11 05:13:31
86	https://yahoo.com/settings?g=1	5	86	2023-09-16 06:55:08
87	http://baidu.com/sub?k=0	8	87	2021-02-27 12:24:59
88	http://walmart.com/user/110?search=1	7	88	2024-03-07 18:51:30
89	http://facebook.com/en-us?ad=115	30	89	2020-03-31 17:51:08
90	http://google.com/sub/cars?q=0	19	90	2021-03-23 08:36:33
91	https://facebook.com/fr?str=se	19	91	2023-07-30 10:15:39
92	https://guardian.co.uk/one?q=test	24	92	2021-08-13 22:05:55
93	http://google.com/site?p=8	9	93	2020-09-15 15:53:11
94	https://yahoo.com/settings?q=4	27	94	2022-01-17 00:51:12
95	https://google.com/sub?search=1&q=de	30	95	2022-03-17 06:31:32
96	https://naver.com/en-ca?str=se	14	96	2022-10-26 20:09:57
97	https://zoom.us/en-ca?str=se	34	97	2021-09-28 09:15:25
98	https://naver.com/sub/cars?page=1&offset=1	15	98	2023-01-15 12:10:17
99	http://netflix.com/user/110?gi=100	37	99	2019-09-16 00:44:28
100	http://cnn.com/settings?gi=100	4	100	2019-12-01 06:16:02
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.products (id, name, price, description, photo_id, user_seller_id, catalog_id, group_id, created_at) FROM stdin;
1	Tea1,	59,00 ₽	dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent	39	2	1	2	2020-10-10 06:56:05
2	Tea2,	68,00 ₽	Donec tempor, est ac mattis semper, dui lectus rutrum urna,	6	4	1	2	2020-11-26 12:18:11
3	Tea3,	12,00 ₽	et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat	7	5	1	2	2019-07-14 03:29:37
4	Tea4,	23,00 ₽	vitae erat vel pede blandit congue. In scelerisque scelerisque dui.	1	6	1	2	2020-02-10 15:39:08
5	Tea5,	53,00 ₽	nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam	56	7	1	2	2020-11-03 07:23:10
6	Tea6,	81,00 ₽	semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae	89	9	1	2	2020-01-12 05:03:51
7	Tea7,	18,00 ₽	dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante	59	10	1	2	2020-09-08 19:18:12
8	Tea8,	4,00 ₽	aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae	67	34	1	2	2020-06-05 08:33:30
9	Tea9,	46,00 ₽	lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,	60	37	1	2	2023-09-22 10:26:33
10	Tea10,	13,00 ₽	diam. Pellentesque habitant morbi tristique senectus et netus et malesuada	96	45	1	2	2021-12-15 14:24:10
11	Tea11,	97,00 ₽	elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu	81	55	1	2	2019-09-17 02:08:26
12	Tea12,	67,00 ₽	bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.	99	56	1	2	2019-06-05 17:10:36
13	Tea13,	67,00 ₽	dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam	50	67	1	2	2022-01-26 19:49:16
14	Tea14,	38,00 ₽	Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum	79	75	1	2	2022-10-28 10:08:37
15	Tea15,	72,00 ₽	a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu	89	80	1	2	2022-05-20 20:34:25
16	Tea16,	30,00 ₽	In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas	57	84	1	2	2023-07-02 20:50:09
17	Tea17,	32,00 ₽	lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis	54	87	1	2	2022-08-31 08:26:35
18	Tea18,	16,00 ₽	mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam	94	88	1	2	2020-07-01 07:22:32
19	Tea19,	21,00 ₽	quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus	92	90	1	2	2024-03-03 00:00:24
20	Tea20,	77,00 ₽	nunc risus varius orci, in consequat enim diam vel arcu.	73	91	1	2	2021-06-18 11:12:00
21	Tea21,	23,00 ₽	ante dictum mi, ac mattis velit justo nec ante. Maecenas	22	2	1	2	2019-07-10 16:06:50
22	Tea22,	48,00 ₽	lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet	18	4	1	2	2022-04-06 22:00:01
23	Tea23,	57,00 ₽	aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,	11	5	1	2	2021-05-14 19:06:01
24	Tea24,	87,00 ₽	commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,	58	6	1	2	2024-01-31 02:35:56
25	Tea25,	6,00 ₽	libero lacus, varius et, euismod et, commodo at, libero. Morbi	97	7	1	2	2021-11-07 08:46:51
26	Tea26,	51,00 ₽	bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.	91	9	1	2	2019-09-15 02:15:17
27	Tea27,	86,00 ₽	mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin	75	10	1	2	2020-07-07 14:15:33
28	Tea28,	51,00 ₽	elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec	65	9	1	2	2020-04-23 06:25:53
29	Tea29,	9,00 ₽	orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean	24	10	1	2	2022-04-17 06:50:45
30	Tea30,	73,00 ₽	sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et	63	80	1	2	2023-09-21 14:27:47
31	Tea31,	33,00 ₽	ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.	87	90	1	2	2022-05-16 00:25:26
32	Tea32,	21,00 ₽	mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam	97	55	1	2	2020-01-06 15:20:05
33	Tea33,	10,00 ₽	dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu	52	67	1	2	2019-07-02 19:07:23
34	Tea34,	85,00 ₽	nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce	74	10	1	2	2021-06-21 15:22:00
35	Tea35,	28,00 ₽	at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et	53	4	1	2	2021-09-29 13:20:57
36	Tea36,	93,00 ₽	quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis.	55	80	1	2	2023-09-29 00:02:12
37	Tea37,	48,00 ₽	Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.	100	9	1	2	2022-03-29 18:05:20
38	Tea38,	20,00 ₽	adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut	60	91	1	2	2022-03-26 19:08:10
39	Tea39,	13,00 ₽	nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis	84	5	1	2	2019-05-25 03:55:06
40	Tea40,	44,00 ₽	Sed id risus quis diam luctus lobortis. Class aptent taciti	92	10	1	2	2019-04-05 16:14:16
41	Tea41,	5,00 ₽	id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus	11	91	1	2	2020-05-23 16:48:04
42	Tea42,	44,00 ₽	neque et nunc. Quisque ornare tortor at risus. Nunc ac	76	10	1	2	2022-05-21 22:48:31
43	Tea43,	72,00 ₽	et malesuada fames ac turpis egestas. Fusce aliquet magna a	80	37	1	2	2021-12-19 20:31:04
44	Tea44,	80,00 ₽	aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu	94	2	1	2	2020-11-26 08:06:34
45	Tea45,	47,00 ₽	malesuada fames ac turpis egestas. Fusce aliquet magna a neque.	40	84	1	2	2019-11-18 10:55:31
46	Tea46,	97,00 ₽	vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque	86	55	1	2	2023-08-29 20:11:49
47	Tea47,	60,00 ₽	orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce	66	7	1	2	2019-04-24 02:36:26
48	Tea48,	48,00 ₽	Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.	59	10	1	2	2022-08-18 18:14:11
49	Tea49,	30,00 ₽	Vestibulum ante ipsum primis in faucibus orci luctus et ultrices	34	9	1	2	2020-12-12 01:14:08
50	Tea50,	60,00 ₽	id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis	3	37	1	2	2020-04-26 18:41:02
51	Coffee1,	14,00 ₽	Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam	35	67	1	1	2019-06-25 22:27:31
52	Coffee2,	93,00 ₽	Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,	35	45	1	1	2020-10-21 23:47:39
53	Coffee3,	30,00 ₽	ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus	41	6	1	1	2023-08-19 19:37:54
54	Coffee4,	47,00 ₽	magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.	45	56	1	1	2022-10-11 10:18:16
55	Coffee5,	53,00 ₽	fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,	17	5	1	1	2023-06-29 09:10:49
56	Coffee6,	26,00 ₽	ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu	2	2	1	1	2021-09-03 07:17:52
57	Coffee7,	99,00 ₽	tempor, est ac mattis semper, dui lectus rutrum urna, nec	100	9	1	1	2019-09-17 08:34:54
58	Coffee8,	96,00 ₽	rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,	29	45	1	1	2020-05-03 02:45:12
59	Coffee9,	85,00 ₽	ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede	67	10	1	1	2020-05-02 19:01:53
60	Coffee10,	94,00 ₽	tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit	70	80	1	1	2022-05-13 08:20:01
61	Coffee11,	30,00 ₽	parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio	72	87	1	1	2022-12-16 00:25:04
62	Coffee12,	5,00 ₽	sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci	55	4	1	1	2020-04-22 01:30:54
63	Coffee13,	27,00 ₽	urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus	37	75	1	1	2020-08-16 18:41:15
64	Coffee14,	98,00 ₽	sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie	25	37	1	1	2020-03-06 17:10:08
65	Coffee15,	8,00 ₽	lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor	40	4	1	1	2021-09-06 10:33:26
66	Coffee16,	30,00 ₽	lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor	3	7	1	1	2019-10-23 22:33:09
67	Coffee17,	2,00 ₽	eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer	64	34	1	1	2022-01-12 02:23:57
68	Coffee18,	44,00 ₽	consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat	67	5	1	1	2019-05-09 09:08:42
69	Coffee19,	87,00 ₽	Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque	34	5	1	1	2024-01-09 15:02:34
70	Coffee20,	51,00 ₽	vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur	2	9	1	1	2019-09-27 14:10:57
71	Coffee21,	96,00 ₽	Donec porttitor tellus non magna. Nam ligula elit, pretium et,	52	9	1	1	2020-07-28 20:37:14
72	Coffee22,	15,00 ₽	odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.	59	4	1	1	2023-01-04 02:36:17
73	Coffee23,	96,00 ₽	tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec	29	4	1	1	2021-01-08 13:16:13
74	Coffee24,	47,00 ₽	adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut	86	91	1	1	2021-12-02 01:10:19
75	Coffee25,	65,00 ₽	mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,	53	90	1	1	2023-08-15 14:59:49
76	Coffee26,	77,00 ₽	fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh	11	2	1	1	2021-11-16 19:43:08
77	Coffee27,	97,00 ₽	sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis	45	67	1	1	2020-03-07 11:09:40
78	Coffee28,	83,00 ₽	nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque	70	91	1	1	2022-08-14 16:57:51
79	Coffee29,	45,00 ₽	montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc	8	90	1	1	2023-01-12 03:31:49
80	Coffee30,	12,00 ₽	orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,	17	56	1	1	2021-05-25 21:27:11
81	Coffee31,	47,00 ₽	nisi sem semper erat, in consectetuer ipsum nunc id enim.	78	7	1	1	2024-03-04 23:45:27
82	Coffee32,	40,00 ₽	orci, in consequat enim diam vel arcu. Curabitur ut odio	12	45	1	1	2019-12-17 19:19:34
83	Coffee33,	49,00 ₽	tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec	83	34	1	1	2022-02-21 13:48:49
84	Coffee34,	72,00 ₽	Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum	86	67	1	1	2020-09-01 02:12:58
85	Coffee35,	10,00 ₽	Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla	7	80	1	1	2023-09-09 17:11:02
86	Coffee36,	31,00 ₽	tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,	47	7	1	1	2019-06-26 08:47:18
87	Coffee37,	93,00 ₽	ut erat. Sed nunc est, mollis non, cursus non, egestas	85	10	1	1	2022-12-09 06:38:00
88	Coffee38,	15,00 ₽	consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam	99	10	1	1	2020-01-19 10:02:31
89	Coffee39,	77,00 ₽	lectus ante dictum mi, ac mattis velit justo nec ante.	64	4	1	1	2022-02-24 15:33:30
90	Coffee40,	73,00 ₽	nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus	10	9	1	1	2021-07-07 04:25:36
91	Coffee41,	44,00 ₽	eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in	50	56	1	1	2019-07-09 13:51:17
92	Coffee42,	71,00 ₽	Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.	78	9	1	1	2023-01-21 01:39:34
93	Coffee43,	28,00 ₽	erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.	5	91	1	1	2021-07-24 12:28:34
94	Coffee44,	47,00 ₽	molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,	17	9	1	1	2023-03-26 19:21:11
95	Coffee45,	48,00 ₽	penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec	68	7	1	1	2020-12-31 13:13:57
96	Coffee46,	19,00 ₽	velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod	85	67	1	1	2023-08-17 18:10:17
97	Coffee47,	82,00 ₽	libero. Proin sed turpis nec mauris blandit mattis. Cras eget	58	80	1	1	2020-06-01 17:13:11
98	Coffee48,	63,00 ₽	justo sit amet nulla. Donec non justo. Proin non massa	93	37	1	1	2022-05-09 05:41:14
99	Coffee49,	59,00 ₽	non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum.	37	6	1	1	2023-02-07 09:55:20
100	Coffee50,	64,00 ₽	diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.	89	10	1	1	2020-11-08 06:41:18
\.


--
-- Data for Name: user_types; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.user_types (id, name) FROM stdin;
1	seller
2	buyer
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: sergey
--

COPY public.users (id, first_name, last_name, email, password, phone, type_id, created_at) FROM stdin;
2	John	Stafford	etiam.gravida@yahoo.net	EPT53PWG1IS	1-254-517-2175	1	2022-01-24 07:07:20
3	Blaze	Graham	vel.vulputate.eu@yahoo.couk	QFG49LVS4QX	1-578-821-2721	2	2023-01-07 05:36:28
4	Merritt	Stuart	ut.quam@google.edu	HRK64OIO1ZD	(733) 331-9712	1	2019-08-09 13:41:07
5	Plato	Wolfe	id.enim@icloud.ca	DXA43BTH8IJ	(205) 777-6841	1	2020-03-26 23:21:55
6	Herman	Maynard	ornare@protonmail.com	LVD46QEB6XW	1-193-367-5676	1	2023-01-24 04:03:18
7	Thaddeus	Carver	augue@hotmail.couk	WVQ11VGV3SM	(853) 336-2259	1	2022-07-03 05:10:32
8	Sean	Rodriguez	vel.venenatis@outlook.net	KPG58IKY8OX	1-228-683-4751	2	2022-04-20 22:16:40
9	Ryan	Banks	sociosqu@google.net	MAU45ZZG1DC	1-324-454-3632	1	2022-09-22 11:39:12
10	Harding	Hart	tellus.suspendisse@google.couk	JFD73MHT4OU	(818) 594-6140	1	2022-05-06 04:35:03
11	Slade	Gill	fermentum.fermentum@protonmail.ca	NTS49OMU4GK	1-203-346-9509	2	2021-10-27 14:32:30
12	Hall	Sandoval	nulla.integer@aol.edu	QFR26ZGS7OA	1-220-616-5381	2	2020-06-21 17:21:55
1	Tad	Castro	dui.cras@protonmail.couk	DTG03VZJ0DM	1-646-648-8582	2	2019-11-01 01:39:43
13	Vincent	Stone	tortor.dictum@outlook.com	WXI86XMK2YY	1-841-439-5695	2	2020-11-06 06:02:04
14	Fuller	Brooks	at.lacus@yahoo.com	VYY21YRD7HE	1-814-277-8217	2	2022-03-15 15:22:34
15	Brett	Kelley	taciti@aol.com	OXX41AKB7TY	(373) 311-1211	2	2020-02-07 20:41:54
16	Knox	Salazar	elementum@icloud.com	BGO58CNC3OX	(863) 845-9355	2	2019-07-18 02:37:12
17	Rudyard	Chandler	urna.nec@aol.edu	GOT83RTE1FT	1-857-700-4887	2	2019-06-17 13:21:55
18	Steven	Green	nulla@outlook.ca	FDE06FBM2GF	(876) 574-2859	2	2019-10-20 20:19:10
19	Jelani	Beard	velit@hotmail.org	TJF96WVN5SC	(442) 954-5786	2	2021-10-07 20:48:09
20	Fuller	Waller	aenean.eget@hotmail.org	EXN71UPU1NL	1-295-256-3817	2	2021-10-15 13:53:36
21	Griffin	Huff	nulla.integer@protonmail.org	UNW94UCV2DE	(968) 473-9573	2	2022-08-01 15:31:37
22	Trevor	Oliver	pharetra@outlook.com	KIS21UAC1EN	1-470-733-7282	2	2019-08-06 19:50:04
23	Steel	Carrillo	eget.laoreet@aol.ca	NXC87KHN7UG	1-525-152-7841	2	2021-05-16 16:45:38
24	Darius	Savage	et.euismod.et@aol.net	FXP61WYM5RK	(312) 448-6219	2	2019-08-05 03:48:28
25	Murphy	King	aliquam.rutrum.lorem@hotmail.couk	SYO75AOF9RA	1-880-230-2711	2	2022-03-31 06:10:54
26	Allistair	Burch	morbi.sit@yahoo.com	KBU21NUH4EZ	(374) 397-7743	2	2020-02-09 12:11:16
27	Dolan	Mcintosh	nunc@aol.net	CUW31ZIE7GF	1-692-744-3697	2	2019-12-21 19:44:48
28	Marvin	Mclean	mollis.vitae@yahoo.org	PGQ31SGL7DW	(417) 811-7310	2	2021-11-02 10:25:43
29	Kaseem	Gonzalez	mauris.integer.sem@aol.couk	TNF34CYW3LN	1-314-949-2128	2	2020-08-02 18:10:28
30	Todd	Ellison	aliquet.diam@aol.net	JMJ81HKM2YN	(547) 243-2718	2	2020-11-28 09:30:12
31	Beck	Mccarty	dui.fusce@hotmail.org	LVD15LUI1IC	(923) 925-0912	2	2020-02-15 20:34:07
32	Brent	Briggs	praesent@icloud.com	KQD22QUO6GO	(476) 863-4565	2	2019-06-27 01:04:21
33	Erich	Cooke	fusce@aol.couk	PGZ07YRG7MN	1-406-523-8922	2	2021-07-25 15:00:35
34	Cody	Chavez	lorem@protonmail.ca	KEF85EMC6PR	1-867-302-7186	1	2023-02-01 17:53:16
35	Jared	Rollins	sit.amet@yahoo.net	NEK64GYD0BL	(768) 681-9913	2	2021-08-31 12:03:13
36	Aidan	Serrano	neque@aol.org	TCY96CTW9AG	(527) 557-7411	2	2019-11-06 09:45:31
37	Declan	Hess	est@icloud.net	LBP04UWP7VM	1-754-486-0960	1	2021-02-28 16:42:46
38	Simon	Benton	ullamcorper@hotmail.edu	DYK83AQW7CO	(273) 255-1482	2	2020-07-25 13:03:57
39	Zephania	Burton	rutrum.eu@google.net	QMN21UOY4RM	(582) 897-8170	2	2022-11-27 10:55:24
40	Jarrod	Alvarado	cras.eget@outlook.net	MBC26THU3LN	(287) 831-0077	2	2022-11-29 07:08:28
41	Malik	Bentley	risus.a@protonmail.ca	QEO41WLZ3UZ	1-828-311-1864	2	2021-10-20 13:47:06
42	Gareth	Delaney	vel@protonmail.com	IOE56SGO6HG	(557) 532-6155	2	2022-07-12 10:25:47
43	Mason	Hernandez	convallis@google.com	YUT53UNS1OP	(600) 277-8785	2	2019-04-01 18:51:17
44	Roth	Berg	quisque@aol.ca	RNG72OKZ1LN	1-115-647-2625	2	2021-10-09 14:51:54
45	Forrest	Osborn	tempor@hotmail.ca	ZEK63LJO3OS	1-398-662-2266	1	2020-09-24 05:19:53
46	Asher	Griffin	rutrum.magna@protonmail.couk	XPN32ZLT5VT	1-463-651-5264	2	2022-10-29 03:17:02
47	Vincent	Clemons	aenean.euismod.mauris@icloud.edu	XMU47YEO0QL	(563) 708-5108	2	2022-06-02 05:38:11
48	Avram	Glenn	fusce.fermentum.fermentum@aol.net	KIT32TDN7OM	(946) 547-7568	2	2019-06-09 11:27:55
49	Craig	Browning	rhoncus.id.mollis@google.com	BXN33XFE4HX	1-361-438-5445	2	2019-08-07 15:06:05
50	Colorado	Rice	molestie.dapibus.ligula@protonmail.couk	EMQ43SKG5CE	1-463-664-4658	2	2023-02-20 22:38:32
51	Boris	Arnold	et.nunc@yahoo.ca	THK36NUB4KP	(858) 775-1784	2	2020-11-09 11:49:09
52	Garth	Shelton	a.sollicitudin.orci@icloud.couk	PFJ67FVA1LC	(227) 833-4703	2	2021-10-31 11:30:55
53	Samuel	Garza	auctor.nunc.nulla@protonmail.com	HHV41GHV4GB	1-968-251-5392	2	2023-03-04 21:27:33
54	Reese	Byers	praesent.eu@aol.org	KBN14VXC4OF	1-717-647-1223	2	2019-09-07 15:08:08
55	Thaddeus	Fisher	parturient.montes@aol.couk	SZN74CTO5WG	(247) 737-2276	1	2019-06-08 21:39:58
56	Wyatt	Baker	ultrices.a@yahoo.com	PNU88AUG9GG	1-614-882-6166	1	2020-02-29 13:57:29
57	David	Hopper	facilisis.magna@outlook.com	JDD75CYR5GC	1-938-929-1985	2	2021-05-22 05:18:15
58	Jasper	Ingram	imperdiet@aol.com	JMF22JTR3MG	(756) 321-7557	2	2021-03-23 22:39:47
59	Fitzgerald	Rhodes	quam.quis.diam@outlook.ca	CSK99RDC5RU	(653) 857-1711	2	2022-01-28 20:07:50
60	Kane	Mcleod	sem.ut@icloud.net	WBH37RQL0XX	(827) 121-8880	2	2019-09-05 03:04:08
61	Beck	Riley	id@icloud.edu	XWY22WOX2BP	(324) 923-2156	2	2021-07-20 07:36:54
62	Griffin	Flores	nascetur.ridiculus@outlook.edu	QUT66XXF9SF	1-405-129-3739	2	2021-07-18 12:49:59
63	Drew	Garcia	senectus.et@google.net	GNR60RNC1IF	(989) 234-2624	2	2022-09-07 02:14:58
64	Quentin	Wallace	quis.turpis@protonmail.edu	VIU11RGQ3EG	1-742-847-3379	2	2021-06-23 18:24:17
65	Bradley	Mcdowell	sed@outlook.ca	JPC41TDX7LE	1-648-211-1626	2	2019-08-16 15:05:12
66	Eaton	Holcomb	enim.commodo.hendrerit@aol.edu	HKK71VCT3CM	(375) 345-4568	2	2022-10-19 02:25:23
67	John	Hill	sed.orci.lobortis@icloud.ca	UYU47GIV8TG	(176) 642-3532	1	2019-08-14 02:06:41
68	Aristotle	Welch	dolor.quisque@icloud.edu	TPV65SDO7LS	1-119-445-3961	2	2021-12-29 02:07:29
69	Preston	Turner	nunc@google.ca	ITH65IQC2QP	1-185-862-9840	2	2021-01-21 01:03:36
70	Rafael	Good	orci@outlook.net	HOM53ROS1PD	1-365-991-0329	2	2020-07-16 04:43:47
71	Arthur	Shepherd	justo.praesent.luctus@hotmail.ca	XLL56HLY2EH	1-851-221-9097	2	2021-09-30 22:34:26
72	Tyler	Britt	in.at@outlook.com	CXH71HRD2OC	(781) 654-8685	2	2020-04-02 13:44:38
73	Zane	West	lobortis@aol.net	NVJ67GPF6VU	1-744-852-3562	2	2021-09-17 08:54:00
74	Lane	Lamb	egestas.aliquam@protonmail.net	DYM13VNY2CK	1-473-475-6256	2	2019-09-13 06:28:34
75	Ralph	Mann	erat.vitae@icloud.edu	NMU44PRJ7EO	1-651-503-2782	1	2020-03-10 18:39:03
76	Barry	Tucker	est@protonmail.com	HQG73OPO4FQ	(707) 614-6543	2	2019-06-19 06:32:19
77	Steven	Malone	sollicitudin.orci.sem@yahoo.couk	NBC06KZT2XP	1-292-383-7288	2	2022-07-17 11:26:21
78	Jordan	Rivas	dui.fusce@yahoo.com	IPA77EPI2DQ	1-611-128-7725	2	2019-04-12 10:54:12
79	Uriah	Sweeney	congue.elit@aol.edu	RDU98CDB9PP	(113) 718-2157	2	2019-07-04 06:59:24
80	Raymond	Bradford	tincidunt@google.net	VJX83DZO3KS	1-782-252-8811	1	2019-04-02 20:31:35
81	Brandon	Bryan	parturient.montes@yahoo.couk	RCV57RRF8JZ	(915) 719-2954	2	2019-11-18 23:20:02
82	Keegan	Rodriguez	ornare.egestas.ligula@yahoo.net	DZX56SRN2SR	(347) 334-7312	2	2020-04-10 16:50:01
83	Levi	Frost	dis.parturient@protonmail.ca	GVG34LQM0PG	(957) 514-5234	2	2020-05-14 14:11:50
84	Ray	Douglas	libero.nec@protonmail.edu	OHV71BUE0SN	1-368-633-2244	1	2022-04-03 05:20:35
85	Brendan	Snider	libero.at@aol.net	VDR15PHO6ZQ	1-269-656-3667	2	2020-07-18 18:00:33
86	Nathaniel	Dudley	nunc.quisque.ornare@protonmail.couk	PEK48RTN2WN	(227) 615-9424	2	2022-01-16 10:10:07
87	Caesar	Carson	tincidunt.neque@protonmail.org	VHQ65VFU6ZP	1-261-186-8413	1	2020-10-05 07:07:46
88	Jacob	Richmond	cursus@google.com	FBU66CKH8AT	(341) 565-9344	1	2020-10-23 22:38:11
89	Talon	Daugherty	quis@yahoo.org	GLO35COZ1HB	(753) 661-7116	2	2019-06-06 05:12:57
90	Gareth	James	suscipit@outlook.org	OSQ55GNV5NH	(367) 355-5630	1	2019-05-08 22:13:33
91	Jakeem	Emerson	egestas.lacinia@google.edu	SRW66FNW5BR	1-273-493-8067	1	2019-04-04 14:51:54
92	Carter	Ayala	lobortis@hotmail.edu	YVL91NCZ8JS	(164) 815-9196	2	2022-12-07 14:25:22
93	Akeem	Berger	feugiat.placerat@aol.org	SZJ14ULU5NM	1-473-398-9482	2	2020-06-16 07:55:21
94	Flynn	Mccullough	magnis.dis@google.edu	ZCX50PIG6GL	1-861-637-4826	2	2019-12-15 05:46:37
95	Zahir	Lynn	nulla.donec@google.edu	MOJ85ZDA2TC	(764) 388-8383	2	2019-07-03 22:22:41
96	Leonard	Lopez	ante@icloud.net	MDC13JQN2WT	1-530-204-5476	2	2021-06-03 08:31:03
97	Dylan	Norman	ligula.aliquam.erat@icloud.com	RJC37YEI3XF	1-291-620-4681	2	2020-04-20 13:07:27
98	Barclay	Delgado	nec.mauris@aol.net	EUD11SVA4WK	(513) 514-7338	2	2020-05-01 03:27:22
99	Kennedy	Odom	aenean.euismod.mauris@outlook.org	TUW01FVY4IY	1-793-243-9702	2	2022-08-14 07:38:07
100	Gregory	Mueller	quis.accumsan@yahoo.org	KWQ61UXT8XY	(962) 938-6567	2	2020-02-04 00:08:16
\.


--
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.address_id_seq', 10, true);


--
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.baskets_id_seq', 15, true);


--
-- Name: baskets_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.baskets_product_id_seq', 15, true);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.feedbacks_id_seq', 30, true);


--
-- Name: likes_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.likes_products_id_seq', 240, true);


--
-- Name: likes_seller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.likes_seller_id_seq', 90, true);


--
-- Name: order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.order_products_id_seq', 10, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.orders_id_seq', 10, true);


--
-- Name: payment_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.payment_method_id_seq', 2, true);


--
-- Name: payment_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.payment_status_id_seq', 2, true);


--
-- Name: product_catalogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.product_catalogs_id_seq', 1, true);


--
-- Name: product_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.product_groups_id_seq', 2, true);


--
-- Name: product_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.product_photos_id_seq', 100, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.products_id_seq', 100, true);


--
-- Name: user_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.user_types_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergey
--

SELECT pg_catalog.setval('public.users_id_seq', 110, true);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- Name: baskets_product baskets_product_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.baskets_product
    ADD CONSTRAINT baskets_product_pkey PRIMARY KEY (id);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: likes_products likes_products_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.likes_products
    ADD CONSTRAINT likes_products_pkey PRIMARY KEY (id);


--
-- Name: likes_seller likes_seller_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.likes_seller
    ADD CONSTRAINT likes_seller_pkey PRIMARY KEY (id);


--
-- Name: order_products order_products_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payment_method payment_method_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_pkey PRIMARY KEY (id);


--
-- Name: payment_method payment_method_type_key; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_type_key UNIQUE (type);


--
-- Name: payment_status payment_status_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.payment_status
    ADD CONSTRAINT payment_status_pkey PRIMARY KEY (id);


--
-- Name: product_catalogs product_catalogs_name_key; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_catalogs
    ADD CONSTRAINT product_catalogs_name_key UNIQUE (name);


--
-- Name: product_catalogs product_catalogs_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_catalogs
    ADD CONSTRAINT product_catalogs_pkey PRIMARY KEY (id);


--
-- Name: product_groups product_groups_name_key; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_groups
    ADD CONSTRAINT product_groups_name_key UNIQUE (name);


--
-- Name: product_groups product_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_groups
    ADD CONSTRAINT product_groups_pkey PRIMARY KEY (id);


--
-- Name: product_photos product_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_photos
    ADD CONSTRAINT product_photos_pkey PRIMARY KEY (id);


--
-- Name: product_photos product_photos_url_key; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.product_photos
    ADD CONSTRAINT product_photos_url_key UNIQUE (url);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: user_types user_types_name_key; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.user_types
    ADD CONSTRAINT user_types_name_key UNIQUE (name);


--
-- Name: user_types user_types_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.user_types
    ADD CONSTRAINT user_types_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: sergey
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
