--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9 (Homebrew)
-- Dumped by pg_dump version 14.9 (Homebrew)

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

--
-- Name: backup; Type: SCHEMA; Schema: -; Owner: dj
--

CREATE SCHEMA backup;


ALTER SCHEMA backup OWNER TO dj;

--
-- Name: swift; Type: SCHEMA; Schema: -; Owner: dj
--

CREATE SCHEMA swift;


ALTER SCHEMA swift OWNER TO dj;

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: CONUS_stations_v2; Type: TABLE; Schema: backup; Owner: dj
--

CREATE TABLE backup."CONUS_stations_v2" (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    "project id" character varying(254),
    "site name" character varying(254),
    "swift site" character varying(254),
    longitude double precision,
    latitude double precision,
    "street add" character varying(254),
    city character varying(254),
    "zip code" character varying(254),
    state character varying(254),
    country character varying(254),
    "site statu" character varying(254),
    "approved f" character varying(254),
    "project na" character varying(254),
    station character varying(20),
    provider character varying(10),
    base character varying(10),
    rover character varying(10),
    "bds-b1" character varying(254),
    "bds-b2" character varying(254),
    "bds-b2a" character varying(254),
    "gal-e1" character varying(254),
    "gal-e5a" character varying(254),
    "gal-e5b" character varying(254),
    "gps-l1c" character varying(254),
    "gps-l2c" character varying(254),
    "gps-l2p" character varying(254),
    "gps-l5" character varying(254),
    pilot character varying(254),
    commercial character varying(254),
    access character varying(254),
    sla character varying(254),
    type character varying(254)
);


ALTER TABLE backup."CONUS_stations_v2" OWNER TO dj;

--
-- Name: EU_stations_v2; Type: TABLE; Schema: backup; Owner: dj
--

CREATE TABLE backup."EU_stations_v2" (
    id_0 integer NOT NULL,
    geom public.geometry(Point,3035),
    id integer,
    station character varying(254),
    median_x double precision,
    std_x double precision,
    median_y double precision,
    std_y double precision,
    median_z double precision,
    std_z double precision,
    longitude double precision,
    latitude double precision,
    altitude double precision,
    layer character varying(100),
    path character varying(200),
    provider character varying(10),
    pilot character varying(254),
    commercial character varying(254),
    access character varying(254),
    sla character varying(254),
    base character varying(254),
    rover character varying(254),
    "bds-b1" character varying(254),
    "bds-b2" character varying(254),
    "bds-b2a" character varying(254),
    "gal-e1" character varying(254),
    "gal-e5a" character varying(254),
    "gal-e5b" character varying(254),
    "gps-l1c" character varying(254),
    "gps-l2p" character varying(254),
    "gps-l5" character varying(254),
    type character varying(254)
);


ALTER TABLE backup."EU_stations_v2" OWNER TO dj;

--
-- Name: JPN_stations_v2; Type: TABLE; Schema: backup; Owner: dj
--

CREATE TABLE backup."JPN_stations_v2" (
    id_0 integer NOT NULL,
    geom public.geometry(Point,4326),
    id character varying,
    "局番号" character varying(254),
    station character varying(20),
    provider character varying(10),
    pilot character varying(254),
    commercial character varying(254),
    access character varying(254),
    sla character varying(254),
    base character varying(10),
    rover character varying(10),
    "bds-b1" character varying(254),
    "bds-b2" character varying(254),
    "bds-b2a" character varying(254),
    "gal-e1" character varying(254),
    "gal-e5a" character varying(254),
    "gal-e5b" character varying(254),
    "gps-l1c" character varying(254),
    "gps-l2p" character varying(254),
    "gps-l5" character varying(254),
    "site name" character varying(254),
    "swift site" character varying(254),
    longitude character varying(254),
    latitude character varying(254),
    type character varying(254)
);


ALTER TABLE backup."JPN_stations_v2" OWNER TO dj;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO dj;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO dj;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO dj;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO dj;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO dj;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO dj;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO dj;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO dj;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO dj;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dj
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO dj;

--
-- Name: geo_api_ap_station; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.geo_api_ap_station (
    id character varying(100) NOT NULL,
    station character varying(100),
    geom public.geometry(Point,4326),
    longitude character varying(100),
    latitude character varying(100),
    altitude character varying(100),
    provider character varying(100),
    pilot character varying(100),
    commercial character varying(100),
    access character varying(100),
    sla character varying(100),
    base character varying(100),
    rover character varying(100),
    stationtype character varying(100),
    status character varying(100)
);


ALTER TABLE public.geo_api_ap_station OWNER TO dj;

--
-- Name: geo_api_eu_station; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.geo_api_eu_station (
    id character varying(100) NOT NULL,
    station character varying(100),
    geom public.geometry(Point,4326),
    longitude character varying(100),
    latitude character varying(100),
    altitude character varying(100),
    provider character varying(100),
    pilot character varying(100),
    commercial character varying(100),
    access character varying(100),
    sla character varying(100),
    base character varying(100),
    rover character varying(100),
    stationtype character varying(100),
    status character varying(100)
);


ALTER TABLE public.geo_api_eu_station OWNER TO dj;

--
-- Name: geo_api_station; Type: TABLE; Schema: public; Owner: dj
--

CREATE TABLE public.geo_api_station (
    id character varying(100) NOT NULL,
    station character varying(100),
    geom public.geometry(Point,4326),
    longitude character varying(100),
    latitude character varying(100),
    altitude character varying(100),
    provider character varying(100),
    pilot character varying(100),
    commercial character varying(100),
    access character varying(100),
    sla character varying(100),
    base character varying(100),
    rover character varying(100),
    stationtype character varying(100),
    status character varying(100)
);


ALTER TABLE public.geo_api_station OWNER TO dj;

--
-- Name: CONUS_stations_v2; Type: TABLE; Schema: swift; Owner: dj
--

CREATE TABLE swift."CONUS_stations_v2" (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    "project id" character varying(254),
    "site name" character varying(254),
    "swift site" character varying(254),
    longitude double precision,
    latitude double precision,
    "street add" character varying(254),
    city character varying(254),
    "zip code" character varying(254),
    state character varying(254),
    country character varying(254),
    "site statu" character varying(254),
    "approved f" character varying(254),
    "project na" character varying(254),
    station character varying(20),
    provider character varying(10),
    base character varying(10),
    rover character varying(10),
    "bds-b1" character varying(254),
    "bds-b2" character varying(254),
    "bds-b2a" character varying(254),
    "gal-e1" character varying(254),
    "gal-e5a" character varying(254),
    "gal-e5b" character varying(254),
    "gps-l1c" character varying(254),
    "gps-l2c" character varying(254),
    "gps-l2p" character varying(254),
    "gps-l5" character varying(254),
    pilot character varying(254),
    commercial character varying(254),
    access character varying(254),
    sla character varying(254),
    type character varying(254),
    status character(254)
);


ALTER TABLE swift."CONUS_stations_v2" OWNER TO dj;

--
-- Name: EU_stations_v2; Type: TABLE; Schema: swift; Owner: dj
--

CREATE TABLE swift."EU_stations_v2" (
    id integer NOT NULL,
    geom public.geometry(Point,3035),
    station character varying(254),
    longitude character varying(254),
    latitude character varying(254),
    altitude character varying(254),
    provider character varying(254),
    pilot character varying(254),
    commercial character varying(254),
    access character varying(254),
    sla character varying(254),
    base character varying(254),
    rover character varying(254),
    "bds-b1" character varying(254),
    "bds-b2" character varying(254),
    "bds-b2a" character varying(254),
    "gal-e1" character varying(254),
    "gal-e5a" character varying(254),
    "gal-e5b" character varying(254),
    "gps-l1c" character varying(254),
    "gps-l2c" character varying(254),
    "gps-l2p" character varying(254),
    "gps-l5" character varying(254),
    type character varying(254),
    status character varying(254)
);


ALTER TABLE swift."EU_stations_v2" OWNER TO dj;

--
-- Name: EU_stations_v2_id_seq; Type: SEQUENCE; Schema: swift; Owner: dj
--

CREATE SEQUENCE swift."EU_stations_v2_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE swift."EU_stations_v2_id_seq" OWNER TO dj;

--
-- Name: EU_stations_v2_id_seq; Type: SEQUENCE OWNED BY; Schema: swift; Owner: dj
--

ALTER SEQUENCE swift."EU_stations_v2_id_seq" OWNED BY swift."EU_stations_v2".id;


--
-- Name: JPN_stations_v2; Type: TABLE; Schema: swift; Owner: dj
--

CREATE TABLE swift."JPN_stations_v2" (
    id character varying NOT NULL,
    geom public.geometry(Point,4326),
    id_0 bigint,
    station character varying(20),
    provider character varying(10),
    pilot character varying(254),
    commercial character varying(254),
    access character varying(254),
    sla character varying(254),
    base character varying(10),
    rover character varying(10),
    "bds-b1" character varying(254),
    "bds-b2" character varying(254),
    "bds-b2a" character varying(254),
    "gal-e1" character varying(254),
    "gal-e5a" character varying(254),
    "gal-e5b" character varying(254),
    "gps-l1c" character varying(254),
    "gps-l2p" character varying(254),
    "gps-l5" character varying(254),
    "site name" character varying(254),
    "swift site" character varying(254),
    longitude character varying(254),
    latitude character varying(254),
    type character varying(254),
    status character(254)
);


ALTER TABLE swift."JPN_stations_v2" OWNER TO dj;

--
-- Name: NA_stations_v2; Type: TABLE; Schema: swift; Owner: dj
--

CREATE TABLE swift."NA_stations_v2" (
    id bigint NOT NULL,
    geom public.geometry(Point,4326),
    "project id" character varying(254),
    "site name" character varying(254),
    "swift site" character varying(254),
    longitude numeric,
    latitude numeric,
    "street add" character varying(254),
    city character varying(254),
    "zip code" character varying(254),
    state character varying(254),
    country character varying(254),
    "site statu" character varying(254),
    "approved f" character varying(254),
    "project na" character varying(254),
    station character varying(20),
    provider character varying(10),
    base character varying(10),
    rover character varying(10),
    "bds-b1" character varying(254),
    "bds-b2" character varying(254),
    "bds-b2a" character varying(254),
    "gal-e1" character varying(254),
    "gal-e5a" character varying(254),
    "gal-e5b" character varying(254),
    "gps-l1c" character varying(254),
    "gps-l2c" character varying(254),
    "gps-l2p" character varying(254),
    "gps-l5" character varying(254),
    pilot character varying(254),
    commercial character varying(254),
    access character varying(254),
    sla character varying(254),
    type character varying(254),
    status character varying(254)
);


ALTER TABLE swift."NA_stations_v2" OWNER TO dj;

--
-- Name: EU_stations_v2 id; Type: DEFAULT; Schema: swift; Owner: dj
--

ALTER TABLE ONLY swift."EU_stations_v2" ALTER COLUMN id SET DEFAULT nextval('swift."EU_stations_v2_id_seq"'::regclass);


--
-- Data for Name: CONUS_stations_v2; Type: TABLE DATA; Schema: backup; Owner: dj
--

COPY backup."CONUS_stations_v2" (id, geom, "project id", "site name", "swift site", longitude, latitude, "street add", city, "zip code", state, country, "site statu", "approved f", "project na", station, provider, base, rover, "bds-b1", "bds-b2", "bds-b2a", "gal-e1", "gal-e5a", "gal-e5b", "gps-l1c", "gps-l2c", "gps-l2p", "gps-l5", pilot, commercial, access, sla, type) FROM stdin;
5	0101000020E61000003DFEA0687D0257C04295792F677D4140	\N	\N	\N	-92.03890434	34.97971147	\N	\N	\N	\N	\N	\N	\N	\N	ARCB00USA	swift	1	0	18	6	12	18	18	18	22	\N	18	10	1	1	1	100	integrity
6	0101000020E61000006FE29AF1EC9A57C08C678EB46DB14140	\N	\N	\N	-94.4207119	35.38616044	\N	\N	\N	\N	\N	\N	\N	\N	ARFM00USA	swift	1	0	16	4	12	18	18	18	23.6	\N	21.6	12	1	1	1	100	integrity
8	0101000020E6100000FCF5549888F85BC0B5B254492AD14040	\N	\N	\N	-111.8833371	33.63410298	\N	\N	\N	\N	\N	\N	\N	\N	AZCH00USA	swift	1	0	16	4	12	18	18	18	20.6	\N	20.6	10	1	1	1	100	integrity
10	0101000020E61000005FA1C50897625CC020DC321A58664040	\N	\N	\N	-113.5404684	32.79956367	\N	\N	\N	\N	\N	\N	\N	\N	AZDL00USA	swift	1	0	23.4	5.2	18.2	20.8	20.8	20.8	27	\N	27	13	1	1	1	100	integrity
1	0101000020E6100000F3412A2048895CC06E6E4C4F58884940	\N	\N	\N	-114.1450272	51.065195	\N	\N	\N	\N	\N	\N	\N	\N	ABCG00CAN	swift	1	0	10	4	\N	20	20	20	23.8	\N	23.8	10	1	1	1	100	single
2	0101000020E6100000A64F404D8CB155C0F9870C2F31C34040	\N	\N	\N	-86.77418834	33.52493847	\N	\N	\N	\N	\N	\N	\N	\N	ALBH01USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
3	0101000020E6100000A0C37C7901A855C02F71FD1E69D43F40	\N	\N	\N	-86.62509	31.82972902	\N	\N	\N	\N	\N	\N	\N	\N	ALGR00USA	swift	1	0	10	6	\N	17.6	17.6	17.6	20	\N	20	10	1	1	1	100	single
4	0101000020E610000016E6D232714357C04B98A3A6610F4140	\N	\N	\N	-93.05378409	34.12016757	\N	\N	\N	\N	\N	\N	\N	\N	ARAK00USA	swift	1	0	10	6	\N	18	18	18	21	\N	19	9.8	1	1	1	100	single
7	0101000020E610000019DA4AF91ABE56C02B88A2BC66214240	\N	\N	\N	-90.97039635	36.26094778	\N	\N	\N	\N	\N	\N	\N	\N	ARPH00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
9	0101000020E6100000CE93217D49E15BC06769C083937C4040	\N	\N	\N	-111.5201104	32.97325179	\N	\N	\N	\N	\N	\N	\N	\N	AZCO00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
11	0101000020E61000000D9DE8047EE95BC044B3A15170994140	\N	\N	\N	-111.6483166	35.1987402	\N	\N	\N	\N	\N	\N	\N	\N	AZFL00USA	swift	1	0	6	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
13	0101000020E6100000AF3CED951E8A5BC0AEE0AFB07D734140	\N	\N	\N	-110.1581168	34.90227326	\N	\N	\N	\N	\N	\N	\N	\N	AZHB00USA	swift	1	0	No data	No data	No data	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	integrity
14	0101000020E6100000159CB0B357DD5BC08456F52CE7754240	\N	\N	\N	-111.4584779	36.92111742	\N	\N	\N	\N	\N	\N	\N	\N	AZPG00USA	swift	1	0	18	4	14	18	18	18	22	\N	22	12	1	1	1	100	integrity
16	0101000020E6100000845C4EAE4E755BC083FC4BD651204040	\N	\N	\N	-109.8329273	32.25249747	\N	\N	\N	\N	\N	\N	\N	\N	AZWC00USA	swift	1	0	18	4	14	18	18	18	22	\N	22	10	1	1	1	100	integrity
17	0101000020E61000002DC4341D4BEC5EC02A24B2725C744340	\N	\N	\N	-123.6920846	38.90907129	\N	\N	\N	\N	\N	\N	\N	\N	CAAA00USA	swift	1	0	20	4	16	18	17.8	18	20	\N	20	10	1	1	1	100	integrity
18	0101000020E6100000A7ECF483BA225EC0F0D8328DE4BD4440	\N	\N	\N	-120.542634	41.48353734	\N	\N	\N	\N	\N	\N	\N	\N	CAAS00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity
19	0101000020E6100000246AFD88BA225EC0EAE36744E5BD4440	\N	\N	\N	-120.5426352	41.48355918	\N	\N	\N	\N	\N	\N	\N	\N	CAAS00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity
23	0101000020E6100000D65B5E1418ED5DC069089EAD49694240	\N	\N	\N	-119.7045947	36.82256098	\N	\N	\N	\N	\N	\N	\N	\N	CACS00USA	swift	1	0	8	4	\N	20	20	20	23.6	\N	23.6	11.6	1	1	1	100	integrity
26	0101000020E6100000F3C98AE16A8C5EC078C57C0E66814240	\N	\N	\N	-122.1940235	37.01092702	\N	\N	\N	\N	\N	\N	\N	\N	CADV00USA	swift	1	0	16	4	14	18	18	18	21.8	\N	21.8	10	1	1	1	100	integrity
30	0101000020E6100000662728EAF17A5EC066A630C672BC4240	\N	\N	\N	-121.9210153	37.47225263	\N	\N	\N	\N	\N	\N	\N	\N	CAFT00USA	swift	1	0	20	4	16	20	20	20	23.8	\N	23.8	11.6	1	1	1	100	integrity
37	0101000020E61000008D2A1E728EA65CC0D19C2FD5506B4140	\N	\N	\N	-114.6024442	34.83840432	\N	\N	\N	\N	\N	\N	\N	\N	CAND00USA	swift	1	0	18	4	14	20	20	20	22	\N	22	10	1	1	1	100	integrity
41	0101000020E610000098B4F347622A5EC0C55CEF8AA2354440	\N	\N	\N	-120.6622486	40.41902291	\N	\N	\N	\N	\N	\N	\N	\N	CASE00USA	swift	1	0	6	4	\N	18	18	18	22	\N	22	10	1	1	1	100	integrity
44	0101000020E6100000D3F0D2F2A83D5DC0E4B0451CFC694040	\N	\N	\N	-116.9634368	32.8280063	\N	\N	\N	\N	\N	\N	\N	\N	CAST00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity
45	0101000020E6100000D0436D1BC6CC5DC023D897F0F41F4140	\N	\N	\N	-119.1995915	34.24966247	\N	\N	\N	\N	\N	\N	\N	\N	CAVA00USA	swift	1	0	22	4	18	20	20	20	23.8	\N	23.8	12	1	1	1	100	integrity
52	0101000020E61000003BCF8E0A52F359C0E91F6DB115204440	\N	\N	\N	-103.8018824	40.25066202	\N	\N	\N	\N	\N	\N	\N	\N	COFO00USA	swift	1	0	18	4	14	18	18	17.8	22	\N	22	8	1	1	1	100	integrity
56	0101000020E6100000410DDFC2BA275AC04DFF27B922214340	\N	\N	\N	-104.620774	38.25887217	\N	\N	\N	\N	\N	\N	\N	\N	COPU00USA	swift	1	0	7.2	3.6	\N	16.2	16.2	16.2	19.8	\N	19.8	7.2	1	1	1	100	integrity
58	0101000020E61000006E3B2300AE0554C0EE450FD7C55E3A40	\N	\N	\N	-80.08874515	26.3702063	\N	\N	\N	\N	\N	\N	\N	\N	FLBR00USA	swift	1	0	22	6	16	20	20	20	20	\N	20	10	1	1	1	100	integrity
69	0101000020E61000002AA6146C4A0D55C042BDF0B52DE03E40	\N	\N	\N	-84.20766737	30.87569749	\N	\N	\N	\N	\N	\N	\N	\N	GACA00USA	swift	1	0	20	6	14	16	16	16	20	\N	18	10	1	1	1	100	integrity
70	0101000020E6100000EB6499136E3F55C09CFA820EA13B4040	\N	\N	\N	-84.99109354	32.46585256	\N	\N	\N	\N	\N	\N	\N	\N	GACB00USA	swift	1	0	18	6	12	16	16	16	18	\N	18	8	1	1	1	100	integrity
76	0101000020E6100000C22ECC3A4A8C57C0C8BF641D6D404540	\N	\N	\N	-94.19203062	42.50332992	\N	\N	\N	\N	\N	\N	\N	\N	IAFD00USA	swift	1	0	16	4	12	18	18	18	19.6	\N	19.6	8	1	1	1	100	integrity
77	0101000020E6100000C2367F9F33D456C043961EB09F504440	\N	\N	\N	-91.31565082	40.62987329	\N	\N	\N	\N	\N	\N	\N	\N	IAFM00USA	swift	1	0	8	4	\N	18	18	18	26	\N	23.8	14	1	1	1	100	integrity
79	0101000020E610000081BC0D2072D457C087F7A09032D44440	\N	\N	\N	-95.31946565	41.65779312	\N	\N	\N	\N	\N	\N	\N	\N	IAHL00USA	swift	1	0	16	4	12	18	18	18	20	\N	20	10	1	1	1	100	integrity
80	0101000020E6100000A8870DBB94B05CC0BF0CE796AD4C4540	\N	\N	\N	-114.7590778	42.59904753	\N	\N	\N	\N	\N	\N	\N	\N	IDBU00USA	swift	1	0	20	4	16	18	18	18	22	\N	20	10	1	1	1	100	integrity
84	0101000020E6100000AA5F8EC385FA5BC0159227A410D64540	\N	\N	\N	-111.9144143	43.67238285	\N	\N	\N	\N	\N	\N	\N	\N	IDRY00USA	swift	1	0	22	4	18	20	20	20	24	\N	24	10	1	1	1	100	integrity
86	0101000020E6100000454D2EA5F20C56C087C73CFAF8E94440	\N	\N	\N	-88.20230989	41.82791069	\N	\N	\N	\N	\N	\N	\N	\N	ILCY00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	integrity
89	0101000020E61000004A64FE55F05256C04AAABE0C29C64340	\N	\N	\N	-89.29591894	39.54812774	\N	\N	\N	\N	\N	\N	\N	\N	ILTV00USA	swift	1	0	16	4	12	18	18	18	19.8	\N	16	8	1	1	1	100	integrity
90	0101000020E6100000600A2837BE4855C06777CC69E4894440	\N	\N	\N	-85.13660983	41.07728312	\N	\N	\N	\N	\N	\N	\N	\N	INFW00USA	swift	1	0	18	6	12	18	18	16	21.4	\N	18	10	1	1	1	100	integrity
91	0101000020E61000002C09F599187155C0AF30543070304340	\N	\N	\N	-85.76712655	38.37842373	\N	\N	\N	\N	\N	\N	\N	\N	INSG00USA	swift	1	0	10	6	\N	16	16	16	22	\N	22	10	1	1	1	100	integrity
94	0101000020E61000000B50093EBC1D59C030D55093AE3D4340	\N	\N	\N	-100.4646144	38.48189012	\N	\N	\N	\N	\N	\N	\N	\N	KSDN00USA	swift	1	0	16	4	12	18	18	18	20	\N	20	8	1	1	1	100	integrity
96	0101000020E610000002D3ED15AB7B58C0AFEF3F099E074340	\N	\N	\N	-97.93231724	38.05951038	\N	\N	\N	\N	\N	\N	\N	\N	KSHU00USA	swift	1	0	8	4	\N	18	18	18	19.8	\N	19.8	8	1	1	1	100	integrity
101	0101000020E6100000DEB112D25E2A57C0A21C58D0ACD03E40	\N	\N	\N	-92.66203739	30.81513693	\N	\N	\N	\N	\N	\N	\N	\N	LAOD00USA	swift	1	0	10	6	\N	18	18	18	23.2	\N	22	13.2	1	1	1	100	integrity
105	0101000020E61000007D46F9B410C151C09A877E33523F4540	\N	\N	\N	-71.01664471	42.49469608	\N	\N	\N	\N	\N	\N	\N	\N	MASG00USA	swift	1	0	22	6	16	14	14	14	18.6	\N	18	10	1	1	1	100	integrity
109	0101000020E6100000A695A54A128A51C00FCB4D71A8574640	\N	\N	\N	-70.15736643	44.68482796	\N	\N	\N	\N	\N	\N	\N	\N	MEPL00USA	swift	1	0	10	6	\N	14	14	14	22	\N	22	10	1	1	1	100	integrity
110	0101000020E610000040368773A6DB54C032983B0AC2874640	\N	\N	\N	-83.43203438	45.06060913	\N	\N	\N	\N	\N	\N	\N	\N	MIAL00USA	swift	1	0	16	4	12	14	16	16	19	\N	16.4	8	1	1	1	100	integrity
112	0101000020E610000092AE997CF3CB54C021DC8DD3CA284540	\N	\N	\N	-83.18673625	42.31868977	\N	\N	\N	\N	\N	\N	\N	\N	MIDB00USA	swift	1	0	18	6	12	16	16	16	21	\N	18	10	1	1	1	100	integrity
116	0101000020E610000018A38536469055C03D15CB88E69D4540	\N	\N	\N	-86.25428546	43.23359785	\N	\N	\N	\N	\N	\N	\N	\N	MIMK00USA	swift	1	0	16	4	12	18	18	18	21.8	\N	18	10	1	1	1	100	integrity
124	0101000020E6100000096B63EC04BD57C02CCEFF4864DE4640	\N	\N	\N	-94.9534255	45.73743546	\N	\N	\N	\N	\N	\N	\N	\N	MNSC00USA	swift	1	0	16	4	12	20	20	20	24	\N	22	10	1	1	1	100	integrity
129	0101000020E61000001B960EEFDCA057C06F83DA6FED884240	\N	\N	\N	-94.51348473	37.069746	\N	\N	\N	\N	\N	\N	\N	\N	MOJP00USA	swift	1	0	10	6	\N	18	18	18	23.2	\N	19.4	11.4	1	1	1	100	integrity
130	0101000020E6100000A9168D8C401E57C0B78DB3A76CDE4340	\N	\N	\N	-92.47268976	39.73769089	\N	\N	\N	\N	\N	\N	\N	\N	MOMC00USA	swift	1	0	16	4	12	18	18	18	24.2	\N	21.8	14	1	1	1	100	integrity
132	0101000020E6100000F1C659436FB956C041A9AC5CDEB34040	\N	\N	\N	-90.89741596	33.40522345	\N	\N	\N	\N	\N	\N	\N	\N	MSLL00USA	swift	1	0	18	6	12	18	18	18	22	\N	18	12	1	1	1	100	integrity
138	0101000020E6100000BE8AE7C73A205BC033631B0211354840	\N	\N	\N	-108.5035877	48.41458155	\N	\N	\N	\N	\N	\N	\N	\N	MTDD00USA	swift	1	0	10	4	\N	20	20	20	26	\N	26	12	1	1	1	100	integrity
141	0101000020E610000032D417F8C02D5AC03A9635B9318D4740	\N	\N	\N	-104.7149029	47.10307994	\N	\N	\N	\N	\N	\N	\N	\N	MTGE00USA	swift	1	0	10	4	\N	18	18	18	24	\N	24	10	1	1	1	100	integrity
143	0101000020E610000015D742DA108A5CC04964828E941F4740	\N	\N	\N	-114.1572786	46.24672109	\N	\N	\N	\N	\N	\N	\N	\N	MTHN00USA	swift	1	0	10	4	\N	18	18	18	24	\N	22	10	1	1	1	100	integrity
152	0101000020E61000004686C91225B853C08D9CE0F6DF124140	\N	\N	\N	-78.87726278	34.14745985	\N	\N	\N	\N	\N	\N	\N	\N	NCTC00USA	swift	1	0	18	6	12	14	14	14	19.8	\N	19.8	10	1	1	1	100	integrity
156	0101000020E61000008078863ED24258C022FB41D96BF34740	\N	\N	\N	-97.04408229	47.90172878	\N	\N	\N	\N	\N	\N	\N	\N	NDLS00USA	swift	1	0	0.8	0.4	\N	2	2	2	2.6	\N	2.4	1.2	1	1	1	100	integrity
157	0101000020E610000025315239373959C0F365165FBC694740	\N	\N	\N	-100.8939956	46.82606114	\N	\N	\N	\N	\N	\N	\N	\N	NDMN00USA	swift	1	0	8	4	\N	19.6	19.6	19.6	22	\N	22	10	1	1	1	100	integrity
161	0101000020E6100000326F9BCADE9558C005D05A973B764440	\N	\N	\N	-98.34172311	40.92369358	\N	\N	\N	\N	\N	\N	\N	\N	NEGI00USA	swift	1	0	18	4	14	20	20	20	22	\N	22	10	1	1	1	100	integrity
162	0101000020E6100000AB9DBC233E5A58C0A1272BA739044540	\N	\N	\N	-97.4100427	42.03300943	\N	\N	\N	\N	\N	\N	\N	\N	NENF00USA	swift	1	0	16	4	12	20	20	20	22	\N	20	10	1	1	1	100	integrity
163	0101000020E6100000626FBD01C13059C0E40D17567D914440	\N	\N	\N	-100.7617802	41.13663746	\N	\N	\N	\N	\N	\N	\N	\N	NENP00USA	swift	1	0	8	4	\N	20	20	20	22	\N	20.6	8	1	1	1	100	integrity
170	0101000020E6100000FC6541727CF05AC04E705E5A5C224040	\N	\N	\N	-107.7575956	32.26844339	\N	\N	\N	\N	\N	\N	\N	\N	NMDE00USA	swift	1	0	18	4	14	20	20	20	21.8	\N	21.8	10	1	1	1	100	integrity
177	0101000020E6100000444DF4F9A8A05CC07A519A519CCE4240	\N	\N	\N	-114.5103135	37.61414547	\N	\N	\N	\N	\N	\N	\N	\N	NVCA00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	8	1	1	1	100	integrity
178	0101000020E61000008EC87729F5B65CC024F1138317A14340	\N	\N	\N	-114.8587135	39.25853003	\N	\N	\N	\N	\N	\N	\N	\N	NVEL00USA	swift	1	0	18	4	14	18	18	18	22	\N	22	10	1	1	1	100	integrity
181	0101000020E61000009016670C73FF5CC0AE6DC4724F1A4240	\N	\N	\N	-115.991397	36.20554957	\N	\N	\N	\N	\N	\N	\N	\N	NVPP00USA	swift	1	0	20	4	16	20	20	20	23.6	\N	23.6	12	1	1	1	100	integrity
184	0101000020E6100000987D6830D74E5DC0CF362F35DF084340	\N	\N	\N	-117.2318841	38.06931176	\N	\N	\N	\N	\N	\N	\N	\N	NVTN00USA	swift	1	0	22	4	18	20	20	20	22	\N	22	10	1	1	1	100	integrity
194	0101000020E61000005F8ABCF6D68754C0C511D68C2D9D4440	\N	\N	\N	-82.12249535	41.22795258	\N	\N	\N	\N	\N	\N	\N	\N	OHLG00USA	swift	1	0	16	4	12	16	16	16	18.4	\N	18	8	1	1	1	100	integrity
196	0101000020E61000007CB2491B5AD558C07B3328A2F8514140	\N	\N	\N	-99.33362467	34.64040019	\N	\N	\N	\N	\N	\N	\N	\N	OKAL00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity
202	0101000020E6100000E583F9861DF75EC0728CBF48C3174740	\N	\N	\N	-123.8611772	46.1856471	\N	\N	\N	\N	\N	\N	\N	\N	ORAS00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	integrity
205	0101000020E61000001F42018008545EC0EC653E94A6074640	\N	\N	\N	-121.3130188	44.05977109	\N	\N	\N	\N	\N	\N	\N	\N	ORBD00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity
206	0101000020E61000008173EBDA83C35DC0645122D36BCB4540	\N	\N	\N	-119.0549228	43.58922805	\N	\N	\N	\N	\N	\N	\N	\N	ORBR00USA	swift	1	0	22	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity
207	0101000020E6100000F60CE19865C85EC0DB03E76B1A064640	\N	\N	\N	-123.131201	44.04768132	\N	\N	\N	\N	\N	\N	\N	\N	OREU00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity
209	0101000020E6100000DEE522BE13D65EC05CDE452D879A4540	\N	\N	\N	-123.344955	43.20725027	\N	\N	\N	\N	\N	\N	\N	\N	ORRB00USA	swift	1	0	16	4	12	20	20	20	22	\N	22	10	1	1	1	100	integrity
216	0101000020E610000001F1E3FD72F053C09CBE01DA144D4440	\N	\N	\N	-79.75701854	40.60219884	\N	\N	\N	\N	\N	\N	\N	\N	PATM00USA	swift	1	0	10	6	\N	14	14	14	19.6	\N	19.6	9.6	1	1	1	100	integrity
219	0101000020E6100000A9DFE066CC1B59C0615E15E270C44640	\N	\N	\N	-100.4343507	45.53469492	\N	\N	\N	\N	\N	\N	\N	\N	SDMG00USA	swift	1	0	18	4	14	20	20	20	24	\N	24	10	1	1	1	100	integrity
221	0101000020E6100000458A5CCBBF0359C09CAC499E88F44540	\N	\N	\N	-100.0585812	43.91041926	\N	\N	\N	\N	\N	\N	\N	\N	SDPR00USA	swift	1	0	8	4	\N	20	20	20	25.4	\N	25.4	11.4	1	1	1	100	integrity
225	0101000020E61000001E7B49A550FE54C0BCFAE383BFE54140	\N	\N	\N	-83.97367222	35.79490708	\N	\N	\N	\N	\N	\N	\N	\N	TNAC00USA	swift	1	0	10	6	\N	14	14	14	18	\N	18	8	1	1	1	100	integrity
229	0101000020E61000002A487DA3677759C05CFD3B4FFA9A4140	\N	\N	\N	-101.8657006	35.21076384	\N	\N	\N	\N	\N	\N	\N	\N	TXAM00USA	swift	1	0	18	4	14	18	18	18	20	\N	20	10	1	1	1	100	integrity
236	0101000020E6100000BB9315E4A3B257C00803F0CB704C3D40	\N	\N	\N	-94.79125311	29.29859614	\N	\N	\N	\N	\N	\N	\N	\N	TXGV00USA	swift	1	0	20	6	14	20	20	20	22	\N	22	12	1	1	1	100	integrity
237	0101000020E61000002B85C466556F58C0D74DE792C31E3F40	\N	\N	\N	-97.73958749	31.12017172	\N	\N	\N	\N	\N	\N	\N	\N	TXKL00USA	swift	1	0	20	6	14	18	18	18	26	\N	22	14	1	1	1	100	integrity
239	0101000020E6100000F7E39B12B5005AC06CFE25CA5A4F3E40	\N	\N	\N	-104.0110518	30.30997909	\N	\N	\N	\N	\N	\N	\N	\N	TXMF00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity
240	0101000020E6100000FFEA2FC3D8A957C02E727065609A3F40	\N	\N	\N	-94.65385513	31.60303339	\N	\N	\N	\N	\N	\N	\N	\N	TXNC00USA	swift	1	0	10	6	\N	18	18	18	23.8	\N	21.8	13.8	1	1	1	100	integrity
241	0101000020E6100000AA3D36139D9759C09EC009BFB3D83F40	\N	\N	\N	-102.3689621	31.84649271	\N	\N	\N	\N	\N	\N	\N	\N	TXOD00USA	swift	1	0	20	6	14	20	20	20	22	\N	21	12	1	1	1	100	integrity
243	0101000020E6100000F8597E43556858C0273AE4C9E2213A40	\N	\N	\N	-97.63020408	26.13236677	\N	\N	\N	\N	\N	\N	\N	\N	TXSB00USA	swift	1	0	20	6	14	20	20	20	22	\N	20	14	1	1	1	100	integrity
252	0101000020E610000054AA44D95B5154C0297B4B395FA04240	\N	\N	\N	-81.271231	37.252906	\N	\N	\N	\N	\N	\N	\N	\N	VABF00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity
253	0101000020E61000009A6DD9E7121A53C0AD604470966E4240	\N	\N	\N	-76.40740391	36.86396602	\N	\N	\N	\N	\N	\N	\N	\N	VACP00USA	swift	1	0	16	4	12	14	14	14	20	\N	18	10	1	1	1	100	integrity
256	0101000020E61000002DAFBF99963E52C0E50412B985CD4540	\N	\N	\N	-72.97794193	43.6056434	\N	\N	\N	\N	\N	\N	\N	\N	VTRU00USA	swift	1	0	10	6	\N	14	14	14	18.2	\N	18.2	8.2	1	1	1	100	integrity
259	0101000020E6100000482F0F3E39AF5DC0F879A58FED524840	\N	\N	\N	-118.7378688	48.64787479	\N	\N	\N	\N	\N	\N	\N	\N	WARP00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	integrity
262	0101000020E61000008A2F2471A0205EC0DE699D7EF14C4740	\N	\N	\N	-120.5097926	46.60111983	\N	\N	\N	\N	\N	\N	\N	\N	WAYA00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	integrity
269	0101000020E61000001B9330998BFF55C0558650299F894540	\N	\N	\N	-87.99289541	43.07516972	\N	\N	\N	\N	\N	\N	\N	\N	WISS00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	10	1	1	1	100	integrity
274	0101000020E6100000043BFE0B044D5BC0112510655ECC4440	\N	\N	\N	-109.203372	41.5966307	\N	\N	\N	\N	\N	\N	\N	\N	WYRS00USA	swift	1	0	8	4	\N	16	16	16	21.6	\N	20	8	1	1	1	100	integrity
275	0101000020E6100000100EAC996BFD5AC0DD4C3BEB09024640	\N	\N	\N	-107.9596924	44.0159277	\N	\N	\N	\N	\N	\N	\N	\N	WYWL00USA	swift	1	0	10	4	\N	18	18	18	24	\N	24	10	1	1	1	100	integrity
12	0101000020E61000003518D9846AB25BC0D6A635F6BAB24040	\N	\N	\N	-110.7877514	33.39633062	\N	\N	\N	\N	\N	\N	\N	\N	AZGB00USA	swift	1	0	6	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single
15	0101000020E61000003B641415BBC35BC098F5833610F73F40	\N	\N	\N	-111.0582936	31.96509114	\N	\N	\N	\N	\N	\N	\N	\N	AZST00USA	swift	1	0	6.6	4.4	\N	19.8	19.8	19.8	24	\N	24	11	1	1	1	100	single
20	0101000020E6100000FC74971F93A45CC08D1480353DCE4040	\N	\N	\N	-114.5714797	33.61124295	\N	\N	\N	\N	\N	\N	\N	\N	CABE00USA	swift	1	0	8	4	\N	20	20	20	24	\N	24	12	1	1	1	100	single
21	0101000020E6100000674EF27E37995DC0F7CB694758AE4240	\N	\N	\N	-118.3940122	37.36206906	\N	\N	\N	\N	\N	\N	\N	\N	CABS00USA	swift	1	0	6	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single
22	0101000020E610000093E57F4D31475DC0074DE01009704140	\N	\N	\N	-117.1123842	34.87527667	\N	\N	\N	\N	\N	\N	\N	\N	CABW00USA	swift	1	0	22	4	18	20	20	20	24	\N	24	12	1	1	1	100	single
24	0101000020E610000002429028D9815DC08F67C0EE2EEA4040	\N	\N	\N	-118.0288793	33.82955727	\N	\N	\N	\N	\N	\N	\N	\N	CACY00USA	swift	1	0	21.2	4	18	22	22	22	24	\N	22	12	1	1	1	100	single
25	0101000020E61000003CE0151CB9CF5DC0D558882F8FE14140	\N	\N	\N	-119.2456732	35.76218218	\N	\N	\N	\N	\N	\N	\N	\N	CADA00USA	swift	1	0	20	4	16	20	20	20	22.6	\N	22.6	12	1	1	1	100	single
27	0101000020E6100000F64CE5A37B0B5FC0C11D452963654440	\N	\N	\N	-124.1794214	40.79208866	\N	\N	\N	\N	\N	\N	\N	\N	CAEA00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	single
28	0101000020E6100000D4C9631756925EC09C787BCE65EA4240	\N	\N	\N	-122.2865046	37.83123189	\N	\N	\N	\N	\N	\N	\N	\N	CAEM00USA	swift	1	0	20	4	16	20	20	20	22	\N	22	10	1	1	1	100	single
29	0101000020E6100000A5DF19C80E5C5EC02FEFFD4F76804440	\N	\N	\N	-121.4384022	41.00361061	\N	\N	\N	\N	\N	\N	\N	\N	CAFR00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
31	0101000020E61000002C8A0DCCC0245EC0831809E9007C4140	\N	\N	\N	-120.5742674	34.96877778	\N	\N	\N	\N	\N	\N	\N	\N	CAGU00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
32	0101000020E6100000F03E7DBA709B5EC0C5F7CD1673BB4240	\N	\N	\N	-122.4287554	37.46444974	\N	\N	\N	\N	\N	\N	\N	\N	CAHM00USA	swift	1	0	8	4	\N	20	20	20	22.8	\N	22.8	10.8	1	1	1	100	single
33	0101000020E610000052F3B0AB240D5DC0C0A762F842DC4040	\N	\N	\N	-116.2053632	33.72079377	\N	\N	\N	\N	\N	\N	\N	\N	CAIO00USA	swift	1	0	16	4	12	20	20	19.8	21.6	\N	21.6	10	1	1	1	100	single
34	0101000020E610000096D4642195BA5EC088C04F24B1854340	\N	\N	\N	-122.9153522	39.04446844	\N	\N	\N	\N	\N	\N	\N	\N	CALK00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
35	0101000020E6100000CF3758EE3B6A5EC0C060F54F89934240	\N	\N	\N	-121.6599079	37.15262794	\N	\N	\N	\N	\N	\N	\N	\N	CAMH00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
36	0101000020E6100000DB221FAA5FA75EC00637E71A45604340	\N	\N	\N	-122.6152139	38.75210892	\N	\N	\N	\N	\N	\N	\N	\N	CAMN00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	8	1	1	1	100	single
38	0101000020E6100000CE339B6CA8FF5CC01CE371EE825D4040	\N	\N	\N	-115.9946548	32.73055821	\N	\N	\N	\N	\N	\N	\N	\N	CAOC00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
39	0101000020E6100000C5200B2CDB985EC023F00BD8234A4440	\N	\N	\N	-122.3883772	40.57921887	\N	\N	\N	\N	\N	\N	\N	\N	CARD01USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	single
40	0101000020E6100000142F055AF07E5EC0976D6D0208E44240	\N	\N	\N	-121.9834199	37.78149443	\N	\N	\N	\N	\N	\N	\N	\N	CASA00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	8	1	1	1	100	single
42	0101000020E6100000B9A063ACDB785EC0D5415E0F26A54240	\N	\N	\N	-121.8884078	37.290224	\N	\N	\N	\N	\N	\N	\N	\N	CASJ00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
43	0101000020E6100000DB711EA919555EC012563A8AB9364240	\N	\N	\N	-121.3296912	36.42753723	\N	\N	\N	\N	\N	\N	\N	\N	CASO00USA	swift	1	0	20	4	18	20	20	20	24	\N	24	12	1	1	1	100	single
46	0101000020E61000008EA4EE14BC735EC00924F643CB564340	\N	\N	\N	-121.8083546	38.67807817	\N	\N	\N	\N	\N	\N	\N	\N	CAWD00USA	swift	1	0	22	4	18	20	20	20	22	\N	22	10	1	1	1	100	single
47	0101000020E610000099558E7F55B05CC041FFD2DC695F4040	\N	\N	\N	-114.7552184	32.74541817	\N	\N	\N	\N	\N	\N	\N	\N	CAWI00USA	swift	1	0	20.2	4	18	22	22	22	22	\N	22	10	1	1	1	100	single
48	0101000020E6100000FB3DB14E95D65EC0F00115E959B44340	\N	\N	\N	-123.352863	39.40899385	\N	\N	\N	\N	\N	\N	\N	\N	CAWS00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
49	0101000020E6100000AB04300AA7245EC0FCE0BE062BAF4240	\N	\N	\N	-120.5726953	37.36850056	\N	\N	\N	\N	\N	\N	\N	\N	CAWY00USA	swift	1	0	22	4	20	20	20	20	24	\N	24	12	1	1	1	100	single
50	0101000020E6100000B3A6C354C4A85EC00728CB18B8DD4440	\N	\N	\N	-122.6369831	41.73218069	\N	\N	\N	\N	\N	\N	\N	\N	CAYA00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
51	0101000020E61000009415C3D501E35AC0B5BE0EBDC1414440	\N	\N	\N	-107.546987	40.51372493	\N	\N	\N	\N	\N	\N	\N	\N	COCR00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	8	1	1	1	100	single
53	0101000020E6100000D49B51F3552F5BC09AA0C01A6B934340	\N	\N	\N	-108.739621	39.15170607	\N	\N	\N	\N	\N	\N	\N	\N	COFT00USA	swift	1	0	8	4	\N	18	18	18	23.8	\N	22	10	1	1	1	100	single
54	0101000020E61000005D8C81759CA759C013BE73FF430B4340	\N	\N	\N	-102.6189245	38.08801263	\N	\N	\N	\N	\N	\N	\N	\N	COLA00USA	swift	1	0	8	4	\N	19.8	19.8	19.8	21	\N	20.2	8	1	1	1	100	single
55	0101000020E6100000B02770A161475AC04BA9AEF0EC124440	\N	\N	\N	-105.1153339	40.14785584	\N	\N	\N	\N	\N	\N	\N	\N	COLM00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single
57	0101000020E6100000F9F4D89681F05AC03617874C5C134340	\N	\N	\N	-107.7579095	38.15125424	\N	\N	\N	\N	\N	\N	\N	\N	CORI00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single
59	0101000020E6100000FBC5CFF325C254C064343C07E0223D40	\N	\N	\N	-83.03356643	29.1362309	\N	\N	\N	\N	\N	\N	\N	\N	FLCK00USA	swift	1	0	18	6	12	14	16	14.6	17.6	\N	17.6	8	1	1	1	100	single
60	0101000020E6100000E3855BDBA73154C0E17A98E6EB5A3C40	\N	\N	\N	-80.77587017	28.35516206	\N	\N	\N	\N	\N	\N	\N	\N	FLCO00USA	swift	1	0	12	6	\N	16	16	16	18	\N	18	8	1	1	1	100	single
61	0101000020E6100000FF379B33871E54C017C4386676773940	\N	\N	\N	-80.47700205	25.46665038	\N	\N	\N	\N	\N	\N	\N	\N	FLHO00USA	swift	1	0	22	6	18	18	17.6	16.2	18	\N	18	10	1	1	1	100	single
62	0101000020E6100000E08D9AE93D7D54C07B56CA1927073C40	\N	\N	\N	-81.95690384	28.02794038	\N	\N	\N	\N	\N	\N	\N	\N	FLLL00USA	swift	1	0	10	6	\N	15	15	15	18	\N	18	8	1	1	1	100	single
63	0101000020E6100000BBF55802027154C0B1B8073ABD233A40	\N	\N	\N	-81.76574763	26.13960612	\N	\N	\N	\N	\N	\N	\N	\N	FLNA00USA	swift	1	0	14	6	\N	20	20	20	19.2	\N	19.2	9.4	1	1	1	100	single
64	0101000020E610000059390F82A9B455C068F6ABC633693E40	\N	\N	\N	-86.82284595	30.41094629	\N	\N	\N	\N	\N	\N	\N	\N	FLNV00USA	swift	1	0	18	6	12	16	16	16	20	\N	20	12	1	1	1	100	single
65	0101000020E6100000B567F92E239F54C0180199C6C42F3B40	\N	\N	\N	-82.48652243	27.18659631	\N	\N	\N	\N	\N	\N	\N	\N	FLOP00USA	swift	1	0	14	6	\N	19.8	19.8	19.8	20	\N	20	10	1	1	1	100	single
66	0101000020E610000013273958665355C044A9184229D03D40	\N	\N	\N	-85.30312162	29.81312955	\N	\N	\N	\N	\N	\N	\N	\N	FLPJ00USA	swift	1	0	10	6	\N	18	18	18	21	\N	19	11	1	1	1	100	single
67	0101000020E61000008FB55418FA6254C0C890294090493E40	\N	\N	\N	-81.54651459	30.28735734	\N	\N	\N	\N	\N	\N	\N	\N	FLPL00USA	swift	1	0	10	6	\N	14	14	14	18	\N	18	8	1	1	1	100	single
68	0101000020E610000028FF2824787C54C09941DF8A82DC3C40	\N	\N	\N	-81.94483284	28.86136692	\N	\N	\N	\N	\N	\N	\N	\N	FLSS00USA	swift	1	0	12	6	\N	14	14	14	18	\N	18	8	1	1	1	100	single
71	0101000020E61000004AEEB0894C1155C04F24F32359E44040	\N	\N	\N	-84.2702965	33.78397035	\N	\N	\N	\N	\N	\N	\N	\N	GADE00USA	swift	1	0	10	6	\N	16	16	16	13.4	\N	13.2	5	1	1	1	100	single
72	0101000020E61000004F986A459FB954C05B1F9C70AB084040	\N	\N	\N	-82.90034614	32.06773193	\N	\N	\N	\N	\N	\N	\N	\N	GAMR00USA	swift	1	0	3	1.8	\N	4.8	4.8	4.8	6	\N	6	3	1	1	1	100	single
73	0101000020E6100000F071E0B4A44554C09255F8D091084040	\N	\N	\N	-81.08817789	32.06694996	\N	\N	\N	\N	\N	\N	\N	\N	GASV00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
74	0101000020E61000002FCCF8AD0CAE57C01A6E3CAF63554440	\N	\N	\N	-94.7195239	40.66710463	\N	\N	\N	\N	\N	\N	\N	\N	IABE00USA	swift	1	0	8	4	\N	18	18	18	22.4	\N	19	10.6	1	1	1	100	single
75	0101000020E6100000489362B27E1C57C08C781D379D444540	\N	\N	\N	-92.44523296	42.53604783	\N	\N	\N	\N	\N	\N	\N	\N	IACE00USA	swift	1	0	8	4	\N	18	18	18	21.6	\N	18	9.6	1	1	1	100	single
78	0101000020E610000019B91B024FB156C0FC62DFE3063F4540	\N	\N	\N	-90.77044728	42.49239777	\N	\N	\N	\N	\N	\N	\N	\N	IAGM00USA	swift	1	0	10	6	\N	18	18	18	24	\N	22	12	1	1	1	100	single
81	0101000020E6100000314A86D24D8E5CC049543DD32A414640	\N	\N	\N	-114.2234999	44.50911942	\N	\N	\N	\N	\N	\N	\N	\N	IDCL00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single
82	0101000020E6100000946B0A64F6235DC0258E237338CA4540	\N	\N	\N	-116.5619135	43.57984771	\N	\N	\N	\N	\N	\N	\N	\N	IDNP00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
83	0101000020E6100000423D224B8B1C5CC071D50A0DA36E4540	\N	\N	\N	-112.4460018	42.86435092	\N	\N	\N	\N	\N	\N	\N	\N	IDPO00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
85	0101000020E61000008BCEC7EF0CFD55C04A6805659E704440	\N	\N	\N	-87.95391459	40.87983382	\N	\N	\N	\N	\N	\N	\N	\N	ILAS00USA	swift	1	0	10	6	\N	18	18	18	25.6	\N	18	13.6	1	1	1	100	single
87	0101000020E61000003A6865B143EF55C0DAD89900CB804340	\N	\N	\N	-87.73850665	39.00619514	\N	\N	\N	\N	\N	\N	\N	\N	ILRO00USA	swift	1	0	10	6	\N	18	18	18	23.4	\N	19.8	11.4	1	1	1	100	single
88	0101000020E61000002A12FA36506C56C0A3E5822B07E44440	\N	\N	\N	-89.69239592	41.78146881	\N	\N	\N	\N	\N	\N	\N	\N	ILSL01USA	swift	1	0	18	6	12	18	18	18	21.6	\N	17.6	10	1	1	1	100	single
92	0101000020E6100000B890687E0CC455C012FF0B5FBABB4440	\N	\N	\N	-87.06326256	41.4666251	\N	\N	\N	\N	\N	\N	\N	\N	INVO00USA	swift	1	0	10	6	\N	18	18	18	23	\N	16	11.2	1	1	1	100	single
93	0101000020E610000007644C4DC46658C04CA6E9373CCF4240	\N	\N	\N	-97.60573132	37.61902522	\N	\N	\N	\N	\N	\N	\N	\N	KSAB00USA	swift	1	0	9.6	5.6	\N	18	18	18	19.8	\N	18	8	1	1	1	100	single
95	0101000020E6100000D2EFB1AA946D59C03E16CBC291AC4340	\N	\N	\N	-101.7121989	39.34819827	\N	\N	\N	\N	\N	\N	\N	\N	KSGL00USA	swift	1	0	18	4	14	18	18	18	21.4	\N	21.4	8	1	1	1	100	single
97	0101000020E6100000FD4B529962B857C05AB33ADE098F4340	\N	\N	\N	-94.881018	39.11748865	\N	\N	\N	\N	\N	\N	\N	\N	KSKA00USA	swift	1	0	8	4	\N	18	18	18	19.4	\N	19.4	8	1	1	1	100	single
98	0101000020E61000000434956EE0F254C0C67054F2DA504340	\N	\N	\N	-83.79494824	38.63168172	\N	\N	\N	\N	\N	\N	\N	\N	KYME00USA	swift	1	0	8	4	\N	17.6	17.6	17.6	20	\N	20	10	1	1	1	100	single
99	0101000020E6100000002061F7E12556C043CB9971438A4240	\N	\N	\N	-88.59191689	37.08018322	\N	\N	\N	\N	\N	\N	\N	\N	KYPD00USA	swift	1	0	10	6	\N	18	18	18	19.6	\N	19.6	7.6	1	1	1	100	single
100	0101000020E61000002D8449AF15BD56C0C7D0DA027C913E40	\N	\N	\N	-90.95444853	30.56829851	\N	\N	\N	\N	\N	\N	\N	\N	LADE00USA	swift	1	0	10	6	\N	18	18	18	20	\N	18	10	1	1	1	100	single
102	0101000020E610000068FC0CB9639856C0596D1F6E5E923D40	\N	\N	\N	-90.3810866	29.57175339	\N	\N	\N	\N	\N	\N	\N	\N	LARS00USA	swift	1	0	10	6	\N	20	20	20	23.6	\N	20	13.6	1	1	1	100	single
103	0101000020E6100000BAE8F90D726F57C057F4A0033F3F4040	\N	\N	\N	-93.74133634	32.49411054	\N	\N	\N	\N	\N	\N	\N	\N	LASP00USA	swift	1	0	10	6	\N	18	18	18	19	\N	14	9.6	1	1	1	100	single
104	0101000020E61000002EBFBAC765A551C068588CBA56C94440	\N	\N	\N	-70.58433717	41.57295925	\N	\N	\N	\N	\N	\N	\N	\N	MAEA00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single
106	0101000020E6100000211D1EC2782B53C0C8F1E07AD6AC4340	\N	\N	\N	-76.6792455	39.35029541	\N	\N	\N	\N	\N	\N	\N	\N	MDBA00USA	swift	1	0	10	6	\N	14	14	14	18.8	\N	16.8	8.8	1	1	1	100	single
107	0101000020E610000083D06A16221B51C05779C04455454640	\N	\N	\N	-68.42395554	44.54166469	\N	\N	\N	\N	\N	\N	\N	\N	MEEW00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
108	0101000020E61000000FCB8F8D7A1551C05E80BF903CAD4740	\N	\N	\N	-68.33560504	47.35341081	\N	\N	\N	\N	\N	\N	\N	\N	MEMW00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
111	0101000020E61000003E82D19B80EC54C09C7F81414E264540	\N	\N	\N	-83.69534965	42.29926318	\N	\N	\N	\N	\N	\N	\N	\N	MICY00USA	swift	1	0	8	4	\N	14	14	14	18	\N	18	8	1	1	1	100	single
113	0101000020E61000006D5255911FE854C0E1BD59396A764540	\N	\N	\N	-83.62692674	42.9251167	\N	\N	\N	\N	\N	\N	\N	\N	MIGB00USA	swift	1	0	18	6	12	16	14	16	20	\N	20	8	1	1	1	100	single
114	0101000020E6100000190F849EAC2D55C0E0EB73CEB2544640	\N	\N	\N	-84.71366084	44.66170674	\N	\N	\N	\N	\N	\N	\N	\N	MIGR00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single
115	0101000020E6100000601B548FB2EB54C099F8BC45D40A4540	\N	\N	\N	-83.68277343	42.08460304	\N	\N	\N	\N	\N	\N	\N	\N	MIMI00USA	swift	1	0	10	6	\N	16	16	16	20	\N	20	8	1	1	1	100	single
117	0101000020E610000003B9DD2EA86055C0303AACB2672D4740	\N	\N	\N	-85.51026508	46.35472711	\N	\N	\N	\N	\N	\N	\N	\N	MINB00USA	swift	1	0	8	4	\N	18	18	18	23.4	\N	23.4	10	1	1	1	100	single
118	0101000020E610000091D54A74182556C001D96F1644904740	\N	\N	\N	-88.57961757	47.12707787	\N	\N	\N	\N	\N	\N	\N	\N	MIUP00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single
119	0101000020E610000077BDD11AC5DF54C0A1DBA6D315534540	\N	\N	\N	-83.49640532	42.6491036	\N	\N	\N	\N	\N	\N	\N	\N	MIWL00USA	swift	1	0	8	4	\N	16	16	16	18.6	\N	18	8	1	1	1	100	single
120	0101000020E6100000DBD2170072C257C02122F3D010764740	\N	\N	\N	-95.03820803	46.92238819	\N	\N	\N	\N	\N	\N	\N	\N	MNAE00USA	swift	1	0	8	4	\N	20	20	20	23.4	\N	23.4	9.4	1	1	1	100	single
121	0101000020E6100000A50D8F16CA6157C0170ABF71259E4740	\N	\N	\N	-93.52795948	47.23551771	\N	\N	\N	\N	\N	\N	\N	\N	MNAS00USA	swift	1	0	8	4	\N	20	20	20	24	\N	20	10	1	1	1	100	single
122	0101000020E610000028B682A6659556C0F765FE0BE3DF4740	\N	\N	\N	-90.33432925	47.74911642	\N	\N	\N	\N	\N	\N	\N	\N	MNGM01USA	swift	1	0	8	4	\N	17	17	17	22	\N	22	10	1	1	1	100	single
123	0101000020E6100000590AB396633058C017276321DF6F4740	\N	\N	\N	-96.75607841	46.8739969	\N	\N	\N	\N	\N	\N	\N	\N	MNMH00USA	swift	1	0	8	4	\N	20	20	20	26	\N	25.2	12	1	1	1	100	single
125	0101000020E610000084597058BD6157C004D4691732664640	\N	\N	\N	-93.52718173	44.79840367	\N	\N	\N	\N	\N	\N	\N	\N	MNSP00USA	swift	1	0	8	3.6	\N	20	20	20	21.8	\N	21.8	9.8	1	1	1	100	single
126	0101000020E6100000E70EEE1037E657C08418BF5B66CF4540	\N	\N	\N	-95.59711097	43.62031123	\N	\N	\N	\N	\N	\N	\N	\N	MNWN00USA	swift	1	0	8	4	\N	20	20	20	23.8	\N	22	10	1	1	1	100	single
127	0101000020E61000000E8D1F1130D457C03F573AA3D6734840	\N	\N	\N	-95.31543377	48.90498772	\N	\N	\N	\N	\N	\N	\N	\N	MNWR00USA	swift	1	0	16	4	12	20	20	20	26	\N	26	12	1	1	1	100	single
128	0101000020E6100000E29D53FB3AA956C06778373F13554340	\N	\N	\N	-90.64422496	38.66464987	\N	\N	\N	\N	\N	\N	\N	\N	MOCF00USA	swift	1	0	8	4	\N	18	18	18	15.8	\N	15.8	5.8	1	1	1	100	single
131	0101000020E6100000EF452874666F57C00545FB71DE614340	\N	\N	\N	-93.74062828	38.76460099	\N	\N	\N	\N	\N	\N	\N	\N	MOWB00USA	swift	1	0	8	4	\N	18	18	18	17.6	\N	17.6	7.8	1	1	1	100	single
133	0101000020E6100000AA57FC6CC52C56C00738CEB74F2E4040	\N	\N	\N	-88.69954991	32.3618078	\N	\N	\N	\N	\N	\N	\N	\N	MSMD00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
134	0101000020E61000003CE9335611BF56C0B9704132F4F53F40	\N	\N	\N	-90.98543315	31.96075739	\N	\N	\N	\N	\N	\N	\N	\N	MSPG00USA	swift	1	0	10	6	\N	16	16	16	19.6	\N	17.8	9.6	1	1	1	100	single
135	0101000020E610000082340818826B56C06F54FA4B83863E40	\N	\N	\N	-89.6798153	30.52544093	\N	\N	\N	\N	\N	\N	\N	\N	MSPY00USA	swift	1	0	10	6	\N	18	18	18	21	\N	18.4	11	1	1	1	100	single
136	0101000020E61000009A417C60C7945BC0D4F89EF4324E4840	\N	\N	\N	-110.324669	48.61093004	\N	\N	\N	\N	\N	\N	\N	\N	MTB100USA	swift	1	0	20	4	16	20	20	20	25.8	\N	25.8	12	1	1	1	100	single
137	0101000020E61000008DC98745315D5BC0D8929F9E08C34640	\N	\N	\N	-109.4561323	45.52370055	\N	\N	\N	\N	\N	\N	\N	\N	MTCO00USA	swift	1	0	10	4	\N	18	18	18	24	\N	22	10	1	1	1	100	single
139	0101000020E6100000C9A42B7D8DAB5AC06BAADD65F5214740	\N	\N	\N	-106.6805108	46.26530145	\N	\N	\N	\N	\N	\N	\N	\N	MTFH00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single
140	0101000020E6100000A425451ACBA85AC0ADD17A11D0184840	\N	\N	\N	-106.6373964	48.19384974	\N	\N	\N	\N	\N	\N	\N	\N	MTGC02USA	swift	1	0	20	4	16	18	18	18	25.8	\N	25.8	12	1	1	1	100	single
142	0101000020E61000005F33AFD980335BC059D3A34674834740	\N	\N	\N	-108.8047394	47.02698596	\N	\N	\N	\N	\N	\N	\N	\N	MTGR00USA	swift	1	0	10	4	\N	18	18	18	25	\N	25	11	1	1	1	100	single
144	0101000020E6100000A91E1FE340345CC006EE06F2682D4840	\N	\N	\N	-112.8164604	48.35476518	\N	\N	\N	\N	\N	\N	\N	\N	MTHT00USA	swift	1	0	10	4	\N	20	20	20	26	\N	26	12	1	1	1	100	single
145	0101000020E610000065767176C68A5CC0744A17CD10D74740	\N	\N	\N	-114.1683632	47.68020023	\N	\N	\N	\N	\N	\N	\N	\N	MTPL00USA	swift	1	0	10	4	\N	20	20	20	24	\N	22	10	1	1	1	100	single
146	0101000020E610000004B573F5BE4C5AC0DDAE1BDFAC354840	\N	\N	\N	-105.1991552	48.41933812	\N	\N	\N	\N	\N	\N	\N	\N	MTPO00USA	swift	1	0	10	4	\N	18	18	18	25.8	\N	25.8	11.8	1	1	1	100	single
147	0101000020E61000003200547163D95BC061AD35EF13084740	\N	\N	\N	-111.3966945	46.06310835	\N	\N	\N	\N	\N	\N	\N	\N	MTTF00USA	swift	1	0	10	4	\N	20	20	20	24	\N	24	10	1	1	1	100	single
148	0101000020E6100000B7033B1FDAD150C0C78C855B9D984640	\N	\N	\N	-67.27893811	45.19230217	\N	\N	\N	\N	\N	\N	\N	\N	NBSS00CAN	swift	1	0	No data	No data	No data	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single
149	0101000020E61000002F0F8055818054C016BC8D7255D74140	\N	\N	\N	-82.00789392	35.68229515	\N	\N	\N	\N	\N	\N	\N	\N	NCMR00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single
150	0101000020E6100000D3AF84208D1754C0D2EF6F8E427E4140	\N	\N	\N	-80.36798871	34.98640614	\N	\N	\N	\N	\N	\N	\N	\N	NCMV00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single
151	0101000020E61000005408BB93954253C0189F5D192F8E4140	\N	\N	\N	-77.04037946	35.11081235	\N	\N	\N	\N	\N	\N	\N	\N	NCNB00USA	swift	1	0	12	6	\N	15.8	15.8	15.8	20	\N	20	10	1	1	1	100	single
153	0101000020E61000006FB1EC93EDB658C03B89290D0C0D4840	\N	\N	\N	-98.8582506	48.10193028	\N	\N	\N	\N	\N	\N	\N	\N	NDDL00USA	swift	1	0	8	4	\N	18	18	18	26	\N	26	12	1	1	1	100	single
154	0101000020E61000001109F8983CAE58C0FB8E65EA43724740	\N	\N	\N	-98.72244858	46.89269762	\N	\N	\N	\N	\N	\N	\N	\N	NDJT00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
155	0101000020E6100000105CE509045359C0BD9048BAEA204840	\N	\N	\N	-101.2971215	48.25716332	\N	\N	\N	\N	\N	\N	\N	\N	NDLB00USA	swift	1	0	10	4	\N	20	20	20	25.6	\N	23.6	11.6	1	1	1	100	single
158	0101000020E6100000AC94F9A298C059C057CDD66EF9714840	\N	\N	\N	-103.0093162	48.89042459	\N	\N	\N	\N	\N	\N	\N	\N	NDNN00USA	swift	1	0	18	4	14	18	18	18	27.8	\N	27.6	12	1	1	1	100	single
159	0101000020E610000031410DDFC2B759C0216FC16BFA0C4540	\N	\N	\N	-102.871269	42.10139224	\N	\N	\N	\N	\N	\N	\N	\N	NEAL00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	8	1	1	1	100	single
160	0101000020E61000004CC47CF5083058C09C766B78FE214440	\N	\N	\N	-96.75054681	40.26557832	\N	\N	\N	\N	\N	\N	\N	\N	NEBT00USA	swift	1	0	8	4	\N	18	18	18	20	\N	20	8	1	1	1	100	single
164	0101000020E6100000EBAA402D86BE59C017045E7F75924440	\N	\N	\N	-102.9769395	41.14421074	\N	\N	\N	\N	\N	\N	\N	\N	NESN00USA	swift	1	0	8	4	\N	20	20	20	20	\N	20	8	1	1	1	100	single
165	0101000020E6100000BA83D899422359C0DB6333D131704540	\N	\N	\N	-100.55094	42.8765203	\N	\N	\N	\N	\N	\N	\N	\N	NEVT00USA	swift	1	0	8	4	\N	18	18	18	22	\N	20	8	1	1	1	100	single
166	0101000020E61000004D4EABF080D951C01D5A011124824540	\N	\N	\N	-71.39849488	43.01672566	\N	\N	\N	\N	\N	\N	\N	\N	NHHT00USA	swift	1	0	12	6	\N	14	14	14	18	\N	18	8	1	1	1	100	single
167	0101000020E6100000D2623ABE87A952C045A6538978A14340	\N	\N	\N	-74.6489101	39.26149098	\N	\N	\N	\N	\N	\N	\N	\N	NJMM00USA	swift	1	0	22	6	16	14	14	14	20	\N	20	10	1	1	1	100	single
168	0101000020E61000005A283EE3677D5AC09D4872F11E734040	\N	\N	\N	-105.9594658	32.89938181	\N	\N	\N	\N	\N	\N	\N	\N	NMAO00USA	swift	1	0	8	4	\N	18	18	18	21.4	\N	19.4	9.4	1	1	1	100	single
169	0101000020E61000002BB759619F0E5AC03639211997354040	\N	\N	\N	-104.2284778	32.41867365	\N	\N	\N	\N	\N	\N	\N	\N	NMCB00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single
171	0101000020E6100000EB820BC391835AC0D20A5FA107614140	\N	\N	\N	-106.0557716	34.75804536	\N	\N	\N	\N	\N	\N	\N	\N	NMES00USA	swift	1	0	8	4	\N	18	18	18	16.8	\N	16	8	1	1	1	100	single
172	0101000020E6100000574DC6E7842F5BC0C7E6151592C34140	\N	\N	\N	-108.7424869	35.52789558	\N	\N	\N	\N	\N	\N	\N	\N	NMGP00USA	swift	1	0	8	4	\N	16	16	16	21.8	\N	21.8	9.8	1	1	1	100	single
173	0101000020E6100000FBE769C0201C5AC09A34993353734240	\N	\N	\N	-104.439499	36.90097661	\N	\N	\N	\N	\N	\N	\N	\N	NMRN00USA	swift	1	0	8	4	\N	18	18	18	19.6	\N	18	8	1	1	1	100	single
174	0101000020E610000004E275FD02A55AC0CC5DCF002CAA4140	\N	\N	\N	-106.5783075	35.32946787	\N	\N	\N	\N	\N	\N	\N	\N	NMRR00USA	swift	1	0	8	4.4	\N	17.6	17.6	17.6	23.8	\N	23.8	9.8	1	1	1	100	single
175	0101000020E6100000DE9623BF59D05AC0E0C4A9396D904040	\N	\N	\N	-107.2554777	33.12833329	\N	\N	\N	\N	\N	\N	\N	\N	NMTC00USA	swift	1	0	8	4	\N	18	18	18	21.8	\N	21.8	10	1	1	1	100	single
176	0101000020E61000009BA7DF2A74EE59C05A000979F3964140	\N	\N	\N	-103.7258403	35.1793052	\N	\N	\N	\N	\N	\N	\N	\N	NMTM00USA	swift	1	0	8	4	\N	18	18	18	23.6	\N	22	10	1	1	1	100	single
179	0101000020E61000007A8F8E06CBC65CC060B86BF05B1B4240	\N	\N	\N	-115.1061417	36.21374326	\N	\N	\N	\N	\N	\N	\N	\N	NVLV00USA	swift	1	0	20	4	16	18	18	18	21.8	\N	21.8	12	1	1	1	100	single
180	0101000020E6100000E4C8B9032B845CC06C44ACD509674240	\N	\N	\N	-114.0651254	36.80498763	\N	\N	\N	\N	\N	\N	\N	\N	NVMQ00USA	swift	1	0	8	4	\N	16	16	16	18	\N	18	8	1	1	1	100	single
182	0101000020E6100000618841052CF25DC061A19C89E5C14340	\N	\N	\N	-119.7839368	39.51481743	\N	\N	\N	\N	\N	\N	\N	\N	NVRO00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
183	0101000020E61000003885950A2A925DC0B0202812A73B4440	\N	\N	\N	-118.283816	40.4660361	\N	\N	\N	\N	\N	\N	\N	\N	NVRP00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
185	0101000020E610000094FF249930485DC0090DAB1579654440	\N	\N	\N	-117.1279662	40.79275771	\N	\N	\N	\N	\N	\N	\N	\N	NVVL00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
186	0101000020E610000056606D31E4845CC03B302537AF5E4440	\N	\N	\N	-114.0764278	40.73972215	\N	\N	\N	\N	\N	\N	\N	\N	NVWW00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
187	0101000020E610000089688DA411A053C023115CDD98824540	\N	\N	\N	-78.50107683	43.02029006	\N	\N	\N	\N	\N	\N	\N	\N	NYAN00USA	swift	1	0	16	4	12	14	16	16	20	\N	18	8	1	1	1	100	single
188	0101000020E61000008F196670EDCA52C0CD9B7928404C4640	\N	\N	\N	-75.17074213	44.59570795	\N	\N	\N	\N	\N	\N	\N	\N	NYCT00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
189	0101000020E610000094795866595952C056AB23059E5B4440	\N	\N	\N	-73.39608153	40.71575989	\N	\N	\N	\N	\N	\N	\N	\N	NYLH00USA	swift	1	0	20	6	\N	14	14	14	19.8	\N	18	9.8	1	1	1	100	single
190	0101000020E6100000E4D9066A488152C088D881EF0DC04440	\N	\N	\N	-74.02004481	41.50042528	\N	\N	\N	\N	\N	\N	\N	\N	NYNB00USA	swift	1	0	No data	No data	No data	No data	No data	No data	No data	No data	No data	No data	1	1	1	100	single
191	0101000020E6100000CD8C4489920B53C0B8D8A326B0864540	\N	\N	\N	-76.18081886	43.0522507	\N	\N	\N	\N	\N	\N	\N	\N	NYSC00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
192	0101000020E610000096FA471990AB52C05562C714E67F4540	\N	\N	\N	-74.68067009	42.99920902	\N	\N	\N	\N	\N	\N	\N	\N	NYSJ00USA	swift	1	0	10	6	\N	14	14	14	19	\N	19	9	1	1	1	100	single
193	0101000020E6100000A6E6DD1E65B754C0596422422FFA4340	\N	\N	\N	-82.86554691	39.95456721	\N	\N	\N	\N	\N	\N	\N	\N	OHCL00USA	swift	1	0	8	4	\N	15.4	15.4	15.4	16	\N	16	6	1	1	1	100	single
195	0101000020E6100000413F1904120355C0BAC1CC4E71824440	\N	\N	\N	-84.04797461	41.01908288	\N	\N	\N	\N	\N	\N	\N	\N	OHOT00USA	swift	1	0	10	6	\N	16	16	16	21.6	\N	20	10	1	1	1	100	single
197	0101000020E6100000A046082CCC4958C0B9A68282B9194140	\N	\N	\N	-97.15308667	34.20097381	\N	\N	\N	\N	\N	\N	\N	\N	OKAR00USA	swift	1	0	10	6	\N	18	18	18	22	\N	22	10	1	1	1	100	single
198	0101000020E6100000CF7FB4A4C85E59C0811C5A8549574240	\N	\N	\N	-101.4809963	36.68193118	\N	\N	\N	\N	\N	\N	\N	\N	OKGU00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
199	0101000020E6100000A6B317FAF5F057C05DF7FB6A33774140	\N	\N	\N	-95.76501324	34.93125665	\N	\N	\N	\N	\N	\N	\N	\N	OKMC00USA	swift	1	0	9	5.4	\N	16.2	16.2	16.2	21	\N	17.4	9	1	1	1	100	single
200	0101000020E6100000C635BA5AD96258C089CDE8C38ACD4140	\N	\N	\N	-97.54451626	35.60579728	\N	\N	\N	\N	\N	\N	\N	\N	OKOK00USA	swift	1	0	10	6	\N	18	18	18	23	\N	19.4	11	1	1	1	100	single
201	0101000020E6100000948486F658FD57C0F5BA877C7E144240	\N	\N	\N	-95.95855487	36.16011006	\N	\N	\N	\N	\N	\N	\N	\N	OKTA00USA	swift	1	0	10	6	\N	18	18	18	22	\N	16	10	1	1	1	100	single
203	0101000020E6100000C7A01342871A5FC09A2732CE3A8F4540	\N	\N	\N	-124.4145055	43.1189821	\N	\N	\N	\N	\N	\N	\N	\N	ORBA00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
204	0101000020E6100000C52A943B22755DC06CBDF80568634640	\N	\N	\N	-117.8302144	44.77661204	\N	\N	\N	\N	\N	\N	\N	\N	ORBC00USA	swift	1	0	20	4	16	20	20	20	22	\N	22	10	1	1	1	100	single
208	0101000020E61000003CF5EDC968AE5EC03029E384AECA4640	\N	\N	\N	-122.7251458	45.5834509	\N	\N	\N	\N	\N	\N	\N	\N	ORPD00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
210	0101000020E610000063AAAAE16CC25EC087D0D6FB6C784640	\N	\N	\N	-123.0378956	44.94082592	\N	\N	\N	\N	\N	\N	\N	\N	ORSL00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
211	0101000020E61000009146C331A4E452C062FB03C4A84E4440	\N	\N	\N	-75.57252163	40.61452532	\N	\N	\N	\N	\N	\N	\N	\N	PAAL00USA	swift	1	0	8	4	\N	14	14	14	18	\N	18	8	1	1	1	100	single
212	0101000020E610000089FF852F1D0C54C02828241D0E214440	\N	\N	\N	-80.18928135	40.25824322	\N	\N	\N	\N	\N	\N	\N	\N	PACG00USA	swift	1	0	10	6	\N	14	14	14	20	\N	18	10	1	1	1	100	single
213	0101000020E6100000C7B11E8C92FD53C04F73765BB73C4440	\N	\N	\N	-79.96206954	40.47434562	\N	\N	\N	\N	\N	\N	\N	\N	PACR00USA	swift	1	0	10	6	\N	14	14	14	19.8	\N	17.8	9.8	1	1	1	100	single
214	0101000020E6100000C868D3C7720554C09A8E29ED47104540	\N	\N	\N	-80.08513065	42.12719502	\N	\N	\N	\N	\N	\N	\N	\N	PAER00USA	swift	1	0	18	6	12	16	16	16	16.8	\N	16.8	10	1	1	1	100	single
215	0101000020E61000003F641DD00A4553C01A43AD2742E74440	\N	\N	\N	-77.07878497	41.80670639	\N	\N	\N	\N	\N	\N	\N	\N	PAMF00USA	swift	1	0	10	6	\N	14	14	14	19.6	\N	18	9.6	1	1	1	100	single
217	0101000020E6100000A8F1FBCC53F753C01FE8F4FEB7674040	\N	\N	\N	-79.86448979	32.81030261	\N	\N	\N	\N	\N	\N	\N	\N	SCMP00USA	swift	1	0	18	6	12	14	14	14	20	\N	20	10	1	1	1	100	single
218	0101000020E610000057C43C6D453754C0F7BF6DB7EEBE4040	\N	\N	\N	-80.86361247	33.49166005	\N	\N	\N	\N	\N	\N	\N	\N	SCOB00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single
220	0101000020E610000007AB77D9AB8158C0C6F253C14DDB4540	\N	\N	\N	-98.02611386	43.7133104	\N	\N	\N	\N	\N	\N	\N	\N	SDML00USA	swift	1	0	8	4	\N	20	20	20	24.6	\N	24	10.2	1	1	1	100	single
222	0101000020E6100000EE934847DECE59C0B50E16676F0A4640	\N	\N	\N	-103.2323168	44.08152474	\N	\N	\N	\N	\N	\N	\N	\N	SDRC00USA	swift	1	0	16	4	12	18	18	18	22	\N	18	8	1	1	1	100	single
223	0101000020E610000052E1BEC40EAB59C0F36BD20ADF474640	\N	\N	\N	-102.6727764	44.56149421	\N	\N	\N	\N	\N	\N	\N	\N	SDRS00USA	swift	1	0	8	4	\N	20	20	20	26	\N	26	12	1	1	1	100	single
224	0101000020E610000003505AF2174758C0A3F564BC35734640	\N	\N	\N	-97.11083659	44.90007739	\N	\N	\N	\N	\N	\N	\N	\N	SDWT00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	8	1	1	1	100	single
226	0101000020E61000009BF12A297F4756C0B55BC3F36FE44140	\N	\N	\N	-89.11713628	35.78466651	\N	\N	\N	\N	\N	\N	\N	\N	TNAM00USA	swift	1	0	10	6	\N	18	18	18	24	\N	18	12	1	1	1	100	single
227	0101000020E6100000255E1A9631B355C08A102E4F2DFB4140	\N	\N	\N	-86.79990151	35.96232023	\N	\N	\N	\N	\N	\N	\N	\N	TNBR00USA	swift	1	0	18	6	12	18	18	18	22	\N	22	12	1	1	1	100	single
228	0101000020E61000007909671AC17556C073C132999E864140	\N	\N	\N	-89.83991108	35.05171504	\N	\N	\N	\N	\N	\N	\N	\N	TNME00USA	swift	1	0	10	6	\N	18	18	18	20.6	\N	19.6	9.8	1	1	1	100	single
230	0101000020E6100000260DC1B3B5F657C04F3330344F1A4040	\N	\N	\N	-95.85484022	32.20554211	\N	\N	\N	\N	\N	\N	\N	\N	TXAT00USA	swift	1	0	8	4	\N	18	18	18	26	\N	22	14	1	1	1	100	single
231	0101000020E6100000037955EB6D5A58C04C329324DFCB3B40	\N	\N	\N	-97.41295894	27.79637364	\N	\N	\N	\N	\N	\N	\N	\N	TXCC00USA	swift	1	0	10	6	\N	20	20	20	25.4	\N	22	13.4	1	1	1	100	single
232	0101000020E610000096E1896A5B3959C0F52EDE8FDB603D40	\N	\N	\N	-100.8962046	29.37835025	\N	\N	\N	\N	\N	\N	\N	\N	TXDL00USA	swift	1	0	10	6	\N	20	20	20	22.4	\N	20	12	1	1	1	100	single
233	0101000020E61000002CDE23F6E4935AC05237065383AB3F40	\N	\N	\N	-106.3108497	31.6699726	\N	\N	\N	\N	\N	\N	\N	\N	TXEP00USA	swift	1	0	8	4	\N	20	20	20	23.4	\N	18	11	1	1	1	100	single
234	0101000020E6100000353FA319308A58C0E1DECA4C48223D40	\N	\N	\N	-98.1591858	29.13391571	\N	\N	\N	\N	\N	\N	\N	\N	TXFL00USA	swift	1	0	10	6	\N	20	20	20	25.2	\N	23.2	13.4	1	1	1	100	single
235	0101000020E61000004E8E8EEDED3858C01702A9E200934040	\N	\N	\N	-96.88952197	33.14846452	\N	\N	\N	\N	\N	\N	\N	\N	TXFR00USA	swift	1	0	10	6	\N	18	18	18	21	\N	18	10	1	1	1	100	single
238	0101000020E6100000FDCC6ACBCA7759C0536211A280CD4040	\N	\N	\N	-101.8717526	33.60548807	\N	\N	\N	\N	\N	\N	\N	\N	TXLB00USA	swift	1	0	10	6	\N	19.8	19.8	19.8	21.8	\N	20	10	1	1	1	100	single
242	0101000020E61000009E6B0CF8847B57C0EA3F4A7013E13D40	\N	\N	\N	-93.92999078	29.87920286	\N	\N	\N	\N	\N	\N	\N	\N	TXPA00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single
244	0101000020E61000007FEFFCC3120A58C0970B6C00FCC73D40	\N	\N	\N	-96.15739536	29.78118899	\N	\N	\N	\N	\N	\N	\N	\N	TXSL00USA	swift	1	0	20	6	14	20	20	20	24	\N	22	14	1	1	1	100	single
245	0101000020E61000009BB77F9F104B58C073BE7551366E3D40	\N	\N	\N	-97.17288959	29.43051633	\N	\N	\N	\N	\N	\N	\N	\N	TXSN00USA	swift	1	0	10	6	\N	20	20	20	24.4	\N	18	12.4	1	1	1	100	single
246	0101000020E6100000FC64D69C4D2959C0D7F996BD95923E40	\N	\N	\N	-100.6453621	30.57259736	\N	\N	\N	\N	\N	\N	\N	\N	TXSR00USA	swift	1	0	10	6	\N	20	20	20	20	\N	18	12	1	1	1	100	single
247	0101000020E61000001E90DF362E1A59C07415A47C353C4040	\N	\N	\N	-100.4090707	32.47038229	\N	\N	\N	\N	\N	\N	\N	\N	TXSW00USA	swift	1	0	10	6	\N	20	20	20	22	\N	20	12	1	1	1	100	single
248	0101000020E61000006E8ECE5463F45BC010C8EBE2B2934340	\N	\N	\N	-111.8185627	39.15389668	\N	\N	\N	\N	\N	\N	\N	\N	UTGU00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single
249	0101000020E610000066AABB0DC5BD5BC0A9D1B37212AA4340	\N	\N	\N	-110.9651522	39.32868799	\N	\N	\N	\N	\N	\N	\N	\N	UTHU00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single
250	0101000020E6100000BC0FF6DCF8555BC0AD314BAF8BEF4240	\N	\N	\N	-109.3433144	37.87145034	\N	\N	\N	\N	\N	\N	\N	\N	UTML00USA	swift	1	0	18	4	14	18	18	18	22	\N	20	8	1	1	1	100	single
251	0101000020E6100000BF30F4E3CA7E54C07201A23FB85A4240	\N	\N	\N	-81.98113345	36.70874782	\N	\N	\N	\N	\N	\N	\N	\N	VAAB00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single
254	0101000020E6100000049A7C71B15E53C0A6E7A3ADC6C64240	\N	\N	\N	-77.47958028	37.55293818	\N	\N	\N	\N	\N	\N	\N	\N	VARM00USA	swift	1	0	10	6	\N	14	14	14	19.6	\N	19.6	9.6	1	1	1	100	single
255	0101000020E61000001E6EC9A257F953C0BDFD985ADFA34240	\N	\N	\N	-79.89597387	37.28025372	\N	\N	\N	\N	\N	\N	\N	\N	VAVN00USA	swift	1	0	18	6	12	14	14	14	20	\N	20	10	1	1	1	100	single
257	0101000020E6100000EE7C3F355E9E5EC01C1C57E98F604840	\N	\N	\N	-122.4745	48.75439183	\N	\N	\N	\N	\N	\N	\N	\N	WALD00USA	swift	1	0	22	4	20	20	20	20	22	\N	22	10	1	1	1	100	single
258	0101000020E610000092FE03511C525DC038F28280E3D74740	\N	\N	\N	-117.2829783	47.68663031	\N	\N	\N	\N	\N	\N	\N	\N	WAMW00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
260	0101000020E6100000339C7CC479A85EC0C33C33DA8DC84740	\N	\N	\N	-122.6324321	47.56682899	\N	\N	\N	\N	\N	\N	\N	\N	WASE00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	single
261	0101000020E6100000E078889004965DC0E8672C925D084740	\N	\N	\N	-118.3440286	46.06535556	\N	\N	\N	\N	\N	\N	\N	\N	WAWA00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
263	0101000020E6100000D26B790609E056C0F61C810D42684640	\N	\N	\N	-91.50055086	44.81451577	\N	\N	\N	\N	\N	\N	\N	\N	WIEC00USA	swift	1	0	8	4	\N	20	20	20	19.8	\N	19.8	7.8	1	1	1	100	single
264	0101000020E6100000CB227FF6045056C09466777130F54640	\N	\N	\N	-89.25030291	45.91554087	\N	\N	\N	\N	\N	\N	\N	\N	WIER00USA	swift	1	0	8	4	\N	18	18	18	24	\N	20	12	1	1	1	100	single
265	0101000020E6100000D1DD22EEF9DE56C0754B9B3FE0014740	\N	\N	\N	-91.48400453	46.01465602	\N	\N	\N	\N	\N	\N	\N	\N	WIHW00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single
266	0101000020E6100000A010A6CD1DF555C04CB227E4772C4640	\N	\N	\N	-87.82994405	44.34740879	\N	\N	\N	\N	\N	\N	\N	\N	WIJO00USA	swift	1	0	8	4	\N	16	16	16	20	\N	16	8	1	1	1	100	single
267	0101000020E61000003928A3C2FF6B56C02CD67091FB964640	\N	\N	\N	-89.68748537	45.17955225	\N	\N	\N	\N	\N	\N	\N	\N	WIMR03USA	swift	1	0	16	4	12	18	18	18	23.6	\N	20	12	1	1	1	100	single
268	0101000020E6100000FE68B42C8A4D56C0F792C6681D974540	\N	\N	\N	-89.21155851	43.180585	\N	\N	\N	\N	\N	\N	\N	\N	WIPE00USA	swift	1	0	8	4	\N	18	18	18	20	\N	18	8	1	1	1	100	single
270	0101000020E6100000DFC1D354A47554C09184F90265314340	\N	\N	\N	-81.83815499	38.38589513	\N	\N	\N	\N	\N	\N	\N	\N	WVSA00USA	swift	1	0	10	6	\N	14	14	14	19.8	\N	19.8	9.8	1	1	1	100	single
271	0101000020E61000009D1A1EB14C955AC06A566C82DE6B4540	\N	\N	\N	-106.3328059	42.84272795	\N	\N	\N	\N	\N	\N	\N	\N	WYCR00USA	swift	1	0	10	4	\N	18	18	18	24	\N	24	10	1	1	1	100	single
272	0101000020E610000097DEA3A3C1BD5BC04204A07A39A24440	\N	\N	\N	-110.9649438	41.26737912	\N	\N	\N	\N	\N	\N	\N	\N	WYEV00USA	swift	1	0	20	4	16	18	18	18	24	\N	22	10	1	1	1	100	single
273	0101000020E61000006A0B19D95F5C5AC099737CF654234640	\N	\N	\N	-105.4433501	44.27603036	\N	\N	\N	\N	\N	\N	\N	\N	WYGE00USA	swift	1	0	8	4	\N	18	18	18	23.8	\N	23.8	10	1	1	1	100	single
\.


--
-- Data for Name: EU_stations_v2; Type: TABLE DATA; Schema: backup; Owner: dj
--

COPY backup."EU_stations_v2" (id_0, geom, id, station, median_x, std_x, median_y, std_y, median_z, std_z, longitude, latitude, altitude, layer, path, provider, pilot, commercial, access, sla, base, rover, "bds-b1", "bds-b2", "bds-b2a", "gal-e1", "gal-e5a", "gal-e5b", "gps-l1c", "gps-l2p", "gps-l5", type) FROM stdin;
1	0101000020DB0B000076535E4DED234C41B9D655769FE04741	39	OSNET-DUNG	4027826.7453	0.015837759294893	68651.9001	0.018650631813583	4928442.5746	0.0149685222654	0.976477773411835	50.92656197018698	55.961782259866595	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	28	10	14	12	12	12	18	18	8	single
2	0101000020DB0B0000EC5AB7969DE84A413A8D2531C3A94E41	44	OSNET-THUS	3325963.2915	0.000901942324528	-216538.9451	0.002119621441184	5419865.7177	0.001579180578366	-3.725020787891656	58.58157660984381	94.3165585026145	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	28	10	16	16	16	16	20	20	10	single
3	0101000020DB0B0000CFFA8F5C75F14A41FE70B38494D24C41	70	OSNET-DUDE	3527479.6055	0.000634481114863	-177294.1748	0.001126593697888	5293202.6394	0.000411979694552	-2.877314198977112	56.46393105422224	57.51269350107759	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	26	8	16	14	14	14	15	15	7	single
4	0101000020DB0B000046630C105E3C4C41D117BB6785C54F41	106	OSNET-LERI	3183134.5193	0.000960810356312	-65772.3177	0.000795289016285	5508281.6647	0.000352666718315	-1.183720012901871	60.13833137240161	132.21640138607472	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	0	0	0	0	0	0	20	20	0	single
5	0101000020DB0B000041B716F276194941257389F13D194E41	130	OSNET-BENB	3409367.6074	0.000920466042574	-440629.5333	0.002216153454084	5354467.943	0.002051156415821	-7.364134195376491	57.473079815734565	67.31979180779308	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	30	10	14	14	14	14	20	20	10	single
6	0101000020DB0B00005C2FEE2812384B41C7B26CF911EC4841	131	OSNET-BUCI	3934835.8409	0.001445434847998	-69825.722	0.001122332966795	5002615.1571	0.001631344888277	-1.016636898250603	51.995454075918644	156.39950247015804	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	26	10	14	12	12	12	20	20	10	single
7	0101000020DB0B0000EA07F706FF694941DF9AC41B375E4941	136	OSNET-ABEP	3910360.9069	0.001543355923276	-312649.2717	0.00183817316611	5012488.3104	0.001848717277402	-4.571306419781462	52.13942327016697	188.4963587364182	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	28	10	14	14	14	14	20	18	10	single
8	0101000020DB0B00009AE54EF777504B4164C2DE588C6E4D41	146	OSNET-KINT	3456261.7889	0.027716831419981	-140550.456	0.017625982708065	5340853.6508	0.024856378400861	-2.328675844248148	57.24537333764876	142.98851639125496	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	31	11	16	18	18	18	20	20	11	single
9	0101000020DB0B00008880FCFD87A04B413BFA97FCA0114B41	152	OSNET-LOFT	3706041.0704	0.012051611168572	-55852.1997	0.015592872604594	5173496.3931	0.024313426751642	-0.863415439918076	54.56294677112568	209.3317497037351	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	28	10	14	14	14	14	20	20	10	single
10	0101000020DB0B0000E37B5F919BAB4A41A8D02493EA834B41	158	OSNET-CARL	3671344.1611	0.001201869675715	-188440.9115	0.001872783869255	5194774.2738	0.001044793846809	-2.938270537605149	54.895428780358564	93.54620578698814	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	33	11	14	15	15	15	24	24	13	single
11	0101000020DB0B0000764129386B944941D1B51E49BF5B4A41	173	OSNET-HOLY	3805895.9938	0.001476469604555	-309027.5214	0.001505306928711	5091799.8764	0.000480312572708	-4.642064409745627	53.3177330849468	67.8806265257299	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	31	11	15	15	15	15	22	22	13	single
12	0101000020DB0B0000FE3C953793B84841A31C31F6F19F4741	186	OSNET-LIAR	4093715.1993	0.001585419416175	-371674.2364	0.002002177347117	4860662.7094	0.002110233550035	-5.187742335940116	49.96919377478774	100.44904553331435	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	22	6	14	12	12	12	20	20	10	single
13	0101000020DB0B00001C5F1E62CD974C41AB0334FA74DF4841	191	OSNET-ALDB	3920016.9995	0.019681110097281	109689.9817	0.01590992277838	5013323.0618	0.01175434277386	1.602833218736342	52.15316927258855	56.967816079966724	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	26	10	14	12	12	12	18	18	8	single
14	0101000020DB0B0000EE0DF068B1EC4A4170BFB30825084A41	42	OSNET-BUXT	3824391.717	0.016274378956108	-128196.9301	0.013174524608373	5086210.3552	0.015138270257599	-1.919885387793423	53.229236294859305	442.6006028940901	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	0	0	0	0	0	0	0	0	0	single
15	0101000020DB0B00003631FA2E629951415044CB5381F84B41	28	SWEPOS-0HLV	3456798.4692	0.01596635264197	906264.4593	0.025000444267291	5265353.1529	0.006910981544362	14.690545557168901	56.01366567627273	72.62663350626826	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	21	9	0	16	16	16	20	20	10	single
16	0101000020DB0B0000BDB19BD7C25F524172E241D950E24C41	29	SWEPOS-0HOB	3315706.6787	0.025628434029209	1087011.4883	0.011066966297451	5321221.199	0.013604321659311	18.151060465572257	56.9217487865612	86.00713042076677	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	10	0	20	20	20	22	21	12	single
17	0101000020DB0B0000AA1DF053B5275241936A807A37235141	30	SWEPOS-0ORN	2722462.8678	0.009322858713621	922447.5812	0.012457726586953	5674646.8516	0.011562562952436	18.717836932389314	63.29032423840906	56.416567873209715	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	29	11	0	18	20	20	24	24	13	single
18	0101000020DB0B0000905ED7BB854C5141C71F3713765E4B41	47	SWEPOS-0SMY	3536512.041	0.009679915223473	840550.069	0.010737446360233	5223404.2132	0.008391012370629	13.369856209180517	55.34570271962017	50.2076866151765	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	29	11	0	20	20	20	24	24	13	single
19	0101000020DB0B00006DE1A7C9347F5141D72B2FE294605041	51	SWEPOS-0HAM	2932847.0286	0.000669330869823	785884.3134	0.000653194830219	5590803.6946	0.000375322714136	15.000552658571415	61.655113066604706	493.921065534465	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	30	8	0	18	19	18	22	18	10	single
20	0101000020DB0B00000C9A922648BE50413E73AB4DF3614E41	62	SWEPOS-0STR	3236555.6232	0.009231823912479	639759.8131	0.013551906041314	5440363.7023	0.012340450666146	11.181337859945634	58.936641770984785	76.88450806308538	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	21	8	0	18	18	18	20	20	10	single
21	0101000020DB0B00004D7B0A3285DA514138B9C21B49795141	63	SWEPOS-0ASE	2660696.1798	0.000295996444724	831586.7731	0.000617087198592	5717879.1446	0.000612309925622	17.356363437535364	64.16076870096374	366.89631054364145	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	18	18	18	22	22	10	single
22	0101000020DB0B00003B3BB9F2D9EC5041D6E587981E154D41	65	SWEPOS-1ONS	3370666.6884	0.000934701916296	711819.1493	0.000528488183803	5349788.2524	0.000531594221548	11.92454573200232	57.395335526983146	44.51150441356003	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	8	8	0	16	16	16	20	20	10	single
23	0101000020DB0B0000D0073E4A28E9524196B7518621575241	67	SWEPOS-0NIK	2396284.073	0.011731193987802	1062626.7854	0.013440910016225	5795120.2274	0.023808037220002	23.91478466143349	65.80536138723828	37.15154476836324	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	26	10	0	20	20	20	22	22	10	single
24	0101000020DB0B0000EF58699E69015241102026E131AB5041	71	SWEPOS-6SUN	2838910.7919	0.000422943546881	903817.4111	0.000759618673315	5620661.3513	0.001283973979961	17.65979322438304	62.23248212404095	32.5175111098215	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	24	12	0	20	20	20	24	24	12	single
25	0101000020DB0B0000382FCDD94D815241EEBDC3AEE5584D41	77	SWEPOS-0KAT	3257719.9444	0.00065244034558	1111411.8819	0.000643827419488	5351668.2801	0.001097925021989	18.83771658010814	57.42651312415208	56.22730843257159	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	26	12	0	20	20	20	22	22	12	single
26	0101000020DB0B000018EDFEB04E945141FDDE13431D1C4F41	80	SWEPOS-0STI	3114165.3204	0.00728837877482	840074.3101	0.008392160251281	5484210.8137	0.007447664269869	15.09670750073485	59.70639830177777	186.73787371162325	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	28	12	0	20	20	20	22	22	12	single
27	0101000020DB0B000027D28D6BD465524170085A2C33344F41	96	SWEPOS-0BLI	3058755.4564	0.000381981083117	1047268.0294	0.00060525315948	5479600.2695	0.00038877658039	18.900368241613755	59.62671580817776	39.336860083043575	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	26	10	0	20	20	20	22	22	12	single
28	0101000020DB0B0000FDF83B605A0B5141B024A4DF1B385141	100	SWEPOS-0KAS	2761499.3369	0.008136082520123	635454.2036	0.023412703849252	5695427.3492	0.015766617929622	12.958860424639738	63.70125141039928	434.4251206712797	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	26	7	0	16	16	16	18	18	7	single
29	0101000020DB0B0000D562CFEA2ADC4D41F1E4F2D4A7C64741	104	SEPTENTRIO-BUGG	4010200.033	0.000993683187089	293848.9492	0.001183173681358	4934502.7895	0.001232831232312	4.190880308784029	51.012958338921415	65.7042817985639	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SEPTENTRIO	1	1	0	0	1	0	0	0	0	0	0	0	20	20	0	single
30	0101000020DB0B0000E6132F4E3B525241F6BAE94D733F5241	107	SWEPOS-0VID	2452424.2342	0.010891164484064	917451.2707	0.016441853386562	5796507.1116	0.006682472286866	20.510810102973487	65.83426963199155	110.08750323392451	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	26	10	0	20	20	20	22	22	10	single
31	0101000020DB0B000007DCEE97B66E5241B4C72513C0694F41	110	SWEPOS-2ARH	3033344.995	0.012197188520374	1051899.0977	0.014638480287507	5492741.2651	0.00825166774746	19.125450834181226	59.8607175677826	45.400154867209494	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	20	20	20	23	23	12	single
32	0101000020DB0B0000210CB2C8F383514187BCF38F79804B41	111	SWEPOS-0SKL	3511254.4307	0.001142104326234	893660.7881	0.000487285234235	5231575.5379	0.001041470241155	14.279362992984073	55.47488613758032	58.204155835323036	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	21	9	0	16	16	16	22	22	12	single
33	0101000020DB0B0000432F7B19D4884E410D26D0B39E854741	119	SEPTENTRIO-TONG	4023469.6761	0.002145904955028	385846.9769	0.001218214052277	4917555.4978	0.000813845866243	5.47786000710476	50.77055105642819	147.3535179104656	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SEPTENTRIO	1	1	0	0	1	0	0	0	0	0	0	\N	\N	\N	\N	single
34	0101000020DB0B0000F339872F02FA50413F198B7A68324F41	120	SWEPOS-0CHA	3134776.1716	0.000549174310682	683718.3451	0.000533699404148	5494106.5185	0.002429501758151	12.303953765090181	59.88305137586089	179.87751657981426	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	21	9	0	18	18	18	20	20	10	single
35	0101000020DB0B0000573B934A15605141AB30C75CA9225241	122	SWEPOS-0HEM	2529751.2381	0.007047759753337	681679.4647	0.006932605444866	5796246.7271	0.009446461624669	15.081001821095919	65.82046472762548	515.6227219700813	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	29	8	0	16	16	16	22	22	10	single
36	0101000020DB0B00001CA823F1D70F51415890A9FA2AAB4C41	127	SWEPOS-2FBG	3408948.2493	0.000952613002977	754935.2447	0.00055416701749	5319755.9444	0.000457995411822	12.487016860092053	56.89802132986235	58.93288141395897	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	18	18	18	22	20	12	single
37	0101000020DB0B0000BB9C0A241B1D4941424EAA49A43D4D41	137	OSNET-TIRE	3503177.5899	0.038796697984551	-422729.826	0.010941031515325	5295431.7072	0.030035996659261	-6.880635984585807	56.50000267110309	70.8077994864434	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	0	0	0	0	0	0	0	0	0	single
38	0101000020DB0B0000627521E4D72951414EA1168E56AD4D41	145	SWEPOS-2HER	3294048.8565	0.000928495789942	761583.9227	0.00041734737031	5390353.5181	0.000888521137424	13.018045054028136	58.07618382183477	146.20903601776809	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	21	8	0	18	18	18	20	20	10	single
39	0101000020DB0B0000206891692A024E416785C30E8EC14741	147	SEPTENTRIO-MECH	4009570.1607	0.000512298010322	313464.5868	0.001750034851812	4933815.3967	0.000972438367045	4.470239949355511	51.00311033033919	68.22996363136917	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SEPTENTRIO	1	1	0	0	1	1	20	10	0	12	12	12	20	20	10	single
40	0101000020DB0B00005AE4A37F32CF51412CAA00BDF5134C41	150	SWEPOS-0KUN	3434083.1017	0.007739127221103	958105.1313	0.022190226829009	5270953.2064	0.008161820466968	15.58903955945943	56.10424357988266	35.303992146626115	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	10	0	18	18	18	21	20	11	single
41	0101000020DB0B0000B4D5B5F57F59524147F1C2D9FD375341	153	SWEPOS-0SOP	2217917.9688	0.000468121774603	882251.7077	0.000764386540648	5895261.439	0.000419018951016	21.69185842775986	68.09086792819006	408.73798460979015	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	16	16	16	18	16	8	single
42	0101000020DB0B00007ED067C08D1B5241B7CB0E30E21A4D41	156	SWEPOS-0BOD	3306742.3589	0.000921712765232	1014675.6003	0.000430445079432	5340866.9516	0.000420872473085	17.058658797250153	57.24695350834495	45.594944663345814	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	0	0	0	0	0	0	0	0	0	single
43	0101000020DB0B00008DB77E26BCD95041F8199F001B674D41	159	SWEPOS-0ROR	3339311.9644	0.015944573994528	686423.083	0.018002401420985	5372576.2624	0.011202790164001	11.615817577610926	57.776957181297654	51.44781255163252	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	10	0	18	18	18	22	20	12	single
44	0101000020DB0B00000654D2F126E45041AE00E5F5620B5141	171	SWEPOS-0STL	2809572.56	0.000713590338275	603440.0485	0.000808278458864	5675775.867	0.000972775298973	12.121832534038493	63.30167334199419	683.8323774710298	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	9	0	18	18	18	22	22	10	single
45	0101000020DB0B00002C28C8BD51E0514164F447E9A90D5341	174	SWEPOS-0KEB	2283917.0927	0.000891375765785	769631.4178	0.000718479876502	5886220.4681	0.001079790595506	18.62272062575728	67.86802748772504	709.4807559447363	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	28	8	0	14	14	14	12	12	6	single
46	0101000020DB0B0000916087DE346E4C415066508EE6914941	175	OSNET-WEYB	3850873.076	0.027891246332847	75980.6519	0.026478024739256	5066907.8917	0.018390882358765	1.130342599703748	52.94486776151714	74.10597570613027	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	0	0	0	0	0	0	0	0	0	single
47	0101000020DB0B0000845C67C85440524123B8F2F475DC4F41	176	SWEPOS-0SOD	2993266.1846	0.000341300875476	996674.287	0.000605927962334	5524712.3184	0.000770156941222	18.41632212486009	60.43729620008559	40.86588544026017	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	18	18	18	20	20	10	single
48	0101000020DB0B000006EB34F91AF351412F1B44A63D405041	178	SWEPOS-0SAN	2937425.7999	0.000553507890132	906696.9735	0.00083561848451	5569710.3983	0.000854146214433	17.153918968276297	61.26620744162529	53.36750116106123	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	10	0	18	18	18	24	22	12	single
49	0101000020DB0B00005FB707D93A9951415E5287F833C15041	182	SWEPOS-ANG0	2840959.8084	0.000497858728438	796398.4679	0.000628202073031	5635959.7902	0.000772497486295	15.659632215855485	62.52536788959719	217.97731242422014	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	18	18	18	20	20	10	single
50	0101000020DB0B00008C16815A34A65141DEBCD7A1EC2D4D41	184	SWEPOS-0VED	3323619.3015	0.000955415933555	895930.24	0.000671945668537	5351784.9781	0.001680700902427	15.086323159319944	57.4258015868472	245.33635296300054	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	9	0	18	18	18	20	20	10	single
51	0101000020DB0B0000AEAC9DCDE5964A419235E555D3F84741	193	OSNET-POOL	4039174.8672	0.010318627843166	-134737.6195	0.012378838491366	4917867.8932	0.013098974601445	-1.910547500069238	50.775857379419634	68.72519751358777	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	0	0	0	0	0	0	0	0	0	single
52	0101000020DB0B0000857D6FED610E5241AC9BBB895C4F4E41	200	SWEPOS-0OXE	3177394.1525	0.016939003808055	977921.921	0.021024523675553	5425008.6613	0.005855164622822	17.10704772768711	58.67095812462157	46.95982387941331	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	0	0	0	12	12	12	20	20	10	single
53	0101000020DB0B0000C53BDDB0F98A4941598C9BB3A8A94741	203	OSNET-PRAE	4082002.4019	0.000220952558876	-265420.7154	0.00013544439255	4877351.2311	0.000508469554861	-3.720259731120606	50.20289245416428	112.51233443710953	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	0	0	0	0	0	0	0	0	0	single
54	0101000020DB0B00008F90BCD93C27524160FC3E366F8D5241	204	SWEPOS-0JOK	2389199.468	0.015578162419609	861690.1694	0.015529839578817	5831335.1463	0.025863914663338	19.832377556024543	66.60501977686798	296.65811883006245	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	16	16	16	20	18	8	single
55	0101000020DB0B000077B62C7904A94D4159CEAE53045A4441	1	SATINFO-AUT2	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	8	0	12	12	12	18	18	8	single
56	0101000020DB0B00002D6BBC2B229D4C41383E89C9F28A4641	2	SATINFO-BOVE	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	16	8	0	12	12	12	18	18	8	single
57	0101000020DB0B0000208CEC759D184C418A22FF5E44A34341	3	SATINFO-BRG9	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	12	7	0	12	12	12	16	16	8	single
58	0101000020DB0B0000D1B812E66DCD4D411033696503864641	4	SATINFO-CHPO	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	16	8	0	12	12	12	18	18	8	single
59	0101000020DB0B0000E3901E4853864E4179BCBA2227084141	5	SATINFO-CRAU	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	15	9	0	13	13	13	20	20	11	single
60	0101000020DB0B00007402650BF38D4C41F29847DB57AB4541	6	SATINFO-DHUI	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	16	8	0	12	12	12	18	18	8	single
61	0101000020DB0B0000B68709A23B0D4B4129BD0E501E0F4641	7	SATINFO-DOMP	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	8	0	12	12	12	18	18	8	single
62	0101000020DB0B000017356A227D5C4F41A5BF6DCDA9E64541	8	SATINFO-DRUL	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	16	8	0	12	12	12	18	18	8	single
63	0101000020DB0B00009ED356E7506E4C41A4DD95EFC1A14741	9	SATINFO-EQH2	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	16	8	0	12	12	12	18	18	8	single
64	0101000020DB0B0000FFAE8AD8BCD44C41DB2F702F68F84441	10	SATINFO-GIE1	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	16	8	0	12	12	12	18	18	8	single
65	0101000020DB0B0000EBE8011791E84941D45D220A82364541	11	SATINFO-HERB	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	12	6	0	12	12	12	16	16	8	single
66	0101000020DB0B00006E0EFEBCE77D4C41B9C9A0C6AE404141	12	SATINFO-LEZI	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	12	8	0	12	12	12	18	18	10	single
67	0101000020DB0B0000CB2DD6BC43214F411D5305BB6CB54441	13	SATINFO-MNBL	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	22	8	0	12	12	12	18	18	8	single
68	0101000020DB0B00007BDBD3D5BE5B4E416648A7A9AEA14341	14	SATINFO-MTLC	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	22	8	14	14	14	14	18	18	8	single
69	0101000020DB0B000019E735E0B3224A41F43874C4E5634241	15	SATINFO-MZAN	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	10	6	0	12	12	12	16	16	8	single
70	0101000020DB0B0000862AEE9DC6A249418C9D891EFD6E4641	16	SATINFO-PLMG	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	6	0	12	12	12	14	14	6	single
71	0101000020DB0B0000C599C49F6DC04B41344393CC23674241	17	SATINFO-PRAD	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	12	8	0	12	12	12	16	16	8	single
72	0101000020DB0B00003814B5650C6B4A41B2233958A1564341	18	SATINFO-QUYC	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	8	0	12	12	12	16	16	8	single
73	0101000020DB0B00003AA4A2453AB94B41A8B7AA5481C14441	19	SATINFO-RGNC	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	8	0	12	12	12	16	16	8	single
74	0101000020DB0B0000DB5D578407394E4113BCD96BDC8C4541	20	SATINFO-RUPT	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	16	8	0	12	12	12	18	18	8	single
75	0101000020DB0B0000744A026C17524A4103FEFAC485804441	21	SATINFO-RYON	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	8	0	12	12	12	16	16	8	single
76	0101000020DB0B00002EEBEAFF333A4D411FAE247487284341	22	SATINFO-STFE	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	13	9	0	13	13	13	18	18	9	single
77	0101000020DB0B00004821936246A54A41C6A768587BDF4641	23	SATINFO-VLGN	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	8	0	12	12	12	18	18	8	single
78	0101000020DB0B0000A11D534273CD4B41CFEF2E78BFD44641	24	SATINFO-MOFA	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	6	0	12	12	12	18	18	8	single
79	0101000020DB0B0000C49906F6FD8F4E41A7FAC01A2E324241	25	SATINFO-GAPC	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	12	8	0	12	12	12	18	18	10	single
80	0101000020DB0B0000A65956163BAF4D41FCD5191F1F744141	26	SATINFO-LESA	\N	\N	\N	\N	\N	\N	\N	\N	\N	France_Stations_update	/Users/dj/Documents/QGIS/Shapefile/France/FRA_adm/France_Stations_update.shp|layername=France_Stations_update	SATINFO	1	1	0	99	1	\N	14	8	0	12	12	12	18	18	10	single
81	0101000020DB0B00007660C4020B905841DD246B9627733941	27	CDDIS-NICO00CYP	4359415.4519	0.016164628407535	2874117.2767	0.026596181799701	3650778.0526	0.007915326347397	33.39644943712757	35.1409885747559	190.06334252096713	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	26	15	0	20	20	20	22	22	10	single
82	0101000020DB0B00008793804BF6A44E41642BE22A3D814741	31	EUREF-EIJS00NLD	4023086.0301	0.001754084596974	400395.3512	0.000940226319915	4916655.7049	0.001017559137695	5.683613600688124	50.75824297790241	103.7875573374331	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	31	11	0	20	20	20	22	22	11	single
83	0101000020DB0B000067EBEBBC1E1753413FE741BECF0B5041	32	EUREF-TUO200FIN	2917812.701	0.010059758416386	1205216.5862	0.019117374509092	5523549.1063	0.013555019115356	22.44330825797415	60.415849042187645	59.46094428561628	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	29	12	0	18	18	18	18	18	8	single
84	0101000020DB0B0000A58FA559EC7A53415A62E5063C785441	33	EUREF-VARS00NOR	1844608.578	0.000506488543418	1109720.3256	0.001104622072749	5983941.449	0.001962608016973	31.031202534598297	70.33637487266486	180.43578174244612	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	22	9	0	20	20	20	18	18	9	single
85	0101000020DB0B0000D1F068D44C234541946F8E7D86BA4041	34	EUREF-GAIA00PRT	4759095.3872	0.002243909379775	-718818.334	0.00196802794155	4171491.6145	0.003038021695408	-8.589086845435338	41.106024975926395	287.72396420966834	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	12	12	12	16	16	8	single
86	0101000020DB0B00009F3CFC4D07C752418920E9A766C94641	35	EUREF-CFRM00CZE	3924572.6088	0.013028307621464	1301971.5061	0.010432162519106	4840464.8895	0.013177840356315	18.35319182436698	49.6847977260345	373.64846163149923	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	22	11	0	14	14	14	18	18	9	single
87	0101000020DB0B00002E1FBE2E02B04541A55ADBE982904241	37	EUREF-ACOR00ESP	4594491.7389	0.001234616724077	-678367.7411	0.001657753800478	4357068.3911	0.001682222432849	-8.39892879543655	43.364385993126994	69.92623629327863	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
88	0101000020DB0B0000AEA5D0F0B10250414E4180BAD0AF4941	38	DTVR00DEU	3773148.9646	0.000410082915769	539477.427	0.00194666396962	5096923.1769	0.001068375474723	8.136890350526127	53.3949589704545	59.93052434921265	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	22.1	4	16.1	14.1	14.1	14.1	26.1	26.1	12.1	integrity
89	0101000020DB0B00005F62DC2AA72750418CD0A1197F114241	40	EUREF-GENO00ITA	4507892.0962	0.0007746079399	707621.7723	0.001052125968578	4441603.6842	0.002565121112142	8.921147193029892	44.41938983105992	155.52117448858917	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	18	8	0	12	12	12	17	17	10	single
90	0101000020DB0B000009D3CD5D56EE4741A476BDBF6F403641	41	CDDIS-MELI00ESP	5205628.0786	0.031795384683685	-268410.6431	0.024433170438462	3663428.6494	0.017431123406563	-2.95164959863163	35.2811908649313	88.85013063531369	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	0	0	0	12	12	12	20	20	12	single
91	0101000020DB0B000067EF5972241250410D289E92592A4641	43	DTWL00DEU	4125482.7251	0.027885509175461	617674.6221	0.018846920397022	4808920.0898	0.018948726924978	8.515174988281121	49.25060989226445	161.6583091225475	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	21.4	4	14.8	14	14	14	26	25.6	12	single
92	0101000020DB0B00001F77F648EF434F41D23DB96753B44641	48	DTND00DEU	4090652.0833	0.02521002423053	494923.0524	0.020962080076016	4852450.9994	0.024350160854837	6.898616217568449	49.85334966217774	213.00201421882957	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	18	4	14	14	14	14	20	20	10	integrity
93	0101000020DB0B0000126C4F4CD6BA4F41F861918237164541	49	DTMH00DEU	4238771.0321	0.000580406656053	582894.2363	0.001104710694266	4714687.1985	0.001258892430817	7.829915193078205	47.96715239486799	344.02573371492326	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	18	4	14	14	14	14	20	20	10	integrity
94	0101000020DB0B00005F9EE016262354418ADE922295F35141	50	EUREF-ROM200FIN	2410840.1954	0.006907770169881	1388076.2483	0.002932268383589	5720514.7321	0.005750768832555	29.931810665161628	64.21736199328318	243.0222850823775	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	36	12	0	18	18	18	24	22	12	single
95	0101000020DB0B00005CADB447C1F34941E88AB2907CD43A41	52	EUREF-ALAC00ESP	5009053.3951	0.001124431062006	-42071.908	0.001160767949967	3935059.8156	0.001508866003631	-0.481225870822607	38.33892286736164	63.35170349944383	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
96	0101000020DB0B0000F88175D6E0E05141646F27C9AB425341	36	SWEPOS-0ABI	2233557.4622	0.006569855489093	761080.425	0.004039028517296	5906186.1649	0.008647089709826	18.816445072842857	68.35434434858125	431.4506549425423	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	21	8	0	20	20	20	18	18	8	single
97	0101000020DB0B000061267578862C51410DE28479806A4B41	45	SWEPOS-0SKN	3537800.3506	0.008599367115223	807532.2136	0.007735184547361	5227707.99	0.008649540804469	12.857949004635781	55.41376549863685	48.65524911787361	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	9	0	18	18	18	22	20	12	single
98	0101000020DB0B00009E626E09720352416C7A9CC61D404C41	46	SWEPOS-0EKE	3404422.562	0.000706656876039	1007063.2846	0.000566044106306	5280999.668	0.000784331327064	16.478760154724853	56.26626835865886	43.24126499518752	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	23	10	0	20	20	20	22	20	12	single
99	0101000020DB0B0000B5488BD2C57D4F41FF60C20A7D2B4441	53	CDDIS-ZIM200CHE	4331299.6386	0.020044645008219	567537.6161	0.019062425224726	4633133.887	0.014234904169263	7.465034903616569	46.87709604544819	956.420351382345	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	22	10	0	12	12	12	20	20	10	single
100	0101000020DB0B000055A11DDD7F394F413D003950BA4E4941	54	EUREF-WSRT00NLD	3828735.8535	0.00105282980692	443305.2302	0.000749153926543	5064885.1759	0.000257580542484	6.604509460474455	52.91461340633941	82.66393394954503	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	29	13	0	20	10	22	26	26	4	single
101	0101000020DB0B0000474E03CB507F5341BC66700F396C5341	55	EUREF-SAVU00FIN	2100286.137	0.000706416461215	1162091.7426	0.000409408635816	5889701.3882	0.000728649388788	28.955826896538987	67.96084168820803	265.25545343291014	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	32	12	0	20	20	18	18	16	8	single
102	0101000020DB0B00006A20C809297B48412515C525B20B4241	56	EUREF-CANT00ESP	4625926.5036	0.001237838267005	-307096.3656	0.002443133853172	4365773.6723	0.002374656008922	-3.798059851048837	43.47198249300107	102.29867964051664	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	12	12	12	22	22	12	single
103	0101000020DB0B0000F33B943000094F41B10C0998BE814E41	57	EUREF-STAS00NOR	3275756.2384	0.010271439033523	321111.5375	0.01564599533088	5445046.9768	0.006023125940505	5.598628433252447	59.017714313207975	110.47624146007001	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	20	10	0	14	14	14	18	18	8	single
104	0101000020DB0B0000CCD72CDFD4364741B49CED90F6884141	58	EUREF-LEON00ESP	4680871.0807	0.002385062026913	-463167.8413	0.00214913113287	4294607.0265	0.001389891295822	-5.650969291243011	42.58841056059799	970.2989513184875	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	10	9	10	23	23	13	single
105	0101000020DB0B00009DC15DCFA0204C41D207967DC66A4841	60	EUREF-SHOE00GBR	3973492.5054	0.024004897880903	57358.3831	0.025055869399496	4972193.2747	0.01713546178931	0.827021826821639	51.55479017877323	48.94476137403399	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	29	11	0	13	13	13	22	22	11	single
106	0101000020DB0B00001FA9013AEED652419EEC0FF854565041	61	EUREF-OLK200FIN	2866981.0581	0.000557566940298	1129669.0141	0.000324231358717	5565665.8766	0.000563483045366	21.505797824426306	61.19102646853285	39.444920947775245	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	32	12	0	18	18	18	20	20	10	single
107	0101000020DB0B0000CA5611ECAC015141881C49D7D6E24541	64	DTKM00DEU	4109971.9636	0.012596601148918	863937.5384	0.017926957761836	4784688.2733	0.014546106227456	11.871039960072256	48.91544150482288	403.4754952043295	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	23.6	4	18	12	12	12	24	23.6	10	single
108	0101000020DB0B000055C4FC18FE2952415A634B79478D5341	66	EUREF-KILP00FIN	2147249.8277	0.012274073223426	820562.3546	0.016212687644584	5930137.2072	0.013440183100499	20.91414302430527	68.9415579480055	539.6836642157286	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	28	8	0	18	18	18	18	18	8	single
109	0101000020DB0B0000761F0BAB4B84454124479C9D21BC5241	68	CDDIS-REYK00ISL	2587384.0096	0.001605934761163	-1043033.5748	0.00223316427047	5716564.223	0.001692721364449	-21.955489068703613	64.13878697827536	93.08892338909209	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	18	8	0	22	22	22	20	20	10	single
110	0101000020DB0B00001FBB7E0E8A0050412B53B849A96F4741	69	DTHR00DEU	4002836.7188	0.008653815764296	577722.5532	0.007872733670285	4915840.3987	0.01334234822417	8.212689640441543	50.74420029101554	327.2968546031043	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	20	4	16	14	14	14	26	25.8	12	single
111	0101000020DB0B0000E777B273C6AE514183BD76475DAF5141	59	SWEPOS-6VIL	2620263.2263	0.000920018462059	779138.676	0.00080108634924	5743797.9729	0.000467801252826	16.559914178908148	64.69780458979376	450.6179854394868	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	24	11	0	20	20	20	22	22	9	single
112	0101000020DB0B0000F138E42D69FD5241A963EB11CD125441	72	EUREF-KEV200FIN	1972152.2511	0.000920027708956	1005171.5628	0.000462668637766	5961801.7823	0.000537621562495	27.0071449402135	69.75595439285306	136.44878019578755	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	33	11	0	18	18	18	15	13	7	single
113	0101000020DB0B00009DC9CE2C4A6151411EAA80CB7FAA4541	73	DTVD00DEU	4112582.1244	0.009930938460988	963746.5232	0.008386217302687	4763449.6814	0.008672852792246	13.188762964729863	48.625900904953596	382.02712311502546	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	23.2	4	18	14	14	14	26	26	12	integrity
114	0101000020DB0B000085032900508A4E41594449DD2DBA4941	74	EUREF-TERS00NLD	3798580.3684	0.000662417403017	346994.3178	0.000871853434377	5094781.147	0.00035939700982	5.219393338003466	53.36274088776394	56.08234254643321	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	25	9	0	16	16	16	18	18	9	single
115	0101000020DB0B000068A54EDC70D54741C8DAA27D6B485241	75	CDDIS-HOFN00ISL	2679689.9454	0.001068260702921	-727950.9775	0.002232902814966	5722789.6004	0.002728242271349	-15.197915886067147	64.2672939051566	82.92681803088635	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	18	8	0	20	20	20	20	20	10	single
116	0101000020DB0B00003A1E75F2258F4F411E8C7D4C70A14241	76	EUREF-TORI00ITA	4472544.188	0.000966351174018	601634.6375	0.000935737102734	4492545.4316	0.001834081515947	7.661285252591349	45.06336977380671	310.8175697159022	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	18	8	0	12	12	12	18	18	10	single
117	0101000020DB0B00005391D2D9E2645141D0F7F44205293541	78	EUREF-LAMP00ITA	5073164.5051	0.001888969846052	1134512.8307	0.000831904144986	3683181.3655	0.003612811974062	12.605660048650233	35.49977685514172	57.76263467222452	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	15	7	0	12	12	12	18	18	10	single
118	0101000020DB0B00007A426A5ADDA05041278196A395D94441	79	DTIF00DEU	4228274.0023	0.006730599411515	784156.0243	0.009927670530517	4695736.1701	0.012842859078723	10.50644221217123	47.70803295504593	869.5840249210596	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	22.1	4	16.1	14.1	14.1	14.1	26.2	26	11.9	integrity
119	0101000020DB0B0000C110544FC91A4841021EE8AAD6053F41	81	EUREF-IGNE00ESP	4851137.3245	0.002225259287047	-314518.1177	0.001864919478763	4116282.463	0.002115035345764	-3.709516676250731	40.445840992465406	766.9066344387829	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	15	8	0	12	0	12	20	20	4	single
120	0101000020DB0B00004139DE70C65A5341DFDF620E6C024941	82	CDDIS-JOZ200POL	3664880.2828	0.000753645177158	1409190.8349	0.000330982079196	5009618.6017	0.000513513021649	21.032355961582248	52.09783786482321	152.50826208665967	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	\N	\N	0	\N	\N	0	\N	\N	\N	single
121	0101000020DB0B00008EAA075287C25241E533D688ED155141	83	EUREF-VAA200FIN	2699867.7548	0.000614378607684	1078261.7075	0.000247715015531	5658064.065	0.000481001499754	21.77056928841534	62.96117133545867	58.46040780283511	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	30	12	0	17	5	5	18	18	8	single
122	0101000020DB0B0000D8EFEAD4E3665441EB0F78BEE1375141	84	EUREF-JOE200FIN	2564142.0787	0.000547888233354	1486152.8146	0.000227913131396	5628949.3411	0.000714648716616	30.0961805555356	62.391131980349655	113.7847638335079	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	32	12	0	18	18	18	14	12	4	single
123	0101000020DB0B00001B6C31D6C4764C413789CE72AF214041	85	EUREF-CASE00ESP	4749772.3891	0.001149337477541	240960.1059	0.00104576959788	4236096.3931	0.00252334079267	2.904175278365771	41.8828885563223	251.85246607661247	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	20	8	0	12	12	12	22	22	12	single
124	0101000020DB0B0000A77A5481DF0F524173892EC972F34641	86	EUREF-CPAR00CZE	3949918.537	0.015612230534721	1116467.5463	0.014261611353203	4865832.9406	0.016519154995237	15.78325472812367	50.03955276156842	283.3262557880953	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	26	12	0	16	16	16	20	20	10	single
125	0101000020DB0B0000E4F14BC52E374641D0379BAEB1233841	87	EUREF-TAR000ESP	5140804.7846	0.002109060576054	-504303.8453	0.00171365822204	3728989.2114	0.002496023186967	-5.602688344630888	36.008556549511454	50.13517913222313	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
126	0101000020DB0B00005415E3A1731D49418E8DD3496B2A3C41	88	EUREF-ALBA00ESP	4962850.1251	0.014398766948669	-160853.8626	0.014213861078155	3990886.4952	0.010343449570324	-1.856397430678541	38.97792035878684	754.6525504477322	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	12	12	12	20	20	12	single
127	0101000020DB0B0000838B2B7BB15850417A05132496D74A41	89	DTFB00DEU	3637737.8685	0.001067442299039	605015.9295	0.00057195377712	5186668.4257	0.000442189796125	9.442801795135802	54.768824226137454	108.06533535383642	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	24.4	4	20	16	16	16	26	26	12	integrity
128	0101000020DB0B0000227BBD0AA9944A41597E626EC8304A41	90	EUREF-DARE00GBR	3811965.2203	0.001409196206951	-175799.5793	0.001626150949139	5093615.9452	0.001398115257697	-2.640486333017571	53.34480816807174	88.53817441500723	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	28	10	0	14	14	14	22	20	12	single
129	0101000020DB0B00005681B20E1F435041AFDD48F390CB4641	92	DTGB00DEU	4055257.2402	0.015340685631337	656198.82	0.022250941921211	4862926.4975	0.019828215959311	9.191607997447994	49.99982133305976	196.11695089098066	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	22	4	16	14	14	14	26	26	12	integrity
130	0101000020DB0B000080D84A1108234741ED9D465C15013941	93	EUREF-MALA00ESP	5103284.5125	0.015785759777309	-392096.3661	0.013453050122395	3793149.1504	0.008833803628705	-4.393526737149544	36.72611733258003	122.85057254787534	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	10	10	10	22	22	14	single
131	0101000020DB0B0000421A47417A754841AF9634E973C03841	94	EUREF-ALME00ESP	5105222.3898	0.002090668391226	-219278.3327	0.001012709228137	3804389.1585	0.001935942902449	-2.459443390393879	36.85253644913392	130.53699827566743	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	18	9	0	13	11	13	22	22	7	single
132	0101000020DB0B0000F9D5A1A0B9AF504145068383D91C4841	95	DTHT00DEU	3904259.1919	0.001997647552548	742496.0003	0.000982277623752	4972211.7978	0.000805651938525	10.767693875272455	51.55258441376177	267.4338690470904	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	22	4	16.1	12.1	12.1	12.1	26.2	25.8	12.1	integrity
133	0101000020DB0B0000D583C1323124514124C53FD3535E4D41	97	CDDIS-SPT000SWE	3328984.341	0.001004371689437	761910.5035	0.000528289408732	5369033.924	0.001064572572233	12.891353810089266	57.71496077253394	220.08999511413276	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	26	10	0	16	18	18	24	22	12	single
134	0101000020DB0B000009E40925611050415F928E67EDE24A41	98	EUREF-RANT00DEU	3645376.2577	0.001125717630544	531202.1546	0.001100435042098	5189297.089	0.000649253429843	8.290754654481818	54.81055361600481	47.169976870529354	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	34	34	22	20	20	20	22	22	12	single
135	0101000020DB0B0000E79EDCF126CB4B41C9E034050DDF4741	99	EUREF-HERS00GBR	4033469.897	0.001068579959656	23673.1485	0.00083751641768	4924301.4684	0.000917638485825	0.33627520655353	50.86731612535345	76.4760880311951	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	26	10	0	12	12	12	24	22	14	single
136	0101000020DB0B0000F7FE8E53B3D44841F4422A1CEA384641	101	CDDIS-BRST00FRA	4231163.741	0.001147116204433	-332746.5115	0.001094439861737	4745132.6066	0.000907906371567	-4.496591111616746	48.38049596044884	67.84883315302432	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	28	10	0	14	14	14	22	22	12	single
137	0101000020DB0B0000C6C6A0B7EB5853412AF7C83B639D5041	102	EUREF-ORIV00FIN	2772556.0013	0.007973765531762	1246719.6518	0.013960179351033	5588449.6177	0.011343559339022	24.211751545759725	61.616268313664975	155.89813682250679	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	30	12	0	18	18	18	20	18	10	single
138	0101000020DB0B00002378AFDA48934D410A7CB8E78E2A4841	103	EUREF-VLIS00NLD	3975804.7414	0.001129437246023	249950.5763	0.001036400827378	4964446.4438	0.000548220121352	3.597332158936234	51.44288024816815	54.39787109475583	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	24	10	0	18	18	18	22	22	12	single
139	0101000020DB0B0000237272A2E00C5141BACE7F20DBEA4241	105	CDDIS-PADO00ITA	4388881.7328	0.010348142165709	924567.7512	0.014086633988021	4519588.8976	0.006520717245798	11.896066376907863	45.41115612920117	64.65560796204954	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	0	0	0	0	0	0	0	0	0	single
140	0101000020DB0B0000E3D37D46118051415B73BDE3E1B34741	108	DTDD00DEU	3905215.825	0.001384202248018	959241.1709	0.000539697050197	4934366.5703	0.000572418270507	13.800389690994761	51.00975308774275	179.09187140408903	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	24	4	18	14	14	14	26	25.8	11.8	integrity
141	0101000020DB0B000065FF2C71E06B504100D2F1088EAF4441	109	EUREF-PFA300AUT	4253560.8996	0.001020565248312	733545.3598	0.001109042570486	4681452.2483	0.000382566959867	9.784667331376625	47.51531804526709	1090.3560213614255	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	24	12	0	14	14	14	20	20	10	single
142	0101000020DB0B0000BECD06C196394E41A77F8AF5958C4741	91	SEPTENTRIO-HOEG	4026433.3997	0.002017431772956	345218.8141	0.0030492227768	4918081.4632	0.001479462271973	4.900447870642108	50.77857556077804	97.58881146926433	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SEPTENTRIO	1	1	0	0	1	0	20	10	0	12	12	12	20	20	10	single
143	0101000020DB0B0000DAA2682B192F494185CB5F450A0E4141	112	EUREF-RIO100ESP	4708446.8336	0.017891555693295	-199490.248	0.015522178243142	4284089.7844	0.014271326235615	-2.426090329692275	42.46424619584675	450.4053916996345	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	10	10	10	22	22	12	single
144	0101000020DB0B00003161DE65DD2F51411FD7A9940FF14241	113	EUREF-VEN100ITA	4379846.2929	0.000954151607409	959292.5322	0.000443715510915	4521100.5151	0.001074674558169	12.35408199985468	45.43057249959652	60.389448582194746	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
145	0101000020DB0B00002161106612EC5341A8D8F7A312BA5041	114	EUREF-MIK300FIN	2709831.8513	0.008467182661234	1386861.0043	0.021992229677178	5586222.9763	0.014183715852452	27.102848220084923	61.574077149127085	167.29479905217886	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	29	12	0	16	16	16	22	16	8	single
146	0101000020DB0B0000B05A3D350D8856417EEC5DADB2CB4041	115	CDDIS-ISTA00TUR	4208830.0422	0.001198297037923	2334850.5905	0.001510041746584	4171267.4193	0.00260881892453	29.01934481827881	41.104449214575546	147.28712210524827	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	24	12	0	14	14	14	20	20	10	single
147	0101000020DB0B0000071EEA719D574441A300054440E03A41	116	EUREF-LAGO00PRT	5035246.4408	0.010047008315749	-767656.8089	0.017571292037422	3826194.5771	0.007918037837495	-8.668374167546165	37.09894079867718	62.77022191789001	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	12	\N	\N	20	20	12	single
148	0101000020DB0B00007E4D6424D645534110608259A44A4E41	117	EUREF-KURE00EST	3107617.1549	0.000589234052264	1287856.7486	0.000498854724808	5400807.4323	0.00050231543837	22.51006437068564	58.25563701149144	41.542444785125554	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	20	20	20	22	22	12	single
149	0101000020DB0B00006E8BA4238A3E54417CABC548A6B94F41	118	EUREF-TOIL00EST	2884256.929	0.004598508006853	1503794.2795	0.02090900418171	5468068.0693	0.006447788786688	27.536641545373342	59.42204090612862	76.74930008407682	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	20	20	20	22	22	12	single
150	0101000020DB0B000092261EA8F4B64B414AC5CC3ACAA24141	121	CDDIS-TLSE00FRA	4627852.4019	0.001051172723966	119640.3342	0.001248363303714	4372994.4574	0.002318910998618	1.480894181327943	43.560697041554924	208.23165719024837	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	24	10	0	13	13	13	21	21	11	single
151	0101000020DB0B000000CEDD917D0C4A419E9596BE68354041	123	EUREF-ZARA00ESP	4773805.5917	0.001094368663948	-73506.0053	0.001003985217756	4215456.2756	0.001966008980915	-0.882158059281977	41.633400134606724	299.34891292080283	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	14	7	0	11	9	11	19	19	5	single
152	0101000020DB0B0000E89EA897E3F45241C6ADB5E9B6775241	124	EUREF-TORN00FIN	2363238.0137	0.000243969523078	1068632.5625	0.000413850649589	5807526.2468	0.000257071389152	24.33200646013546	66.07759812163891	70.70103610120714	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	31	11	0	16	16	16	16	14	7	single
153	0101000020DB0B00005165BF8182804A410A0C32C421CB4D41	125	EUREF-INVR00GBR	3427171.9401	0.000632774481678	-252833.8879	0.001930092514209	5355255.8514	0.001644016012037	-4.219257108940917	57.486255338123875	66.20649278722703	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	23	10	0	16	16	16	20	20	10	single
154	0101000020DB0B0000204984004A5A53415D2E31E594604641	126	CDDIS-GANP00SVK	3929181.4906	0.001265508641612	1455237.0624	0.000656405461998	4793654.3275	0.002196325587569	20.322940103259945	49.034715462662604	746.3972851429135	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	27	0	0	13	13	13	18	18	9	single
155	0101000020DB0B00004EE7ACED9F6E4D41FACB62F7AFBE4741	128	EUREF-DENT00BEL	4020711.7212	0.011988390737039	238851.4068	0.018037289562041	4928950.386	0.015485787514335	3.399675040048572	50.93370843674408	64.62992843147367	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	34	10	0	18	18	18	22	22	\N	single
156	0101000020DB0B0000C47779E7C7044E414224597A68FB4641	133	EUREF-DOUR00BEL	4086778.4062	0.00090616971573	328452.2914	0.000820032564543	4869783.3749	0.002841510369811	4.594956163380562	50.09487918530699	283.44515253510326	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	16	16	0	22	22	0	single
157	0101000020DB0B0000F4443D4251475041153E99BDDBE54541	134	DTMB00DEU	4142648.8679	0.000492713660189	675980.1353	0.000635228544794	4786586.5137	0.000877709062201	9.267607773810468	48.94261388636086	287.8530922951177	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	20	4	16	12	12	12	19.8	20	10	integrity
158	0101000020DB0B0000592AD8952AC14C41FAC97D328E794041	139	EUREF-CREU00ESP	4715420.1748	0.000981915933948	273178.0844	0.000938897101472	4271946.9101	0.002100855904761	3.315606118908681	42.318844556706594	133.46738219540566	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	22	10	0	12	12	12	22	22	12	single
159	0101000020DB0B0000D88288AA58F74F41895C5DB6AFBE4841	140	DTOB00DEU	3871271.73	0.018026991515119	549465.5336	0.022607424087541	5022321.9104	0.022660147286497	8.07826787833765	52.28425666735795	135.96910199243575	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	20.1	4	16.1	14.1	14.1	14.1	24.1	23.9	11.9	integrity
160	0101000020DB0B0000F1541DB1679353415C2A9C9848744F41	141	EUREF-SUR400EST	2959056.6256	0.02491399187362	1341058.9043	0.034520783177044	5470427.1248	0.014099771191469	24.380265672705576	59.46357578917059	84.4325669920072	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	20	20	20	22	22	12	single
161	0101000020DB0B0000601B8A7A49A84741EC64C86CACAD4041	143	EUREF-VALA00ESP	4753521.3246	0.001914984986025	-391505.0622	0.001520639095292	4221500.954	0.001071614949138	-4.708314370704699	41.70251153759247	765.8868722459301	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	20	8	0	12	12	12	24	24	14	single
162	0101000020DB0B0000E132E8FEF5555141EB17B7C387044941	144	DTBN00DEU	3780203.6097	0.000492541278518	893434.1495	0.000541776586947	5042064.1282	0.000396237447997	13.297586706844065	52.57564945552027	99.9145326660946	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	26.1	4	20.1	16.1	16.1	16.1	26.1	26.1	12.1	single
163	0101000020DB0B0000F85CE956B1BE514134989B1C693A4D41	129	SWEPOS-0PAU	3313197.527	0.001140597421214	919489.5193	0.000355258041275	5354180.6702	0.000520442018594	15.510574183953599	57.466411526838435	200.2614586399868	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	26	10	0	18	18	18	20	20	12	single
164	0101000020DB0B0000C1A7BF6156E15041A9B705A799DF4E41	132	SWEPOS-0TOC	3175552.3588	0.000186751511785	665346.9589	0.000402511499117	5473036.1731	0.000581903376519	11.833526588193905	59.50837921825874	171.1293378341943	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	1	28	11	0	20	18	19	20	21	13	single
165	0101000020DB0B00003BE714D827BE51412874727832704F41	135	SWEPOS-0NBG	3068753.6349	0.014616139748544	875354.4826	0.024682011647971	5504109.1565	0.007110899145056	15.920669591333935	60.062515629341135	176.3188937427476	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	30	8	0	18	18	18	24	22	12	single
166	0101000020DB0B0000B7A71A5CB89B524193299D29A1B65141	138	SWEPOS-0BJU	2562312.5413	0.000699259495857	1013194.3893	0.000338014738676	5733061.9438	0.000349446180436	21.574925415846362	64.48058981709714	69.56815802119672	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	18	18	18	22	22	12	single
167	0101000020DB0B00006678F37CA83A52410AE31A707A8B4E41	142	SWEPOS-0NYN	3141747.1624	0.014484624149125	1017436.248	0.024647965379311	5438418.6053	0.007852901463901	17.944239568416556	58.90297613261794	66.24439088907093	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	30	9	0	18	18	18	22	22	12	single
168	0101000020DB0B0000B557720F078A5141531BC21F67604041	151	EUREF-AQUI00ITA	4592507.2766	0.001443906496776	1089876.6373	0.000513607923353	4276393.0847	0.000928201631001	13.35025245765679	42.368241641335786	712.9691294264048	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	18	8	0	12	12	12	20	20	10	single
169	0101000020DB0B0000A08B44A999EA50416109990660C34641	154	DTBR00DEU	4028330.0049	0.011114261693937	825578.7823	0.027822148670844	4859823.8582	0.011434617039179	11.582002227066226	49.9539817938032	426.54208433255553	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	24.1	4	18.1	14.1	14.1	14.1	26.1	25.7	11.9	integrity
170	0101000020DB0B00003AB8EABA82374F41813E486117E34741	155	DTDS00DEU	3973615.0747	0.055822398450076	467805.8861	0.030549012694273	4950593.0331	0.03821808009462	6.714412897988	51.242946486371004	107.41205541510135	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	23.2	4	18	14	14	14	24	24	12	integrity
171	0101000020DB0B0000766DC891407E5141B9B60B3D45D34941	157	DTPW00DEU	3688724.9942	0.000457286573335	919147.6578	0.000506242152907	5104345.3244	0.000375813901991	13.9918868560103	53.50688631216056	64.70945152267814	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	24	4	18	14	14	14	26	26	12	integrity
172	0101000020DB0B0000BE87ADD925135241A0670B4F786C4441	160	CDDIS-GRAZ00AUT	4194424.8282	0.008153630294652	1162703.3388	0.020628420426042	4647247.01	0.006683436982439	15.4934848858753	47.06713220636972	540.2402556790039	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	26	12	0	16	16	16	20	20	10	single
173	0101000020DB0B0000315D049F7F465141010C8445BDE83F41	161	EUREF-M0SE00ITA	4642432.2389	0.000552978503879	1028629.7096	0.000495747740747	4236854.4227	0.001769856385002	12.49326234917883	41.89311583847005	120.56312497984618	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
174	0101000020DB0B0000E69B437796165341365A34758CCF5141	162	EUREF-PYHA00FIN	2510901.0892	0.015671709670763	1130426.7585	0.010071917525559	5733838.6789	0.007441061973442	24.237636212334316	64.4975789465075	26.357271009124815	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	33	12	0	18	18	18	18	18	8	single
175	0101000020DB0B000010E611D60BC94E4123E6856A3DB34841	163	EUREF-KOS100NLD	3899613.5382	0.001010006281676	397362.1123	0.000680436940364	5014739.096	0.000279680342764	5.818233168014682	52.173360442124434	104.92205556295812	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	28	10	0	18	18	18	20	20	10	single
176	0101000020DB0B000064EA7FB83CDA5041ADF46840FEDA4941	164	DTSW00DEU	3717639.7002	0.012174814375958	753778.3504	0.017372411588815	5110487.948	0.011999466146017	11.461753531884145	53.59914905066545	117.19527012296021	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	20	4	16	14	14	14	24	24	12	integrity
177	0101000020DB0B000012F073F1BE1E53416F6B9176BCCA3D41	165	EUREF-USAL00ITA	4627541.6059	0.014263296370404	1513541.2739	0.018655268783093	4106448.4858	0.006874583067174	18.111493667592338	40.334918779209836	69.17551979608834	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
178	0101000020DB0B000038144A805A2A4A4187208044C0B63C41	166	EUREF-VALE00ESP	4929535.9925	0.002194516780757	-29050.119	0.001218597739374	4033712.2773	0.001162456144617	-0.337644343838076	39.480830346258806	80.58727463986725	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	10	10	10	22	22	12	single
179	0101000020DB0B000061CEEDE6534851419B06488589C44D41	148	SWEPOS-0FAL	3278189.4695	0.001088462622117	790418.7907	0.000441025265061	5395965.0505	0.000825072431517	13.55609264270817	58.16994014943484	260.0548066776246	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	26	10	0	18	18	18	22	22	12	single
180	0101000020DB0B00008B101DEDBF8B5241E081AFA786C74D41	149	SWEPOS-0FAR	3208030.8476	0.007409216172888	1113334.0168	0.008417018729686	5380982.1557	0.006597716187697	19.13912241437708	57.91900760025253	35.492114403285086	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	21	9	0	18	18	18	22	20	12	single
181	0101000020DB0B00009AB9241038D65041E9DF2978CEA44741	167	DTWR00DEU	3944389.683	0.001081220040799	789596.336	0.000564856265288	4933442.3562	0.000633803130325	11.319966153517209	50.99513055260983	307.1290493598208	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	24	4	18	12	12	12	26	26	12	single
182	0101000020DB0B00002C3BE7A3331053416A0DA6C217E34141	170	EUREF-SRJV00BIH	4370292.8081	0.015441572098299	1454980.465	0.033407994650115	4397965.6182	0.006634715334308	18.413898682755484	43.86785524032439	645.9335254589096	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
183	0101000020DB0B00001CD76E31A6264441E366B35958C03D41	172	EUREF-CASC00PRT	4917537.6621	0.001136716942511	-815726.0421	0.001712896351355	3965858.265	0.001566265656007	-9.41851762471016	38.69341748434282	77.10284844972193	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	12	12	12	22	22	14	single
184	0101000020DB0B0000B2D4135089524B4140B66ADF80F14041	177	EUREF-ESCO00ESP	4696264.8303	0.001341633959968	79978.7904	0.001119189083769	4304245.2299	0.00215274402238	0.975669892095512	42.69357802623137	2508.504217245616	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	20	8	0	12	12	12	22	22	12	single
185	0101000020DB0B0000FB949AEF90265541B3317FD99D223B41	179	CDDIS-DYNG00GRC	4595221.4896	0.001047144843551	2039434.8355	0.000708183879357	3912627.1411	0.001751113029401	23.932435071152867	38.07855223648224	512.5745766712353	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	0	0	0	0	0	0	0	0	0	single
186	0101000020DB0B000044965B5A668B504100F7FF9564115141	180	EUREF-TRDS00NOR	2820173.0212	0.000605744327714	513486.6774	0.001037617234525	5678941.0846	0.001285086673857	10.319161813946032	63.371386189598525	323.35323494207114	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	22	10	0	16	16	16	18	18	8	single
187	0101000020DB0B000007C08C17F45253417491D50B591E5241	181	EUREF-OUL200FIN	2423797.0466	0.000491821386976	1176543.1239	0.000412196412289	5761848.5543	0.000333807058258	25.892549183877097	65.08638452081958	82.62340345140547	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	30	12	0	18	18	18	14	14	4	single
188	0101000020DB0B0000B375F95D2C805141E848F55577EE4641	183	EUREF-CRAK00CZE	3982250.8057	0.015394555219491	972921.8298	0.019250935942399	4870395.1788	0.011094615377813	13.729245544243968	50.10239437195943	381.93847086373717	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	24	12	0	14	14	14	20	20	10	single
189	0101000020DB0B0000C49EBB982A3545412B4A5CC146A74141	185	EUREF-VIGO00ESP	4677480.7584	0.001363656906995	-725204.5143	0.00096841475364	4260827.6084	0.002802020968531	-8.81306550230616	42.18398251882345	87.7737779263407	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	13	5	0	11	11	11	18	18	5	single
190	0101000020DB0B000072F507C5DF0551417239BF3FEF075041	168	SWEPOS-1HOL	3035204.9124	0.01077382800752	678371.5611	0.023230260801224	5550124.2419	0.012981982125024	12.59861350795636	60.899126960217366	274.21321691107005	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	9	0	16	16	16	18	16	8	single
191	0101000020DB0B00001227514DE286524122D1B05735695141	169	SWEPOS-0HLM	2637812.3037	0.006333225658746	1005419.2617	0.01915883945115	5700273.7588	0.02218370528656	20.864669519497397	63.80689675240783	31.136264139786363	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	24	11	0	20	20	20	22	18	10	single
192	0101000020DB0B0000F302BD8DF98F5041E9100B499F0E4F41	189	EUREF-OSLS00NOR	3169984.3716	0.001570322019065	579957.491	0.001016262735479	5485941.62	0.002269125429214	10.3677619799468	59.73658923231263	227.10861399024725	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	20	8	0	18	18	18	16	16	8	single
193	0101000020DB0B00000F0FF66564D64A4107B2C0C154D13E41	190	EUREF-EBRE00ESP	4833520.0348	0.002931792988175	41537.4132	0.000986333826704	4147461.7821	0.001807608424687	0.492365784743012	40.820890400136705	107.8674226468429	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	16	8	0	12	12	12	22	22	12	single
194	0101000020DB0B000007C219DF31B051416DF338A71DE14741	195	EUREF-BAUT00DEU	3877545.5236	0.01135824091685	1004370.9332	0.012551827537911	4947148.0995	0.008160073185621	14.521735074868486	51.192343901086204	211.79581930395216	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	36	35	22	20	20	20	20	20	10	single
195	0101000020DB0B0000FEF752C93D7D4B41C4A7728C4AFC3F41	196	EUREF-BELL00ESP	4775849.2649	0.015292004351613	116814.6757	0.024137172749026	4213019.211	0.011906183119135	1.401144232941936	41.59962063873841	853.4801854025573	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	18	8	0	12	12	12	22	22	12	single
196	0101000020DB0B00008F61273E49A75241B089268440243E41	197	CDDIS-MATE00ITA	4641949.3279	0.000967556954015	1393045.7456	0.000586831339078	4133287.7467	0.001779273348049	16.704463808222204	40.649134351205156	535.7379993321374	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	20	10	0	12	12	12	22	22	12	single
197	0101000020DB0B00005203A8A2A58445413EB33D54E27D3A41	198	EUREF-HUEL00ESP	5049612.8709	0.001042438304209	-612885.0693	0.001597595342346	3835144.3231	0.000991870458553	-6.920293331044292	37.199984038688484	81.85080185905099	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	15	7	0	13	0	\N	24	24	11	single
198	0101000020DB0B0000B226AA7C882853410A8C1A9FC6185341	199	EUREF-SOD300FIN	2200149.1622	0.000975677864891	1091650.8945	0.000433644652412	5866868.701	0.00092716706459	26.38928838068992	67.42078763461468	300.8842447437346	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	33	12	0	20	20	20	20	16	7	single
199	0101000020DB0B000022BBFDB760454641B35B4CC655183E41	201	EUREF-CACE00ESP	4899866.5156	0.013909648483955	-544567.0233	0.010351545614657	4033770.2599	0.008346772549599	-6.341778932525596	39.47886602866918	436.54452740587294	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	14	6	0	12	12	12	22	22	6	single
200	0101000020DB0B0000C528B4F2D9EC5041885988981E154D41	202	CDDIS-ONS100SWE	3370666.688	0.000892145508815	711819.1489	0.000578322982355	5349788.2517	0.000614376543322	11.92454572686785	57.39533552718186	44.51065931189805	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	8	8	0	16	16	16	20	20	10	single
201	0101000020DB0B00009CEA9F240991514102C18A2B96355241	187	SWEPOS-0AMM	2502400.2647	0.011368158898467	727285.4104	0.014732547865719	5802472.3526	0.009326842227058	16.205720237098348	65.95819739231243	462.3772235624492	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	20	8	0	18	18	18	20	18	8	single
202	0101000020DB0B00009CB9AF8C4F885241F119E347BFF75241	188	SWEPOS-0JUO	2268172.2311	0.000778200467951	939546.3674	0.000960137494174	5867241.4583	0.001241727755302	22.500833720635367	67.43050847173292	253.8355266461149	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	30	8	0	20	22	20	22	20	10	single
203	0101000020DB0B000019BBC573529A4D415BF0212336CB4741	192	SEPTENTRIO-GENT	4012884.451	0.020067340893179	260145.8468	0.015927771538868	4934207.166	0.020831364832365	3.709160170901571	51.00879663855997	60.14069600403309	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SEPTENTRIO	1	1	0	0	1	0	0	0	0	0	0	0	20	20	0	single
204	0101000020DB0B000051C40DA085F2504115E5A26243855041	194	SWEPOS-0GRO	2927622.7224	0.007992029570585	639249.1524	0.005890872880333	5612311.1585	0.007209572289752	12.31726475162828	62.06033341590451	727.1159163815901	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	31	9	0	20	20	20	22	22	11	single
205	0101000020DB0B0000085D05D9242054414ECCD644CB525041	206	EUREF-VIR200FIN	2788251.0243	0.000437135617815	1454871.4969	0.000178614815845	5530279.3186	0.000448149908491	27.55494091149335	60.538784545384	37.00850390084088	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	31	13	0	22	22	22	22	21	13	single
206	0101000020DB0B0000E0B638A9E8EC50419A5122781D154D41	207	CDDIS-ONSA00SWE	3370658.8277	0.012592517616246	711877.4825	0.021796781070931	5349787.9468	0.011982070590592	11.925521978821394	57.39530105004573	46.60471540223807	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	CDDIS	1	1	0	0	1	\N	26	10	0	16	16	16	22	22	12	single
207	0101000020DB0B00001646AE7088A35041CDBA38FB471C4941	209	DTHL00DEU	3804723.2031	0.000417478593112	712265.2867	0.000578000118017	5052453.3635	0.000468629876867	10.60335644255446	52.72893723360487	151.36204463150352	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	22	4	16	12	12	12	24	24	10	single
208	0101000020DB0B0000692ED9E29D2851417A2CC10138834A41	210	DTBA00DEU	3634017.2987	0.000641948656444	820483.5852	0.000490505990076	5159724.9251	0.000438362986356	12.722841022784692	54.351941447337424	64.82518238574266	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	DT	1	1	1	100	1	\N	24	4	20	16	16	16	24	24	12	integrity
209	0101000020DB0B0000801CEF013E305041D6965C1D9A5E3B41	213	EUREF-UCAG00ITA	4885052.6596	0.000534557773347	783345.5016	0.000683463593064	4012044.5471	0.001634414412356	9.11014107592717	39.228033545612824	134.79746783152223	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	single
210	0101000020DB0B0000A9D5AC018AA15241C911035E2A685341	215	EUREF-HETT00FIN	2156252.6183	0.009157853007644	944971.3766	0.018338257817804	5908310.8917	0.00726537741395	23.665294782525315	68.40666872738998	403.7546378253028	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	EUREF	1	1	0	0	1	0	31	12	0	18	18	18	18	16	8	single
211	0101000020DB0B000097B8118B0AD04941BE6DF4F240FC4B41	205	OSNET-GIRA	3631308.204	0.033127908537827	-308605.6163	0.021653449794615	5216934.361	0.025481088310205	-4.857592235654169	55.24343793451927	65.23935537226498	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	OSNET	1	1	0	99	1	0	26	8	14	14	14	14	18	18	10	single
212	0101000020DB0B0000D0A0D52F44C35041466A75F4F72C4E41	208	SWEPOS-0GEB	3258523.7633	0.001048401830192	648815.4122	0.000742835619533	5426228.038	0.000646530758916	11.261073867490044	58.69190891491013	54.35688010323793	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	25	10	0	16	16	18	20	20	12	single
213	0101000020DB0B0000651E47C824F252414BBC52627D5B5241	211	SWEPOS-0HAP	2390141.5241	0.010655523087041	1070747.7912	0.015453237839401	5796168.2045	0.008067968699157	24.131668615340818	65.82806384765165	49.15632893051952	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	24	11	0	22	22	22	24	24	11	single
214	0101000020DB0B0000372CE796F812514141BCFED367254C41	212	SWEPOS-0MLE	3464704.2678	0.009820471287977	768050.4104	0.016899063387663	5281977.0915	0.010837433465723	12.499116781809379	56.28186623498456	59.01940160803497	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SWEPOS	1	1	0	99	1	0	22	10	0	16	16	16	20	20	10	single
215	0101000020DB0B000037C7D33F6CE04D41369F9344D58D4741	214	SEPTENTRIO-LEEU	4032185.4438	0.001059294599716	299938.8468	0.002275490918415	4916340.7134	0.00160580463788	4.254178798269541	50.75391615766094	90.24820333719254	eu_prod_update	file:///Users/dj/Documents/QGIS/CSV/EU/eu_prod_update.csv?type=csv&detectTypes=yes&xField=Longitude&yField=Latitude&crs=EPSG:4326&spatialIndex=no&subsetIndex=no&watchFile=no	SEPTENTRIO	1	1	0	0	1	0	20	10	0	12	12	12	20	20	10	single
\.


--
-- Data for Name: JPN_stations_v2; Type: TABLE DATA; Schema: backup; Owner: dj
--

COPY backup."JPN_stations_v2" (id_0, geom, id, "局番号", station, provider, pilot, commercial, access, sla, base, rover, "bds-b1", "bds-b2", "bds-b2a", "gal-e1", "gal-e5a", "gal-e5b", "gps-l1c", "gps-l2p", "gps-l5", "site name", "swift site", longitude, latitude, type) FROM stdin;
1	0101000020E61000005673AA046D2F604010037128E9534140	0456	950456	NGDSJPN-950456	NGDSJPN	1	1	0	99	1	0	0	0	0	14	14	14	16	16	12	\N	\N	129.4820578889	34.6555529167	single
2	0101000020E61000005E5AFECBF72960401EAA159C54224140	0457	950457	NGDSJPN-950457	NGDSJPN	1	1	0	99	1	0	0	0	0	12	10	10	16	16	12	\N	\N	129.3114986389	34.2682070833	single
3	0101000020E6100000847FCCA8AC4A6140004B6467959D4240	0241	950241	NGDSJPN-950241	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	138.3335765833	37.2311219444	single
4	0101000020E6100000F315CEBD89796040B086E6DEA59E4040	0473	950473	NGDSJPN-950473	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	131.7980641389	33.2394369722	single
5	0101000020E6100000791B80362E5E604064F01CC0B5254140	0408	950408	NGDSJPN-950408	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	130.9431412222	34.2946090833	single
6	0101000020E6100000A26C5BE6A5EA5F40686DD0DF0F183A40	1190	111190	NGDSJPN-111190	NGDSJPN	1	1	0	99	1	0	0	0	0	16	16	16	16	16	12	\N	\N	127.6663757222	26.0939922222	single
7	0101000020E610000096DD02B73DC66140B77F65A549113B40	2007	052007	NGDSJPN-052007	NGDSJPN	1	1	0	99	1	1	0	0	0	12	12	12	14	14	10	\N	\N	142.1950335556	27.06753	single
8	0101000020E61000001438BE1FB3C560403C925C5010A24040	1122	031122	NGDSJPN-031122	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	134.1781157222	33.2661228611	single
9	0101000020E610000042DA1AE825376140432A565F0E564140	1160	071160	NGDSJPN-071160	NGDSJPN	1	1	0	99	1	0	0	0	0	10.8	10.8	10.8	14.4	14.4	10.8	\N	\N	137.7233772778	34.6723136111	single
10	0101000020E6100000CE54884702E5614095AA7EF7BF004540	0019	940019	NGDSJPN-940019	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	143.15652825	42.0058583611	single
11	0101000020E6100000BAE14D2F6F8361404D0EB3A108014540	0021	940021	NGDSJPN-940021	NGDSJPN	1	1	0	99	1	0	0	0	0	10.8	10.8	10.8	12.6	12.6	9	\N	\N	140.1073223611	42.0080759167	single
12	0101000020E6100000FC05D648D6786140E9E2EC1EE4FB4340	0030	940030	NGDSJPN-940030	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	139.7761577778	39.9678991944	single
13	0101000020E6100000DD93CC10741C61408B5869AEF1B04240	0053	940053	NGDSJPN-940053	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	136.8891681667	37.3823755278	single
14	0101000020E61000004D32721676F86040301C52C4DEBD4040	0070	940070	NGDSJPN-940070	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	135.764415	33.4833608056	single
15	0101000020E610000038224ED5EC9E6040172CD505BC604040	0085	940085	NGDSJPN-940085	NGDSJPN	1	1	0	99	1	0	0	0	0	14	14	14	16	16	12	\N	\N	132.9664103056	32.755738	single
16	0101000020E6100000F67A3C539549604081E38D70BC433F40	0098	940098	NGDSJPN-940098	NGDSJPN	1	1	0	99	1	1	0	0	0	15.4	15.4	15.4	17.6	17.6	13.2	\N	\N	130.2994781667	31.2645941111	single
17	0101000020E61000009D9DC70239A16140037473FB52A34640	0102	950102	NGDSJPN-950102	NGDSJPN	1	1	0	99	1	0	0	0	0	14	14	14	18	18	12	\N	\N	141.0382093333	45.2759699167	single
18	0101000020E6100000618A2DDEA239624054088910F5AE4540	0119	950119	NGDSJPN-950119	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	145.8011313333	43.3668537778	single
19	0101000020E6100000E9B34839E5B06040B8CF16063F464140	0077	940077	NGDSJPN-940077	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	133.5279814167	34.5487983333	single
20	0101000020E61000004D998088A9FD6140CBBE2B827F724540	0112	950112	NGDSJPN-950112	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	143.9269449722	42.89451625	single
21	0101000020E6100000CF75AB3991AB61407F7EF3EC5F464540	0139	950139	NGDSJPN-950139	NGDSJPN	1	1	0	99	1	0	0	0	0	14	14	14	16	16	10	\N	\N	141.3614776944	42.5498024167	single
22	0101000020E610000091A52A446B506140AD53D14EE0284340	0232	950232	NGDSJPN-950232	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	138.5130940278	38.3193453333	single
23	0101000020E6100000BAB35BF48AE560400F141D254DE04140	0327	950327	NGDSJPN-950327	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	135.1732122222	35.7523542778	single
24	0101000020E6100000DACF7D10ADA7604016FEB16C84244240	0382	950382	NGDSJPN-950382	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	133.2398760278	36.2852912778	single
25	0101000020E61000004D7833F23B9060405E38A162CD974140	0386	950386	NGDSJPN-950386	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	132.5073176389	35.1859553611	single
26	0101000020E6100000156C08B791BE61408236947EA4BA4340	0167	950167	NGDSJPN-950167	NGDSJPN	1	1	0	99	1	0	0	0	0	10	10	10	18	16.6	12	\N	\N	141.9552874722	39.4581449722	single
27	0101000020E6100000D5415E0FA62F6040A9DE1AD82A663C40	0494	950494	NGDSJPN-950494	NGDSJPN	1	1	0	99	1	0	0	0	0	16	16	16	16	16	12	\N	\N	129.489021	28.39909125	single
28	0101000020E6100000D543EF2E4A676040D1AE0F22CAD43940	0497	950497	NGDSJPN-950497	NGDSJPN	1	1	0	99	1	0	0	0	0	16	16	16	16	16	12	\N	\N	131.2278055833	25.8312093056	single
29	0101000020E610000073088B38EC575F4069B7E0C4CCC03840	0498	950498	NGDSJPN-950498	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	125.3737927778	24.7531245278	single
30	0101000020E6100000713D0AD7A39C6140F38E537424874240	1	\N	JPIW00JPN	Swift	1	1	1	100	1	\N	36.1	16.1	16.1	14	14	14	16.1	16.1	12	JPN002029	JPIW	140.895	37.0558	integrity
31	0101000020E61000000AC5B189677161406C3F3AF1AC004240	2	\N	JPOG00JPN	Swift	1	1	1	100	1	\N	34	16	16	14	14	14	18	18	12	JPN002030	JPOG	139.5438889	36.00527778	integrity
32	0101000020E6100000AD23FDAC689A6140979AB1269EDD4140	3	\N	JPCH00JPN	Swift	1	1	1	100	1	\N	36.2	16	16	14	14	14	18	18	12	JPN002031	JPCH	140.8252778	35.73138889	integrity
33	0101000020E610000065428298BA7E61402E5A5FA8EC784140	8	\N	JPMB00JPN	Swift	1	1	1	100	1	\N	37.4	16.8	16	12	12	12	16	16	12	JPN002032	JPMB	139.9602778	34.94472222	integrity
34	0101000020E610000033333333335D6140DA7D5C5555E54240	9	\N	JPNG00JPN	Swift	1	1	1	100	1	\N	36	16	16	14	14	14	18	17.4	11.4	JPN002033	JPNG	138.9125	37.79166667	integrity
35	0101000020E610000073C8BC442B4A61401F27F15E5A6F4140	10	\N	JPYZ00JPN	Swift	1	1	1	100	1	\N	38	18	16	14	14	14	16	16	12	JPN002034	JPYZ	138.3177818	34.8699454	integrity
36	0101000020E6100000A4DFBE0E9C156140713D0AD7A3404140	11	\N	JPIS00JPN	Swift	1	1	1	100	1	\N	27.6	8.8	16	14	14	14	16	16	12	JPN002035	JPIS	136.6753	34.505	integrity
37	0101000020E61000009A779CA2233F6140CA54C1A8A41E4240	4	\N	JPMA00JPN	Swift	1	1	1	100	1	\N	36.8	18.2	16	12	12	12	16	16	12	JPN002036	JPMA	137.9731	36.2394	integrity
38	0101000020E61000002049A4C8B5136140C1AFCBCF114D4240	5	\N	JPKW00JPN	Swift	1	1	1	100	1	\N	34.6	16	16	14	14	14	18	18	12	JPN002037	JPKW	136.6159404	36.60210607	integrity
39	0101000020E610000067D5E76A2B026140295C8FC2F5D04140	6	\N	JPTG00JPN	Swift	1	1	1	100	1	\N	38.2	18	16	14	12.6	13.3	18	18	12	JPN002038	JPTG	136.0678	35.6325	integrity
40	0101000020E61000004B3E7617A8EC60402EA3FDB4F6314140	7	\N	JPKZ00JPN	Swift	1	1	1	100	1	\N	38.2	18	16	14	14	14	18	17.8	12	JPN002039	JPKZ	135.395519	34.3903414	integrity
41	0101000020E61000008B5C01D7466E6140CDA513ADBE074540	0527	960527	NGDSJPN-960527	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	139.4461474444	42.0605064722	single
42	0101000020E6100000A72084A652AE614042C0D758CDB34440	0533	960533	NGDSJPN-960533	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	10	\N	\N	141.4475891667	41.4047041944	single
43	0101000020E61000008A982D302F316040711C78B55CAE4040	0459	950459	NGDSJPN-950459	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	129.5370102778	33.36220425	single
44	0101000020E6100000AC2F3C7E510161402053F408F98A4140	0639	960639	NGDSJPN-960639	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	136.0411978889	35.0857249444	single
45	0101000020E6100000F78225CF938E6040049A99EB65214140	0666	960666	NGDSJPN-960666	NGDSJPN	1	1	0	99	1	0	0	0	0	10	10	10	16	16	12	\N	\N	132.4555431111	34.2609228611	single
46	0101000020E6100000A942E8C9D113604049346DF52F514040	0698	960698	NGDSJPN-960698	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	128.6193589722	32.6342760833	single
47	0101000020E61000006EE9EC3BEA606040EC632D19DAC03E40	0724	960724	NGDSJPN-960724	NGDSJPN	1	1	0	99	1	0	0	0	0	14	14	14	16	16	12	\N	\N	131.0285930278	30.7533279167	single
48	0101000020E6100000F8284DD2BE516040FA4C9BCD813C3E40	0728	960728	NGDSJPN-960728	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	130.5545436389	30.2363556389	single
49	0101000020E610000074FF822CED406040DADCF3A0025F3C40	0731	960731	NGDSJPN-960731	NGDSJPN	1	1	0	99	1	0	0	0	0	15.4	15.4	15.4	17.6	17.6	13.2	\N	\N	130.0289518889	28.3711338611	single
50	0101000020E61000005377208CF207604047659B40FEDB3A40	0737	960737	NGDSJPN-960737	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	128.2483578333	26.8593483333	single
51	0101000020E61000007C8F691B4EAF5F40B6DCCCB10B593A40	0743	960743	NGDSJPN-960743	NGDSJPN	1	1	0	99	1	0	0	0	0	14	14	14	16	16	12	\N	\N	126.7391422778	26.3478346944	single
52	0101000020E61000003460750DEFF25E40774628EDBE0F3840	0751	960751	NGDSJPN-960751	NGDSJPN	1	1	0	99	1	0	0	0	0	16	16	16	16	16	12	\N	\N	123.7958406111	24.0615070556	single
53	0101000020E61000002A9EE9D3B9426040137228FB23434040	0774	960774	NGDSJPN-960774	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	130.0851840556	32.5245355556	single
54	0101000020E6100000B235766044B56140718703690A134640	0783	970783	NGDSJPN-970783	NGDSJPN	1	1	0	99	1	0	0	0	0	14.1	14.1	14.1	18.1	18.1	12.1	\N	\N	141.6645967778	44.1487551944	single
55	0101000020E610000021B6CAC4EB306140ABD94DA89CC94140	0811	970811	NGDSJPN-970811	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	14	14	10	\N	\N	137.5287803611	35.5750933056	single
56	0101000020E6100000693B616391BE6140A472FF87CEC14640	0848	020848	NGDSJPN-020848	NGDSJPN	1	1	0	99	1	0	0	0	0	10.9	10.9	10.9	14.5	14.5	9.1	\N	\N	141.9552475833	45.5141153333	single
57	0101000020E6100000646038AEAAEB6140C82EF6BA63214640	0856	020856	NGDSJPN-020856	NGDSJPN	1	1	0	99	1	0	0	0	0	14	14	14	18	18	12	\N	\N	143.3645850278	44.2608560278	single
58	0101000020E61000002A45BCC7CA1F6240F829440853084640	0859	020859	NGDSJPN-020859	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	144.9935034444	44.0650339444	single
59	0101000020E6100000FEDA15D11A8C6140B8AF03E70CA94540	0875	020875	NGDSJPN-020875	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	10	\N	\N	140.3782735278	43.32070625	single
60	0101000020E61000000066A39C64896140198C6C8B948F4440	0897	020897	NGDSJPN-020897	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	10	\N	\N	140.2935317222	41.1217207222	single
61	0101000020E610000003C5B9D595756140A36C47B9BF594340	0932	020932	NGDSJPN-020932	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	14	14	10	\N	\N	139.6745403889	38.7011634444	single
62	0101000020E61000000C800CF4D4BB6040345F394C21BF4140	1016	021016	NGDSJPN-021016	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	133.8697452778	35.4932036667	single
63	0101000020E61000009C62FFC40A6F6040A28E44B035C93F40	1088	021088	NGDSJPN-021088	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	131.4700646389	31.7859754722	single
64	0101000020E61000001016FA891F706140DBA2E0337F0F4140	3059	93059	NGDSJPN-93059	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	139.5038499722	34.1210694167	single
65	0101000020E61000003B743553D45A614051384C86144E4140	3086	93086	NGDSJPN-93086	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	138.8384185833	34.6100013611	single
66	0101000020E6100000DF79730A8379614022614E7E5A8F4040	5113	95113	NGDSJPN-95113	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	12	\N	\N	139.7972461944	33.1199491389	single
67	0101000020E61000001CD2A8C049AF6140B3D812E826224340	S054	05S054	NGDSJPN-05S054	NGDSJPN	1	1	0	99	1	0	0	0	0	12.1	12.1	12.1	18.2	18.2	12.1	\N	\N	141.477753	38.2668123333	single
68	0101000020E610000000AF8A11DCB8614078CE7112AC264440	S063	07S063	NGDSJPN-07S063	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	16	16	10	\N	\N	141.7768638333	40.3021262222	single
69	0101000020E6100000F3A431830D1D6040D554E3DCD7D13B40	1208	141208	NGDSJPN-141208	NGDSJPN	1	1	0	99	1	0	0	0	0	16	16	16	16	16	12	\N	\N	128.9078994722	27.8197000556	single
70	0101000020E61000002A14448120BC5E40A13FEAF788723840	1211	151211	NGDSJPN-151211	NGDSJPN	1	1	0	99	1	1	0	0	0	16	16	16	16	16	12	\N	\N	122.9394839444	24.4474024722	single
71	0101000020E61000000098FCA14ADE6140DB301EAFADAA4540	1177	091177	NGDSJPN-091177	NGDSJPN	1	1	0	99	1	1	0	0	0	12	12	12	16	16	10	\N	\N	142.9466104444	43.3334254167	single
72	0101000020E6100000278925E54E9E61400C790437521E4340	1234	191234	NGDSJPN-191234	NGDSJPN	1	1	0	99	1	0	0	0	0	12	12	12	18	18	12	\N	\N	140.94713075	38.236884	single
74	0101000020E61000009038BFBCDBFA5F40F0B86E6B87CB4140	\N	\N	CDDIS-GAMG00KOR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	127.9196617	35.59007018	\N
87	0101000020E6100000162939CCBCEE5F40BD00B9CC823E4240	\N	\N	NGIIKOR-BOEN	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	127.7302733	36.48836669	\N
88	0101000020E6100000C2B11D424BC95F4027DF4B65FA224340	\N	\N	NGIIKOR-CHUL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	127.1452184	38.27326647	\N
89	0101000020E6100000273339102D166040D7268028399E4140	\N	\N	NGIIKOR-CHWN	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	128.6930009	35.23611933	\N
90	0101000020E6100000623722CEF9985F40C60B548C14DC4240	\N	\N	NGIIKOR-GANH	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.3902469	37.71937708	\N
91	0101000020E61000001AFA27B8D809604009E38663867D4140	\N	\N	NGIIKOR-GOSG-RTCM32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	128.307705	34.98066372	\N
92	0101000020E61000009D9328C5D80960400F7DDA55867D4140	\N	\N	NGIIKOR-GOSG	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	128.3077112	34.98066209	\N
93	0101000020E6100000B48707DE5AF25F40C95D420D78684240	\N	\N	NGIIKOR-GSAN	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	127.7867961	36.81616369	\N
94	0101000020E6100000DFFE5C3464ED5F40394BC101CA944140	\N	\N	NGIIKOR-HADG	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	127.709241	35.16241476	\N
95	0101000020E61000008C7F44B8EEAB5F40C38366D7BDB54240	\N	\N	NGIIKOR-INCH	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.6864453	37.419856	\N
96	0101000020E6100000D763C7EBE6B95F40759C91F7E0BB4040	\N	\N	NGIIKOR-JEJU	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.9047193	33.46780295	\N
97	0101000020E61000002E88ED93C81B6040D7112CB3ADE24240	\N	\N	NGIIKOR-KANR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	128.8682346	37.7709259	\N
98	0101000020E61000002A7288B839AF5F40909C333F8ADF4240	\N	\N	NGIIKOR-PAJU-RTCM32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.737898	37.74640646	\N
99	0101000020E610000065451ED239AF5F40303C1F338ADF4240	\N	\N	NGIIKOR-PAJU	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.7379041	37.74640502	\N
100	0101000020E6100000E318C91EA19F5F40E695A95161634240	\N	\N	NGIIKOR-SEOS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.494209	36.77640744	\N
101	0101000020E6100000509A17714BC65F402BB7FEA72CCF4240	\N	\N	NGIIKOR-SOUL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	127.0983546	37.6185503	\N
102	0101000020E6100000D43ABBC678C35F402BD6780244A34240	\N	\N	NGIIKOR-SUWN	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	127.0542466	37.27551299	\N
103	0101000020E610000060AE450B502D6040883C934781C04140	\N	\N	NGIIKOR-WOLS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	129.416021	35.5039453	\N
104	0101000020E6100000D865F84F372D6040F8F99408F97E4240	\N	\N	NGIIKOR-WULJ	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	129.413002	36.9919749	\N
105	0101000020E610000052B648DA0DA15F40869B429DA8A34140	\N	\N	NGIIKOR-YONK-RTCM32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.5164705	35.2785832	\N
106	0101000020E610000058E949F40DA15F4045C3BD8DA8A34140	\N	\N	NGIIKOR-YONK	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	126.5164767	35.27858135	\N
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add station	7	add_station
26	Can change station	7	change_station
27	Can delete station	7	delete_station
28	Can view station	7	view_station
29	Can add a p_ station	8	add_ap_station
30	Can change a p_ station	8	change_ap_station
31	Can delete a p_ station	8	delete_ap_station
32	Can view a p_ station	8	view_ap_station
33	Can add e u_ station	9	add_eu_station
34	Can change e u_ station	9	change_eu_station
35	Can delete e u_ station	9	delete_eu_station
36	Can view e u_ station	9	view_eu_station
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$600000$dwfniFiE1rvdwQnanZMqlj$+fHAzm9NWqeSYYcfAqexwV1cKIGvh4Od8C7uehmIRrM=	2023-10-03 22:58:46.788968-07	t	ericzdj			ericzdj0522@gmail.com	t	t	2023-10-03 22:58:20.313255-07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	geo_api	station
8	geo_api	ap_station
9	geo_api	eu_station
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-10-03 22:54:28.283653-07
2	auth	0001_initial	2023-10-03 22:54:28.372631-07
3	admin	0001_initial	2023-10-03 22:54:28.389697-07
4	admin	0002_logentry_remove_auto_add	2023-10-03 22:54:28.413833-07
5	admin	0003_logentry_add_action_flag_choices	2023-10-03 22:54:28.420572-07
6	contenttypes	0002_remove_content_type_name	2023-10-03 22:54:28.437332-07
7	auth	0002_alter_permission_name_max_length	2023-10-03 22:54:28.445701-07
8	auth	0003_alter_user_email_max_length	2023-10-03 22:54:28.470657-07
9	auth	0004_alter_user_username_opts	2023-10-03 22:54:28.476676-07
10	auth	0005_alter_user_last_login_null	2023-10-03 22:54:28.483063-07
11	auth	0006_require_contenttypes_0002	2023-10-03 22:54:28.484835-07
12	auth	0007_alter_validators_add_error_messages	2023-10-03 22:54:28.492012-07
13	auth	0008_alter_user_username_max_length	2023-10-03 22:54:28.516207-07
14	auth	0009_alter_user_last_name_max_length	2023-10-03 22:54:28.523746-07
15	auth	0010_alter_group_name_max_length	2023-10-03 22:54:28.531993-07
16	auth	0011_update_proxy_permissions	2023-10-03 22:54:28.540942-07
17	auth	0012_alter_user_first_name_max_length	2023-10-03 22:54:28.564036-07
18	geo_api	0001_initial	2023-10-03 22:54:28.690974-07
19	geo_api	0002_ap_station_eu_station	2023-10-03 22:54:28.770649-07
20	sessions	0001_initial	2023-10-03 22:54:28.814397-07
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7vvqim5gt4t4xzh053rvdmwg8okyvr52	.eJxVjMEOwiAQRP-FsyFslVI9evcbyMLuStVAUtqT8d9bkh7qYTLJvJn5Ko_LnPxSefIjqZsCdTpmAeObcwP0wvwsOpY8T2PQraJ3WvWjEH_ue_fvIGFN29qdTTAUgKMwW7fpIpbFWCPNr8TQRSvcowFC5wh4EMBu6NEiCKvfCh4ROX4:1qnuuE:pGyk4VRfoKRfaGFIxPWmHJ_O7WiPAw3QLkoiq8LpqrY	2023-10-17 22:58:46.791433-07
\.


--
-- Data for Name: geo_api_ap_station; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.geo_api_ap_station (id, station, geom, longitude, latitude, altitude, provider, pilot, commercial, access, sla, base, rover, stationtype, status) FROM stdin;
\.


--
-- Data for Name: geo_api_eu_station; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.geo_api_eu_station (id, station, geom, longitude, latitude, altitude, provider, pilot, commercial, access, sla, base, rover, stationtype, status) FROM stdin;
241	SAPOS-0153	0101000020E61000005734EF9B6F602C40CF587891ABB94940	14.18835151	51.45054835	174.6579291	SAPOS	1	1	1	100	1	0	\N	\N
242	SAPOS-0162	0101000020E61000009F8092A751A3284025F4661FCD164940	12.31898235	50.17813485	587.1499057	SAPOS	1	1	1	100	1	0	\N	\N
243	SAPOS-0164	0101000020E61000006D530283208D2D40BDA5F64B146F4940	14.77563867	50.86780691	375.0031583	SAPOS	1	1	1	100	1	0	\N	\N
244	SAPOS-0204	0101000020E61000001D6ED113E0D92840CAFA4A1D027E4940	12.4255377	50.98443953	286.506062	SAPOS	1	1	1	100	1	0	\N	\N
245	SAPOS-0211	0101000020E6100000A2C35B6B189F27405A3E6D4ABC4A4940	11.81073318	50.58387118	501.8025939	SAPOS	1	1	1	100	1	0	\N	\N
246	SAPOS-0214	0101000020E6100000B6A28B559CED2440DA1C2FBCF2994940	10.46408336	51.20272019	283.7508695	SAPOS	1	1	1	100	1	0	\N	\N
247	SAPOS-0215	0101000020E6100000EE6B0B6C215C2640DD4D4A14892D4940	11.17994249	50.35574583	465.2819264	SAPOS	1	1	1	100	1	0	\N	\N
248	SAPOS-0216	0101000020E6100000C2491E784A752440C591F5CDFE674940	10.22908378	50.81246352	315.0903782	SAPOS	1	1	1	100	1	0	\N	\N
249	SAPOS-0471	0101000020E610000034A50C547AFC22409CB48FD0DDA74940	9.493120791	51.31145675	250.9932781	SAPOS	1	1	1	100	1	0	\N	\N
250	SAPOS-0650	0101000020E61000004681758422E523407926E08DB8C24940	9.947528972	51.52125715	227.7106203	SAPOS	1	1	1	100	1	0	\N	\N
251	SAPOS-0672	0101000020E610000080F35E8CB3FF2540FDE0A294AE1D4A40	10.99941672	52.23189028	197.5785277	SAPOS	1	1	1	100	1	0	\N	\N
252	SAPOS-1072	0101000020E610000050D304DDA05A26407EFABB806F504A40	11.17700854	52.6284028	125.346938	SAPOS	1	1	1	100	1	0	\N	\N
258	SAPOS-1402	0101000020E61000003125DBBE1C0E2140F9229BE15A094840	8.527563061	48.07308598	790.6267458	SAPOS	1	1	1	100	1	0	\N	\N
259	SAPOS-2576	0101000020E610000039C77CEA9FA21C40B450C41687564940	7.158813156	50.67599759	128.5688058	SAPOS	1	1	1	100	1	0	\N	\N
260	SAPOS-2578	0101000020E6100000463CDBCEB76E1A409B51781719D54940	6.608123047	51.66482824	98.75519773	SAPOS	1	1	1	100	1	0	\N	\N
261	SAPOS-2592	0101000020E610000072937072D6851A40C3D80580A7514940	6.630700863	50.6379242	290.3310979	SAPOS	1	1	1	100	1	0	\N	\N
262	SAPOS-2593	0101000020E610000039AEB513FFD221408C65903F00244A40	8.912102333	52.28125758	120.6546894	SAPOS	1	1	1	100	1	0	\N	\N
263	SAPOS-2594	0101000020E6100000B90382F4A5451E4092D8C548B9834940	7.568015881	51.02909193	339.0722118	SAPOS	1	1	1	100	1	0	\N	\N
264	SAPOS-2596	0101000020E6100000528EA11A310C21400E1654F99F994940	8.523812134	51.20019452	737.9651506	SAPOS	1	1	1	100	1	0	\N	\N
265	SAPOS-2597	0101000020E610000090D5698196C92140B2921A753FCE4940	8.893726391	51.61131157	348.0190393	SAPOS	1	1	1	100	1	0	\N	\N
266	SAPOS-2600	0101000020E61000004371CD0B1AA72040C906D7B0F1D34940	8.326370591	51.65581332	143.4063109	SAPOS	1	1	1	100	1	0	\N	\N
267	SAPOS-3599	0101000020E61000001D752CD09DBF1D407F6CAA7A7A234A40	7.437125447	52.27717527	109.8236458	SAPOS	1	1	1	100	1	0	\N	\N
268	SAPOS-0017	0101000020E61000005DD9716836842C40463168DFE5884A40	14.2582276	53.06951516	61.01804155	SAPOS	1	1	1	100	1	0	\N	\N
269	SAPOS-0019	0101000020E6100000A2A8C85B8DE22B40C2038869BB214A40	13.94248473	52.26353187	92.33781732	SAPOS	1	1	1	100	1	0	\N	\N
270	SAPOS-0024	0101000020E6100000F47D173A9FA32B4046FE8EC5966A4A40	13.81957418	52.83272619	67.43925256	SAPOS	1	1	1	100	1	0	\N	\N
271	SAPOS-0025	0101000020E61000009932E4965EBC2740876985B742894A40	11.86790916	53.07234854	100.1734531	SAPOS	1	1	1	100	1	0	\N	\N
272	SAPOS-0030	0101000020E6100000249710BDD6152940D940203025374A40	12.54265395	52.43082239	75.96219687	SAPOS	1	1	1	100	1	0	\N	\N
273	SAPOS-0256	0101000020E6100000168EEE5A212E2740A7932BD70E124840	11.59009823	48.1410779	579.8016309	SAPOS	1	1	1	100	1	0	\N	\N
274	SAPOS-0257	0101000020E61000004911A649A5212940DD84E670E46F4840	12.56571417	48.87415897	390.1680325	SAPOS	1	1	1	100	1	0	\N	\N
275	SAPOS-0258	0101000020E61000004C65FE8F1B032740B46935F11C444840	11.50606966	48.53213325	494.6542109	SAPOS	1	1	1	100	1	0	\N	\N
276	SAPOS-0259	0101000020E6100000F775C7FF70C92540B26BA2BA852F4840	10.89344024	48.37126859	556.8480131	SAPOS	1	1	1	100	1	0	\N	\N
277	SAPOS-0266	0101000020E6100000D798AD488E522840ECAA8BFA15454840	12.16124179	48.53973324	447.8849147	SAPOS	1	1	1	100	1	0	\N	\N
278	SAPOS-0267	0101000020E61000006F5E6ABE29C8254026F02EEEC9F14840	10.89094348	49.88897493	304.7833633	SAPOS	1	1	1	100	1	0	\N	\N
279	SAPOS-0272	0101000020E6100000F3F2F8E6CC362840C73174310CEF4740	12.10703203	47.86755961	521.9659692	SAPOS	1	1	1	100	1	0	\N	\N
280	SAPOS-0279	0101000020E6100000E4133E9D23E526401A0E963E2BA44840	11.44753734	49.28256972	480.9835681	SAPOS	1	1	1	100	1	0	\N	\N
281	SAPOS-0280	0101000020E61000001A4BAA19C6372840BDB0E839ACA94840	12.10893326	49.32556843	425.3412511	SAPOS	1	1	1	100	1	0	\N	\N
282	SAPOS-0285	0101000020E6100000292FD891134926404EE916662FC14740	11.14272743	47.509259	1827.938522	SAPOS	1	1	1	100	1	0	\N	\N
283	SAPOS-0287	0101000020E6100000F4AB723456402240A349A7CE18FA4840	9.125657691	49.95388206	173.4803586	SAPOS	1	1	1	100	1	0	\N	\N
284	SAPOS-0289	0101000020E6100000B026DB023A7C24407F784C2C0E064940	10.24263009	50.04730753	282.2804755	SAPOS	1	1	1	100	1	0	\N	\N
285	SAPOS-0296	0101000020E610000011AB50EE884A294072FDD672F1EE4740	12.64557595	47.86674343	643.4262693	SAPOS	1	1	1	100	1	0	\N	\N
286	SAPOS-0391	0101000020E6100000104B9AA4D19A23400B192E5EF84A4840	9.802380699	48.58570459	736.3964833	SAPOS	1	1	1	100	1	0	\N	\N
287	SAPOS-0392	0101000020E61000001CFF7A8F77572340F920C342E8CF4840	9.670834049	49.62427554	247.4720529	SAPOS	1	1	1	100	1	0	\N	\N
1	ARAA00ARE	0101000020E61000005E28B94139D74B40D8A4D45FBC433840	55.68143483677772	24.26459312810969	270.67729306034744	swift	1	1	1	100	1	0	\N	\N
2	ARAD00ARE	0101000020E6100000DB344E02AF414B402E3B350B8A693840	54.51315335100817	24.41226264471794	-25.21645907312632	swift	1	1	1	100	1	0	\N	\N
3	ARAM00ARE	0101000020E61000001587FE75E1BB4A403B6BE9DA200D3840	53.467818021088696	24.051282593268787	-13.91679142601788	swift	1	1	1	100	1	0	\N	\N
4	ARDE00ARE	0101000020E61000007504B80E39494A40249DCA91D22D3840	52.57205375657295	24.178994299384133	1.6320266807451844	swift	1	1	1	100	1	0	\N	\N
5	ARDU00ARE	0101000020E610000051FD070975A94B40ECB8BA8387483940	55.32388413324463	25.28331780177508	-25.849275460466743	swift	1	1	1	100	1	0	\N	\N
6	ARFU00ARE	0101000020E61000009EF6E56FE92C4C400D8643E901183940	56.350873935019294	25.09377917601125	-13.011098369956017	swift	1	1	1	100	1	0	\N	\N
7	ARJA00ARE	0101000020E6100000525FA05F9B104B404E4FAB8E41073740	54.12974162417108	23.028344089071485	105.5588971665129	swift	1	1	1	100	1	0	\N	\N
8	ARRG00ARE	0101000020E6100000F8900DB379D04940B4FB9F06663F3840	51.62871397173325	24.247650555179508	-17.350615888834	swift	1	1	1	100	1	0	\N	\N
9	ARWM00ARE	0101000020E6100000E23D4D8582B44A4061385945E4F53640	53.41023317596025	22.96051440144626	110.35707743186504	swift	1	1	1	100	1	0	\N	\N
10	ATFS00AUT	0101000020E610000037FBF124F8153040FD9201F8F3844740	16.085817631795372	47.03869534008419	325.4614807544276	swift	1	1	1	100	1	0	\N	\N
11	ATGD00AUT	0101000020E6100000F7F4196749FC2D407AE18069D8604840	14.992747518461767	48.75660437730183	575.7128350017592	swift	1	1	1	100	1	0	\N	\N
12	ATHB00AUT	0101000020E6100000ADE28A7CA0713040A97CB5E4FA094840	16.44385507956274	48.07796916239669	234.73567405249923	swift	1	1	1	100	1	0	\N	\N
13	ATHL00AUT	0101000020E61000005A5839AF8E962940A023A846736E4740	12.794057346105712	46.8628929484514	1852.9331074105576	swift	1	1	1	100	1	0	\N	\N
14	ATJB00AUT	0101000020E61000008B395A63FCEE2540124937AC91784740	10.966769318355333	46.94194558256497	3096.1205770634115	swift	1	1	1	100	1	0	\N	\N
15	ATKA00AUT	0101000020E610000070B4254F35A42C40E47A5E70584F4740	14.32071921668304	46.6198864464133	508.3021726422012	swift	1	1	1	100	1	0	\N	\N
16	CZOL00CZE	0101000020E61000008A1071D98B443140B16AE51B65CB4840	17.26775893221251	49.58902310407924	280.7518227491528	swift	1	1	1	100	1	0	\N	\N
17	CZPA00CZE	0101000020E610000059BBEA5D0CEE2C402AE6D03EE6104940	14.464938101676736	50.13202653428743	384.7487207241357	swift	1	1	1	100	1	0	\N	\N
18	DNBR00DNK	0101000020E6100000A590C700C4EA234080ADA74DECAD4C40	9.958526634560544	57.35877390740729	75.32639734447002	swift	1	1	1	100	1	0	\N	\N
19	DTBA00DEU	0101000020E61000004BE7F64F1872294026E8256E0C2D4B40	12.72284173859556	54.35194184380385	64.83684823289514	swift	1	1	1	100	1	0	\N	\N
20	DTBN00DEU	0101000020E6100000B36F2C5F5D982A404C3BC3E4AE494A40	13.2975873700851	52.57564983173886	99.92518259584904	swift	1	1	1	100	1	0	\N	\N
21	DTBR00DEU	0101000020E6100000B7299B43FC292740D806E5161CFA4840	11.582002747240823	49.95398222455271	426.55053805653006	swift	1	1	1	100	1	0	\N	\N
22	DTDD00DEU	0101000020E6100000F66E08C5CC992B40ECB7449A3F814940	13.800390393523664	51.00975350050528	179.1014016037807	swift	1	1	1	100	1	0	\N	\N
23	DTDS00DEU	0101000020E610000002662A368FDB1A4038B29CE1189F4940	6.7144134963396	51.24294681973209	107.42960100062191	swift	1	1	1	100	1	0	\N	\N
24	DTFB00DEU	0101000020E6100000F0318E11BBE2224034C352BB68624B40	9.442833469970502	54.76882116092711	108.06661287136376	swift	1	1	1	100	1	0	\N	\N
25	DTGB00DEU	0101000020E610000051A06E801A62224084372928FAFF4840	9.191608441833669	49.99982168519608	196.13682258781049	swift	1	1	1	100	1	0	\N	\N
26	DTHL00DEU	0101000020E6100000F66AEE38EB342540C89305D44D5D4A40	10.603357104400391	52.7289376309671	151.3775275303051	swift	1	1	1	100	1	0	\N	\N
27	DTHR00DEU	0101000020E6100000033375B6E56C2040CAD9F3F6415F4940	8.212690069014121	50.74420058453115	327.3197615388781	swift	1	1	1	100	1	0	\N	\N
28	DTHT00DEU	0101000020E61000005BCB48420F892540CDB6FC18BBC64940	10.767694541345628	51.5525847685416	267.44926168210804	swift	1	1	1	100	1	0	\N	\N
29	DTIF00DEU	0101000020E6100000D45D9A714C03254063E09AD6A0DA4740	10.506442594617438	47.70803339915733	869.5957432258874	swift	1	1	1	100	1	0	\N	\N
30	DTKM00DEU	0101000020E6100000EBD23004F9BD274061DFE3322D754840	11.87104046913142	48.91544186098318	403.4978757696226	swift	1	1	1	100	1	0	\N	\N
31	DTMB00DEU	0101000020E6100000C71A9AF7038922401ECAEE95A7784840	9.26760839229736	48.94261431231005	287.86381542123854	swift	1	1	1	100	1	0	\N	\N
32	DTMH00DEU	0101000020E6100000035600EBCD511F40181425A3CBFB4740	7.82988707723189	47.96715202040917	344.04778539948165	swift	1	1	1	100	1	0	\N	\N
33	DTND00DEU	0101000020E6100000B06597F72E981B404766D4923AED4840	6.898616665473513	49.8533500261317	213.02058966178447	swift	1	1	1	100	1	0	\N	\N
34	DTOB00DEU	0101000020E610000086BD60C9122820409320068962244A40	8.07826833063042	52.28425705975638	135.98880817182362	swift	1	1	1	100	1	0	\N	\N
35	DTPW00DEU	0101000020E6100000517D22AFD8FB2B409D0FE4A9E1C04A40	13.991887543640276	53.50688670998576	64.72222315240651	swift	1	1	1	100	1	0	\N	\N
36	DTSW00DEU	0101000020E61000000F57EE056BEC2640002242EDB0CC4A40	11.461754021972896	53.59914937946909	117.21438215207309	swift	1	1	1	100	1	0	\N	\N
37	DTVD00DEU	0101000020E6100000AEEEB79CA5602A40E4E995881D504840	13.188763520672492	48.625901295512165	382.0459015443921	swift	1	1	1	100	1	0	\N	\N
38	DTVR00DEU	0101000020E610000095F2A99516462040F9FF9D078EB24A40	8.136891057010223	53.394959406492106	59.94579975306988	swift	1	1	1	100	1	0	\N	\N
39	DTWL00DEU	0101000020E6100000ED53B714C507214060AB79FF13A04840	8.515175483111273	49.25061029230852	161.67963760439306	swift	1	1	1	100	1	0	\N	\N
40	DTWR00DEU	0101000020E6100000D0DBE0B0D2A326401F996973607F4940	11.3199668192373	50.99513094859799	307.14111011940986	swift	1	1	1	100	1	0	\N	\N
41	DNAB00DNK	0101000020E61000009542FF5A3C542440294C08A12C144C40	10.16452297559708	56.15761197192072	80.19286218378693	swift	1	1	1	100	1	0	\N	\N
42	DNHS00DNK	0101000020E6100000A0DE9E5FC83D21401BCE4141512E4C40	8.620669353621736	56.36185470497151	74.56052151788026	swift	1	1	1	100	1	0	\N	\N
43	DNSO00DNK	0101000020E610000000A86E6C0E1F2740A4E42D8187B74B40	11.560656918056338	55.43382277444088	89.22721974086016	swift	1	1	1	100	1	0	\N	\N
44	ESAC00ESP	0101000020E6100000D7CFEA785F28E0BF391966DF0A304340	-0.5049283372559267	38.37533181463216	147.10557712987065	swift	1	1	1	100	1	0	\N	\N
45	ESAM00ESP	0101000020E610000050EFF2BBCD5A03C0ECB79FD2BF704240	-2.4193377192986314	36.88085397414271	140.05933520570397	swift	1	1	1	100	1	0	\N	\N
46	ESBN00ESP	0101000020E610000077625C7B65380640C78DE541790E4540	2.777537311322072	42.11307548831531	198.55687383841723	swift	1	1	1	100	1	0	\N	\N
47	ESCB00ESP	0101000020E6100000C4D45C92B73313C08E160A37A7EC4240	-4.800504958072628	37.848853004656746	153.86355203855783	swift	1	1	1	100	1	0	\N	\N
48	ESCD00ESP	0101000020E6100000737FC72FADA218C08112829E45574240	-6.158863779593832	36.68181211702565	75.50806604512036	swift	1	1	1	100	1	0	\N	\N
49	ESCM00ESP	0101000020E61000005CB57CBFF2B70EC0FA768ED1DCB74540	-3.8398184738095327	43.436426353567946	67.16113125346601	swift	1	1	1	100	1	0	\N	\N
50	ESCO00ESP	0101000020E6100000DA9BEC74C3A120C0DF2C89743BA94540	-8.315944341547874	43.32212693461011	144.31543313711882	swift	1	1	1	100	1	0	\N	\N
51	ESCU00ESP	0101000020E61000006EA1E5AE3ABEFBBFF4D824B62DF94340	-1.7339426834024247	39.94670751112873	1039.5116650043055	swift	1	1	1	100	1	0	\N	\N
52	ESEI00ESP	0101000020E6100000241F85F94F49F93FD58A5B5869804340	1.580398535430454	39.00321488607189	74.57803305238485	swift	1	1	1	100	1	0	\N	\N
53	ESGC00ESP	0101000020E61000003D19C04BB6D92EC0FCF5401448DD3B40	-15.425218932342084	27.86438110275436	102.5051077324897	swift	1	1	1	100	1	0	\N	\N
54	ESGU00ESP	0101000020E6100000D0D8CCA1DD8104C0C58D089092954440	-2.56341101080316	41.1685352428166	1284.1525867432356	swift	1	1	1	100	1	0	\N	\N
55	ESHU00ESP	0101000020E6100000DA770571639B1DC0C90C448C919C4240	-7.401746526678807	37.2231917780367	104.77144938427956	swift	1	1	1	100	1	0	\N	\N
56	ESME00ESP	0101000020E61000004B80A70F69B119C074A4960208BE4340	-6.42325233898016	39.48461945627938	470.88724895287305	swift	1	1	1	100	1	0	\N	\N
57	ESMG00ESP	0101000020E61000007DD3EF885CFE11C0747DC3F8FE504240	-4.498399867666078	36.63278112830263	95.31619084067644	swift	1	1	1	100	1	0	\N	\N
58	ESML00ESP	0101000020E61000007E44AA71CE4105407CAD260C2BCD4340	2.6571320419394	39.60287621141151	107.49620464909822	swift	1	1	1	100	1	0	\N	\N
59	ESMR00ESP	0101000020E6100000CECE3D30CAD60E4088214DD4F0004440	3.854877831350541	40.00734953387112	83.15541211888194	swift	1	1	1	100	1	0	\N	\N
60	ESMU00ESP	0101000020E61000006BE52D3D497CF2BFE98A3C23DCF94240	-1.1553432836356852	37.952030575554055	112.77135229296982	swift	1	1	1	100	1	0	\N	\N
61	ESMZ00ESP	0101000020E610000033CBE6C1DB710CC00F04A9939C414340	-3.555594935279621	38.51259085222452	885.1645529102534	swift	1	1	1	100	1	0	\N	\N
62	ESNM00ESP	0101000020E6100000151C83C0E80012C0503F445BF3F64340	-4.500887878420164	39.92930165818216	572.0832126513124	swift	1	1	1	100	1	0	\N	\N
63	ESOV00ESP	0101000020E61000008AD10D010BBD17C00C6A5572ADC54540	-5.934612289875425	43.54435567590289	149.26956020016223	swift	1	1	1	100	1	0	\N	\N
64	ESSC00ESP	0101000020E61000006B3C54CED02721C011678C749E334540	-8.577764938147281	42.4032731767382	377.8463563444093	swift	1	1	1	100	1	0	\N	\N
65	ESSE00ESP	0101000020E6100000B8003C678D2AB2BF22F1A85EACFC4340	-0.070961797431674	39.97401031463127	108.34997193235904	swift	1	1	1	100	1	0	\N	\N
66	ESTA00ESP	0101000020E61000007798B7F77C32F13FD43C5DB94D944440	1.0748262096836032	41.15862195694535	208.38689972367132	swift	1	1	1	100	1	0	\N	\N
67	ESVA00ESP	0101000020E6100000CCF480CF75CE12C01B5C1C3BBACF4440	-4.701621286626681	41.62287082216804	777.6521751508117	swift	1	1	1	100	1	0	\N	\N
68	ESVI00ESP	0101000020E61000005716FF48306607C011C901A386584540	-2.9248967841001976	42.6916087930266	532.6043971534818	swift	1	1	1	100	1	0	\N	\N
69	ESZA00ESP	0101000020E610000025996B57D7FAE8BF15FDC9A561D34440	-0.7806202609470282	41.651417474739006	269.1498013390228	swift	1	1	1	100	1	0	\N	\N
70	FIHA00FIN	0101000020E6100000A4598CBF392F3840F7E59E8CDE755040	24.184474918141543	65.84170833240718	33.15386461652815	swift	1	1	1	100	1	0	\N	\N
71	FIII00FIN	0101000020E61000003EFDC395B6303B4092EDD43718C94F40	27.190286026333755	63.57105157879408	127.89508460275827	swift	1	1	1	100	1	0	\N	\N
72	FIKL00FIN	0101000020E6100000441BC88A62F2374001DB96EBA2105040	23.94681613336003	64.25994386538994	45.3242506030947	swift	1	1	1	100	1	0	\N	\N
73	FIKM00FIN	0101000020E61000003C25ED3601633B403FD05A20D5AD5040	27.38673728265461	66.71613320334282	186.42275836132467	swift	1	1	1	100	1	0	\N	\N
74	FIMU00FIN	0101000020E61000009195DC4922AD374099A2B751CFFD5040	23.67630445132596	67.96577876130465	284.5391300627962	swift	1	1	1	100	1	0	\N	\N
75	FINA00FIN	0101000020E610000037AEF5F96C583540037077BADD3C4F40	21.34541284797725	62.47551661463479	29.474699150770903	swift	1	1	1	100	1	0	\N	\N
76	FIEK00FIN	0101000020E6100000FCC119193E7A37401EC3ECE8B3FE4D40	23.47751004103519	59.989865414800455	39.44705576635897	swift	1	1	1	100	1	0	\N	\N
77	FIIV00FIN	0101000020E61000002A682977DD8B3B402531A1F294295140	27.546348044976348	68.64971605154467	159.0872371941805	swift	1	1	1	100	1	0	\N	\N
78	FIJM00FIN	0101000020E6100000E9849740CF2B39404CC51F120BF64E40	25.17113116931152	61.92221285528209	125.026047764346	swift	1	1	1	100	1	0	\N	\N
79	FIJO00FIN	0101000020E6100000792A40DBF2BD3D409C7446BD934C4F40	29.74198694531013	62.59825864866438	120.53718197066335	swift	1	1	1	100	1	0	\N	\N
80	FILA00FIN	0101000020E6100000F6F1C6C0F57F3C40F2A3F62D128F4E40	28.49984364373265	61.11774229709438	128.41498387698084	swift	1	1	1	100	1	0	\N	\N
81	FILV00FIN	0101000020E61000004E86AAEF68F23940547E1D7574404E40	25.94691369927596	60.50355400175052	28.147040938027203	swift	1	1	1	100	1	0	\N	\N
82	FISU00FIN	0101000020E6100000C87B187D6FEA3C40AADE435F7F385040	28.915763681867062	64.88277417899981	229.33440396003425	swift	1	1	1	100	1	0	\N	\N
83	FITA00FIN	0101000020E61000006D6922C50EC5374020C1F9C842BE4E40	23.76975662317402	61.48641311970705	131.10738609917462	swift	1	1	1	100	1	0	\N	\N
84	FIUU00FIN	0101000020E6100000FFA5C4A6E56B35403F121ABFEC664E40	21.42147295285212	60.8040999309955	37.7397103626281	swift	1	1	1	100	1	0	\N	\N
85	FRAB00FRA	0101000020E6100000881B9FF2380AFD3F1D01075767144940	1.8149957158472896	50.15940368807632	105.13241918571292	swift	1	1	1	100	1	0	\N	\N
86	FRAR00FRA	0101000020E6100000F0F5FD709E200C40EEC24E883DC44840	3.515927202940238	49.53312782462732	232.90893628727645	swift	1	1	1	100	1	0	\N	\N
87	FRBD00FRA	0101000020E61000004EA35F9B43A71440EBC24A76D6634840	5.16334383746364	48.77998236665842	296.8337543476373	swift	1	1	1	100	1	0	\N	\N
88	FRBY00FRA	0101000020E61000003ADE9870678EF6BF8FD0F4CC5BC34540	-1.4097666166616285	43.52623903756677	88.76527763903141	swift	1	1	1	100	1	0	\N	\N
89	FRCB00FRA	0101000020E6100000C7F8429A48F6F7BF89C30C936EC04840	-1.4976278329700572	49.50337446653312	85.63598592020571	swift	1	1	1	100	1	0	\N	\N
90	FRCH00FRA	0101000020E6100000883BD9D27A68E13F5E72B44B856B4740	0.5440038793693572	46.840005366642885	106.83989691734314	swift	1	1	1	100	1	0	\N	\N
91	FRDI00FRA	0101000020E61000006BC34AD7690A144070D6612D9EA64740	5.010169376314347	47.30170219119873	333.29856426641345	swift	1	1	1	100	1	0	\N	\N
92	FRDL00FRA	0101000020E6100000B4EFAD6D361D054028DB18FA04454840	2.6392639702516685	48.53921438770868	129.8734153555706	swift	1	1	1	100	1	0	\N	\N
93	FRDU00FRA	0101000020E6100000D40A40B5FBEF0140FA99E44528674940	2.242179313675801	50.805916537918094	56.13121313322336	swift	1	1	1	100	1	0	\N	\N
94	FRGE00FRA	0101000020E6100000B19265952C521A40EABEAD8752324740	6.580248197865033	46.39314361974638	564.341665907763	swift	1	1	1	100	1	0	\N	\N
95	FRHR00FRA	0101000020E6100000BAAA186290E41940941BFC4D78944540	6.473207028155847	43.15992141130073	178.81775556970388	swift	1	1	1	100	1	0	\N	\N
96	FRHV00FRA	0101000020E6100000D9D26097589CC33FB921DF41A9C04840	0.1532088030959539	49.50516532644043	163.4696474513039	swift	1	1	1	100	1	0	\N	\N
97	FRLA00FRA	0101000020E61000007B022E758AE4DC3FA49F91505AA14540	0.4514490265210425	43.26056869195722	427.3834154913202	swift	1	1	1	100	1	0	\N	\N
98	FRLM00FRA	0101000020E6100000229145928256D13FC73FE623CD014840	0.2709051540789571	48.01407288671416	115.80700915120542	swift	1	1	1	100	1	0	\N	\N
99	FRLO00FRA	0101000020E610000077D5CA40FEE70AC0D284AA7476DD4740	-3.3632779180431367	47.73017748564283	70.96008088625968	swift	1	1	1	100	1	0	\N	\N
100	FRMG00FRA	0101000020E6100000D938471FFBB71140F365C1CC8EE34540	4.429668892595342	43.77779541000584	147.52817677799612	swift	1	1	1	100	1	0	\N	\N
101	FRMO00FRA	0101000020E610000005604192CBA40440013FC02E4D2C4740	2.5804664064598906	46.346105430860014	294.2159151760861	swift	1	1	1	100	1	0	\N	\N
102	FRNA00FRA	0101000020E6100000F1D58623DD760940A3DB0C9A37AB4540	3.183038976242407	43.337634336354405	91.17355669103564	swift	1	1	1	100	1	0	\N	\N
103	FRNI00FRA	0101000020E610000054F003A2F67C1C40D12EB498B2D34540	7.122034579744726	43.65388783783178	157.89984445273876	swift	1	1	1	100	1	0	\N	\N
104	FRPE00FRA	0101000020E610000095F5CE34CA58E63FA626C79C45994640	0.6983386069693265	45.19743690688368	163.86497985944152	swift	1	1	1	100	1	0	\N	\N
105	FRPT00FRA	0101000020E61000003CD717D8B0EDF5BF4B939431E1454840	-1.3705299798143258	48.54593486901647	139.27428151667118	swift	1	1	1	100	1	0	\N	\N
106	FRRO00FRA	0101000020E6100000B98150E2817E0440AE9D9AD6F12D4640	2.561771171647901	44.35894282404206	641.6779073774815	swift	1	1	1	100	1	0	\N	\N
107	FRSG00FRA	0101000020E61000007E8967F570DCFEBFFEBDA93A40594740	-1.928818663226224	46.69727262225727	78.48690097313374	swift	1	1	1	100	1	0	\N	\N
108	GBCC00GBR	0101000020E61000004D51DE6DF98AF23FD7C0FCCA6EE54940	1.158929280446574	51.792443634245394	70.46124572865665	swift	1	1	1	100	1	0	\N	\N
109	GBCD00GBR	0101000020E61000004FAED89FE9A012C0BF71A76FA80A4A40	-4.657141206360011	52.08326526594439	72.48035525437444	swift	1	1	1	100	1	0	\N	\N
110	GBCT00GBR	0101000020E6100000BCF90A0A92F29FBF29D2683CFCC74A40	-0.0311987703923861	53.56238513338445	66.21846272516996	swift	1	1	1	100	1	0	\N	\N
111	GBDB00GBR	0101000020E6100000A43801678F8F0EC0AA86EDDB50774B40	-3.8200977370498417	54.93215512579128	75.67254519928247	swift	1	1	1	100	1	0	\N	\N
112	GBGY00GBR	0101000020E6100000193CF5F06697FB3F3FEC6062714E4A40	1.7244634067935776	52.61283521647962	65.52964528184384	swift	1	1	1	100	1	0	\N	\N
113	GBKS00GBR	0101000020E6100000675098E057B403C00183CC1FA3D24B40	-2.463058237694036	55.64560315794999	208.097620729357	swift	1	1	1	100	1	0	\N	\N
114	GBLH00GBR	0101000020E610000091BB861174E7F3BFD6E3C9F5BF474B40	-1.244007175886253	54.56054565986892	72.09099617041647	swift	1	1	1	100	1	0	\N	\N
115	GBLP00GBR	0101000020E610000044E32C59A44C08C09B435DEAB0AF4A40	-3.037422844583856	53.372586534516174	109.13166534341872	swift	1	1	1	100	1	0	\N	\N
116	GBNQ00GBR	0101000020E61000004A73CDE1700C14C0C204A6E0FC2C4940	-5.012149360813812	50.35146721288834	159.52394496556371	swift	1	1	1	100	1	0	\N	\N
117	GBOB00GBR	0101000020E6100000E67C107821E715C0D8FB2C547C344C40	-5.475713611608828	56.410044216105376	82.05020836833864	swift	1	1	1	100	1	0	\N	\N
118	GBPH00GBR	0101000020E6100000E2072E799282FCBFAEA3792121C14C40	-1.781877969130158	57.50882357238356	73.09148144349456	swift	1	1	1	100	1	0	\N	\N
119	GBSA00GBR	0101000020E6100000FFF2D0A46E530BC0426725B3A6B34940	-3.415738380076055	51.40352477661217	94.73777388967574	swift	1	1	1	100	1	0	\N	\N
120	GBTA00GBR	0101000020E6100000AD129387B13B10C03D1843D4B7E74C40	-4.058294409133552	57.8102975221319	103.8621032834053	swift	1	1	1	100	1	0	\N	\N
121	GBUS00GBR	0101000020E61000008651BCBEB1C101C05CBE2D531C084A40	-2.219577303049113	52.06336441047964	69.58085353113711	swift	1	1	1	100	1	0	\N	\N
122	HUBU00HUN	0101000020E6100000390CAE04DF4C33409D710D7D6CD14740	19.30027798890316	47.63612330963077	258.71992989163846	swift	1	1	1	100	1	0	\N	\N
123	HUNY00HUN	0101000020E6100000BEF8EA1784BB354021EC13A217F74740	21.73248433577168	47.930408729159694	168.07127506285906	swift	1	1	1	100	1	0	\N	\N
124	HUSZ00HUN	0101000020E6100000646593913D2A3440034A0149621F4740	20.16500196312463	46.24518692976507	155.67461348790675	swift	1	1	1	100	1	0	\N	\N
125	HUVE00HUN	0101000020E6100000DADF678ABD0A3240DAC8DDCCBD724740	18.041954660758943	46.896417248246976	181.8170576542616	swift	1	1	1	100	1	0	\N	\N
126	IRBA00IRL	0101000020E61000003872F9A99DBB22C00F5E1D119B234B40	-9.366437255573246	54.27816976704746	125.39852585177869	swift	1	1	1	100	1	0	\N	\N
127	IRCO00IRL	0101000020E6100000ADAE1A9D242A22C0479BA2A044F34940	-9.082310590273972	51.900531847172985	238.0589798176661	swift	1	1	1	100	1	0	\N	\N
128	IRDU00IRL	0101000020E610000087BE115FBEDA18C0EE139242B6CC4A40	-6.213616834123636	53.59931213737659	105.72206839360295	swift	1	1	1	100	1	0	\N	\N
129	IREN00IRL	0101000020E610000041949F4637D822C0E525163A056D4A40	-9.422296721439242	52.85172201480399	89.61914236471057	swift	1	1	1	100	1	0	\N	\N
130	IRLD00IRL	0101000020E6100000F1AF403826971CC0B3DCAF0AC79E4B40	-7.147606734226415	55.24044927408538	121.12282487284392	swift	1	1	1	100	1	0	\N	\N
131	IRWA00IRL	0101000020E61000008A91D618893C1DC0BB93CF669E264A40	-7.309116733642794	52.30170903592254	75.73811965528876	swift	1	1	1	100	1	0	\N	\N
132	ITAL00ITA	0101000020E61000005D44F10C39B420400AAAD08D5D524440	8.35199776120333	40.64348004697548	78.37771289423108	swift	1	1	1	100	1	0	\N	\N
133	ITAN00ITA	0101000020E6100000B6E277B8BF422A4078A2F2B65AE04540	13.130368961939311	43.7527683962766	72.6161566823721	swift	1	1	1	100	1	0	\N	\N
134	ITAP00ITA	0101000020E610000025E3D1680E471D40A195C5D676614640	7.319390905199526	44.76143918178565	416.1233229255304	swift	1	1	1	100	1	0	\N	\N
135	ITAZ00ITA	0101000020E61000005450A7BB8A7A2740D2402C210BAB4540	11.739339698957489	43.33627715321298	322.702794178389	swift	1	1	1	100	1	0	\N	\N
136	ITBI00ITA	0101000020E6100000D76171E5B4193140AF11427A0F784440	17.100416507893748	40.93797234436691	269.80038677714765	swift	1	1	1	100	1	0	\N	\N
137	ITCA00ITA	0101000020E61000009673C1868D1D2240BF8F5824A6A84340	9.057720385660826	39.31757025791192	111.31227790005504	swift	1	1	1	100	1	0	\N	\N
138	ITCI00ITA	0101000020E61000001F982E5FCE932740BE690BE6B5364540	11.78868386691834	42.427426110818175	218.4536772407592	swift	1	1	1	100	1	0	\N	\N
139	ITCO00ITA	0101000020E61000000918611001B82D40F903CAC2750F4340	14.859383117534902	38.12078128507755	759.030747640878	swift	1	1	1	100	1	0	\N	\N
140	ITDO00ITA	0101000020E61000001A0C5B555CD52040A6F973AEAD354740	8.416720073093577	46.419362841607565	1797.2249422259629	swift	1	1	1	100	1	0	\N	\N
141	ITFO00ITA	0101000020E610000094E2C0524E562B4010062D3F11A24440	13.668566309018647	41.26615133622386	86.78837631456554	swift	1	1	1	100	1	0	\N	\N
142	ITLE00ITA	0101000020E61000004E12D5520C483240EA2C4C0D4A2D4440	18.2814380426592	40.35382239264372	80.50001456029713	swift	1	1	1	100	1	0	\N	\N
143	ITMI00ITA	0101000020E610000003C600DEBA0923403A94E8A07CBB4640	9.51900380858843	45.46474086598525	150.57051544450223	swift	1	1	1	100	1	0	\N	\N
144	ITPT00ITA	0101000020E6100000771E14ACC8FD27402500D1349A674240	11.99567163224786	36.80939351166979	151.04941801074892	swift	1	1	1	100	1	0	\N	\N
145	ITRA00ITA	0101000020E6100000D6D381D7382B28402CD33E7E21364640	12.084418043706975	44.422897134606	46.74752884078771	swift	1	1	1	100	1	0	\N	\N
146	ITRG00ITA	0101000020E61000005FF6D37833102D40EE30502723644240	14.531642700075448	36.78232281018454	63.09519640821964	swift	1	1	1	100	1	0	\N	\N
147	ITRS00ITA	0101000020E61000004136E0ACD0273040FC3CC61EC2404340	16.155527882327316	38.50592408631746	699.4366227081046	swift	1	1	1	100	1	0	\N	\N
148	ITSA00ITA	0101000020E610000095FECA42255723402960F912D4594440	9.670206153182594	40.70178449496022	118.10623246151954	swift	1	1	1	100	1	0	\N	\N
149	ITSC00ITA	0101000020E61000008C6557C47AA52F40EC77A4A362E94340	15.823202262562315	39.82332273728036	221.16763582546264	swift	1	1	1	100	1	0	\N	\N
150	ITSL00ITA	0101000020E61000007609E21B82CC2D400709069015484440	14.899430152265936	40.56315804465964	68.44730189535767	swift	1	1	1	100	1	0	\N	\N
151	ITSP00ITA	0101000020E6100000E3EFDCAE93FB2340F9F275FE031E4640	9.991361107320651	44.23449689179451	164.06672717165202	swift	1	1	1	100	1	0	\N	\N
152	ITTE00ITA	0101000020E6100000AF02473FE0AE2D4098400B2284FB4440	14.84155462018802	41.96496988459767	292.66386174596846	swift	1	1	1	100	1	0	\N	\N
153	ITTP00ITA	0101000020E610000039DBB4CD01072940ADEA9C872FED4240	12.513685634925066	37.853013000395165	92.2792476741597	swift	1	1	1	100	1	0	\N	\N
154	ITTR00ITA	0101000020E6100000E28E6120F69A2B400C3EBB51E7CB4640	13.802659046086267	45.59299680815257	51.626731649041176	swift	1	1	1	100	1	0	\N	\N
155	ITVE00ITA	0101000020E6100000A47FEAA48B952840546667DA40C54640	12.292081025719945	45.54104166525493	62.43221968505532	swift	1	1	1	100	1	0	\N	\N
156	NLBR00NLD	0101000020E61000008EE667C487EE11401541847508034A40	4.4829397858062645	52.023695652325976	45.61685942765325	swift	1	1	1	100	1	0	\N	\N
157	NLMM00NLD	0101000020E610000050F72FAEE6361740E8DF6334B1A94A40	5.803614350965131	53.32572035909046	53.34919956792146	swift	1	1	1	100	1	0	\N	\N
158	NLUL00NLD	0101000020E6100000A832EA45D4251740A38C15FE4D744940	5.786942570132546	50.90863014558688	165.89360717963427	swift	1	1	1	100	1	0	\N	\N
159	NOAL00NOR	0101000020E6100000881B943370473740C4AACB29E27D5140	23.27905580869584	69.96692891109791	85.39905108883977	swift	1	1	1	100	1	0	\N	\N
160	NOBE00NOR	0101000020E610000028790F04DEEC1340A91FA1BAA6344E40	4.981315673298274	60.41133816740036	83.93900491017848	swift	1	1	1	100	1	0	\N	\N
161	NOBR00NOR	0101000020E6100000CEC7A17844DB28402FE4306276715040	12.428256768940548	65.77285056012833	188.5624710675329	swift	1	1	1	100	1	0	\N	\N
162	NOGE00NOR	0101000020E61000005828E5FB261721406CC046A734504E40	8.545219299052563	60.62660685641751	507.3832660578191	swift	1	1	1	100	1	0	\N	\N
163	NOHA00NOR	0101000020E6100000DB32C7DA3E182640EC323BA33F674E40	11.047354542556992	60.80662956754581	212.3686556657776	swift	1	1	1	100	1	0	\N	\N
164	NOKR00NOR	0101000020E6100000C55FBF9E9138204090C635BB8E1C4D40	8.110485993252848	58.22310581494983	79.43205939605832	swift	1	1	1	100	1	0	\N	\N
165	NOKU00NOR	0101000020E61000009C983C6762001E40A0698FB234884F40	7.50037537867879	63.06410820138415	55.40952780097723	swift	1	1	1	100	1	0	\N	\N
166	NOLF00NOR	0101000020E6100000F3D9B5397C862A4070A76E2B6E005140	13.26266651482453	68.00672422327163	71.21165577042848	swift	1	1	1	100	1	0	\N	\N
167	NONO00NOR	0101000020E610000056CFE6F8E4B83D40D123A209B5A85140	29.722243839597777	70.63604966096771	36.40455258823931	swift	1	1	1	100	1	0	\N	\N
168	NOPG00NOR	0101000020E61000006383ABD97A24234089BAD9D4F9A14D40	9.57124977320354	59.26543675228488	99.78690629918128	swift	1	1	1	100	1	0	\N	\N
169	NORO00NOR	0101000020E61000001D36557D2BC32E406C2BB82E87D05040	15.38119117417506	67.25825088593466	51.63441868685186	swift	1	1	1	100	1	0	\N	\N
170	NOSE00NOR	0101000020E6100000191F3EA5C1D531401D516C3D83575140	17.83498604551924	69.36738525085013	76.77744907978922	swift	1	1	1	100	1	0	\N	\N
171	NOSV00NOR	0101000020E6100000A3F4127965AC16402F16FCCAD17D4D40	5.668355838567689	58.9829648730929	86.53149675671011	swift	1	1	1	100	1	0	\N	\N
172	NOTR00NOR	0101000020E6100000AAFEECE3BB0A25404FC319CB5DB64F40	10.520964739494357	63.42473734751265	61.04249545186758	swift	1	1	1	100	1	0	\N	\N
173	NOVA00NOR	0101000020E610000037F9BBBCA18013404369F98F26E24E40	4.87561697861957	61.766801832410266	56.50757097639144	swift	1	1	1	100	1	0	\N	\N
174	NOVI00NOR	0101000020E61000002268340C2A7E2340FC314C3377CC4E40	9.746414548299123	61.59738770833578	308.8950604684651	swift	1	1	1	100	1	0	\N	\N
175	PRAC00PRT	0101000020E6100000BFC824540F423BC007AE4BC005554340	-27.258046397190583	38.66423801880704	139.28331781644374	swift	1	1	1	100	1	0	\N	\N
176	PRBR00PRT	0101000020E6100000B0F28487B5011BC03C844D0B3EE74440	-6.751669042100432	41.806580943242565	739.6154450513422	swift	1	1	1	100	1	0	\N	\N
177	PRGU00PRT	0101000020E6100000B621748938DF1CC0D5CCF058294A4440	-7.217989108765717	40.57938682981521	922.505026304163	swift	1	1	1	100	1	0	\N	\N
178	PRLA00PRT	0101000020E6100000572A17706F1421C04CB49A5FF78F4240	-8.53991270334988	37.12473674698936	94.99716605525464	swift	1	1	1	100	1	0	\N	\N
179	PRLB00PRT	0101000020E6100000BA3A251B2E4A22C0BDBEB9EAE36C4340	-9.144883011145216	38.85070547910146	67.94839358888566	swift	1	1	1	100	1	0	\N	\N
180	PRLE00PRT	0101000020E61000003FF58A19EEF721C03F463648DECD4340	-8.984238432133335	39.60834601771339	90.11426940467209	swift	1	1	1	100	1	0	\N	\N
181	PRMA00PRT	0101000020E6100000E39B61B41B1521C05F5A70BFD19D4440	-8.541226994433554	41.23296350138079	175.44309964962304	swift	1	1	1	100	1	0	\N	\N
182	PRMD00PRT	0101000020E610000021C44A27EEE930C02721E7BFE0534040	-16.91379018378587	32.655296324667965	166.15015587210655	swift	1	1	1	100	1	0	\N	\N
183	SWGA00SWE	0101000020E61000009DD9719139A834405C78CE439EC95040	20.65712842015784	67.1502847220926	396.52110758330673	swift	1	1	1	100	1	0	\N	\N
184	SWGO00SWE	0101000020E6100000DD5EB7D7A85432405F50655FA9D14C40	18.33070133425542	57.63798134450504	84.71108303032815	swift	1	1	1	100	1	0	\N	\N
185	SWGV00SWE	0101000020E61000003FC7EC32F6223140CA0347E370534E40	17.136569197470855	60.65188256378286	71.11067067738622	swift	1	1	1	100	1	0	\N	\N
186	SWHU00SWE	0101000020E6100000A10BBF83B1153140549A6AB15ADC4E40	17.084739908353765	61.72151773309145	77.80548476520926	swift	1	1	1	100	1	0	\N	\N
187	SWJO00SWE	0101000020E6100000BE3F5FE02E752C4069FABADDC6E24C40	14.228873263957096	57.7716939145167	214.861291657202	swift	1	1	1	100	1	0	\N	\N
188	SWKA00SWE	0101000020E610000085316F0185682A4098FBDBB380B34D40	13.204139752219596	59.40236519246223	89.15943400748074	swift	1	1	1	100	1	0	\N	\N
189	SWKR00SWE	0101000020E61000004D3449EBB62D2C40F6131C73E9044C40	14.08928618687256	56.03837431978612	49.589850024320185	swift	1	1	1	100	1	0	\N	\N
190	SWLJ00SWE	0101000020E6100000647702DC887A3040193A1620D0514C40	16.478650808908597	56.6391639831584	53.7703907918185	swift	1	1	1	100	1	0	\N	\N
191	SWLU00SWE	0101000020E610000089523F078A6A30408F1E4787F0F14C40	16.416168644866534	57.89015284683509	46.16230847965926	swift	1	1	1	100	1	0	\N	\N
192	SWMA00SWE	0101000020E6100000413758096B682B40CF317024BB564E40	13.703941623705422	60.67758613234167	343.2606793520972	swift	1	1	1	100	1	0	\N	\N
193	SWNO00SWE	0101000020E6100000A6EC3BE258AD32408CE20743F1DF4D40	18.67713750803946	59.74955022855294	60.23676816094667	swift	1	1	1	100	1	0	\N	\N
194	SWNY00SWE	0101000020E610000098A1B8985BFD3040AB924D9F6D624D40	16.989678902698504	58.76897040803749	56.45327665098012	swift	1	1	1	100	1	0	\N	\N
195	SWOB00SWE	0101000020E6100000672618F5D46A2E40AED634D9D1A44D40	15.208655986021052	59.28765406842137	72.37255343608558	swift	1	1	1	100	1	0	\N	\N
196	SWOK00SWE	0101000020E6100000640BB4B266B8324065084C3FB4A44F40	18.720317048031017	63.28675071092607	39.0325678717345	swift	1	1	1	100	1	0	\N	\N
197	SWOS00SWE	0101000020E6100000B2144D9F7CAC2D40D6EE9FFDA7884F40	14.836888292464527	63.06762667125792	359.0711606750265	swift	1	1	1	100	1	0	\N	\N
198	SWSG00SWE	0101000020E6100000BBC9952904B82C403A7D47D329044F40	14.359406756910966	62.03252640850642	398.49640751536936	swift	1	1	1	100	1	0	\N	\N
199	SWSK00SWE	0101000020E6100000C11D47D9E90635400BB76A641F315040	21.02700574861753	64.76754103227628	90.54613592661916	swift	1	1	1	100	1	0	\N	\N
200	SWST00SWE	0101000020E6100000FBFC2F75D71A31407CBA736BDF455040	17.104850124565004	65.0917614595836	397.4226267011836	swift	1	1	1	100	1	0	\N	\N
201	SWTA00SWE	0101000020E61000009964D78BB7D62740D13741DC262C4D40	11.919369096797071	58.34493592604694	48.121354069560766	swift	1	1	1	100	1	0	\N	\N
202	SWVA00SWE	0101000020E6100000991739CACD1229409EA208EBB7774C40	12.536726302594433	56.93530023682503	72.76520345173776	swift	1	1	1	100	1	0	\N	\N
203	CDDIS-BRST00FRA	0101000020E61000006062065882FC11C045E12517B4304840	-4.496590972318327	48.38049592706119	67.85400440730155	CDDIS	1	1	1	100	1	0	\N	\N
204	CDDIS-BZRG00ITA	0101000020E6100000EDD2852F71AC2640BC9E3216E03F4740	11.336801037870336	46.49902608781936	329.35670915432274	CDDIS	1	1	1	100	1	0	\N	\N
205	CDDIS-DYNG00GRC	0101000020E610000054BD6D11B4EE3740451C0B000E0A4340	23.932435120860944	38.07855225905263	512.5906738275662	CDDIS	1	1	1	100	1	0	\N	\N
206	CDDIS-GANP00SVK	0101000020E61000002633D033AC52344016005F8E71844840	20.322940100030934	49.03471546164339	746.4139375127852	CDDIS	1	1	1	100	1	0	\N	\N
207	CDDIS-HOFN00ISL	0101000020E6100000DC77AB3E55652EC0668604581B115040	-15.197915991240674	64.26729393548385	82.91697385255247	CDDIS	1	1	1	100	1	0	\N	\N
208	CDDIS-ISTA00TUR	0101000020E6100000246C7FC8F3043D4069915C975E8D4440	29.019344836338988	41.10444920237076	147.31103530246764	CDDIS	1	1	1	100	1	0	\N	\N
209	CDDIS-JOZ200POL	0101000020E6100000D6367D7B48083540BE291EF3850C4A40	21.032355993337514	52.09783782240663	152.51611880213022	CDDIS	1	1	1	100	1	0	\N	\N
210	CDDIS-MELI00ESP	0101000020E6100000DCD0236EFA9C07C0CDC33F0FFEA34140	-2.9516495327644523	35.28119079189763	88.86781552154571	CDDIS	1	1	1	100	1	0	\N	\N
211	CDDIS-NICO00CYP	0101000020E610000021C7C5D9BEB240409A72BAE90B924140	33.396449300357084	35.14098856523961	190.08638558816165	CDDIS	1	1	1	100	1	0	\N	\N
212	CDDIS-ZIM200CHE	0101000020E6100000032F5F1232DC1D408D5D66AE44704740	7.465034758624598	46.87709598941269	956.435776779428	CDDIS	1	1	1	100	1	0	\N	\N
213	EUREF-DOUR00BEL	0101000020E61000009753632D3C611240BD9D83FF240C4940	4.594956120669757	50.09487909554585	283.4419005000964	EUREF	1	1	1	100	1	0	\N	\N
214	EUREF-KURE00EST	0101000020E61000000423B292938236409AFD82B6B8204D40	22.51006428574603	58.255636993137294	41.52924586832523	EUREF	1	1	1	100	1	0	\N	\N
215	EUREF-LAMP00ITA	0101000020E6100000A8296E1419362940D38EC8AFF8BF4140	12.60566009373436	35.49977682350124	57.77874969318509	EUREF	1	1	1	100	1	0	\N	\N
216	EUREF-NYA200NOR	0101000020E610000046D700A39FB727407457BE938ABB5340	11.858639806606904	78.9303330769046	81.4867866197601	EUREF	1	1	1	100	1	0	\N	\N
217	EUREF-SUR400EST	0101000020E610000066504F1459613840DFD5FD7256BB4D40	24.3802654927862	59.46357572133538	84.42448587715626	EUREF	1	1	1	100	1	0	\N	\N
218	EUREF-TOIL00EST	0101000020E6100000853CDC5461893B40604F846F05B64D40	27.536641410607007	59.422040883293526	76.75045477412641	EUREF	1	1	1	100	1	0	\N	\N
219	SATINFO-DRUL	0101000020E6100000FDAB69119B841C40F776616DB7744840	7.129497787546824	48.91184775938761	388.7095334129408	SATINFO	1	1	1	100	1	0	\N	\N
220	SATINFO-GAPC	0101000020E610000039BDB2BA912C1840BD977BDB17404640	6.043524663123487	44.50072807355564	753.7541574509814	SATINFO	1	1	1	100	1	0	\N	\N
221	SATINFO-GIE1	0101000020E6100000B2BBDA129E400640AB96522277CE4740	2.7815515015604064	47.61301068715	212.2277710475028	SATINFO	1	1	1	100	1	0	\N	\N
222	SATINFO-MNBL	0101000020E6100000449C6B127C391B4052C24DAA77BF4740	6.8061373594455885	47.49583939740139	413.0845569539815	SATINFO	1	1	1	100	1	0	\N	\N
223	SATINFO-MTLC	0101000020E6100000A047FDA0664C16408CD35D1105174740	5.5746102480497095	46.17984216239294	546.0155975362286	SATINFO	1	1	1	100	1	0	\N	\N
224	SATINFO-QUYC	0101000020E61000001A4D0351486BEFBFDEDAB1BE5BAD4640	-0.98184600661117	45.3543623367435	59.1605773922056	SATINFO	1	1	1	100	1	0	\N	\N
225	SATINFO-STFE	0101000020E6100000584B6AC3FED00D40170A8C136CC34640	3.727048422509525	45.52673573311071	592.2573146037757	SATINFO	1	1	1	100	1	0	\N	\N
226	SEPTENTRIO-HOEG	0101000020E610000066CF71F90E9A1340D4192C5BA8634940	4.90044774777548	50.77857532461424	97.60354272462428	SEPTENTRIO	1	1	1	100	1	0	\N	\N
227	SEPTENTRIO-LEEU	0101000020E6100000CA47BA5E4704114068A49F5180604940	4.254178505057958	50.75391598320529	90.2635410875082	SEPTENTRIO	1	1	1	100	1	0	\N	\N
228	SEPTENTRIO-MECH	0101000020E6100000629ECC8886E111403FA77CE965804940	4.470239770401888	51.003110112056206	68.23714512959123	SEPTENTRIO	1	1	1	100	1	0	\N	\N
229	SAPOS-0007	0101000020E61000007B6B372CD3C82840C63DBD6557794A40	12.39223612	52.94797966	101.4544924	SAPOS	1	1	1	100	1	0	\N	\N
230	SAPOS-0012	0101000020E61000004137557390CC2B40C670909371F84940	13.89953957	51.94096608	114.4094434	SAPOS	1	1	1	100	1	0	\N	\N
231	SAPOS-0020	0101000020E61000003CCA45A5A64F2A4099ABEF74E0094A40	13.15556828	52.07716238	117.0328751	SAPOS	1	1	1	100	1	0	\N	\N
232	SAPOS-0026	0101000020E61000004F0D4D3C146D2D407B15EE31A3F94940	14.71304501	51.95029282	109.4039446	SAPOS	1	1	1	100	1	0	\N	\N
233	SAPOS-0082	0101000020E6100000055184F5FBA52840461870A4DDD04940	12.32418792	51.63176399	138.0633365	SAPOS	1	1	1	100	1	0	\N	\N
234	SAPOS-0094	0101000020E6100000843B061A22EF2740A3112A8A96994940	11.96705705	51.19990661	169.0915716	SAPOS	1	1	1	100	1	0	\N	\N
235	SAPOS-0095	0101000020E610000067334DF98C2528409B2DF152DF0E4A40	12.07334117	52.11619031	130.2916214	SAPOS	1	1	1	100	1	0	\N	\N
236	SAPOS-0104	0101000020E6100000438CF8CA93462740920EB7C8E3EC4940	11.63784632	51.85070142	125.325916	SAPOS	1	1	1	100	1	0	\N	\N
237	SAPOS-0105	0101000020E6100000B919D1EAA2B82740B828E8C5824F4A40	11.86061796	52.62117838	88.36198976	SAPOS	1	1	1	100	1	0	\N	\N
238	SAPOS-0136	0101000020E610000005E4F13835F729400B53FE9361C84940	12.98282793	51.56547785	154.0804705	SAPOS	1	1	1	100	1	0	\N	\N
239	SAPOS-0140	0101000020E61000007CB88A49A80E2A40151294396A894940	13.02862768	51.07355423	258.3720261	SAPOS	1	1	1	100	1	0	\N	\N
240	SAPOS-0144	0101000020E610000034894887667C2940E60641303C3A4940	12.74296973	50.45496181	931.5979846	SAPOS	1	1	1	100	1	0	\N	\N
288	SAPOS-0396	0101000020E610000039C0022124962340A2DCAB8BD00C4840	9.793244392	48.10011431	599.4324209	SAPOS	1	1	1	100	1	0	\N	\N
289	SAPOS-0398	0101000020E6100000A874759CE2D4204010A5AC43743B4840	8.415791406	48.46448561	784.5508577	SAPOS	1	1	1	100	1	0	\N	\N
290	SAPOS-0400	0101000020E6100000FD81224B23282240A9F64F047F424840	9.078394268	48.51950125	382.305293	SAPOS	1	1	1	100	1	0	\N	\N
291	SAPOS-0404	0101000020E61000008B5BB4E9D0C51F40801783FBF23C4840	7.943179752	48.47616524	223.8691182	SAPOS	1	1	1	100	1	0	\N	\N
292	SAPOS-0405	0101000020E610000005356770A0D920403497AB7B55C84840	8.425052178	49.56510874	140.9432667	SAPOS	1	1	1	100	1	0	\N	\N
293	SAPOS-0407	0101000020E6100000A18F4B7FA395234070F9E80BD88E4840	9.79226301	49.11596822	444.48814	SAPOS	1	1	1	100	1	0	\N	\N
294	SAPOS-0448	0101000020E61000009EB6625912742040D62CAE91460B4940	8.226702493	50.0880911	241.8051942	SAPOS	1	1	1	100	1	0	\N	\N
295	SAPOS-0467	0101000020E6100000ECE39E37E037234067E26B7621394940	9.609132517	50.4463337	351.3647086	SAPOS	1	1	1	100	1	0	\N	\N
296	SAPOS-0468	0101000020E6100000C8119EE2CEEE21405F599912DBC74840	8.966422159	49.56137307	509.8825321	SAPOS	1	1	1	100	1	0	\N	\N
297	SAPOS-0470	0101000020E6100000CF667C2F237922402DACD1DF0A624940	9.236596569	50.76595686	314.865025	SAPOS	1	1	1	100	1	0	\N	\N
298	SAPOS-0512	0101000020E6100000243DDE7463471E407D6251A2DC2D4940	7.569715334	50.35829572	184.0615377	SAPOS	1	1	1	100	1	0	\N	\N
299	SAPOS-0523	0101000020E61000006B4F2E6597181F4021CC2C70D9B84840	7.774015027	49.44413569	307.5255756	SAPOS	1	1	1	100	1	0	\N	\N
300	SAPOS-0526	0101000020E61000004CDC9D94CDB51940A716EE22E61A4940	6.42754204	50.21014821	498.3753702	SAPOS	1	1	1	100	1	0	\N	\N
301	SAPOS-0528	0101000020E6100000E10ABA8041A91E4012DABFD039DA4840	7.665288936	49.70488939	230.8377689	SAPOS	1	1	1	100	1	0	\N	\N
302	SAPOS-0580	0101000020E61000007833F3AFA8B21C408DB9E5E0E0F84940	7.174471616	51.94436275	143.9336461	SAPOS	1	1	1	100	1	0	\N	\N
303	SAPOS-0679	0101000020E6100000F4DE391069322640EDCE6650668C4A40	11.09845782	53.09687238	67.4888497	SAPOS	1	1	1	100	1	0	\N	\N
304	SAPOS-0773	0101000020E61000005E0E79D346322840A202FD92E50B4B40	12.09819661	54.09294355	81.33692628	SAPOS	1	1	1	100	1	0	\N	\N
305	SAPOS-0775	0101000020E610000082973A44B3C92A40A8BD7EE89C094B40	13.39394582	54.07510096	59.93932016	SAPOS	1	1	1	100	1	0	\N	\N
306	SAPOS-0785	0101000020E6100000FCC2D08F2B5A28403668F70811E44A40	12.1761136	53.78176987	72.88909849	SAPOS	1	1	1	100	1	0	\N	\N
307	SAPOS-0797	0101000020E6100000EFE1AB80EF242A402DCC8B0533AA4A40	13.07213976	53.32968206	118.8514985	SAPOS	1	1	1	100	1	0	\N	\N
308	SAPOS-1671	0101000020E6100000166A4639AA092240C69E5D3402AE4A40	9.018876829	53.35944228	58.37063703	SAPOS	1	1	1	100	1	0	\N	\N
309	SAPOS-1708	0101000020E610000039420C620A0C2340C9D21144C9F54A40	9.523516716	53.92020465	101.2423201	SAPOS	1	1	1	100	1	0	\N	\N
310	SAPOS-0451	0101000020E610000003D3F6D0BA7521403064535B211C4940	8.72994092	50.21976797	222.4976045	SAPOS	1	1	1	100	1	0	\N	\N
311	SAPOS-0614	0101000020E6100000890DCD771BAA1D40E5495AD3DAB24940	7.416120407	51.39730303	174.997883	SAPOS	1	1	1	100	1	0	\N	\N
312	SAPOS-0645	0101000020E6100000D1EBAB524AC71D405B566248709D4A40	7.444619457	53.2299891	65.72092706	SAPOS	1	1	1	100	1	0	\N	\N
313	SAPOS-0659	0101000020E6100000983B7A96FC1320406747AD0BA76C4A40	8.039036467	52.84884783	98.77588397	SAPOS	1	1	1	100	1	0	\N	\N
314	SAPOS-0660	0101000020E6100000C12A1874C6D22440AE261C6E73A04A40	10.41167033	53.25352265	74.35632121	SAPOS	1	1	1	100	1	0	\N	\N
315	SAPOS-0661	0101000020E6100000FCF07316D2B1234058AC40581A7E4A40	9.847305967	52.98517898	117.8299618	SAPOS	1	1	1	100	1	0	\N	\N
316	SAPOS-0683	0101000020E61000001C1845B10A431D40CC592588A25B4A40	7.315470476	52.71589758	89.28521673	SAPOS	1	1	1	100	1	0	\N	\N
317	SAPOS-0688	0101000020E610000026A5C3EA5F9A2340FEB7A23E29344A40	9.801513039	52.40750869	123.8220368	SAPOS	1	1	1	100	1	0	\N	\N
318	SAPOS-0689	0101000020E6100000626E7FAD999A21404F0A1CCFE8564A40	8.801953718	52.67897977	100.1523961	SAPOS	1	1	1	100	1	0	\N	\N
319	SAPOS-0706	0101000020E6100000AB601AA79D4324401920E4D5802D4B40	10.13206217	54.35549425	114.5143434	SAPOS	1	1	1	100	1	0	\N	\N
320	SAPOS-0715	0101000020E61000008F028F986E5C25408E40DC8C2BED4A40	10.68053128	53.85289155	98.18467644	SAPOS	1	1	1	100	1	0	\N	\N
321	SAPOS-0722	0101000020E61000002ADA034A969D2140D56968228E3F4B40	8.80778724	54.4965251	52.78294623	SAPOS	1	1	1	100	1	0	\N	\N
322	SAPOS-0836	0101000020E6100000860B1523187C2340FEBF574109C64A40	9.742371651	53.54715745	50.69514185	SAPOS	1	1	1	100	1	0	\N	\N
323	SAPOS-0931	0101000020E610000051189922EEFB1A4002E1CA9F26A84840	6.746025601	49.31367872	245.7092617	SAPOS	1	1	1	100	1	0	\N	\N
324	SAPOS-EIC2	0101000020E6100000AA883F2F81622640063EC54BB4744840	11.19239185	48.9117522	583.2325551	SAPOS	1	1	1	100	1	0	\N	\N
325	SAPOS-LND2	0101000020E61000001B1BBF92D9712340C9F5028EBBC84740	9.722363077	47.56822372	548.3531118	SAPOS	1	1	1	100	1	0	\N	\N
326	SAPOS-NEU2	0101000020E6100000A65BD9B23AF72940DFF3F3C09FA14840	12.98286971	49.2626878	553.9079799	SAPOS	1	1	1	100	1	0	\N	\N
327	SAPOS-NOER	0101000020E61000009747C4B556FF2440A5EDE1EA126B4840	10.49870842	48.83651482	515.0782677	SAPOS	1	1	1	100	1	0	\N	\N
328	SAPOS-TLZ2	0101000020E6100000573AC4E4B216274026DFB0111EE04740	11.5443336	47.75091764	786.149886	SAPOS	1	1	1	100	1	0	\N	\N
\.


--
-- Data for Name: geo_api_station; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.geo_api_station (id, station, geom, longitude, latitude, altitude, provider, pilot, commercial, access, sla, base, rover, stationtype, status) FROM stdin;
37	ALGR00USA	0101000020E6100000A0C37C7901A855C02F71FD1E69D43F40	-86.62509	31.82972902	\N	swift	1	1	1	100	1	0	\N	\N
38	ARAK00USA	0101000020E610000016E6D232714357C04B98A3A6610F4140	-93.05378409	34.12016757	\N	swift	1	1	1	100	1	0	\N	\N
41	ARPH00USA	0101000020E610000019DA4AF91ABE56C02B88A2BC66214240	-90.97039635	36.26094778	\N	swift	1	1	1	100	1	0	\N	\N
43	AZCO00USA	0101000020E6100000CE93217D49E15BC06769C083937C4040	-111.5201104	32.97325179	\N	swift	1	1	1	100	1	0	\N	\N
45	AZFL00USA	0101000020E61000000D9DE8047EE95BC044B3A15170994140	-111.6483166	35.1987402	\N	swift	1	1	1	100	1	0	\N	\N
46	AZGB00USA	0101000020E61000003518D9846AB25BC0D6A635F6BAB24040	-110.7877514	33.39633062	\N	swift	1	1	1	100	1	0	\N	\N
49	AZST00USA	0101000020E61000003B641415BBC35BC098F5833610F73F40	-111.0582936	31.96509114	\N	swift	1	1	1	100	1	0	\N	\N
53	CABE00USA	0101000020E6100000FC74971F93A45CC08D1480353DCE4040	-114.5714797	33.61124295	\N	swift	1	1	1	100	1	0	\N	\N
54	CABS00USA	0101000020E6100000674EF27E37995DC0F7CB694758AE4240	-118.3940122	37.36206906	\N	swift	1	1	1	100	1	0	\N	\N
55	CABW00USA	0101000020E610000093E57F4D31475DC0074DE01009704140	-117.1123842	34.87527667	\N	swift	1	1	1	100	1	0	\N	\N
57	CACY00USA	0101000020E610000002429028D9815DC08F67C0EE2EEA4040	-118.0288793	33.82955727	\N	swift	1	1	1	100	1	0	\N	\N
58	CADA00USA	0101000020E61000003CE0151CB9CF5DC0D558882F8FE14140	-119.2456732	35.76218218	\N	swift	1	1	1	100	1	0	\N	\N
60	CAEA00USA	0101000020E6100000F64CE5A37B0B5FC0C11D452963654440	-124.1794214	40.79208866	\N	swift	1	1	1	100	1	0	\N	\N
61	CAEM00USA	0101000020E6100000D4C9631756925EC09C787BCE65EA4240	-122.2865046	37.83123189	\N	swift	1	1	1	100	1	0	\N	\N
62	CAFR00USA	0101000020E6100000A5DF19C80E5C5EC02FEFFD4F76804440	-121.4384022	41.00361061	\N	swift	1	1	1	100	1	0	\N	\N
64	CAGU00USA	0101000020E6100000F7E978CCC0245EC0DCF189E9007C4140	-120.5742675	34.96877784	\N	swift	1	1	1	100	1	0	\N	\N
65	CAHM00USA	0101000020E6100000F03E7DBA709B5EC0C5F7CD1673BB4240	-122.4287554	37.46444974	\N	swift	1	1	1	100	1	0	\N	\N
66	CAIO00USA	0101000020E610000052F3B0AB240D5DC0C0A762F842DC4040	-116.2053632	33.72079377	\N	swift	1	1	1	100	1	0	\N	\N
67	CALK00USA	0101000020E610000096D4642195BA5EC088C04F24B1854340	-122.9153522	39.04446844	\N	swift	1	1	1	100	1	0	\N	\N
68	CAMH00USA	0101000020E6100000CF3758EE3B6A5EC0C060F54F89934240	-121.6599079	37.15262794	\N	swift	1	1	1	100	1	0	\N	\N
69	CAMN00USA	0101000020E6100000DB221FAA5FA75EC00637E71A45604340	-122.6152139	38.75210892	\N	swift	1	1	1	100	1	0	\N	\N
71	CAOC00USA	0101000020E6100000CE339B6CA8FF5CC01CE371EE825D4040	-115.9946548	32.73055821	\N	swift	1	1	1	100	1	0	\N	\N
73	CASA00USA	0101000020E61000001A4BFD61F07E5EC0F0F25B1108E44240	-121.9834218	37.78149621	\N	swift	1	1	1	100	1	0	\N	\N
75	CASJ00USA	0101000020E6100000B9A063ACDB785EC0D5415E0F26A54240	-121.8884078	37.290224	\N	swift	1	1	1	100	1	0	\N	\N
79	CAWD00USA	0101000020E61000008EA4EE14BC735EC00924F643CB564340	-121.8083546	38.67807817	\N	swift	1	1	1	100	1	0	\N	\N
80	CAWI00USA	0101000020E610000099558E7F55B05CC041FFD2DC695F4040	-114.7552184	32.74541817	\N	swift	1	1	1	100	1	0	\N	\N
81	CAWS00USA	0101000020E6100000FB3DB14E95D65EC0F00115E959B44340	-123.352863	39.40899385	\N	swift	1	1	1	100	1	0	\N	\N
82	CAWY00USA	0101000020E6100000AB04300AA7245EC0FCE0BE062BAF4240	-120.5726953	37.36850056	\N	swift	1	1	1	100	1	0	\N	\N
83	CAYA00USA	0101000020E6100000B3A6C354C4A85EC00728CB18B8DD4440	-122.6369831	41.73218069	\N	swift	1	1	1	100	1	0	\N	\N
85	COFT00USA	0101000020E6100000D49B51F3552F5BC09AA0C01A6B934340	-108.739621	39.15170607	\N	swift	1	1	1	100	1	0	\N	\N
86	COLA00USA	0101000020E61000005D8C81759CA759C013BE73FF430B4340	-102.6189245	38.08801263	\N	swift	1	1	1	100	1	0	\N	\N
87	COLM00USA	0101000020E6100000B02770A161475AC04BA9AEF0EC124440	-105.1153339	40.14785584	\N	swift	1	1	1	100	1	0	\N	\N
89	CORI00USA	0101000020E6100000F9F4D89681F05AC03617874C5C134340	-107.7579095	38.15125424	\N	swift	1	1	1	100	1	0	\N	\N
91	FLCK00USA	0101000020E6100000FBC5CFF325C254C064343C07E0223D40	-83.03356643	29.1362309	\N	swift	1	1	1	100	1	0	\N	\N
92	FLCO00USA	0101000020E6100000E3855BDBA73154C0E17A98E6EB5A3C40	-80.77587017	28.35516206	\N	swift	1	1	1	100	1	0	\N	\N
93	FLHO00USA	0101000020E6100000FF379B33871E54C017C4386676773940	-80.47700205	25.46665038	\N	swift	1	1	1	100	1	0	\N	\N
94	FLLL00USA	0101000020E6100000E08D9AE93D7D54C07B56CA1927073C40	-81.95690384	28.02794038	\N	swift	1	1	1	100	1	0	\N	\N
95	FLNA00USA	0101000020E6100000BBF55802027154C0B1B8073ABD233A40	-81.76574763	26.13960612	\N	swift	1	1	1	100	1	0	\N	\N
96	FLNV00USA	0101000020E610000059390F82A9B455C068F6ABC633693E40	-86.82284595	30.41094629	\N	swift	1	1	1	100	1	0	\N	\N
97	FLOP00USA	0101000020E6100000B567F92E239F54C0180199C6C42F3B40	-82.48652243	27.18659631	\N	swift	1	1	1	100	1	0	\N	\N
98	FLPJ00USA	0101000020E610000013273958665355C044A9184229D03D40	-85.30312162	29.81312955	\N	swift	1	1	1	100	1	0	\N	\N
99	FLPL00USA	0101000020E61000008FB55418FA6254C0C890294090493E40	-81.54651459	30.28735734	\N	swift	1	1	1	100	1	0	\N	\N
100	FLSS00USA	0101000020E610000028FF2824787C54C09941DF8A82DC3C40	-81.94483284	28.86136692	\N	swift	1	1	1	100	1	0	\N	\N
103	GADE00USA	0101000020E61000004AEEB0894C1155C04F24F32359E44040	-84.2702965	33.78397035	\N	swift	1	1	1	100	1	0	\N	\N
104	GAMR00USA	0101000020E61000004F986A459FB954C05B1F9C70AB084040	-82.90034614	32.06773193	\N	swift	1	1	1	100	1	0	\N	\N
105	GASV00USA	0101000020E6100000F071E0B4A44554C09255F8D091084040	-81.08817789	32.06694996	\N	swift	1	1	1	100	1	0	\N	\N
106	IABE00USA	0101000020E61000002FCCF8AD0CAE57C01A6E3CAF63554440	-94.7195239	40.66710463	\N	swift	1	1	1	100	1	0	\N	\N
107	IACE00USA	0101000020E6100000489362B27E1C57C08C781D379D444540	-92.44523296	42.53604783	\N	swift	1	1	1	100	1	0	\N	\N
110	IAGM00USA	0101000020E610000019B91B024FB156C0FC62DFE3063F4540	-90.77044728	42.49239777	\N	swift	1	1	1	100	1	0	\N	\N
113	IDCL00USA	0101000020E6100000314A86D24D8E5CC049543DD32A414640	-114.2234999	44.50911942	\N	swift	1	1	1	100	1	0	\N	\N
114	IDNP00USA	0101000020E6100000946B0A64F6235DC0258E237338CA4540	-116.5619135	43.57984771	\N	swift	1	1	1	100	1	0	\N	\N
115	IDPO00USA	0101000020E6100000423D224B8B1C5CC071D50A0DA36E4540	-112.4460018	42.86435092	\N	swift	1	1	1	100	1	0	\N	\N
117	ILAS00USA	0101000020E61000008BCEC7EF0CFD55C04A6805659E704440	-87.95391459	40.87983382	\N	swift	1	1	1	100	1	0	\N	\N
119	ILRO00USA	0101000020E61000003A6865B143EF55C0DAD89900CB804340	-87.73850665	39.00619514	\N	swift	1	1	1	100	1	0	\N	\N
124	INVO00USA	0101000020E6100000B890687E0CC455C012FF0B5FBABB4440	-87.06326256	41.4666251	\N	swift	1	1	1	100	1	0	\N	\N
125	KSAB00USA	0101000020E610000007644C4DC46658C04CA6E9373CCF4240	-97.60573132	37.61902522	\N	swift	1	1	1	100	1	0	\N	\N
127	KSGL00USA	0101000020E6100000D2EFB1AA946D59C03E16CBC291AC4340	-101.7121989	39.34819827	\N	swift	1	1	1	100	1	0	\N	\N
129	KSKA00USA	0101000020E6100000FD4B529962B857C05AB33ADE098F4340	-94.881018	39.11748865	\N	swift	1	1	1	100	1	0	\N	\N
130	KYME00USA	0101000020E61000000434956EE0F254C0C67054F2DA504340	-83.79494824	38.63168172	\N	swift	1	1	1	100	1	0	\N	\N
131	KYPD00USA	0101000020E6100000002061F7E12556C043CB9971438A4240	-88.59191689	37.08018322	\N	swift	1	1	1	100	1	0	\N	\N
132	LADE00USA	0101000020E61000002D8449AF15BD56C0C7D0DA027C913E40	-90.95444853	30.56829851	\N	swift	1	1	1	100	1	0	\N	\N
134	LARS00USA	0101000020E610000068FC0CB9639856C0596D1F6E5E923D40	-90.3810866	29.57175339	\N	swift	1	1	1	100	1	0	\N	\N
135	LASP00USA	0101000020E6100000BAE8F90D726F57C057F4A0033F3F4040	-93.74133634	32.49411054	\N	swift	1	1	1	100	1	0	\N	\N
136	MAEA00USA	0101000020E61000002EBFBAC765A551C068588CBA56C94440	-70.58433717	41.57295925	\N	swift	1	1	1	100	1	0	\N	\N
138	MDBA00USA	0101000020E6100000211D1EC2782B53C0C8F1E07AD6AC4340	-76.6792455	39.35029541	\N	swift	1	1	1	100	1	0	\N	\N
143	MICY00USA	0101000020E61000003E82D19B80EC54C09C7F81414E264540	-83.69534965	42.29926318	\N	swift	1	1	1	100	1	0	\N	\N
145	MIGB00USA	0101000020E61000006D5255911FE854C0E1BD59396A764540	-83.62692674	42.9251167	\N	swift	1	1	1	100	1	0	\N	\N
146	MIGR00USA	0101000020E6100000190F849EAC2D55C0E0EB73CEB2544640	-84.71366084	44.66170674	\N	swift	1	1	1	100	1	0	\N	\N
147	MIMI00USA	0101000020E6100000601B548FB2EB54C099F8BC45D40A4540	-83.68277343	42.08460304	\N	swift	1	1	1	100	1	0	\N	\N
149	MINB00USA	0101000020E610000003B9DD2EA86055C0303AACB2672D4740	-85.51026508	46.35472711	\N	swift	1	1	1	100	1	0	\N	\N
150	MIUP00USA	0101000020E610000091D54A74182556C001D96F1644904740	-88.57961757	47.12707787	\N	swift	1	1	1	100	1	0	\N	\N
151	MNAE00USA	0101000020E6100000DBD2170072C257C02122F3D010764740	-95.03820803	46.92238819	\N	swift	1	1	1	100	1	0	\N	\N
152	MNAS00USA	0101000020E6100000A50D8F16CA6157C0170ABF71259E4740	-93.52795948	47.23551771	\N	swift	1	1	1	100	1	0	\N	\N
154	MNMH00USA	0101000020E6100000590AB396633058C017276321DF6F4740	-96.75607841	46.8739969	\N	swift	1	1	1	100	1	0	\N	\N
156	MNSP00USA	0101000020E610000084597058BD6157C004D4691732664640	-93.52718173	44.79840367	\N	swift	1	1	1	100	1	0	\N	\N
157	MNWN00USA	0101000020E6100000E70EEE1037E657C08418BF5B66CF4540	-95.59711097	43.62031123	\N	swift	1	1	1	100	1	0	\N	\N
158	MNWR00USA	0101000020E61000000E8D1F1130D457C03F573AA3D6734840	-95.31543377	48.90498772	\N	swift	1	1	1	100	1	0	\N	\N
159	MOCF00USA	0101000020E6100000E29D53FB3AA956C06778373F13554340	-90.64422496	38.66464987	\N	swift	1	1	1	100	1	0	\N	\N
162	MOWB00USA	0101000020E6100000EF452874666F57C00545FB71DE614340	-93.74062828	38.76460099	\N	swift	1	1	1	100	1	0	\N	\N
164	MSMD00USA	0101000020E610000003317D6DC52C56C05ACB8DB74F2E4040	-88.69955003	32.36180777	\N	swift	1	1	1	100	1	0	\N	\N
165	MSPG00USA	0101000020E61000003CE9335611BF56C0B9704132F4F53F40	-90.98543315	31.96075739	\N	swift	1	1	1	100	1	0	\N	\N
166	MSPY00USA	0101000020E610000082340818826B56C06F54FA4B83863E40	-89.6798153	30.52544093	\N	swift	1	1	1	100	1	0	\N	\N
167	MTB100USA	0101000020E61000009A417C60C7945BC0D4F89EF4324E4840	-110.324669	48.61093004	\N	swift	1	1	1	100	1	0	\N	\N
168	MTCO00USA	0101000020E61000008DC98745315D5BC0D8929F9E08C34640	-109.4561323	45.52370055	\N	swift	1	1	1	100	1	0	\N	\N
169	MTDD00USA	0101000020E6100000BE8AE7C73A205BC033631B0211354840	-108.5035877	48.41458155	\N	swift	1	1	1	100	1	0	\N	\N
170	MTFH00USA	0101000020E6100000C9A42B7D8DAB5AC06BAADD65F5214740	-106.6805108	46.26530145	\N	swift	1	1	1	100	1	0	\N	\N
173	MTGR00USA	0101000020E61000005F33AFD980335BC059D3A34674834740	-108.8047394	47.02698596	\N	swift	1	1	1	100	1	0	\N	\N
175	MTHT00USA	0101000020E6100000A91E1FE340345CC006EE06F2682D4840	-112.8164604	48.35476518	\N	swift	1	1	1	100	1	0	\N	\N
176	MTPL00USA	0101000020E610000065767176C68A5CC0744A17CD10D74740	-114.1683632	47.68020023	\N	swift	1	1	1	100	1	0	\N	\N
177	MTPO00USA	0101000020E610000004B573F5BE4C5AC0DDAE1BDFAC354840	-105.1991552	48.41933812	\N	swift	1	1	1	100	1	0	\N	\N
178	MTTF00USA	0101000020E61000003200547163D95BC061AD35EF13084740	-111.3966945	46.06310835	\N	swift	1	1	1	100	1	0	\N	\N
179	NCMR00USA	0101000020E61000002F0F8055818054C016BC8D7255D74140	-82.00789392	35.68229515	\N	swift	1	1	1	100	1	0	\N	\N
180	NCMV00USA	0101000020E6100000D3AF84208D1754C0D2EF6F8E427E4140	-80.36798871	34.98640614	\N	swift	1	1	1	100	1	0	\N	\N
181	NCNB00USA	0101000020E61000005408BB93954253C0189F5D192F8E4140	-77.04037946	35.11081235	\N	swift	1	1	1	100	1	0	\N	\N
188	NDNN00USA	0101000020E6100000AC94F9A298C059C057CDD66EF9714840	-103.0093162	48.89042459	\N	swift	1	1	1	100	1	0	\N	\N
189	NEAL00USA	0101000020E610000031410DDFC2B759C0216FC16BFA0C4540	-102.871269	42.10139224	\N	swift	1	1	1	100	1	0	\N	\N
190	NEBT00USA	0101000020E61000004CC47CF5083058C09C766B78FE214440	-96.75054681	40.26557832	\N	swift	1	1	1	100	1	0	\N	\N
193	NENP00USA	0101000020E6100000626FBD01C13059C0E40D17567D914440	-100.7617802	41.13663746	\N	swift	1	1	1	100	1	0	\N	\N
194	NESN00USA	0101000020E6100000EBAA402D86BE59C017045E7F75924440	-102.9769395	41.14421074	\N	swift	1	1	1	100	1	0	\N	\N
195	NEVT00USA	0101000020E6100000BA83D899422359C0DB6333D131704540	-100.55094	42.8765203	\N	swift	1	1	1	100	1	0	\N	\N
196	NHHT00USA	0101000020E61000004D4EABF080D951C01D5A011124824540	-71.39849488	43.01672566	\N	swift	1	1	1	100	1	0	\N	\N
197	NJMM00USA	0101000020E6100000D2623ABE87A952C045A6538978A14340	-74.6489101	39.26149098	\N	swift	1	1	1	100	1	0	\N	\N
198	NMAO00USA	0101000020E61000005A283EE3677D5AC09D4872F11E734040	-105.9594658	32.89938181	\N	swift	1	1	1	100	1	0	\N	\N
199	NMCB00USA	0101000020E61000002BB759619F0E5AC03639211997354040	-104.2284778	32.41867365	\N	swift	1	1	1	100	1	0	\N	\N
201	NMES00USA	0101000020E6100000EB820BC391835AC0D20A5FA107614140	-106.0557716	34.75804536	\N	swift	1	1	1	100	1	0	\N	\N
202	NMGP00USA	0101000020E6100000574DC6E7842F5BC0C7E6151592C34140	-108.7424869	35.52789558	\N	swift	1	1	1	100	1	0	\N	\N
203	NMRN00USA	0101000020E6100000FBE769C0201C5AC09A34993353734240	-104.439499	36.90097661	\N	swift	1	1	1	100	1	0	\N	\N
205	NMTC00USA	0101000020E6100000DE9623BF59D05AC0E0C4A9396D904040	-107.2554777	33.12833329	\N	swift	1	1	1	100	1	0	\N	\N
206	NMTM00USA	0101000020E61000009BA7DF2A74EE59C05A000979F3964140	-103.7258403	35.1793052	\N	swift	1	1	1	100	1	0	\N	\N
209	NVLV00USA	0101000020E61000007A8F8E06CBC65CC060B86BF05B1B4240	-115.1061417	36.21374326	\N	swift	1	1	1	100	1	0	\N	\N
210	NVMQ00USA	0101000020E6100000E4C8B9032B845CC06C44ACD509674240	-114.0651254	36.80498763	\N	swift	1	1	1	100	1	0	\N	\N
213	NVRP00USA	0101000020E61000003885950A2A925DC0B0202812A73B4440	-118.283816	40.4660361	\N	swift	1	1	1	100	1	0	\N	\N
215	NVVL00USA	0101000020E610000094FF249930485DC0090DAB1579654440	-117.1279662	40.79275771	\N	swift	1	1	1	100	1	0	\N	\N
216	NVWW00USA	0101000020E610000056606D31E4845CC03B302537AF5E4440	-114.0764278	40.73972215	\N	swift	1	1	1	100	1	0	\N	\N
217	NYAN00USA	0101000020E610000089688DA411A053C023115CDD98824540	-78.50107683	43.02029006	\N	swift	1	1	1	100	1	0	\N	\N
218	NYLH00USA	0101000020E610000094795866595952C056AB23059E5B4440	-73.39608153	40.71575989	\N	swift	1	1	1	100	1	0	\N	\N
219	NYNB00USA	0101000020E6100000E4D9066A488152C088D881EF0DC04440	-74.02004481	41.50042528	\N	swift	1	1	1	100	1	0	\N	\N
220	NYSJ00USA	0101000020E610000096FA471990AB52C05562C714E67F4540	-74.68067009	42.99920902	\N	swift	1	1	1	100	1	0	\N	\N
221	OHCL00USA	0101000020E6100000A6E6DD1E65B754C0596422422FFA4340	-82.86554691	39.95456721	\N	swift	1	1	1	100	1	0	\N	\N
222	OHGB00USA	0101000020E6100000719C0C75351C55C024CF168CA19C4340	-84.44076277	39.22368003	\N	swift	1	1	1	100	1	0	\N	\N
226	OKAR00USA	0101000020E6100000A046082CCC4958C0B9A68282B9194140	-97.15308667	34.20097381	\N	swift	1	1	1	100	1	0	\N	\N
228	OKMC00USA	0101000020E6100000A6B317FAF5F057C05DF7FB6A33774140	-95.76501324	34.93125665	\N	swift	1	1	1	100	1	0	\N	\N
229	OKOK00USA	0101000020E6100000C635BA5AD96258C089CDE8C38ACD4140	-97.54451626	35.60579728	\N	swift	1	1	1	100	1	0	\N	\N
230	OKTA00USA	0101000020E6100000948486F658FD57C0F5BA877C7E144240	-95.95855487	36.16011006	\N	swift	1	1	1	100	1	0	\N	\N
232	ORBA00USA	0101000020E6100000C7A01342871A5FC09A2732CE3A8F4540	-124.4145055	43.1189821	\N	swift	1	1	1	100	1	0	\N	\N
233	ORBC00USA	0101000020E6100000C52A943B22755DC06CBDF80568634640	-117.8302144	44.77661204	\N	swift	1	1	1	100	1	0	\N	\N
237	ORPD00USA	0101000020E61000003CF5EDC968AE5EC03029E384AECA4640	-122.7251458	45.5834509	\N	swift	1	1	1	100	1	0	\N	\N
239	ORSL00USA	0101000020E610000063AAAAE16CC25EC087D0D6FB6C784640	-123.0378956	44.94082592	\N	swift	1	1	1	100	1	0	\N	\N
240	PAAL00USA	0101000020E61000009146C331A4E452C062FB03C4A84E4440	-75.57252163	40.61452532	\N	swift	1	1	1	100	1	0	\N	\N
241	PACG00USA	0101000020E610000089FF852F1D0C54C02828241D0E214440	-80.18928135	40.25824322	\N	swift	1	1	1	100	1	0	\N	\N
242	PACR00USA	0101000020E6100000C7B11E8C92FD53C04F73765BB73C4440	-79.96206954	40.47434562	\N	swift	1	1	1	100	1	0	\N	\N
244	PAMF00USA	0101000020E61000003F641DD00A4553C01A43AD2742E74440	-77.07878497	41.80670639	\N	swift	1	1	1	100	1	0	\N	\N
247	SCMP00USA	0101000020E6100000A8F1FBCC53F753C01FE8F4FEB7674040	-79.86448979	32.81030261	\N	swift	1	1	1	100	1	0	\N	\N
248	SCOB00USA	0101000020E610000057C43C6D453754C0F7BF6DB7EEBE4040	-80.86361247	33.49166005	\N	swift	1	1	1	100	1	0	\N	\N
250	SDML00USA	0101000020E610000007AB77D9AB8158C0C6F253C14DDB4540	-98.02611386	43.7133104	\N	swift	1	1	1	100	1	0	\N	\N
253	SDRS00USA	0101000020E610000052E1BEC40EAB59C0F36BD20ADF474640	-102.6727764	44.56149421	\N	swift	1	1	1	100	1	0	\N	\N
254	SDWT00USA	0101000020E610000003505AF2174758C0A3F564BC35734640	-97.11083659	44.90007739	\N	swift	1	1	1	100	1	0	\N	\N
256	TNAM00USA	0101000020E61000009BF12A297F4756C0B55BC3F36FE44140	-89.11713628	35.78466651	\N	swift	1	1	1	100	1	0	\N	\N
257	TNBR00USA	0101000020E6100000255E1A9631B355C08A102E4F2DFB4140	-86.79990151	35.96232023	\N	swift	1	1	1	100	1	0	\N	\N
258	TNME00USA	0101000020E61000007909671AC17556C073C132999E864140	-89.83991108	35.05171504	\N	swift	1	1	1	100	1	0	\N	\N
260	TXAT00USA	0101000020E6100000260DC1B3B5F657C04F3330344F1A4040	-95.85484022	32.20554211	\N	swift	1	1	1	100	1	0	\N	\N
261	TXCC00USA	0101000020E6100000037955EB6D5A58C04C329324DFCB3B40	-97.41295894	27.79637364	\N	swift	1	1	1	100	1	0	\N	\N
262	TXDL00USA	0101000020E610000096E1896A5B3959C0F52EDE8FDB603D40	-100.8962046	29.37835025	\N	swift	1	1	1	100	1	0	\N	\N
263	TXEP00USA	0101000020E61000002CDE23F6E4935AC05237065383AB3F40	-106.3108497	31.6699726	\N	swift	1	1	1	100	1	0	\N	\N
264	TXFL00USA	0101000020E6100000353FA319308A58C0E1DECA4C48223D40	-98.1591858	29.13391571	\N	swift	1	1	1	100	1	0	\N	\N
265	TXFR00USA	0101000020E61000004E8E8EEDED3858C01702A9E200934040	-96.88952197	33.14846452	\N	swift	1	1	1	100	1	0	\N	\N
268	TXLB00USA	0101000020E6100000FDCC6ACBCA7759C0536211A280CD4040	-101.8717526	33.60548807	\N	swift	1	1	1	100	1	0	\N	\N
290	WASE00USA	0101000020E6100000339C7CC479A85EC0C33C33DA8DC84740	-122.6324321	47.56682899	\N	swift	1	1	1	100	1	0	\N	\N
291	WAWA00USA	0101000020E6100000E078889004965DC0E8672C925D084740	-118.3440286	46.06535556	\N	swift	1	1	1	100	1	0	\N	\N
293	WIEC00USA	0101000020E6100000D26B790609E056C0F61C810D42684640	-91.50055086	44.81451577	\N	swift	1	1	1	100	1	0	\N	\N
294	WIER00USA	0101000020E6100000CB227FF6045056C09466777130F54640	-89.25030291	45.91554087	\N	swift	1	1	1	100	1	0	\N	\N
295	WIHW00USA	0101000020E6100000D1DD22EEF9DE56C0754B9B3FE0014740	-91.48400453	46.01465602	\N	swift	1	1	1	100	1	0	\N	\N
296	WIJO00USA	0101000020E6100000A010A6CD1DF555C04CB227E4772C4640	-87.82994405	44.34740879	\N	swift	1	1	1	100	1	0	\N	\N
299	WIPE00USA	0101000020E6100000FE68B42C8A4D56C0F792C6681D974540	-89.21155851	43.180585	\N	swift	1	1	1	100	1	0	\N	\N
301	WVSA00USA	0101000020E6100000DFC1D354A47554C09184F90265314340	-81.83815499	38.38589513	\N	swift	1	1	1	100	1	0	\N	\N
302	WYCR00USA	0101000020E61000009D1A1EB14C955AC06A566C82DE6B4540	-106.3328059	42.84272795	\N	swift	1	1	1	100	1	0	\N	\N
303	WYEV00USA	0101000020E610000097DEA3A3C1BD5BC04204A07A39A24440	-110.9649438	41.26737912	\N	swift	1	1	1	100	1	0	\N	\N
304	WYGE00USA	0101000020E61000006A0B19D95F5C5AC099737CF654234640	-105.4433501	44.27603036	\N	swift	1	1	1	100	1	0	\N	\N
1	ABCG00CAN	0101000020E6100000F3412A2048895CC06E6E4C4F58884940	-114.1450272	51.065195	\N	swift	1	1	1	100	1	0	\N	\N
2	TABB00CAN	0101000020E61000004D3D1C6E51D85BC07D10764839EF4840	-111.3799701	49.86893564	\N	swift	1	1	1	100	1	0	\N	\N
3	TABC00CAN	0101000020E610000057056A31F89D5CC0231DD4345E984940	-114.4682735	51.19037495	\N	swift	1	1	1	100	1	0	\N	\N
4	TABE00CAN	0101000020E6100000DF8F36E991655CC0ABC84BABDFBC4A40	-113.5870307	53.47557584	\N	swift	1	1	1	100	1	0	\N	\N
5	TABG00CAN	0101000020E6100000CFDE742648DB5DC097B4988EEF9A4B40	-119.4262787	55.2104357	\N	swift	1	1	1	100	1	0	\N	\N
6	TABH00CAN	0101000020E610000066DD3F16A2635DC0CA0C860081B54A40	-117.556768	53.41799933	\N	swift	1	1	1	100	1	0	\N	\N
7	TABO00CAN	0101000020E61000005F7EA7C98CB15BC0A5413CD803014A40	-110.774218	52.00792983	\N	swift	1	1	1	100	1	0	\N	\N
8	TABP00CAN	0101000020E6100000960DC6E3FDD25BC0FE27A005F8FE4A40	-111.2967462	53.99194403	\N	swift	1	1	1	100	1	0	\N	\N
9	TBC300CAN	0101000020E610000046EFAF7930F45DC06FB4CAE93E9A4840	-119.8154587	49.20504496	\N	swift	1	1	1	100	1	0	\N	\N
10	TBCG00CAN	0101000020E6100000231BFE8900A95EC071E73E108BF24A40	-122.6406579	53.89486888	\N	swift	1	1	1	100	1	0	\N	\N
11	TBCH00CAN	0101000020E6100000F88903E8F7A95FC08028983185324B40	-126.655756	54.39468975	\N	swift	1	1	1	100	1	0	\N	\N
12	TBCK00CAN	0101000020E6100000F401DC87571460C0C60C7D45F1064B40	-128.6356849	54.05423802	\N	swift	1	1	1	100	1	0	\N	\N
13	TBCP00CAN	0101000020E61000000A40ED0184215FC0476DA839F5EA4840	-124.5236821	49.83560868	\N	swift	1	1	1	100	1	0	\N	\N
14	TBCS00CAN	0101000020E61000001692825D03C15FC021C17DB29C504940	-127.0158304	50.62978202	\N	swift	1	1	1	100	1	0	\N	\N
15	TBCT00CAN	0101000020E61000004A181758117A5FC0B1AE237183934840	-125.9073086	49.15244879	\N	swift	1	1	1	100	1	0	\N	\N
16	TBCW00CAN	0101000020E610000059260D7F173E5DC0F1898E479DA64940	-116.9701841	51.30167479	\N	swift	1	1	1	100	1	0	\N	\N
17	TMBK00CAN	0101000020E61000002ED2BCCA77EA58C066BC312D7F974840	-99.66356152	49.18356862	\N	swift	1	1	1	100	1	0	\N	\N
18	TMBW00CAN	0101000020E61000002702CDCEFF4558C015A12298B4FD4840	-97.09373827	49.9820738	\N	swift	1	1	1	100	1	0	\N	\N
19	TNBS00CAN	0101000020E610000084060720DAD150C00373DB5B9D984640	-67.2789383	45.19230221	\N	swift	1	1	1	100	1	0	\N	\N
20	TONH00CAN	0101000020E6100000678942891EEA54C086E03CC5BFD84840	-83.65811378	49.69335237	\N	swift	1	1	1	100	1	0	\N	\N
21	TONI00CAN	0101000020E6100000B654F72B51E956C0E75F3F82EAB44840	-91.64557933	49.41340664	\N	swift	1	1	1	100	1	0	\N	\N
22	TONL00CAN	0101000020E6100000DE2C90668D4D54C0A86A8A19C4774540	-81.21175541	42.93567199	\N	swift	1	1	1	100	1	0	\N	\N
23	TONM00CAN	0101000020E6100000CDE249FBB4D453C0711CBAD1AEEB4540	-79.32354624	43.84127256	\N	swift	1	1	1	100	1	0	\N	\N
24	TONO00CAN	0101000020E610000027BDF3B491EE52C03A1BD9326CB44640	-75.72764324	45.40955196	\N	swift	1	1	1	100	1	0	\N	\N
25	TONS00CAN	0101000020E610000004238A2415D155C0FAB516E268674840	-87.26691545	48.80788828	\N	swift	1	1	1	100	1	0	\N	\N
26	TONW00CAN	0101000020E6100000B912AA69513155C0756D561A84FF4740	-84.77059404	47.99621896	\N	swift	1	1	1	100	1	0	\N	\N
27	TQC300CAN	0101000020E6100000C3322E03EB2152C0146803F29D334740	-72.52996902	46.40325761	\N	swift	1	1	1	100	1	0	\N	\N
28	TQCA00CAN	0101000020E6100000ED9F86F3D9D452C0C9098F0D0F704740	-75.32580269	46.87545938	\N	swift	1	1	1	100	1	0	\N	\N
29	TQCB00CAN	0101000020E61000009B86D141D16853C0D76D2FEDC4384840	-77.63777204	48.44350972	\N	swift	1	1	1	100	1	0	\N	\N
30	TQCG00CAN	0101000020E6100000302D2CB0EE1E50C0B6DA8142566A4840	-64.48331837	48.83075744	\N	swift	1	1	1	100	1	0	\N	\N
31	TQCR00CAN	0101000020E610000055BB68C0472151C0458613A0BF3A4840	-68.52000437	48.45897294	\N	swift	1	1	1	100	1	0	\N	\N
32	TSKA00CAN	0101000020E61000001E25654197705AC0C79F45429D974A40	-105.7592319	53.18448666	\N	swift	1	1	1	100	1	0	\N	\N
33	TSKB00CAN	0101000020E610000050F8116429135BC0DD16D98C5B634A40	-108.2994013	52.77623139	\N	swift	1	1	1	100	1	0	\N	\N
34	TSKS00CAN	0101000020E6100000C4B5357D51F35AC0680586AC6E244940	-107.8018487	50.2846275	\N	swift	1	1	1	100	1	0	\N	\N
35	TSKY00CAN	0101000020E610000094CB35BB249F59C0FDFA2136D89A4940	-102.4866169	51.20972325	\N	swift	1	1	1	100	1	0	\N	\N
36	ALBH01USA	0101000020E6100000A64F404D8CB155C0F9870C2F31C34040	-86.77418834	33.52493847	\N	swift	1	1	1	100	1	0	\N	\N
39	ARCB00USA	0101000020E61000005E942C697D0257C0E9BBF82E677D4140	-92.03890447	34.97971141	\N	swift	1	1	1	100	1	0	\N	\N
40	ARFM00USA	0101000020E61000006FE29AF1EC9A57C08C678EB46DB14140	-94.4207119	35.38616044	\N	swift	1	1	1	100	1	0	\N	\N
42	AZCH00USA	0101000020E6100000FCF5549888F85BC03EE6A8482AD14040	-111.8833371	33.6341029	\N	swift	1	1	1	100	1	0	\N	\N
44	AZDL00USA	0101000020E61000005FA1C50897625CC020DC321A58664040	-113.5404684	32.79956367	\N	swift	1	1	1	100	1	0	\N	\N
47	AZHB00USA	0101000020E61000003E2883FE1D8A5BC04964A39C7D734140	-110.1580807	34.90227087	\N	swift	1	1	1	100	1	0	\N	\N
48	AZPG00USA	0101000020E6100000159CB0B357DD5BC08456F52CE7754240	-111.4584779	36.92111742	\N	swift	1	1	1	100	1	0	\N	\N
50	AZWC00USA	0101000020E6100000845C4EAE4E755BC083FC4BD651204040	-109.8329273	32.25249747	\N	swift	1	1	1	100	1	0	\N	\N
51	CAAA00USA	0101000020E61000002DC4341D4BEC5EC02A24B2725C744340	-123.6920846	38.90907129	\N	swift	1	1	1	100	1	0	\N	\N
52	CAAS00USA	0101000020E6100000714C6084BA225EC0790C878CE4BD4440	-120.5426341	41.48353726	\N	swift	1	1	1	100	1	0	\N	\N
56	CACS00USA	0101000020E61000006B1B351518ED5DC0102F1DAD49694240	-119.7045949	36.82256092	\N	swift	1	1	1	100	1	0	\N	\N
59	CADV00USA	0101000020E6100000F3C98AE16A8C5EC078C57C0E66814240	-122.1940235	37.01092702	\N	swift	1	1	1	100	1	0	\N	\N
63	CAFT00USA	0101000020E6100000662728EAF17A5EC066A630C672BC4240	-121.9210153	37.47225263	\N	swift	1	1	1	100	1	0	\N	\N
70	CAND00USA	0101000020E61000008D2A1E728EA65CC0D19C2FD5506B4140	-114.6024442	34.83840432	\N	swift	1	1	1	100	1	0	\N	\N
72	CARD01USA	0101000020E61000009080762CDB985EC05990A0D7234A4440	-122.3883773	40.57921882	\N	swift	1	1	1	100	1	0	\N	\N
74	CASE00USA	0101000020E61000002D74CA48622A5EC0FAFC838AA2354440	-120.6622488	40.41902286	\N	swift	1	1	1	100	1	0	\N	\N
76	CASO00USA	0101000020E610000088CFE7ED19555EC0062293A5B9364240	-121.3297076	36.42754049	\N	swift	1	1	1	100	1	0	\N	\N
77	CAST00USA	0101000020E61000003EBB325EA93D5DC0792F4A12FC694040	-116.9634624	32.82800511	\N	swift	1	1	1	100	1	0	\N	\N
78	CAVA00USA	0101000020E6100000A64EF685C6CC5DC03B161DC1F41F4140	-119.1996169	34.24965681	\N	swift	1	1	1	100	1	0	\N	\N
84	COFO00USA	0101000020E61000003BCF8E0A52F359C0E91F6DB115204440	-103.8018824	40.25066202	\N	swift	1	1	1	100	1	0	\N	\N
88	COPU00USA	0101000020E61000000C6D4AC3BA275AC0B93F51B822214340	-104.6207741	38.25887207	\N	swift	1	1	1	100	1	0	\N	\N
90	FLBR00USA	0101000020E61000006E3B2300AE0554C0EE450FD7C55E3A40	-80.08874515	26.3702063	\N	swift	1	1	1	100	1	0	\N	\N
101	GACA00USA	0101000020E61000002AA6146C4A0D55C042BDF0B52DE03E40	-84.20766737	30.87569749	\N	swift	1	1	1	100	1	0	\N	\N
102	GACB00USA	0101000020E6100000EB6499136E3F55C09CFA820EA13B4040	-84.99109354	32.46585256	\N	swift	1	1	1	100	1	0	\N	\N
108	IAFD00USA	0101000020E6100000C22ECC3A4A8C57C0C8BF641D6D404540	-94.19203062	42.50332992	\N	swift	1	1	1	100	1	0	\N	\N
109	IAFM00USA	0101000020E610000039988F9C33D456C036D7FE08A2504440	-91.31565012	40.62994492	\N	swift	1	1	1	100	1	0	\N	\N
111	IAHL00USA	0101000020E610000081BC0D2072D457C087F7A09032D44440	-95.31946565	41.65779312	\N	swift	1	1	1	100	1	0	\N	\N
112	IDBU00USA	0101000020E6100000A8870DBB94B05CC0BF0CE796AD4C4540	-114.7590778	42.59904753	\N	swift	1	1	1	100	1	0	\N	\N
116	IDRY00USA	0101000020E6100000AA5F8EC385FA5BC0BCB8A6A310D64540	-111.9144143	43.67238279	\N	swift	1	1	1	100	1	0	\N	\N
118	ILCY01USA	0101000020E610000025E16B9DF20C56C0C2DFED49F9E94440	-88.20230804	41.82792019	\N	swift	1	1	1	100	1	0	\N	\N
120	ILSL01USA	0101000020E61000002A12FA36506C56C0A3E5822B07E44440	-89.69239592	41.78146881	\N	swift	1	1	1	100	1	0	\N	\N
121	ILTV00USA	0101000020E61000004A64FE55F05256C04AAABE0C29C64340	-89.29591894	39.54812774	\N	swift	1	1	1	100	1	0	\N	\N
122	INFW00USA	0101000020E6100000600A2837BE4855C06777CC69E4894440	-85.13660983	41.07728312	\N	swift	1	1	1	100	1	0	\N	\N
123	INSG00USA	0101000020E6100000D5EA8A9D197155C09EEE7E0D6F304340	-85.76718844	38.37838906	\N	swift	1	1	1	100	1	0	\N	\N
126	KSDN00USA	0101000020E61000000B50093EBC1D59C030D55093AE3D4340	-100.4646144	38.48189012	\N	swift	1	1	1	100	1	0	\N	\N
128	KSHU00USA	0101000020E6100000F34ECB30AA7B58C0506562049E074340	-97.93226261	38.0595098	\N	swift	1	1	1	100	1	0	\N	\N
133	LAOD00USA	0101000020E61000008F77A27F5D2A57C0070400E8ACD03E40	-92.6619567	30.81513834	\N	swift	1	1	1	100	1	0	\N	\N
137	MASG00USA	0101000020E6100000B92C4FB510C151C047F4BE33523F4540	-71.01664479	42.49469611	\N	swift	1	1	1	100	1	0	\N	\N
139	MEEW00USA	0101000020E6100000FD3F7717221B51C0CE456C4555454640	-68.42395579	44.54166477	\N	swift	1	1	1	100	1	0	\N	\N
140	MEMW00USA	0101000020E61000007A7654907A1551C0A5F297923CAD4740	-68.3356057	47.35341103	\N	swift	1	1	1	100	1	0	\N	\N
141	MEPL00USA	0101000020E61000007498714B128A51C080513871A8574640	-70.15736662	44.68482795	\N	swift	1	1	1	100	1	0	\N	\N
142	MIAL00USA	0101000020E610000081629E74A6DB54C0A31E260AC2874640	-83.43203464	45.06060912	\N	swift	1	1	1	100	1	0	\N	\N
144	MIDB00USA	0101000020E610000092AE997CF3CB54C021DC8DD3CA284540	-83.18673625	42.31868977	\N	swift	1	1	1	100	1	0	\N	\N
148	MIMK00USA	0101000020E610000018A38536469055C03D15CB88E69D4540	-86.25428546	43.23359785	\N	swift	1	1	1	100	1	0	\N	\N
153	MNGM01USA	0101000020E6100000BD7559A7659556C0BB7FA80BE3DF4740	-90.33432945	47.74911638	\N	swift	1	1	1	100	1	0	\N	\N
155	MNSC00USA	0101000020E6100000096B63EC04BD57C02CCEFF4864DE4640	-94.9534255	45.73743546	\N	swift	1	1	1	100	1	0	\N	\N
160	MOJP00USA	0101000020E6100000952FE4E8DCA057C003B78BBCEE884240	-94.51348326	37.06978566	\N	swift	1	1	1	100	1	0	\N	\N
161	MOMC00USA	0101000020E6100000A9168D8C401E57C0B78DB3A76CDE4340	-92.47268976	39.73769089	\N	swift	1	1	1	100	1	0	\N	\N
163	MSLL00USA	0101000020E6100000F1C659436FB956C041A9AC5CDEB34040	-90.89741596	33.40522345	\N	swift	1	1	1	100	1	0	\N	\N
171	MTGC02USA	0101000020E61000006E85B01ACBA85AC03605CF10D0184840	-106.6373965	48.19384966	\N	swift	1	1	1	100	1	0	\N	\N
172	MTGE00USA	0101000020E6100000FD3383F8C02D5AC06AF008B8318D4740	-104.714903	47.1030798	\N	swift	1	1	1	100	1	0	\N	\N
174	MTHN00USA	0101000020E610000015D742DA108A5CC07E04178E941F4740	-114.1572786	46.24672104	\N	swift	1	1	1	100	1	0	\N	\N
182	NCTC00USA	0101000020E61000004686C91225B853C08D9CE0F6DF124140	-78.87726278	34.14745985	\N	swift	1	1	1	100	1	0	\N	\N
183	NDDL00USA	0101000020E6100000AD3AA394EDB658C07129BE0C0C0D4840	-98.85825077	48.10193023	\N	swift	1	1	1	100	1	0	\N	\N
184	NDJT00USA	0101000020E61000006D85D9993CAE58C0D75579E943724740	-98.72244879	46.89269751	\N	swift	1	1	1	100	1	0	\N	\N
185	NDLB00USA	0101000020E6100000A51BBC0A045359C0F330DDB9EA204840	-101.2971217	48.25716327	\N	swift	1	1	1	100	1	0	\N	\N
186	NDLS00USA	0101000020E61000002F88273FD24258C0FEC155D86BF34740	-97.04408244	47.90172867	\N	swift	1	1	1	100	1	0	\N	\N
187	NDMN00USA	0101000020E6100000F090BD39373959C046F9D55EBC694740	-100.8939957	46.82606111	\N	swift	1	1	1	100	1	0	\N	\N
191	NEGI00USA	0101000020E6100000326F9BCADE9558C005D05A973B764440	-98.34172311	40.92369358	\N	swift	1	1	1	100	1	0	\N	\N
192	NENF00USA	0101000020E6100000AB9DBC233E5A58C0A1272BA739044540	-97.4100427	42.03300943	\N	swift	1	1	1	100	1	0	\N	\N
200	NMDE00USA	0101000020E6100000FC6541727CF05AC04E705E5A5C224040	-107.7575956	32.26844339	\N	swift	1	1	1	100	1	0	\N	\N
204	NMRR00USA	0101000020E610000099A14CFE02A55AC019ABCDFF2BAA4140	-106.5783077	35.32946775	\N	swift	1	1	1	100	1	0	\N	\N
207	NVCA00USA	0101000020E6100000444DF4F9A8A05CC07A519A519CCE4240	-114.5103135	37.61414547	\N	swift	1	1	1	100	1	0	\N	\N
208	NVEL00USA	0101000020E61000008EC87729F5B65CC024F1138317A14340	-114.8587135	39.25853003	\N	swift	1	1	1	100	1	0	\N	\N
211	NVPP00USA	0101000020E61000009016670C73FF5CC0AE6DC4724F1A4240	-115.991397	36.20554957	\N	swift	1	1	1	100	1	0	\N	\N
212	NVRO00USA	0101000020E6100000F54718062CF25DC03D68B088E5C14340	-119.783937	39.51481732	\N	swift	1	1	1	100	1	0	\N	\N
214	NVTN00USA	0101000020E6100000C1B45EC2D74E5DC07CEF6FD0DE084340	-117.2319189	38.06929975	\N	swift	1	1	1	100	1	0	\N	\N
223	OHLG00USA	0101000020E61000005F8ABCF6D68754C0C511D68C2D9D4440	-82.12249535	41.22795258	\N	swift	1	1	1	100	1	0	\N	\N
225	OKAL00USA	0101000020E61000004B8735325BD558C063A063EEF7514140	-99.33369117	34.64037876	\N	swift	1	1	1	100	1	0	\N	\N
227	OKGU00USA	0101000020E6100000643F8BA5C85E59C00A50AE8449574240	-101.4809965	36.6819311	\N	swift	1	1	1	100	1	0	\N	\N
231	ORAS00USA	0101000020E6100000E583F9861DF75EC055999448C3174740	-123.8611772	46.18564708	\N	swift	1	1	1	100	1	0	\N	\N
234	ORBD00USA	0101000020E61000001F42018008545EC0EC653E94A6074640	-121.3130188	44.05977109	\N	swift	1	1	1	100	1	0	\N	\N
235	ORBR00USA	0101000020E61000001633C2DB83C35DC0CF914BD26BCB4540	-119.054923	43.58922795	\N	swift	1	1	1	100	1	0	\N	\N
236	OREU00USA	0101000020E6100000F60CE19865C85EC0DB03E76B1A064640	-123.131201	44.04768132	\N	swift	1	1	1	100	1	0	\N	\N
238	ORRB00USA	0101000020E6100000DEE522BE13D65EC05CDE452D879A4540	-123.344955	43.20725027	\N	swift	1	1	1	100	1	0	\N	\N
243	PAER00USA	0101000020E610000007F289C8720554C0D5747FED47104540	-80.08513082	42.12719506	\N	swift	1	1	1	100	1	0	\N	\N
245	PANC00USA	0101000020E610000029FA6CB2403753C06783E907371D4440	-76.86332379	40.22824191	\N	swift	1	1	1	100	1	0	\N	\N
246	PATM00USA	0101000020E61000000737A5FE72F053C02B3817DA144D4440	-79.75701872	40.60219885	\N	swift	1	1	1	100	1	0	\N	\N
249	SDMG00USA	0101000020E6100000A9DFE066CC1B59C0615E15E270C44640	-100.4343507	45.53469492	\N	swift	1	1	1	100	1	0	\N	\N
251	SDPR00USA	0101000020E6100000D94933CCBF0359C0F03F099E88F44540	-100.0585814	43.91041923	\N	swift	1	1	1	100	1	0	\N	\N
252	SDRC00USA	0101000020E610000082531F48DECE59C0204F3F666F0A4640	-103.232317	44.08152464	\N	swift	1	1	1	100	1	0	\N	\N
255	TNAC00USA	0101000020E6100000EC7D15A650FE54C00F8EA383BFE54140	-83.97367241	35.79490705	\N	swift	1	1	1	100	1	0	\N	\N
259	TXAM00USA	0101000020E61000001E2796A5677759C0C73D654EFA9A4140	-101.8657011	35.21076374	\N	swift	1	1	1	100	1	0	\N	\N
266	TXGV00USA	0101000020E6100000686BF1E7A3B257C0A3495AD8704C3D40	-94.79125403	29.29859688	\N	swift	1	1	1	100	1	0	\N	\N
267	TXKL00USA	0101000020E61000004C5047F0546F58C0FB3B80EAC41E3F40	-97.73955924	31.1201922	\N	swift	1	1	1	100	1	0	\N	\N
269	TXMF00USA	0101000020E610000062AEFB7DB5005AC0D46D3FCF554F3E40	-104.0110774	30.3099031	\N	swift	1	1	1	100	1	0	\N	\N
270	TXNC00USA	0101000020E6100000E73DC6C3D8A957C06958C665609A3F40	-94.65385527	31.60303341	\N	swift	1	1	1	100	1	0	\N	\N
224	OHOT00USA	0101000020E6100000413F1904120355C0BAC1CC4E71824440	-84.04797461	41.01908288	\N	swift	1	1	1	100	1	0	\N	\N
271	TXOD00USA	0101000020E6100000AA3D36139D9759C09EC009BFB3D83F40	-102.3689621	31.84649271	\N	swift	1	1	1	100	1	0	\N	\N
272	TXPO00USA	0101000020E610000043C89A0D091A58C0343B625F78723C40	-96.40680256	28.44714924	\N	swift	1	1	1	100	1	0	\N	\N
273	TXSB00USA	0101000020E6100000319D7343556858C05694B7C8E2213A40	-97.63020407	26.1323667	\N	swift	1	1	1	100	1	0	\N	\N
282	VABF00USA	0101000020E6100000A84F17CE5A5154C0514900AB61A04240	-81.2711673	37.25298059	\N	swift	1	1	1	100	1	0	\N	\N
283	VACP00USA	0101000020E61000009A6DD9E7121A53C0AD604470966E4240	-76.40740391	36.86396602	\N	swift	1	1	1	100	1	0	\N	\N
286	VTRU00USA	0101000020E6100000FAB18B9A963E52C021EB67B985CD4540	-72.97794212	43.60564344	\N	swift	1	1	1	100	1	0	\N	\N
289	WARP00USA	0101000020E6100000DDEEE53E39AF5DC0D440B98EED524840	-118.737869	48.64787468	\N	swift	1	1	1	100	1	0	\N	\N
292	WAYA00USA	0101000020E6100000558F8F71A0205EC02BB79B7DF14C4740	-120.5097927	46.60111971	\N	swift	1	1	1	100	1	0	\N	\N
297	WILC00USA	0101000020E61000008CCBA77D29D056C04E93DFC3A1E94540	-91.2525324	43.82524918	\N	swift	1	1	1	100	1	0	\N	\N
298	WIMR03USA	0101000020E61000003928A3C2FF6B56C02CD67091FB964640	-89.68748537	45.17955225	\N	swift	1	1	1	100	1	0	\N	\N
300	WISS00USA	0101000020E61000001B9330998BFF55C0558650299F894540	-87.99289541	43.07516972	\N	swift	1	1	1	100	1	0	\N	\N
305	WYRS00USA	0101000020E6100000CE9A690C044D5BC09A5864645ECC4440	-109.2033721	41.59663062	\N	swift	1	1	1	100	1	0	\N	\N
306	WYWL00USA	0101000020E6100000DB6D179A6BFD5AC0F5F9A4EA09024640	-107.9596925	44.01592763	\N	swift	1	1	1	100	1	0	\N	\N
274	TXSL00USA	0101000020E61000007FEFFCC3120A58C0970B6C00FCC73D40	-96.15739536	29.78118899	\N	swift	1	1	1	100	1	0	\N	\N
275	TXSN00USA	0101000020E61000009BB77F9F104B58C073BE7551366E3D40	-97.17288959	29.43051633	\N	swift	1	1	1	100	1	0	\N	\N
276	TXSR00USA	0101000020E6100000FC64D69C4D2959C0D7F996BD95923E40	-100.6453621	30.57259736	\N	swift	1	1	1	100	1	0	\N	\N
277	TXSW00USA	0101000020E61000001E90DF362E1A59C07415A47C353C4040	-100.4090707	32.47038229	\N	swift	1	1	1	100	1	0	\N	\N
278	UTGU00USA	0101000020E61000006E8ECE5463F45BC010C8EBE2B2934340	-111.8185627	39.15389668	\N	swift	1	1	1	100	1	0	\N	\N
279	UTHU00USA	0101000020E610000066AABB0DC5BD5BC0A9D1B37212AA4340	-110.9651522	39.32868799	\N	swift	1	1	1	100	1	0	\N	\N
280	UTML00USA	0101000020E6100000BC0FF6DCF8555BC0AD314BAF8BEF4240	-109.3433144	37.87145034	\N	swift	1	1	1	100	1	0	\N	\N
281	VAAB00USA	0101000020E6100000BF30F4E3CA7E54C07201A23FB85A4240	-81.98113345	36.70874782	\N	swift	1	1	1	100	1	0	\N	\N
284	VARM00USA	0101000020E6100000049A7C71B15E53C0A6E7A3ADC6C64240	-77.47958028	37.55293818	\N	swift	1	1	1	100	1	0	\N	\N
285	VAVN00USA	0101000020E61000001E6EC9A257F953C0BDFD985ADFA34240	-79.89597387	37.28025372	\N	swift	1	1	1	100	1	0	\N	\N
287	WALD00USA	0101000020E6100000EE7C3F355E9E5EC01C1C57E98F604840	-122.4745	48.75439183	\N	swift	1	1	1	100	1	0	\N	\N
288	WAMW00USA	0101000020E610000092FE03511C525DC038F28280E3D74740	-117.2829783	47.68663031	\N	swift	1	1	1	100	1	0	\N	\N
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: dj
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: CONUS_stations_v2; Type: TABLE DATA; Schema: swift; Owner: dj
--

COPY swift."CONUS_stations_v2" (id, geom, "project id", "site name", "swift site", longitude, latitude, "street add", city, "zip code", state, country, "site statu", "approved f", "project na", station, provider, base, rover, "bds-b1", "bds-b2", "bds-b2a", "gal-e1", "gal-e5a", "gal-e5b", "gps-l1c", "gps-l2c", "gps-l2p", "gps-l5", pilot, commercial, access, sla, type, status) FROM stdin;
5	0101000020E61000003DFEA0687D0257C04295792F677D4140	\N	\N	\N	-92.03890434	34.97971147	\N	\N	\N	\N	\N	\N	\N	\N	ARCB00USA	swift	1	0	18	6	12	18	18	18	22	\N	18	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
6	0101000020E61000006FE29AF1EC9A57C08C678EB46DB14140	\N	\N	\N	-94.4207119	35.38616044	\N	\N	\N	\N	\N	\N	\N	\N	ARFM00USA	swift	1	0	16	4	12	18	18	18	23.6	\N	21.6	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
8	0101000020E6100000FCF5549888F85BC0B5B254492AD14040	\N	\N	\N	-111.8833371	33.63410298	\N	\N	\N	\N	\N	\N	\N	\N	AZCH00USA	swift	1	0	16	4	12	18	18	18	20.6	\N	20.6	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
10	0101000020E61000005FA1C50897625CC020DC321A58664040	\N	\N	\N	-113.5404684	32.79956367	\N	\N	\N	\N	\N	\N	\N	\N	AZDL00USA	swift	1	0	23.4	5.2	18.2	20.8	20.8	20.8	27	\N	27	13	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
1	0101000020E6100000F3412A2048895CC06E6E4C4F58884940	\N	\N	\N	-114.1450272	51.065195	\N	\N	\N	\N	\N	\N	\N	\N	ABCG00CAN	swift	1	0	10	4	\N	20	20	20	23.8	\N	23.8	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
2	0101000020E6100000A64F404D8CB155C0F9870C2F31C34040	\N	\N	\N	-86.77418834	33.52493847	\N	\N	\N	\N	\N	\N	\N	\N	ALBH01USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
3	0101000020E6100000A0C37C7901A855C02F71FD1E69D43F40	\N	\N	\N	-86.62509	31.82972902	\N	\N	\N	\N	\N	\N	\N	\N	ALGR00USA	swift	1	0	10	6	\N	17.6	17.6	17.6	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
4	0101000020E610000016E6D232714357C04B98A3A6610F4140	\N	\N	\N	-93.05378409	34.12016757	\N	\N	\N	\N	\N	\N	\N	\N	ARAK00USA	swift	1	0	10	6	\N	18	18	18	21	\N	19	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
7	0101000020E610000019DA4AF91ABE56C02B88A2BC66214240	\N	\N	\N	-90.97039635	36.26094778	\N	\N	\N	\N	\N	\N	\N	\N	ARPH00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
9	0101000020E6100000CE93217D49E15BC06769C083937C4040	\N	\N	\N	-111.5201104	32.97325179	\N	\N	\N	\N	\N	\N	\N	\N	AZCO00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
11	0101000020E61000000D9DE8047EE95BC044B3A15170994140	\N	\N	\N	-111.6483166	35.1987402	\N	\N	\N	\N	\N	\N	\N	\N	AZFL00USA	swift	1	0	6	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
13	0101000020E6100000AF3CED951E8A5BC0AEE0AFB07D734140	\N	\N	\N	-110.1581168	34.90227326	\N	\N	\N	\N	\N	\N	\N	\N	AZHB00USA	swift	1	0	No data	No data	No data	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
14	0101000020E6100000159CB0B357DD5BC08456F52CE7754240	\N	\N	\N	-111.4584779	36.92111742	\N	\N	\N	\N	\N	\N	\N	\N	AZPG00USA	swift	1	0	18	4	14	18	18	18	22	\N	22	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
16	0101000020E6100000845C4EAE4E755BC083FC4BD651204040	\N	\N	\N	-109.8329273	32.25249747	\N	\N	\N	\N	\N	\N	\N	\N	AZWC00USA	swift	1	0	18	4	14	18	18	18	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
17	0101000020E61000002DC4341D4BEC5EC02A24B2725C744340	\N	\N	\N	-123.6920846	38.90907129	\N	\N	\N	\N	\N	\N	\N	\N	CAAA00USA	swift	1	0	20	4	16	18	17.8	18	20	\N	20	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
18	0101000020E6100000A7ECF483BA225EC0F0D8328DE4BD4440	\N	\N	\N	-120.542634	41.48353734	\N	\N	\N	\N	\N	\N	\N	\N	CAAS00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
19	0101000020E6100000246AFD88BA225EC0EAE36744E5BD4440	\N	\N	\N	-120.5426352	41.48355918	\N	\N	\N	\N	\N	\N	\N	\N	CAAS00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
23	0101000020E6100000D65B5E1418ED5DC069089EAD49694240	\N	\N	\N	-119.7045947	36.82256098	\N	\N	\N	\N	\N	\N	\N	\N	CACS00USA	swift	1	0	8	4	\N	20	20	20	23.6	\N	23.6	11.6	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
26	0101000020E6100000F3C98AE16A8C5EC078C57C0E66814240	\N	\N	\N	-122.1940235	37.01092702	\N	\N	\N	\N	\N	\N	\N	\N	CADV00USA	swift	1	0	16	4	14	18	18	18	21.8	\N	21.8	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
30	0101000020E6100000662728EAF17A5EC066A630C672BC4240	\N	\N	\N	-121.9210153	37.47225263	\N	\N	\N	\N	\N	\N	\N	\N	CAFT00USA	swift	1	0	20	4	16	20	20	20	23.8	\N	23.8	11.6	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
37	0101000020E61000008D2A1E728EA65CC0D19C2FD5506B4140	\N	\N	\N	-114.6024442	34.83840432	\N	\N	\N	\N	\N	\N	\N	\N	CAND00USA	swift	1	0	18	4	14	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
41	0101000020E610000098B4F347622A5EC0C55CEF8AA2354440	\N	\N	\N	-120.6622486	40.41902291	\N	\N	\N	\N	\N	\N	\N	\N	CASE00USA	swift	1	0	6	4	\N	18	18	18	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
44	0101000020E6100000D3F0D2F2A83D5DC0E4B0451CFC694040	\N	\N	\N	-116.9634368	32.8280063	\N	\N	\N	\N	\N	\N	\N	\N	CAST00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
45	0101000020E6100000D0436D1BC6CC5DC023D897F0F41F4140	\N	\N	\N	-119.1995915	34.24966247	\N	\N	\N	\N	\N	\N	\N	\N	CAVA00USA	swift	1	0	22	4	18	20	20	20	23.8	\N	23.8	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
52	0101000020E61000003BCF8E0A52F359C0E91F6DB115204440	\N	\N	\N	-103.8018824	40.25066202	\N	\N	\N	\N	\N	\N	\N	\N	COFO00USA	swift	1	0	18	4	14	18	18	17.8	22	\N	22	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
56	0101000020E6100000410DDFC2BA275AC04DFF27B922214340	\N	\N	\N	-104.620774	38.25887217	\N	\N	\N	\N	\N	\N	\N	\N	COPU00USA	swift	1	0	7.2	3.6	\N	16.2	16.2	16.2	19.8	\N	19.8	7.2	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
58	0101000020E61000006E3B2300AE0554C0EE450FD7C55E3A40	\N	\N	\N	-80.08874515	26.3702063	\N	\N	\N	\N	\N	\N	\N	\N	FLBR00USA	swift	1	0	22	6	16	20	20	20	20	\N	20	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
69	0101000020E61000002AA6146C4A0D55C042BDF0B52DE03E40	\N	\N	\N	-84.20766737	30.87569749	\N	\N	\N	\N	\N	\N	\N	\N	GACA00USA	swift	1	0	20	6	14	16	16	16	20	\N	18	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
70	0101000020E6100000EB6499136E3F55C09CFA820EA13B4040	\N	\N	\N	-84.99109354	32.46585256	\N	\N	\N	\N	\N	\N	\N	\N	GACB00USA	swift	1	0	18	6	12	16	16	16	18	\N	18	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
76	0101000020E6100000C22ECC3A4A8C57C0C8BF641D6D404540	\N	\N	\N	-94.19203062	42.50332992	\N	\N	\N	\N	\N	\N	\N	\N	IAFD00USA	swift	1	0	16	4	12	18	18	18	19.6	\N	19.6	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
77	0101000020E6100000C2367F9F33D456C043961EB09F504440	\N	\N	\N	-91.31565082	40.62987329	\N	\N	\N	\N	\N	\N	\N	\N	IAFM00USA	swift	1	0	8	4	\N	18	18	18	26	\N	23.8	14	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
79	0101000020E610000081BC0D2072D457C087F7A09032D44440	\N	\N	\N	-95.31946565	41.65779312	\N	\N	\N	\N	\N	\N	\N	\N	IAHL00USA	swift	1	0	16	4	12	18	18	18	20	\N	20	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
80	0101000020E6100000A8870DBB94B05CC0BF0CE796AD4C4540	\N	\N	\N	-114.7590778	42.59904753	\N	\N	\N	\N	\N	\N	\N	\N	IDBU00USA	swift	1	0	20	4	16	18	18	18	22	\N	20	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
84	0101000020E6100000AA5F8EC385FA5BC0159227A410D64540	\N	\N	\N	-111.9144143	43.67238285	\N	\N	\N	\N	\N	\N	\N	\N	IDRY00USA	swift	1	0	22	4	18	20	20	20	24	\N	24	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
86	0101000020E6100000454D2EA5F20C56C087C73CFAF8E94440	\N	\N	\N	-88.20230989	41.82791069	\N	\N	\N	\N	\N	\N	\N	\N	ILCY00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
89	0101000020E61000004A64FE55F05256C04AAABE0C29C64340	\N	\N	\N	-89.29591894	39.54812774	\N	\N	\N	\N	\N	\N	\N	\N	ILTV00USA	swift	1	0	16	4	12	18	18	18	19.8	\N	16	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
90	0101000020E6100000600A2837BE4855C06777CC69E4894440	\N	\N	\N	-85.13660983	41.07728312	\N	\N	\N	\N	\N	\N	\N	\N	INFW00USA	swift	1	0	18	6	12	18	18	16	21.4	\N	18	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
91	0101000020E61000002C09F599187155C0AF30543070304340	\N	\N	\N	-85.76712655	38.37842373	\N	\N	\N	\N	\N	\N	\N	\N	INSG00USA	swift	1	0	10	6	\N	16	16	16	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
94	0101000020E61000000B50093EBC1D59C030D55093AE3D4340	\N	\N	\N	-100.4646144	38.48189012	\N	\N	\N	\N	\N	\N	\N	\N	KSDN00USA	swift	1	0	16	4	12	18	18	18	20	\N	20	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
96	0101000020E610000002D3ED15AB7B58C0AFEF3F099E074340	\N	\N	\N	-97.93231724	38.05951038	\N	\N	\N	\N	\N	\N	\N	\N	KSHU00USA	swift	1	0	8	4	\N	18	18	18	19.8	\N	19.8	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
101	0101000020E6100000DEB112D25E2A57C0A21C58D0ACD03E40	\N	\N	\N	-92.66203739	30.81513693	\N	\N	\N	\N	\N	\N	\N	\N	LAOD00USA	swift	1	0	10	6	\N	18	18	18	23.2	\N	22	13.2	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
105	0101000020E61000007D46F9B410C151C09A877E33523F4540	\N	\N	\N	-71.01664471	42.49469608	\N	\N	\N	\N	\N	\N	\N	\N	MASG00USA	swift	1	0	22	6	16	14	14	14	18.6	\N	18	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
109	0101000020E6100000A695A54A128A51C00FCB4D71A8574640	\N	\N	\N	-70.15736643	44.68482796	\N	\N	\N	\N	\N	\N	\N	\N	MEPL00USA	swift	1	0	10	6	\N	14	14	14	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
110	0101000020E610000040368773A6DB54C032983B0AC2874640	\N	\N	\N	-83.43203438	45.06060913	\N	\N	\N	\N	\N	\N	\N	\N	MIAL00USA	swift	1	0	16	4	12	14	16	16	19	\N	16.4	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
112	0101000020E610000092AE997CF3CB54C021DC8DD3CA284540	\N	\N	\N	-83.18673625	42.31868977	\N	\N	\N	\N	\N	\N	\N	\N	MIDB00USA	swift	1	0	18	6	12	16	16	16	21	\N	18	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
116	0101000020E610000018A38536469055C03D15CB88E69D4540	\N	\N	\N	-86.25428546	43.23359785	\N	\N	\N	\N	\N	\N	\N	\N	MIMK00USA	swift	1	0	16	4	12	18	18	18	21.8	\N	18	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
124	0101000020E6100000096B63EC04BD57C02CCEFF4864DE4640	\N	\N	\N	-94.9534255	45.73743546	\N	\N	\N	\N	\N	\N	\N	\N	MNSC00USA	swift	1	0	16	4	12	20	20	20	24	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
129	0101000020E61000001B960EEFDCA057C06F83DA6FED884240	\N	\N	\N	-94.51348473	37.069746	\N	\N	\N	\N	\N	\N	\N	\N	MOJP00USA	swift	1	0	10	6	\N	18	18	18	23.2	\N	19.4	11.4	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
130	0101000020E6100000A9168D8C401E57C0B78DB3A76CDE4340	\N	\N	\N	-92.47268976	39.73769089	\N	\N	\N	\N	\N	\N	\N	\N	MOMC00USA	swift	1	0	16	4	12	18	18	18	24.2	\N	21.8	14	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
132	0101000020E6100000F1C659436FB956C041A9AC5CDEB34040	\N	\N	\N	-90.89741596	33.40522345	\N	\N	\N	\N	\N	\N	\N	\N	MSLL00USA	swift	1	0	18	6	12	18	18	18	22	\N	18	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
138	0101000020E6100000BE8AE7C73A205BC033631B0211354840	\N	\N	\N	-108.5035877	48.41458155	\N	\N	\N	\N	\N	\N	\N	\N	MTDD00USA	swift	1	0	10	4	\N	20	20	20	26	\N	26	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
141	0101000020E610000032D417F8C02D5AC03A9635B9318D4740	\N	\N	\N	-104.7149029	47.10307994	\N	\N	\N	\N	\N	\N	\N	\N	MTGE00USA	swift	1	0	10	4	\N	18	18	18	24	\N	24	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
143	0101000020E610000015D742DA108A5CC04964828E941F4740	\N	\N	\N	-114.1572786	46.24672109	\N	\N	\N	\N	\N	\N	\N	\N	MTHN00USA	swift	1	0	10	4	\N	18	18	18	24	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
152	0101000020E61000004686C91225B853C08D9CE0F6DF124140	\N	\N	\N	-78.87726278	34.14745985	\N	\N	\N	\N	\N	\N	\N	\N	NCTC00USA	swift	1	0	18	6	12	14	14	14	19.8	\N	19.8	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
156	0101000020E61000008078863ED24258C022FB41D96BF34740	\N	\N	\N	-97.04408229	47.90172878	\N	\N	\N	\N	\N	\N	\N	\N	NDLS00USA	swift	1	0	0.8	0.4	\N	2	2	2	2.6	\N	2.4	1.2	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
157	0101000020E610000025315239373959C0F365165FBC694740	\N	\N	\N	-100.8939956	46.82606114	\N	\N	\N	\N	\N	\N	\N	\N	NDMN00USA	swift	1	0	8	4	\N	19.6	19.6	19.6	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
161	0101000020E6100000326F9BCADE9558C005D05A973B764440	\N	\N	\N	-98.34172311	40.92369358	\N	\N	\N	\N	\N	\N	\N	\N	NEGI00USA	swift	1	0	18	4	14	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
162	0101000020E6100000AB9DBC233E5A58C0A1272BA739044540	\N	\N	\N	-97.4100427	42.03300943	\N	\N	\N	\N	\N	\N	\N	\N	NENF00USA	swift	1	0	16	4	12	20	20	20	22	\N	20	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
163	0101000020E6100000626FBD01C13059C0E40D17567D914440	\N	\N	\N	-100.7617802	41.13663746	\N	\N	\N	\N	\N	\N	\N	\N	NENP00USA	swift	1	0	8	4	\N	20	20	20	22	\N	20.6	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
170	0101000020E6100000FC6541727CF05AC04E705E5A5C224040	\N	\N	\N	-107.7575956	32.26844339	\N	\N	\N	\N	\N	\N	\N	\N	NMDE00USA	swift	1	0	18	4	14	20	20	20	21.8	\N	21.8	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
177	0101000020E6100000444DF4F9A8A05CC07A519A519CCE4240	\N	\N	\N	-114.5103135	37.61414547	\N	\N	\N	\N	\N	\N	\N	\N	NVCA00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
178	0101000020E61000008EC87729F5B65CC024F1138317A14340	\N	\N	\N	-114.8587135	39.25853003	\N	\N	\N	\N	\N	\N	\N	\N	NVEL00USA	swift	1	0	18	4	14	18	18	18	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
181	0101000020E61000009016670C73FF5CC0AE6DC4724F1A4240	\N	\N	\N	-115.991397	36.20554957	\N	\N	\N	\N	\N	\N	\N	\N	NVPP00USA	swift	1	0	20	4	16	20	20	20	23.6	\N	23.6	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
184	0101000020E6100000987D6830D74E5DC0CF362F35DF084340	\N	\N	\N	-117.2318841	38.06931176	\N	\N	\N	\N	\N	\N	\N	\N	NVTN00USA	swift	1	0	22	4	18	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
194	0101000020E61000005F8ABCF6D68754C0C511D68C2D9D4440	\N	\N	\N	-82.12249535	41.22795258	\N	\N	\N	\N	\N	\N	\N	\N	OHLG00USA	swift	1	0	16	4	12	16	16	16	18.4	\N	18	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
196	0101000020E61000007CB2491B5AD558C07B3328A2F8514140	\N	\N	\N	-99.33362467	34.64040019	\N	\N	\N	\N	\N	\N	\N	\N	OKAL00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
202	0101000020E6100000E583F9861DF75EC0728CBF48C3174740	\N	\N	\N	-123.8611772	46.1856471	\N	\N	\N	\N	\N	\N	\N	\N	ORAS00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
205	0101000020E61000001F42018008545EC0EC653E94A6074640	\N	\N	\N	-121.3130188	44.05977109	\N	\N	\N	\N	\N	\N	\N	\N	ORBD00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
206	0101000020E61000008173EBDA83C35DC0645122D36BCB4540	\N	\N	\N	-119.0549228	43.58922805	\N	\N	\N	\N	\N	\N	\N	\N	ORBR00USA	swift	1	0	22	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
207	0101000020E6100000F60CE19865C85EC0DB03E76B1A064640	\N	\N	\N	-123.131201	44.04768132	\N	\N	\N	\N	\N	\N	\N	\N	OREU00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
209	0101000020E6100000DEE522BE13D65EC05CDE452D879A4540	\N	\N	\N	-123.344955	43.20725027	\N	\N	\N	\N	\N	\N	\N	\N	ORRB00USA	swift	1	0	16	4	12	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
216	0101000020E610000001F1E3FD72F053C09CBE01DA144D4440	\N	\N	\N	-79.75701854	40.60219884	\N	\N	\N	\N	\N	\N	\N	\N	PATM00USA	swift	1	0	10	6	\N	14	14	14	19.6	\N	19.6	9.6	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
219	0101000020E6100000A9DFE066CC1B59C0615E15E270C44640	\N	\N	\N	-100.4343507	45.53469492	\N	\N	\N	\N	\N	\N	\N	\N	SDMG00USA	swift	1	0	18	4	14	20	20	20	24	\N	24	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
221	0101000020E6100000458A5CCBBF0359C09CAC499E88F44540	\N	\N	\N	-100.0585812	43.91041926	\N	\N	\N	\N	\N	\N	\N	\N	SDPR00USA	swift	1	0	8	4	\N	20	20	20	25.4	\N	25.4	11.4	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
225	0101000020E61000001E7B49A550FE54C0BCFAE383BFE54140	\N	\N	\N	-83.97367222	35.79490708	\N	\N	\N	\N	\N	\N	\N	\N	TNAC00USA	swift	1	0	10	6	\N	14	14	14	18	\N	18	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
229	0101000020E61000002A487DA3677759C05CFD3B4FFA9A4140	\N	\N	\N	-101.8657006	35.21076384	\N	\N	\N	\N	\N	\N	\N	\N	TXAM00USA	swift	1	0	18	4	14	18	18	18	20	\N	20	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
236	0101000020E6100000BB9315E4A3B257C00803F0CB704C3D40	\N	\N	\N	-94.79125311	29.29859614	\N	\N	\N	\N	\N	\N	\N	\N	TXGV00USA	swift	1	0	20	6	14	20	20	20	22	\N	22	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
237	0101000020E61000002B85C466556F58C0D74DE792C31E3F40	\N	\N	\N	-97.73958749	31.12017172	\N	\N	\N	\N	\N	\N	\N	\N	TXKL00USA	swift	1	0	20	6	14	18	18	18	26	\N	22	14	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
239	0101000020E6100000F7E39B12B5005AC06CFE25CA5A4F3E40	\N	\N	\N	-104.0110518	30.30997909	\N	\N	\N	\N	\N	\N	\N	\N	TXMF00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
240	0101000020E6100000FFEA2FC3D8A957C02E727065609A3F40	\N	\N	\N	-94.65385513	31.60303339	\N	\N	\N	\N	\N	\N	\N	\N	TXNC00USA	swift	1	0	10	6	\N	18	18	18	23.8	\N	21.8	13.8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
241	0101000020E6100000AA3D36139D9759C09EC009BFB3D83F40	\N	\N	\N	-102.3689621	31.84649271	\N	\N	\N	\N	\N	\N	\N	\N	TXOD00USA	swift	1	0	20	6	14	20	20	20	22	\N	21	12	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
243	0101000020E6100000F8597E43556858C0273AE4C9E2213A40	\N	\N	\N	-97.63020408	26.13236677	\N	\N	\N	\N	\N	\N	\N	\N	TXSB00USA	swift	1	0	20	6	14	20	20	20	22	\N	20	14	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
252	0101000020E610000054AA44D95B5154C0297B4B395FA04240	\N	\N	\N	-81.271231	37.252906	\N	\N	\N	\N	\N	\N	\N	\N	VABF00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
253	0101000020E61000009A6DD9E7121A53C0AD604470966E4240	\N	\N	\N	-76.40740391	36.86396602	\N	\N	\N	\N	\N	\N	\N	\N	VACP00USA	swift	1	0	16	4	12	14	14	14	20	\N	18	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
256	0101000020E61000002DAFBF99963E52C0E50412B985CD4540	\N	\N	\N	-72.97794193	43.6056434	\N	\N	\N	\N	\N	\N	\N	\N	VTRU00USA	swift	1	0	10	6	\N	14	14	14	18.2	\N	18.2	8.2	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
259	0101000020E6100000482F0F3E39AF5DC0F879A58FED524840	\N	\N	\N	-118.7378688	48.64787479	\N	\N	\N	\N	\N	\N	\N	\N	WARP00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
262	0101000020E61000008A2F2471A0205EC0DE699D7EF14C4740	\N	\N	\N	-120.5097926	46.60111983	\N	\N	\N	\N	\N	\N	\N	\N	WAYA00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
269	0101000020E61000001B9330998BFF55C0558650299F894540	\N	\N	\N	-87.99289541	43.07516972	\N	\N	\N	\N	\N	\N	\N	\N	WISS00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
274	0101000020E6100000043BFE0B044D5BC0112510655ECC4440	\N	\N	\N	-109.203372	41.5966307	\N	\N	\N	\N	\N	\N	\N	\N	WYRS00USA	swift	1	0	8	4	\N	16	16	16	21.6	\N	20	8	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
275	0101000020E6100000100EAC996BFD5AC0DD4C3BEB09024640	\N	\N	\N	-107.9596924	44.0159277	\N	\N	\N	\N	\N	\N	\N	\N	WYWL00USA	swift	1	0	10	4	\N	18	18	18	24	\N	24	10	1	1	1	100	integrity	1                                                                                                                                                                                                                                                             
12	0101000020E61000003518D9846AB25BC0D6A635F6BAB24040	\N	\N	\N	-110.7877514	33.39633062	\N	\N	\N	\N	\N	\N	\N	\N	AZGB00USA	swift	1	0	6	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
15	0101000020E61000003B641415BBC35BC098F5833610F73F40	\N	\N	\N	-111.0582936	31.96509114	\N	\N	\N	\N	\N	\N	\N	\N	AZST00USA	swift	1	0	6.6	4.4	\N	19.8	19.8	19.8	24	\N	24	11	1	1	1	100	single	1                                                                                                                                                                                                                                                             
20	0101000020E6100000FC74971F93A45CC08D1480353DCE4040	\N	\N	\N	-114.5714797	33.61124295	\N	\N	\N	\N	\N	\N	\N	\N	CABE00USA	swift	1	0	8	4	\N	20	20	20	24	\N	24	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
21	0101000020E6100000674EF27E37995DC0F7CB694758AE4240	\N	\N	\N	-118.3940122	37.36206906	\N	\N	\N	\N	\N	\N	\N	\N	CABS00USA	swift	1	0	6	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
22	0101000020E610000093E57F4D31475DC0074DE01009704140	\N	\N	\N	-117.1123842	34.87527667	\N	\N	\N	\N	\N	\N	\N	\N	CABW00USA	swift	1	0	22	4	18	20	20	20	24	\N	24	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
24	0101000020E610000002429028D9815DC08F67C0EE2EEA4040	\N	\N	\N	-118.0288793	33.82955727	\N	\N	\N	\N	\N	\N	\N	\N	CACY00USA	swift	1	0	21.2	4	18	22	22	22	24	\N	22	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
25	0101000020E61000003CE0151CB9CF5DC0D558882F8FE14140	\N	\N	\N	-119.2456732	35.76218218	\N	\N	\N	\N	\N	\N	\N	\N	CADA00USA	swift	1	0	20	4	16	20	20	20	22.6	\N	22.6	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
27	0101000020E6100000F64CE5A37B0B5FC0C11D452963654440	\N	\N	\N	-124.1794214	40.79208866	\N	\N	\N	\N	\N	\N	\N	\N	CAEA00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
28	0101000020E6100000D4C9631756925EC09C787BCE65EA4240	\N	\N	\N	-122.2865046	37.83123189	\N	\N	\N	\N	\N	\N	\N	\N	CAEM00USA	swift	1	0	20	4	16	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
29	0101000020E6100000A5DF19C80E5C5EC02FEFFD4F76804440	\N	\N	\N	-121.4384022	41.00361061	\N	\N	\N	\N	\N	\N	\N	\N	CAFR00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
31	0101000020E61000002C8A0DCCC0245EC0831809E9007C4140	\N	\N	\N	-120.5742674	34.96877778	\N	\N	\N	\N	\N	\N	\N	\N	CAGU00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
32	0101000020E6100000F03E7DBA709B5EC0C5F7CD1673BB4240	\N	\N	\N	-122.4287554	37.46444974	\N	\N	\N	\N	\N	\N	\N	\N	CAHM00USA	swift	1	0	8	4	\N	20	20	20	22.8	\N	22.8	10.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
33	0101000020E610000052F3B0AB240D5DC0C0A762F842DC4040	\N	\N	\N	-116.2053632	33.72079377	\N	\N	\N	\N	\N	\N	\N	\N	CAIO00USA	swift	1	0	16	4	12	20	20	19.8	21.6	\N	21.6	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
34	0101000020E610000096D4642195BA5EC088C04F24B1854340	\N	\N	\N	-122.9153522	39.04446844	\N	\N	\N	\N	\N	\N	\N	\N	CALK00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
35	0101000020E6100000CF3758EE3B6A5EC0C060F54F89934240	\N	\N	\N	-121.6599079	37.15262794	\N	\N	\N	\N	\N	\N	\N	\N	CAMH00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
36	0101000020E6100000DB221FAA5FA75EC00637E71A45604340	\N	\N	\N	-122.6152139	38.75210892	\N	\N	\N	\N	\N	\N	\N	\N	CAMN00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
38	0101000020E6100000CE339B6CA8FF5CC01CE371EE825D4040	\N	\N	\N	-115.9946548	32.73055821	\N	\N	\N	\N	\N	\N	\N	\N	CAOC00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
39	0101000020E6100000C5200B2CDB985EC023F00BD8234A4440	\N	\N	\N	-122.3883772	40.57921887	\N	\N	\N	\N	\N	\N	\N	\N	CARD01USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
40	0101000020E6100000142F055AF07E5EC0976D6D0208E44240	\N	\N	\N	-121.9834199	37.78149443	\N	\N	\N	\N	\N	\N	\N	\N	CASA00USA	swift	1	0	16	4	12	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
42	0101000020E6100000B9A063ACDB785EC0D5415E0F26A54240	\N	\N	\N	-121.8884078	37.290224	\N	\N	\N	\N	\N	\N	\N	\N	CASJ00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
43	0101000020E6100000DB711EA919555EC012563A8AB9364240	\N	\N	\N	-121.3296912	36.42753723	\N	\N	\N	\N	\N	\N	\N	\N	CASO00USA	swift	1	0	20	4	18	20	20	20	24	\N	24	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
46	0101000020E61000008EA4EE14BC735EC00924F643CB564340	\N	\N	\N	-121.8083546	38.67807817	\N	\N	\N	\N	\N	\N	\N	\N	CAWD00USA	swift	1	0	22	4	18	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
47	0101000020E610000099558E7F55B05CC041FFD2DC695F4040	\N	\N	\N	-114.7552184	32.74541817	\N	\N	\N	\N	\N	\N	\N	\N	CAWI00USA	swift	1	0	20.2	4	18	22	22	22	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
48	0101000020E6100000FB3DB14E95D65EC0F00115E959B44340	\N	\N	\N	-123.352863	39.40899385	\N	\N	\N	\N	\N	\N	\N	\N	CAWS00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
49	0101000020E6100000AB04300AA7245EC0FCE0BE062BAF4240	\N	\N	\N	-120.5726953	37.36850056	\N	\N	\N	\N	\N	\N	\N	\N	CAWY00USA	swift	1	0	22	4	20	20	20	20	24	\N	24	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
50	0101000020E6100000B3A6C354C4A85EC00728CB18B8DD4440	\N	\N	\N	-122.6369831	41.73218069	\N	\N	\N	\N	\N	\N	\N	\N	CAYA00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
51	0101000020E61000009415C3D501E35AC0B5BE0EBDC1414440	\N	\N	\N	-107.546987	40.51372493	\N	\N	\N	\N	\N	\N	\N	\N	COCR00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
53	0101000020E6100000D49B51F3552F5BC09AA0C01A6B934340	\N	\N	\N	-108.739621	39.15170607	\N	\N	\N	\N	\N	\N	\N	\N	COFT00USA	swift	1	0	8	4	\N	18	18	18	23.8	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
54	0101000020E61000005D8C81759CA759C013BE73FF430B4340	\N	\N	\N	-102.6189245	38.08801263	\N	\N	\N	\N	\N	\N	\N	\N	COLA00USA	swift	1	0	8	4	\N	19.8	19.8	19.8	21	\N	20.2	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
55	0101000020E6100000B02770A161475AC04BA9AEF0EC124440	\N	\N	\N	-105.1153339	40.14785584	\N	\N	\N	\N	\N	\N	\N	\N	COLM00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
57	0101000020E6100000F9F4D89681F05AC03617874C5C134340	\N	\N	\N	-107.7579095	38.15125424	\N	\N	\N	\N	\N	\N	\N	\N	CORI00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
59	0101000020E6100000FBC5CFF325C254C064343C07E0223D40	\N	\N	\N	-83.03356643	29.1362309	\N	\N	\N	\N	\N	\N	\N	\N	FLCK00USA	swift	1	0	18	6	12	14	16	14.6	17.6	\N	17.6	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
60	0101000020E6100000E3855BDBA73154C0E17A98E6EB5A3C40	\N	\N	\N	-80.77587017	28.35516206	\N	\N	\N	\N	\N	\N	\N	\N	FLCO00USA	swift	1	0	12	6	\N	16	16	16	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
61	0101000020E6100000FF379B33871E54C017C4386676773940	\N	\N	\N	-80.47700205	25.46665038	\N	\N	\N	\N	\N	\N	\N	\N	FLHO00USA	swift	1	0	22	6	18	18	17.6	16.2	18	\N	18	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
62	0101000020E6100000E08D9AE93D7D54C07B56CA1927073C40	\N	\N	\N	-81.95690384	28.02794038	\N	\N	\N	\N	\N	\N	\N	\N	FLLL00USA	swift	1	0	10	6	\N	15	15	15	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
63	0101000020E6100000BBF55802027154C0B1B8073ABD233A40	\N	\N	\N	-81.76574763	26.13960612	\N	\N	\N	\N	\N	\N	\N	\N	FLNA00USA	swift	1	0	14	6	\N	20	20	20	19.2	\N	19.2	9.4	1	1	1	100	single	1                                                                                                                                                                                                                                                             
64	0101000020E610000059390F82A9B455C068F6ABC633693E40	\N	\N	\N	-86.82284595	30.41094629	\N	\N	\N	\N	\N	\N	\N	\N	FLNV00USA	swift	1	0	18	6	12	16	16	16	20	\N	20	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
65	0101000020E6100000B567F92E239F54C0180199C6C42F3B40	\N	\N	\N	-82.48652243	27.18659631	\N	\N	\N	\N	\N	\N	\N	\N	FLOP00USA	swift	1	0	14	6	\N	19.8	19.8	19.8	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
66	0101000020E610000013273958665355C044A9184229D03D40	\N	\N	\N	-85.30312162	29.81312955	\N	\N	\N	\N	\N	\N	\N	\N	FLPJ00USA	swift	1	0	10	6	\N	18	18	18	21	\N	19	11	1	1	1	100	single	1                                                                                                                                                                                                                                                             
67	0101000020E61000008FB55418FA6254C0C890294090493E40	\N	\N	\N	-81.54651459	30.28735734	\N	\N	\N	\N	\N	\N	\N	\N	FLPL00USA	swift	1	0	10	6	\N	14	14	14	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
68	0101000020E610000028FF2824787C54C09941DF8A82DC3C40	\N	\N	\N	-81.94483284	28.86136692	\N	\N	\N	\N	\N	\N	\N	\N	FLSS00USA	swift	1	0	12	6	\N	14	14	14	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
71	0101000020E61000004AEEB0894C1155C04F24F32359E44040	\N	\N	\N	-84.2702965	33.78397035	\N	\N	\N	\N	\N	\N	\N	\N	GADE00USA	swift	1	0	10	6	\N	16	16	16	13.4	\N	13.2	5	1	1	1	100	single	1                                                                                                                                                                                                                                                             
72	0101000020E61000004F986A459FB954C05B1F9C70AB084040	\N	\N	\N	-82.90034614	32.06773193	\N	\N	\N	\N	\N	\N	\N	\N	GAMR00USA	swift	1	0	3	1.8	\N	4.8	4.8	4.8	6	\N	6	3	1	1	1	100	single	1                                                                                                                                                                                                                                                             
73	0101000020E6100000F071E0B4A44554C09255F8D091084040	\N	\N	\N	-81.08817789	32.06694996	\N	\N	\N	\N	\N	\N	\N	\N	GASV00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
74	0101000020E61000002FCCF8AD0CAE57C01A6E3CAF63554440	\N	\N	\N	-94.7195239	40.66710463	\N	\N	\N	\N	\N	\N	\N	\N	IABE00USA	swift	1	0	8	4	\N	18	18	18	22.4	\N	19	10.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
75	0101000020E6100000489362B27E1C57C08C781D379D444540	\N	\N	\N	-92.44523296	42.53604783	\N	\N	\N	\N	\N	\N	\N	\N	IACE00USA	swift	1	0	8	4	\N	18	18	18	21.6	\N	18	9.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
78	0101000020E610000019B91B024FB156C0FC62DFE3063F4540	\N	\N	\N	-90.77044728	42.49239777	\N	\N	\N	\N	\N	\N	\N	\N	IAGM00USA	swift	1	0	10	6	\N	18	18	18	24	\N	22	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
81	0101000020E6100000314A86D24D8E5CC049543DD32A414640	\N	\N	\N	-114.2234999	44.50911942	\N	\N	\N	\N	\N	\N	\N	\N	IDCL00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	1                                                                                                                                                                                                                                                             
82	0101000020E6100000946B0A64F6235DC0258E237338CA4540	\N	\N	\N	-116.5619135	43.57984771	\N	\N	\N	\N	\N	\N	\N	\N	IDNP00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
83	0101000020E6100000423D224B8B1C5CC071D50A0DA36E4540	\N	\N	\N	-112.4460018	42.86435092	\N	\N	\N	\N	\N	\N	\N	\N	IDPO00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
85	0101000020E61000008BCEC7EF0CFD55C04A6805659E704440	\N	\N	\N	-87.95391459	40.87983382	\N	\N	\N	\N	\N	\N	\N	\N	ILAS00USA	swift	1	0	10	6	\N	18	18	18	25.6	\N	18	13.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
87	0101000020E61000003A6865B143EF55C0DAD89900CB804340	\N	\N	\N	-87.73850665	39.00619514	\N	\N	\N	\N	\N	\N	\N	\N	ILRO00USA	swift	1	0	10	6	\N	18	18	18	23.4	\N	19.8	11.4	1	1	1	100	single	1                                                                                                                                                                                                                                                             
88	0101000020E61000002A12FA36506C56C0A3E5822B07E44440	\N	\N	\N	-89.69239592	41.78146881	\N	\N	\N	\N	\N	\N	\N	\N	ILSL01USA	swift	1	0	18	6	12	18	18	18	21.6	\N	17.6	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
92	0101000020E6100000B890687E0CC455C012FF0B5FBABB4440	\N	\N	\N	-87.06326256	41.4666251	\N	\N	\N	\N	\N	\N	\N	\N	INVO00USA	swift	1	0	10	6	\N	18	18	18	23	\N	16	11.2	1	1	1	100	single	1                                                                                                                                                                                                                                                             
93	0101000020E610000007644C4DC46658C04CA6E9373CCF4240	\N	\N	\N	-97.60573132	37.61902522	\N	\N	\N	\N	\N	\N	\N	\N	KSAB00USA	swift	1	0	9.6	5.6	\N	18	18	18	19.8	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
95	0101000020E6100000D2EFB1AA946D59C03E16CBC291AC4340	\N	\N	\N	-101.7121989	39.34819827	\N	\N	\N	\N	\N	\N	\N	\N	KSGL00USA	swift	1	0	18	4	14	18	18	18	21.4	\N	21.4	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
97	0101000020E6100000FD4B529962B857C05AB33ADE098F4340	\N	\N	\N	-94.881018	39.11748865	\N	\N	\N	\N	\N	\N	\N	\N	KSKA00USA	swift	1	0	8	4	\N	18	18	18	19.4	\N	19.4	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
98	0101000020E61000000434956EE0F254C0C67054F2DA504340	\N	\N	\N	-83.79494824	38.63168172	\N	\N	\N	\N	\N	\N	\N	\N	KYME00USA	swift	1	0	8	4	\N	17.6	17.6	17.6	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
99	0101000020E6100000002061F7E12556C043CB9971438A4240	\N	\N	\N	-88.59191689	37.08018322	\N	\N	\N	\N	\N	\N	\N	\N	KYPD00USA	swift	1	0	10	6	\N	18	18	18	19.6	\N	19.6	7.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
100	0101000020E61000002D8449AF15BD56C0C7D0DA027C913E40	\N	\N	\N	-90.95444853	30.56829851	\N	\N	\N	\N	\N	\N	\N	\N	LADE00USA	swift	1	0	10	6	\N	18	18	18	20	\N	18	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
102	0101000020E610000068FC0CB9639856C0596D1F6E5E923D40	\N	\N	\N	-90.3810866	29.57175339	\N	\N	\N	\N	\N	\N	\N	\N	LARS00USA	swift	1	0	10	6	\N	20	20	20	23.6	\N	20	13.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
103	0101000020E6100000BAE8F90D726F57C057F4A0033F3F4040	\N	\N	\N	-93.74133634	32.49411054	\N	\N	\N	\N	\N	\N	\N	\N	LASP00USA	swift	1	0	10	6	\N	18	18	18	19	\N	14	9.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
104	0101000020E61000002EBFBAC765A551C068588CBA56C94440	\N	\N	\N	-70.58433717	41.57295925	\N	\N	\N	\N	\N	\N	\N	\N	MAEA00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
106	0101000020E6100000211D1EC2782B53C0C8F1E07AD6AC4340	\N	\N	\N	-76.6792455	39.35029541	\N	\N	\N	\N	\N	\N	\N	\N	MDBA00USA	swift	1	0	10	6	\N	14	14	14	18.8	\N	16.8	8.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
107	0101000020E610000083D06A16221B51C05779C04455454640	\N	\N	\N	-68.42395554	44.54166469	\N	\N	\N	\N	\N	\N	\N	\N	MEEW00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
108	0101000020E61000000FCB8F8D7A1551C05E80BF903CAD4740	\N	\N	\N	-68.33560504	47.35341081	\N	\N	\N	\N	\N	\N	\N	\N	MEMW00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
111	0101000020E61000003E82D19B80EC54C09C7F81414E264540	\N	\N	\N	-83.69534965	42.29926318	\N	\N	\N	\N	\N	\N	\N	\N	MICY00USA	swift	1	0	8	4	\N	14	14	14	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
113	0101000020E61000006D5255911FE854C0E1BD59396A764540	\N	\N	\N	-83.62692674	42.9251167	\N	\N	\N	\N	\N	\N	\N	\N	MIGB00USA	swift	1	0	18	6	12	16	14	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
114	0101000020E6100000190F849EAC2D55C0E0EB73CEB2544640	\N	\N	\N	-84.71366084	44.66170674	\N	\N	\N	\N	\N	\N	\N	\N	MIGR00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	1                                                                                                                                                                                                                                                             
115	0101000020E6100000601B548FB2EB54C099F8BC45D40A4540	\N	\N	\N	-83.68277343	42.08460304	\N	\N	\N	\N	\N	\N	\N	\N	MIMI00USA	swift	1	0	10	6	\N	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
117	0101000020E610000003B9DD2EA86055C0303AACB2672D4740	\N	\N	\N	-85.51026508	46.35472711	\N	\N	\N	\N	\N	\N	\N	\N	MINB00USA	swift	1	0	8	4	\N	18	18	18	23.4	\N	23.4	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
118	0101000020E610000091D54A74182556C001D96F1644904740	\N	\N	\N	-88.57961757	47.12707787	\N	\N	\N	\N	\N	\N	\N	\N	MIUP00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
119	0101000020E610000077BDD11AC5DF54C0A1DBA6D315534540	\N	\N	\N	-83.49640532	42.6491036	\N	\N	\N	\N	\N	\N	\N	\N	MIWL00USA	swift	1	0	8	4	\N	16	16	16	18.6	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
120	0101000020E6100000DBD2170072C257C02122F3D010764740	\N	\N	\N	-95.03820803	46.92238819	\N	\N	\N	\N	\N	\N	\N	\N	MNAE00USA	swift	1	0	8	4	\N	20	20	20	23.4	\N	23.4	9.4	1	1	1	100	single	1                                                                                                                                                                                                                                                             
121	0101000020E6100000A50D8F16CA6157C0170ABF71259E4740	\N	\N	\N	-93.52795948	47.23551771	\N	\N	\N	\N	\N	\N	\N	\N	MNAS00USA	swift	1	0	8	4	\N	20	20	20	24	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
122	0101000020E610000028B682A6659556C0F765FE0BE3DF4740	\N	\N	\N	-90.33432925	47.74911642	\N	\N	\N	\N	\N	\N	\N	\N	MNGM01USA	swift	1	0	8	4	\N	17	17	17	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
123	0101000020E6100000590AB396633058C017276321DF6F4740	\N	\N	\N	-96.75607841	46.8739969	\N	\N	\N	\N	\N	\N	\N	\N	MNMH00USA	swift	1	0	8	4	\N	20	20	20	26	\N	25.2	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
125	0101000020E610000084597058BD6157C004D4691732664640	\N	\N	\N	-93.52718173	44.79840367	\N	\N	\N	\N	\N	\N	\N	\N	MNSP00USA	swift	1	0	8	3.6	\N	20	20	20	21.8	\N	21.8	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
126	0101000020E6100000E70EEE1037E657C08418BF5B66CF4540	\N	\N	\N	-95.59711097	43.62031123	\N	\N	\N	\N	\N	\N	\N	\N	MNWN00USA	swift	1	0	8	4	\N	20	20	20	23.8	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
127	0101000020E61000000E8D1F1130D457C03F573AA3D6734840	\N	\N	\N	-95.31543377	48.90498772	\N	\N	\N	\N	\N	\N	\N	\N	MNWR00USA	swift	1	0	16	4	12	20	20	20	26	\N	26	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
128	0101000020E6100000E29D53FB3AA956C06778373F13554340	\N	\N	\N	-90.64422496	38.66464987	\N	\N	\N	\N	\N	\N	\N	\N	MOCF00USA	swift	1	0	8	4	\N	18	18	18	15.8	\N	15.8	5.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
131	0101000020E6100000EF452874666F57C00545FB71DE614340	\N	\N	\N	-93.74062828	38.76460099	\N	\N	\N	\N	\N	\N	\N	\N	MOWB00USA	swift	1	0	8	4	\N	18	18	18	17.6	\N	17.6	7.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
133	0101000020E6100000AA57FC6CC52C56C00738CEB74F2E4040	\N	\N	\N	-88.69954991	32.3618078	\N	\N	\N	\N	\N	\N	\N	\N	MSMD00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
134	0101000020E61000003CE9335611BF56C0B9704132F4F53F40	\N	\N	\N	-90.98543315	31.96075739	\N	\N	\N	\N	\N	\N	\N	\N	MSPG00USA	swift	1	0	10	6	\N	16	16	16	19.6	\N	17.8	9.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
135	0101000020E610000082340818826B56C06F54FA4B83863E40	\N	\N	\N	-89.6798153	30.52544093	\N	\N	\N	\N	\N	\N	\N	\N	MSPY00USA	swift	1	0	10	6	\N	18	18	18	21	\N	18.4	11	1	1	1	100	single	1                                                                                                                                                                                                                                                             
136	0101000020E61000009A417C60C7945BC0D4F89EF4324E4840	\N	\N	\N	-110.324669	48.61093004	\N	\N	\N	\N	\N	\N	\N	\N	MTB100USA	swift	1	0	20	4	16	20	20	20	25.8	\N	25.8	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
137	0101000020E61000008DC98745315D5BC0D8929F9E08C34640	\N	\N	\N	-109.4561323	45.52370055	\N	\N	\N	\N	\N	\N	\N	\N	MTCO00USA	swift	1	0	10	4	\N	18	18	18	24	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
139	0101000020E6100000C9A42B7D8DAB5AC06BAADD65F5214740	\N	\N	\N	-106.6805108	46.26530145	\N	\N	\N	\N	\N	\N	\N	\N	MTFH00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	1                                                                                                                                                                                                                                                             
140	0101000020E6100000A425451ACBA85AC0ADD17A11D0184840	\N	\N	\N	-106.6373964	48.19384974	\N	\N	\N	\N	\N	\N	\N	\N	MTGC02USA	swift	1	0	20	4	16	18	18	18	25.8	\N	25.8	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
142	0101000020E61000005F33AFD980335BC059D3A34674834740	\N	\N	\N	-108.8047394	47.02698596	\N	\N	\N	\N	\N	\N	\N	\N	MTGR00USA	swift	1	0	10	4	\N	18	18	18	25	\N	25	11	1	1	1	100	single	1                                                                                                                                                                                                                                                             
144	0101000020E6100000A91E1FE340345CC006EE06F2682D4840	\N	\N	\N	-112.8164604	48.35476518	\N	\N	\N	\N	\N	\N	\N	\N	MTHT00USA	swift	1	0	10	4	\N	20	20	20	26	\N	26	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
145	0101000020E610000065767176C68A5CC0744A17CD10D74740	\N	\N	\N	-114.1683632	47.68020023	\N	\N	\N	\N	\N	\N	\N	\N	MTPL00USA	swift	1	0	10	4	\N	20	20	20	24	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
146	0101000020E610000004B573F5BE4C5AC0DDAE1BDFAC354840	\N	\N	\N	-105.1991552	48.41933812	\N	\N	\N	\N	\N	\N	\N	\N	MTPO00USA	swift	1	0	10	4	\N	18	18	18	25.8	\N	25.8	11.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
147	0101000020E61000003200547163D95BC061AD35EF13084740	\N	\N	\N	-111.3966945	46.06310835	\N	\N	\N	\N	\N	\N	\N	\N	MTTF00USA	swift	1	0	10	4	\N	20	20	20	24	\N	24	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
148	0101000020E6100000B7033B1FDAD150C0C78C855B9D984640	\N	\N	\N	-67.27893811	45.19230217	\N	\N	\N	\N	\N	\N	\N	\N	NBSS00CAN	swift	1	0	No data	No data	No data	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	1                                                                                                                                                                                                                                                             
149	0101000020E61000002F0F8055818054C016BC8D7255D74140	\N	\N	\N	-82.00789392	35.68229515	\N	\N	\N	\N	\N	\N	\N	\N	NCMR00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
150	0101000020E6100000D3AF84208D1754C0D2EF6F8E427E4140	\N	\N	\N	-80.36798871	34.98640614	\N	\N	\N	\N	\N	\N	\N	\N	NCMV00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
151	0101000020E61000005408BB93954253C0189F5D192F8E4140	\N	\N	\N	-77.04037946	35.11081235	\N	\N	\N	\N	\N	\N	\N	\N	NCNB00USA	swift	1	0	12	6	\N	15.8	15.8	15.8	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
153	0101000020E61000006FB1EC93EDB658C03B89290D0C0D4840	\N	\N	\N	-98.8582506	48.10193028	\N	\N	\N	\N	\N	\N	\N	\N	NDDL00USA	swift	1	0	8	4	\N	18	18	18	26	\N	26	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
154	0101000020E61000001109F8983CAE58C0FB8E65EA43724740	\N	\N	\N	-98.72244858	46.89269762	\N	\N	\N	\N	\N	\N	\N	\N	NDJT00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
155	0101000020E6100000105CE509045359C0BD9048BAEA204840	\N	\N	\N	-101.2971215	48.25716332	\N	\N	\N	\N	\N	\N	\N	\N	NDLB00USA	swift	1	0	10	4	\N	20	20	20	25.6	\N	23.6	11.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
158	0101000020E6100000AC94F9A298C059C057CDD66EF9714840	\N	\N	\N	-103.0093162	48.89042459	\N	\N	\N	\N	\N	\N	\N	\N	NDNN00USA	swift	1	0	18	4	14	18	18	18	27.8	\N	27.6	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
159	0101000020E610000031410DDFC2B759C0216FC16BFA0C4540	\N	\N	\N	-102.871269	42.10139224	\N	\N	\N	\N	\N	\N	\N	\N	NEAL00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
160	0101000020E61000004CC47CF5083058C09C766B78FE214440	\N	\N	\N	-96.75054681	40.26557832	\N	\N	\N	\N	\N	\N	\N	\N	NEBT00USA	swift	1	0	8	4	\N	18	18	18	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
164	0101000020E6100000EBAA402D86BE59C017045E7F75924440	\N	\N	\N	-102.9769395	41.14421074	\N	\N	\N	\N	\N	\N	\N	\N	NESN00USA	swift	1	0	8	4	\N	20	20	20	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
165	0101000020E6100000BA83D899422359C0DB6333D131704540	\N	\N	\N	-100.55094	42.8765203	\N	\N	\N	\N	\N	\N	\N	\N	NEVT00USA	swift	1	0	8	4	\N	18	18	18	22	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
166	0101000020E61000004D4EABF080D951C01D5A011124824540	\N	\N	\N	-71.39849488	43.01672566	\N	\N	\N	\N	\N	\N	\N	\N	NHHT00USA	swift	1	0	12	6	\N	14	14	14	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
167	0101000020E6100000D2623ABE87A952C045A6538978A14340	\N	\N	\N	-74.6489101	39.26149098	\N	\N	\N	\N	\N	\N	\N	\N	NJMM00USA	swift	1	0	22	6	16	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
168	0101000020E61000005A283EE3677D5AC09D4872F11E734040	\N	\N	\N	-105.9594658	32.89938181	\N	\N	\N	\N	\N	\N	\N	\N	NMAO00USA	swift	1	0	8	4	\N	18	18	18	21.4	\N	19.4	9.4	1	1	1	100	single	1                                                                                                                                                                                                                                                             
169	0101000020E61000002BB759619F0E5AC03639211997354040	\N	\N	\N	-104.2284778	32.41867365	\N	\N	\N	\N	\N	\N	\N	\N	NMCB00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	1                                                                                                                                                                                                                                                             
171	0101000020E6100000EB820BC391835AC0D20A5FA107614140	\N	\N	\N	-106.0557716	34.75804536	\N	\N	\N	\N	\N	\N	\N	\N	NMES00USA	swift	1	0	8	4	\N	18	18	18	16.8	\N	16	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
172	0101000020E6100000574DC6E7842F5BC0C7E6151592C34140	\N	\N	\N	-108.7424869	35.52789558	\N	\N	\N	\N	\N	\N	\N	\N	NMGP00USA	swift	1	0	8	4	\N	16	16	16	21.8	\N	21.8	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
173	0101000020E6100000FBE769C0201C5AC09A34993353734240	\N	\N	\N	-104.439499	36.90097661	\N	\N	\N	\N	\N	\N	\N	\N	NMRN00USA	swift	1	0	8	4	\N	18	18	18	19.6	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
174	0101000020E610000004E275FD02A55AC0CC5DCF002CAA4140	\N	\N	\N	-106.5783075	35.32946787	\N	\N	\N	\N	\N	\N	\N	\N	NMRR00USA	swift	1	0	8	4.4	\N	17.6	17.6	17.6	23.8	\N	23.8	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
175	0101000020E6100000DE9623BF59D05AC0E0C4A9396D904040	\N	\N	\N	-107.2554777	33.12833329	\N	\N	\N	\N	\N	\N	\N	\N	NMTC00USA	swift	1	0	8	4	\N	18	18	18	21.8	\N	21.8	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
176	0101000020E61000009BA7DF2A74EE59C05A000979F3964140	\N	\N	\N	-103.7258403	35.1793052	\N	\N	\N	\N	\N	\N	\N	\N	NMTM00USA	swift	1	0	8	4	\N	18	18	18	23.6	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
179	0101000020E61000007A8F8E06CBC65CC060B86BF05B1B4240	\N	\N	\N	-115.1061417	36.21374326	\N	\N	\N	\N	\N	\N	\N	\N	NVLV00USA	swift	1	0	20	4	16	18	18	18	21.8	\N	21.8	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
180	0101000020E6100000E4C8B9032B845CC06C44ACD509674240	\N	\N	\N	-114.0651254	36.80498763	\N	\N	\N	\N	\N	\N	\N	\N	NVMQ00USA	swift	1	0	8	4	\N	16	16	16	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
182	0101000020E6100000618841052CF25DC061A19C89E5C14340	\N	\N	\N	-119.7839368	39.51481743	\N	\N	\N	\N	\N	\N	\N	\N	NVRO00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
183	0101000020E61000003885950A2A925DC0B0202812A73B4440	\N	\N	\N	-118.283816	40.4660361	\N	\N	\N	\N	\N	\N	\N	\N	NVRP00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
185	0101000020E610000094FF249930485DC0090DAB1579654440	\N	\N	\N	-117.1279662	40.79275771	\N	\N	\N	\N	\N	\N	\N	\N	NVVL00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
186	0101000020E610000056606D31E4845CC03B302537AF5E4440	\N	\N	\N	-114.0764278	40.73972215	\N	\N	\N	\N	\N	\N	\N	\N	NVWW00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
187	0101000020E610000089688DA411A053C023115CDD98824540	\N	\N	\N	-78.50107683	43.02029006	\N	\N	\N	\N	\N	\N	\N	\N	NYAN00USA	swift	1	0	16	4	12	14	16	16	20	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
188	0101000020E61000008F196670EDCA52C0CD9B7928404C4640	\N	\N	\N	-75.17074213	44.59570795	\N	\N	\N	\N	\N	\N	\N	\N	NYCT00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
189	0101000020E610000094795866595952C056AB23059E5B4440	\N	\N	\N	-73.39608153	40.71575989	\N	\N	\N	\N	\N	\N	\N	\N	NYLH00USA	swift	1	0	20	6	\N	14	14	14	19.8	\N	18	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
190	0101000020E6100000E4D9066A488152C088D881EF0DC04440	\N	\N	\N	-74.02004481	41.50042528	\N	\N	\N	\N	\N	\N	\N	\N	NYNB00USA	swift	1	0	No data	No data	No data	No data	No data	No data	No data	No data	No data	No data	1	1	1	100	single	1                                                                                                                                                                                                                                                             
191	0101000020E6100000CD8C4489920B53C0B8D8A326B0864540	\N	\N	\N	-76.18081886	43.0522507	\N	\N	\N	\N	\N	\N	\N	\N	NYSC00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
192	0101000020E610000096FA471990AB52C05562C714E67F4540	\N	\N	\N	-74.68067009	42.99920902	\N	\N	\N	\N	\N	\N	\N	\N	NYSJ00USA	swift	1	0	10	6	\N	14	14	14	19	\N	19	9	1	1	1	100	single	1                                                                                                                                                                                                                                                             
193	0101000020E6100000A6E6DD1E65B754C0596422422FFA4340	\N	\N	\N	-82.86554691	39.95456721	\N	\N	\N	\N	\N	\N	\N	\N	OHCL00USA	swift	1	0	8	4	\N	15.4	15.4	15.4	16	\N	16	6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
195	0101000020E6100000413F1904120355C0BAC1CC4E71824440	\N	\N	\N	-84.04797461	41.01908288	\N	\N	\N	\N	\N	\N	\N	\N	OHOT00USA	swift	1	0	10	6	\N	16	16	16	21.6	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
197	0101000020E6100000A046082CCC4958C0B9A68282B9194140	\N	\N	\N	-97.15308667	34.20097381	\N	\N	\N	\N	\N	\N	\N	\N	OKAR00USA	swift	1	0	10	6	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
198	0101000020E6100000CF7FB4A4C85E59C0811C5A8549574240	\N	\N	\N	-101.4809963	36.68193118	\N	\N	\N	\N	\N	\N	\N	\N	OKGU00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
199	0101000020E6100000A6B317FAF5F057C05DF7FB6A33774140	\N	\N	\N	-95.76501324	34.93125665	\N	\N	\N	\N	\N	\N	\N	\N	OKMC00USA	swift	1	0	9	5.4	\N	16.2	16.2	16.2	21	\N	17.4	9	1	1	1	100	single	1                                                                                                                                                                                                                                                             
200	0101000020E6100000C635BA5AD96258C089CDE8C38ACD4140	\N	\N	\N	-97.54451626	35.60579728	\N	\N	\N	\N	\N	\N	\N	\N	OKOK00USA	swift	1	0	10	6	\N	18	18	18	23	\N	19.4	11	1	1	1	100	single	1                                                                                                                                                                                                                                                             
201	0101000020E6100000948486F658FD57C0F5BA877C7E144240	\N	\N	\N	-95.95855487	36.16011006	\N	\N	\N	\N	\N	\N	\N	\N	OKTA00USA	swift	1	0	10	6	\N	18	18	18	22	\N	16	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
203	0101000020E6100000C7A01342871A5FC09A2732CE3A8F4540	\N	\N	\N	-124.4145055	43.1189821	\N	\N	\N	\N	\N	\N	\N	\N	ORBA00USA	swift	1	0	10	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
204	0101000020E6100000C52A943B22755DC06CBDF80568634640	\N	\N	\N	-117.8302144	44.77661204	\N	\N	\N	\N	\N	\N	\N	\N	ORBC00USA	swift	1	0	20	4	16	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
208	0101000020E61000003CF5EDC968AE5EC03029E384AECA4640	\N	\N	\N	-122.7251458	45.5834509	\N	\N	\N	\N	\N	\N	\N	\N	ORPD00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
210	0101000020E610000063AAAAE16CC25EC087D0D6FB6C784640	\N	\N	\N	-123.0378956	44.94082592	\N	\N	\N	\N	\N	\N	\N	\N	ORSL00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
211	0101000020E61000009146C331A4E452C062FB03C4A84E4440	\N	\N	\N	-75.57252163	40.61452532	\N	\N	\N	\N	\N	\N	\N	\N	PAAL00USA	swift	1	0	8	4	\N	14	14	14	18	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
212	0101000020E610000089FF852F1D0C54C02828241D0E214440	\N	\N	\N	-80.18928135	40.25824322	\N	\N	\N	\N	\N	\N	\N	\N	PACG00USA	swift	1	0	10	6	\N	14	14	14	20	\N	18	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
213	0101000020E6100000C7B11E8C92FD53C04F73765BB73C4440	\N	\N	\N	-79.96206954	40.47434562	\N	\N	\N	\N	\N	\N	\N	\N	PACR00USA	swift	1	0	10	6	\N	14	14	14	19.8	\N	17.8	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
214	0101000020E6100000C868D3C7720554C09A8E29ED47104540	\N	\N	\N	-80.08513065	42.12719502	\N	\N	\N	\N	\N	\N	\N	\N	PAER00USA	swift	1	0	18	6	12	16	16	16	16.8	\N	16.8	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
215	0101000020E61000003F641DD00A4553C01A43AD2742E74440	\N	\N	\N	-77.07878497	41.80670639	\N	\N	\N	\N	\N	\N	\N	\N	PAMF00USA	swift	1	0	10	6	\N	14	14	14	19.6	\N	18	9.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
217	0101000020E6100000A8F1FBCC53F753C01FE8F4FEB7674040	\N	\N	\N	-79.86448979	32.81030261	\N	\N	\N	\N	\N	\N	\N	\N	SCMP00USA	swift	1	0	18	6	12	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
218	0101000020E610000057C43C6D453754C0F7BF6DB7EEBE4040	\N	\N	\N	-80.86361247	33.49166005	\N	\N	\N	\N	\N	\N	\N	\N	SCOB00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
220	0101000020E610000007AB77D9AB8158C0C6F253C14DDB4540	\N	\N	\N	-98.02611386	43.7133104	\N	\N	\N	\N	\N	\N	\N	\N	SDML00USA	swift	1	0	8	4	\N	20	20	20	24.6	\N	24	10.2	1	1	1	100	single	1                                                                                                                                                                                                                                                             
222	0101000020E6100000EE934847DECE59C0B50E16676F0A4640	\N	\N	\N	-103.2323168	44.08152474	\N	\N	\N	\N	\N	\N	\N	\N	SDRC00USA	swift	1	0	16	4	12	18	18	18	22	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
223	0101000020E610000052E1BEC40EAB59C0F36BD20ADF474640	\N	\N	\N	-102.6727764	44.56149421	\N	\N	\N	\N	\N	\N	\N	\N	SDRS00USA	swift	1	0	8	4	\N	20	20	20	26	\N	26	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
224	0101000020E610000003505AF2174758C0A3F564BC35734640	\N	\N	\N	-97.11083659	44.90007739	\N	\N	\N	\N	\N	\N	\N	\N	SDWT00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
226	0101000020E61000009BF12A297F4756C0B55BC3F36FE44140	\N	\N	\N	-89.11713628	35.78466651	\N	\N	\N	\N	\N	\N	\N	\N	TNAM00USA	swift	1	0	10	6	\N	18	18	18	24	\N	18	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
227	0101000020E6100000255E1A9631B355C08A102E4F2DFB4140	\N	\N	\N	-86.79990151	35.96232023	\N	\N	\N	\N	\N	\N	\N	\N	TNBR00USA	swift	1	0	18	6	12	18	18	18	22	\N	22	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
228	0101000020E61000007909671AC17556C073C132999E864140	\N	\N	\N	-89.83991108	35.05171504	\N	\N	\N	\N	\N	\N	\N	\N	TNME00USA	swift	1	0	10	6	\N	18	18	18	20.6	\N	19.6	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
230	0101000020E6100000260DC1B3B5F657C04F3330344F1A4040	\N	\N	\N	-95.85484022	32.20554211	\N	\N	\N	\N	\N	\N	\N	\N	TXAT00USA	swift	1	0	8	4	\N	18	18	18	26	\N	22	14	1	1	1	100	single	1                                                                                                                                                                                                                                                             
231	0101000020E6100000037955EB6D5A58C04C329324DFCB3B40	\N	\N	\N	-97.41295894	27.79637364	\N	\N	\N	\N	\N	\N	\N	\N	TXCC00USA	swift	1	0	10	6	\N	20	20	20	25.4	\N	22	13.4	1	1	1	100	single	1                                                                                                                                                                                                                                                             
232	0101000020E610000096E1896A5B3959C0F52EDE8FDB603D40	\N	\N	\N	-100.8962046	29.37835025	\N	\N	\N	\N	\N	\N	\N	\N	TXDL00USA	swift	1	0	10	6	\N	20	20	20	22.4	\N	20	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
233	0101000020E61000002CDE23F6E4935AC05237065383AB3F40	\N	\N	\N	-106.3108497	31.6699726	\N	\N	\N	\N	\N	\N	\N	\N	TXEP00USA	swift	1	0	8	4	\N	20	20	20	23.4	\N	18	11	1	1	1	100	single	1                                                                                                                                                                                                                                                             
234	0101000020E6100000353FA319308A58C0E1DECA4C48223D40	\N	\N	\N	-98.1591858	29.13391571	\N	\N	\N	\N	\N	\N	\N	\N	TXFL00USA	swift	1	0	10	6	\N	20	20	20	25.2	\N	23.2	13.4	1	1	1	100	single	1                                                                                                                                                                                                                                                             
235	0101000020E61000004E8E8EEDED3858C01702A9E200934040	\N	\N	\N	-96.88952197	33.14846452	\N	\N	\N	\N	\N	\N	\N	\N	TXFR00USA	swift	1	0	10	6	\N	18	18	18	21	\N	18	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
238	0101000020E6100000FDCC6ACBCA7759C0536211A280CD4040	\N	\N	\N	-101.8717526	33.60548807	\N	\N	\N	\N	\N	\N	\N	\N	TXLB00USA	swift	1	0	10	6	\N	19.8	19.8	19.8	21.8	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
242	0101000020E61000009E6B0CF8847B57C0EA3F4A7013E13D40	\N	\N	\N	-93.92999078	29.87920286	\N	\N	\N	\N	\N	\N	\N	\N	TXPA00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	1                                                                                                                                                                                                                                                             
244	0101000020E61000007FEFFCC3120A58C0970B6C00FCC73D40	\N	\N	\N	-96.15739536	29.78118899	\N	\N	\N	\N	\N	\N	\N	\N	TXSL00USA	swift	1	0	20	6	14	20	20	20	24	\N	22	14	1	1	1	100	single	1                                                                                                                                                                                                                                                             
245	0101000020E61000009BB77F9F104B58C073BE7551366E3D40	\N	\N	\N	-97.17288959	29.43051633	\N	\N	\N	\N	\N	\N	\N	\N	TXSN00USA	swift	1	0	10	6	\N	20	20	20	24.4	\N	18	12.4	1	1	1	100	single	1                                                                                                                                                                                                                                                             
246	0101000020E6100000FC64D69C4D2959C0D7F996BD95923E40	\N	\N	\N	-100.6453621	30.57259736	\N	\N	\N	\N	\N	\N	\N	\N	TXSR00USA	swift	1	0	10	6	\N	20	20	20	20	\N	18	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
247	0101000020E61000001E90DF362E1A59C07415A47C353C4040	\N	\N	\N	-100.4090707	32.47038229	\N	\N	\N	\N	\N	\N	\N	\N	TXSW00USA	swift	1	0	10	6	\N	20	20	20	22	\N	20	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
248	0101000020E61000006E8ECE5463F45BC010C8EBE2B2934340	\N	\N	\N	-111.8185627	39.15389668	\N	\N	\N	\N	\N	\N	\N	\N	UTGU00USA	swift	1	0	8	4	\N	18	18	18	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
249	0101000020E610000066AABB0DC5BD5BC0A9D1B37212AA4340	\N	\N	\N	-110.9651522	39.32868799	\N	\N	\N	\N	\N	\N	\N	\N	UTHU00USA	swift	1	0	8	4	\N	16	16	16	20	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
250	0101000020E6100000BC0FF6DCF8555BC0AD314BAF8BEF4240	\N	\N	\N	-109.3433144	37.87145034	\N	\N	\N	\N	\N	\N	\N	\N	UTML00USA	swift	1	0	18	4	14	18	18	18	22	\N	20	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
251	0101000020E6100000BF30F4E3CA7E54C07201A23FB85A4240	\N	\N	\N	-81.98113345	36.70874782	\N	\N	\N	\N	\N	\N	\N	\N	VAAB00USA	swift	1	0	10	6	\N	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
254	0101000020E6100000049A7C71B15E53C0A6E7A3ADC6C64240	\N	\N	\N	-77.47958028	37.55293818	\N	\N	\N	\N	\N	\N	\N	\N	VARM00USA	swift	1	0	10	6	\N	14	14	14	19.6	\N	19.6	9.6	1	1	1	100	single	1                                                                                                                                                                                                                                                             
255	0101000020E61000001E6EC9A257F953C0BDFD985ADFA34240	\N	\N	\N	-79.89597387	37.28025372	\N	\N	\N	\N	\N	\N	\N	\N	VAVN00USA	swift	1	0	18	6	12	14	14	14	20	\N	20	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
257	0101000020E6100000EE7C3F355E9E5EC01C1C57E98F604840	\N	\N	\N	-122.4745	48.75439183	\N	\N	\N	\N	\N	\N	\N	\N	WALD00USA	swift	1	0	22	4	20	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
258	0101000020E610000092FE03511C525DC038F28280E3D74740	\N	\N	\N	-117.2829783	47.68663031	\N	\N	\N	\N	\N	\N	\N	\N	WAMW00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
260	0101000020E6100000339C7CC479A85EC0C33C33DA8DC84740	\N	\N	\N	-122.6324321	47.56682899	\N	\N	\N	\N	\N	\N	\N	\N	WASE00USA	swift	1	0	24	4	20	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
261	0101000020E6100000E078889004965DC0E8672C925D084740	\N	\N	\N	-118.3440286	46.06535556	\N	\N	\N	\N	\N	\N	\N	\N	WAWA00USA	swift	1	0	10	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
263	0101000020E6100000D26B790609E056C0F61C810D42684640	\N	\N	\N	-91.50055086	44.81451577	\N	\N	\N	\N	\N	\N	\N	\N	WIEC00USA	swift	1	0	8	4	\N	20	20	20	19.8	\N	19.8	7.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
264	0101000020E6100000CB227FF6045056C09466777130F54640	\N	\N	\N	-89.25030291	45.91554087	\N	\N	\N	\N	\N	\N	\N	\N	WIER00USA	swift	1	0	8	4	\N	18	18	18	24	\N	20	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
265	0101000020E6100000D1DD22EEF9DE56C0754B9B3FE0014740	\N	\N	\N	-91.48400453	46.01465602	\N	\N	\N	\N	\N	\N	\N	\N	WIHW00USA	swift	1	0	8	4	\N	20	20	20	22	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
266	0101000020E6100000A010A6CD1DF555C04CB227E4772C4640	\N	\N	\N	-87.82994405	44.34740879	\N	\N	\N	\N	\N	\N	\N	\N	WIJO00USA	swift	1	0	8	4	\N	16	16	16	20	\N	16	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
267	0101000020E61000003928A3C2FF6B56C02CD67091FB964640	\N	\N	\N	-89.68748537	45.17955225	\N	\N	\N	\N	\N	\N	\N	\N	WIMR03USA	swift	1	0	16	4	12	18	18	18	23.6	\N	20	12	1	1	1	100	single	1                                                                                                                                                                                                                                                             
268	0101000020E6100000FE68B42C8A4D56C0F792C6681D974540	\N	\N	\N	-89.21155851	43.180585	\N	\N	\N	\N	\N	\N	\N	\N	WIPE00USA	swift	1	0	8	4	\N	18	18	18	20	\N	18	8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
270	0101000020E6100000DFC1D354A47554C09184F90265314340	\N	\N	\N	-81.83815499	38.38589513	\N	\N	\N	\N	\N	\N	\N	\N	WVSA00USA	swift	1	0	10	6	\N	14	14	14	19.8	\N	19.8	9.8	1	1	1	100	single	1                                                                                                                                                                                                                                                             
271	0101000020E61000009D1A1EB14C955AC06A566C82DE6B4540	\N	\N	\N	-106.3328059	42.84272795	\N	\N	\N	\N	\N	\N	\N	\N	WYCR00USA	swift	1	0	10	4	\N	18	18	18	24	\N	24	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
272	0101000020E610000097DEA3A3C1BD5BC04204A07A39A24440	\N	\N	\N	-110.9649438	41.26737912	\N	\N	\N	\N	\N	\N	\N	\N	WYEV00USA	swift	1	0	20	4	16	18	18	18	24	\N	22	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
273	0101000020E61000006A0B19D95F5C5AC099737CF654234640	\N	\N	\N	-105.4433501	44.27603036	\N	\N	\N	\N	\N	\N	\N	\N	WYGE00USA	swift	1	0	8	4	\N	18	18	18	23.8	\N	23.8	10	1	1	1	100	single	1                                                                                                                                                                                                                                                             
\.


--
-- Data for Name: EU_stations_v2; Type: TABLE DATA; Schema: swift; Owner: dj
--

COPY swift."EU_stations_v2" (id, geom, station, longitude, latitude, altitude, provider, pilot, commercial, access, sla, base, rover, "bds-b1", "bds-b2", "bds-b2a", "gal-e1", "gal-e5a", "gal-e5b", "gps-l1c", "gps-l2c", "gps-l2p", "gps-l5", type, status) FROM stdin;
241	0101000020DB0B00008EAD6CFEE09751413D77FEF76E164841	SAPOS-0153	14.18835151	51.45054835	174.6579291	SAPOS	1	1	1	100	1	0	20	8	\N	10	10	10	18	\N	18	10	rtk	\N
242	0101000020DB0B00006D99485F791D5141C7826787CAF64641	SAPOS-0162	12.31898235	50.17813485	587.1499057	SAPOS	1	1	1	100	1	0	26	8	16	10	10	10	18	\N	18	10	rtk	\N
243	0101000020DB0B00008D55631BC7C35141603E6520EE9C4741	SAPOS-0164	14.77563867	50.86780691	375.0031583	SAPOS	1	1	1	100	1	0	30	10	18	12	12	12	20	\N	20	12	rtk	\N
244	0101000020DB0B000029B09EDD0622514159BE549B5DA64741	SAPOS-0204	12.4255377	50.98443953	286.506062	SAPOS	1	1	1	100	1	0	22	4	18	12	12	12	20	\N	20	12	rtk	\N
245	0101000020DB0B00006887AE89F4F850419B54EC98EA4C4741	SAPOS-0211	11.81073318	50.58387118	501.8025939	SAPOS	1	1	1	100	1	0	20	4	18	12	12	12	20	\N	20	12	rtk	\N
246	0101000020DB0B00002D78E7DC669B50419BC8D6EC7AD04741	SAPOS-0214	10.46408336	51.20272019	283.7508695	SAPOS	1	1	1	100	1	0	18	6	\N	12	12	12	20	\N	20	12	rtk	\N
247	0101000020DB0B000018BA7335BBCD50416F1D8C9D94194741	SAPOS-0215	11.17994249	50.35574583	465.2819264	SAPOS	1	1	1	100	1	0	18	4	14	12	12	12	20	\N	19	12	rtk	\N
248	0101000020DB0B000022CE28977E8B50418FA7A3C5887B4741	SAPOS-0216	10.22908378	50.81246352	315.0903782	SAPOS	1	1	1	100	1	0	20	4	16	12	12	12	20	\N	20	12	rtk	\N
249	0101000020DB0B0000F44CF249365950417694BF5625E84741	SAPOS-0471	9.493120791	51.31145675	250.9932781	SAPOS	1	1	1	100	1	0	25.8	7.8	\N	12	12	12	20	16	20	12	rtk	\N
250	0101000020DB0B0000877839852B78504152EBE0797F154841	SAPOS-0650	9.947528972	51.52125715	227.7106203	SAPOS	1	1	1	100	1	0	26	8	\N	12	12	12	22	\N	22	14	rtk	\N
251	0101000020DB0B000061C9A62C68BE5041D5F33E5BD7B04841	SAPOS-0672	10.99941672	52.23189028	197.5785277	SAPOS	1	1	1	100	1	0	30	10	\N	12	12	12	22	\N	22	12	rtk	\N
252	0101000020DB0B0000E11BC0FE8DC9504118EA75415C074941	SAPOS-1072	11.17700854	52.6284028	125.346938	SAPOS	1	1	1	100	1	0	24	8	16	10	10	10	18	14	18	10	rtk	\N
258	0101000020DB0B00005E2E228E86105041D88CAAC8B22A4541	SAPOS-1402	8.527563061	48.07308598	790.6267458	SAPOS	1	1	1	100	1	0	23.4	6	16	12	12	12	22	\N	22	14	rtk	\N
259	0101000020DB0B0000C9C972964D6F4F414FDF3EE471654741	SAPOS-2576	7.158813156	50.67599759	128.5688058	SAPOS	1	1	1	100	1	0	26	8	\N	12	12	12	20	\N	20	12	rtk	\N
260	0101000020DB0B0000F2853E80472D4F41AE44482F583F4841	SAPOS-2578	6.608123047	51.66482824	98.75519773	SAPOS	1	1	1	100	1	0	30	8	\N	12	12	12	22	\N	22	14	rtk	\N
261	0101000020DB0B000003A0989C16264F41D815FA8945604741	SAPOS-2592	6.630700863	50.6379242	290.3310979	SAPOS	1	1	1	100	1	0	28	8	\N	10	12	12	20	\N	20	12	rtk	\N
262	0101000020DB0B0000B98E6D4439335041276C4AFDBCBB4841	SAPOS-2593	8.912102333	52.28125758	120.6546894	SAPOS	1	1	1	100	1	0	28.8	9	\N	10.8	10.8	10.8	18	\N	18	9	rtk	\N
263	0101000020DB0B0000A48E80374AAA4F41A3363FAE17B04741	SAPOS-2594	7.568015881	51.02909193	339.0722118	SAPOS	1	1	1	100	1	0	24	8	\N	12	12	12	22	\N	22	14	rtk	\N
264	0101000020DB0B0000EC344030F91650416F2A2EDFC3D14741	SAPOS-2596	8.523812134	51.20019452	737.9651506	SAPOS	1	1	1	100	1	0	30	10	\N	12	12	12	20	\N	20	12	rtk	\N
265	0101000020DB0B0000AB6250A5E43050419B5F1ADF322A4841	SAPOS-2597	8.893726391	51.61131157	348.0190393	SAPOS	1	1	1	100	1	0	26	8	\N	12	12	12	20	\N	19.4	12	rtk	\N
266	0101000020DB0B000062EDB1BFA10A50413079D62554354841	SAPOS-2600	8.326370591	51.65581332	143.4063109	SAPOS	1	1	1	100	1	0	28	10	\N	12	12	12	22	\N	22	14	rtk	\N
267	0101000020DB0B0000E4A8722BE2A14F4153BBC375C7BF4841	SAPOS-3599	7.437125447	52.27717527	109.8236458	SAPOS	1	1	1	100	1	0	30	10	\N	12	12	12	22	\N	22	14	rtk	\N
268	0101000020DB0B0000884376BE4B92514178F64F0E50764941	SAPOS-0017	14.2582276	53.06951516	61.01804155	SAPOS	1	1	1	100	1	0	24	8	14	14	14	14	22	\N	22	12	rtk	\N
269	0101000020DB0B00006497B8CD70825141521F4DAD07C54841	SAPOS-0019	13.94248473	52.26353187	92.33781732	SAPOS	1	1	1	100	1	0	27.2	10	18	12	12	12	22	18	20.6	12	rtk	\N
270	0101000020DB0B000046FA7FD1FE765141E32F0882B73F4941	SAPOS-0024	13.81957418	52.83272619	67.43925256	SAPOS	1	1	1	100	1	0	24	10	14	12	12	12	18	\N	18	10	rtk	\N
271	0101000020DB0B0000CDE30F23FBF550411048B0A7BB694941	SAPOS-0025	11.86790916	53.07234854	100.1734531	SAPOS	1	1	1	100	1	0	24	10	14	14	14	14	20	\N	20	12	rtk	\N
272	0101000020DB0B00007235A44394245141BB5107350FE14841	SAPOS-0030	12.54265395	52.43082239	75.96219687	SAPOS	1	1	1	100	1	0	26	8	\N	10	10	10	18	\N	18	10	rtk	\N
273	0101000020DB0B00002F71BF6E56EF50416FA4132BCF394541	SAPOS-0256	11.59009823	48.1410779	579.8016309	SAPOS	1	1	1	100	1	0	24	6	16	12	12	12	22	\N	22	14	rtk	\N
274	0101000020DB0B000099670F668A335141806D19EEDFDC4541	SAPOS-0257	12.56571417	48.87415897	390.1680325	SAPOS	1	1	1	100	1	0	28	10	18	14	14	14	20	16	20	12	rtk	\N
275	0101000020DB0B00003928344462E850413380C06D6E8E4541	SAPOS-0258	11.50606966	48.53213325	494.6542109	SAPOS	1	1	1	100	1	0	28	8	18	12	12	12	19.8	\N	19.8	12	rtk	\N
276	0101000020DB0B00000D9AB31265BC504174170698126A4541	SAPOS-0259	10.89344024	48.37126859	556.8480131	SAPOS	1	1	1	100	1	0	24	6	18	12	12	10	20	\N	20	12	rtk	\N
277	0101000020DB0B0000A6DCA8829D17514191DBAD396E924541	SAPOS-0266	12.16124179	48.53973324	447.8849147	SAPOS	1	1	1	100	1	0	22	6	16	12	12	12	18	\N	18	10	rtk	\N
278	0101000020DB0B00005BC8AC9541BA5041582FA8B99FB34641	SAPOS-0267	10.89094348	49.88897493	304.7833633	SAPOS	1	1	1	100	1	0	30	10	\N	14	14	14	22	\N	22	12	rtk	\N
279	0101000020DB0B000018D6C96FBC15514158EE897457004541	SAPOS-0272	12.10703203	47.86755961	521.9659692	SAPOS	1	1	1	100	1	0	28	8	18	12	12	12	20	\N	20	12	rtk	\N
280	0101000020DB0B0000453894B397E2504185ACCB082F314641	SAPOS-0279	11.44753734	49.28256972	480.9835681	SAPOS	1	1	1	100	1	0	30	10	\N	12	12	12	22	\N	22	14	rtk	\N
281	0101000020DB0B00004B3753FE7211514118171954CA3C4641	SAPOS-0280	12.10893326	49.32556843	425.3412511	SAPOS	1	1	1	100	1	0	26	10	\N	14	14	14	24	\N	24	14	rtk	\N
282	0101000020DB0B0000EA709039D8CF504100553A077EAF4441	SAPOS-0285	11.14272743	47.509259	1827.938522	SAPOS	1	1	1	100	1	0	21.7	5.4	12.6	10.8	10.8	10.8	18.1	\N	18.1	10.8	rtk	\N
283	0101000020DB0B000018021AE4713E5041F289519FB1C14641	SAPOS-0287	9.125657691	49.95388206	173.4803586	SAPOS	1	1	1	100	1	0	23.4	7.2	\N	12.6	12.6	12.6	21.6	\N	21.6	12.6	rtk	\N
284	0101000020DB0B000030202414B38C504151AE7A5A50D54641	SAPOS-0289	10.24263009	50.04730753	282.2804755	SAPOS	1	1	1	100	1	0	30.8	11	\N	15.4	15.4	15.4	26	\N	24.2	15.4	rtk	\N
285	0101000020DB0B0000671B79F1153D5141DE99A5DBB1024541	SAPOS-0296	12.64557595	47.86674343	643.4262693	SAPOS	1	1	1	100	1	0	24	6	16	10	10	10	18	\N	18	10	rtk	\N
286	0101000020DB0B0000815C08B27B6D50415F3D2FBEE1974541	SAPOS-0391	9.802380699	48.58570459	736.3964833	SAPOS	1	1	1	100	1	0	24	6	16	12	12	12	18	\N	18	10	rtk	\N
287	0101000020DB0B000008F5DF357F645041E9E236CF79794641	SAPOS-0392	9.670834049	49.62427554	247.4720529	SAPOS	1	1	1	100	1	0	20	6	14	12	12	12	19.4	\N	19.4	12	rtk	\N
1	0101000020DB0B000024A5F2DF43CF6041929ABA2D37E43641	ARAA00ARE	55.68143483677772	24.26459312810969	270.67729306034744	swift	1	1	1	100	1	0	38.0	14	20.0	18	18	18	20	16	20	10	integrity	\N
2	0101000020DB0B00002064A4E1B99A6041783359159E173641	ARAD00ARE	54.51315335100817	24.41226264471794	-25.21645907312632	swift	1	1	1	100	1	0	36.0	14	20.0	17.8	17.6	18	20	16	20	10	integrity	\N
3	0101000020DB0B0000F018552B44766041AC4965CC27A63441	ARAM00ARE	53.467818021088696	24.051282593268787	-13.91679142601788	swift	1	1	1	100	1	0	36.0	14	20.0	20	18	18	20	16	20	10	integrity	\N
4	0101000020DB0B0000A420DFB8F54C604131AA8B19EF173441	ARDE00ARE	52.57205375657295	24.178994299384133	1.6320266807451844	swift	1	1	1	100	1	0	36.0	14	20.0	19.8	19.8	20	20	16	20	10	integrity	\N
5	0101000020DB0B0000CA95B841ABA860417EAE8386A61D3841	ARDU00ARE	55.32388413324463	25.28331780177508	-25.849275460466743	swift	1	1	1	100	1	0	29.6	12	16.0	14	14	14	20	16	20	10	integrity	\N
6	0101000020DB0B0000E0B29E1C9AD760412983BDD3E2BC3841	ARFU00ARE	56.350873935019294	25.09377917601125	-13.011098369956017	swift	1	1	1	100	1	0	34.0	14	20.0	18	17.2	17.4	19.6	16	19.6	10	integrity	\N
7	0101000020DB0B00004716530029A9604198D04CEE4CA83341	ARJA00ARE	54.12974162417108	23.028344089071485	105.5588971665129	swift	1	1	1	100	1	0	38.0	14	22.0	18	18	16	20	16	20	10	integrity	\N
8	0101000020DB0B0000CA43AA4FA32260410968420FD46C3341	ARRG00ARE	51.62871397173325	24.247650555179508	-17.350615888834	swift	1	1	1	100	1	0	36.0	14	20.0	18	18	18	20	16	20	10	integrity	\N
9	0101000020DB0B0000ED8C0E657E8B604125363FA4BFEF3241	ARWM00ARE	53.41023317596025	22.96051440144626	110.35707743186504	swift	1	1	1	100	1	0	35.8	11.8	22.0	16	16	16	20	16	20	10	integrity	\N
10	0101000020DB0B000047F2ED0C373F5241C3004D142E6D4441	ATFS00AUT	16.085817631795372	47.03869534008419	325.4614807544276	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	22.2	18	22	12	integrity	\N
11	0101000020DB0B0000C0D327CA08E251418EC7F4813BD54541	ATGD00AUT	14.992747518461767	48.75660437730183	575.7128350017592	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	24	20	24	14	integrity	\N
12	0101000020DB0B0000852D0B4C2E505241AF2CC1D784524541	ATHB00AUT	16.44385507956274	48.07796916239669	234.73567405249923	swift	1	1	1	100	1	0	30.0	6	22.0	16	16	16	22	18	22	14	integrity	\N
13	0101000020DB0B00005D6646E7E94B5141C40E68A1CB294441	ATHL00AUT	12.794057346105712	46.8628929484514	1852.9331074105576	swift	1	1	1	100	1	0	23.6	5.6	16.0	14	14	14	18	14	18	8	integrity	\N
14	0101000020DB0B0000561B6BA0ABC3504198B3B79B0A344441	ATJB00AUT	10.966769318355333	46.94194558256497	3096.1205770634115	swift	1	1	1	100	1	0	24.0	4	18.0	14	14	14	20	16	20	10	integrity	\N
15	0101000020DB0B00001F4F845A06BF5141B89A2DB90F004441	ATKA00AUT	14.32071921668304	46.6198864464133	508.3021726422012	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	22	16	21.8	12	integrity	\N
16	0101000020DB0B000013A969BA087C5241E8AA3C5270A44641	CZOL00CZE	17.26775893221251	49.58902310407924	280.7518227491528	swift	1	1	1	100	1	0	29.8	5.8	22.0	16	16	16	22	18	22	12	integrity	\N
17	0101000020DB0B00001251C1EF4AB351418CF31CD4A1FA4641	CZPA00CZE	14.464938101676736	50.13202653428743	384.7487207241357	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	24	20	24	14	integrity	\N
18	0101000020DB0B00000A53FF3849795041CBA292B7220A4D41	DNBR00DNK	9.958526634560544	57.35877390740729	75.32639734447002	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	26	18	26	12	integrity	\N
19	0101000020DB0B0000BE9CB7E59D2851414D6F9F0738834A41	DTBA00DEU	12.72284173859556	54.35194184380385	64.83684823289514	swift	1	1	1	100	1	0	22.0	4	18.0	14	14	14	24	18	24	12	integrity	\N
20	0101000020DB0B0000C7C3A801F6555141E37454C987044941	DTBN00DEU	13.2975873700851	52.57564983173886	99.92518259584904	swift	1	1	1	100	1	0	28.0	4	22.0	16	16	16	23	18	23	12	integrity	\N
21	0101000020DB0B00009A5D97AB99EA50417BDFD40C60C34641	DTBR00DEU	11.582002747240823	49.95398222455271	426.55053805653006	swift	1	1	1	100	1	0	28.0	4	22.0	14	14	14	22	18	22	12	integrity	\N
22	0101000020DB0B000097877D49118051417953F0E9E1B34741	DTDD00DEU	13.800390393523664	51.00975350050528	179.1014016037807	swift	1	1	1	100	1	0	25.8	3.8	20.0	14	14	14	24	18	22	14	integrity	\N
23	0101000020DB0B00007CB678C082374F417CF2C86517E34741	DTDS00DEU	6.7144134963396	51.24294681973209	107.42960100062191	swift	1	1	1	100	1	0	26.0	2	22.0	12	12	12	20	18	20	12	integrity	\N
24	0101000020DB0B00001FFC82FDB1585041158966F695D74A41	DTFB00DEU	9.442833469970502	54.76882116092711	108.06661287136376	swift	1	1	1	100	1	0	25.8	4	20.0	14	14	14	24	18	24	12	integrity	\N
25	0101000020DB0B0000DE83C3101F4350410C9B40F890CB4641	DTGB00DEU	9.191608441833669	49.99982168519608	196.13682258781049	swift	1	1	1	100	1	0	23.8	3.8	20.0	14	14	14	20	16	20	10	integrity	\N
26	0101000020DB0B0000B6C8847388A35041E3C2ED00481C4941	DTHL00DEU	10.603357104400391	52.7289376309671	151.3775275303051	swift	1	1	1	100	1	0	23.8	3.8	18.0	14	14	14	24	18	22	12	integrity	\N
27	0101000020DB0B00004F297B108A0050417CC0CD4DA96F4741	DTHR00DEU	8.212690069014121	50.74420058453115	327.3197615388781	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	18	14	16	8	integrity	\N
28	0101000020DB0B000081EC8FA3B9AF5041AE50A088D91C4841	DTHT00DEU	10.767694541345628	51.5525847685416	267.44926168210804	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	22	18	20	12	integrity	\N
29	0101000020DB0B000027653B5CDDA050417BF1EDA995D94441	DTIF00DEU	10.506442594617438	47.70803339915733	869.5957432258874	swift	1	1	1	100	1	0	28.0	4	22.0	16	16	16	20	16	20	12	integrity	\N
30	0101000020DB0B00000C7764EEAC015141954E79DCD6E24541	DTKM00DEU	11.87104046913142	48.91544186098318	403.4978757696226	swift	1	1	1	100	1	0	24.0	4	18.0	14	14	14	18	14	18	8	integrity	\N
31	0101000020DB0B00006D552B4551475041EC259AC3DBE54541	DTMB00DEU	9.26760839229736	48.94261431231005	287.86381542123854	swift	1	1	1	100	1	0	20.0	4	18.0	14	14	14	22	18	22	12	integrity	\N
32	0101000020DB0B00005B21693FD5BA4F410AED228537164541	DTMH00DEU	7.82988707723189	47.96715202040917	344.04778539948165	swift	1	1	1	100	1	0	20.0	2	20.0	10	10	10	20	16	20	10	integrity	\N
33	0101000020DB0B000052434C4DEF434F416C01BA6C53B44641	DTND00DEU	6.898616665473513	49.8533500261317	213.02058966178447	swift	1	1	1	100	1	0	19.4	4	18.0	10	10	10	20	16	20	10	integrity	\N
34	0101000020DB0B0000BA66A1AE58F74F41CFFED8BBAFBE4841	DTOB00DEU	8.07826833063042	52.28425705975638	135.98880817182362	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	20	16	20	10	integrity	\N
35	0101000020DB0B0000584C8A94407E514124C3064345D34941	DTPW00DEU	13.991887543640276	53.50688670998576	64.72222315240651	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	22	18	22	12	integrity	\N
36	0101000020DB0B0000563687BA3CDA5041162D2D45FEDA4941	DTSW00DEU	11.461754021972896	53.59914937946909	117.21438215207309	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	21.8	14	21.2	10	integrity	\N
37	0101000020DB0B00006DB34F2F4A615141264A48D17FAA4541	DTVD00DEU	13.188763520672492	48.625901295512165	382.0459015443921	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	22	18	22	12	integrity	\N
38	0101000020DB0B00008A14E7F3B102504106448EC0D0AF4941	DTVR00DEU	8.136891057010223	53.394959406492106	59.94579975306988	swift	1	1	1	100	1	0	25.4	3.8	20.0	14	14	14	20	16	18	10	integrity	\N
39	0101000020DB0B0000D1A0B67424125041AE9E3798592A4641	DTWL00DEU	8.515175483111273	49.25061029230852	161.67963760439306	swift	1	1	1	100	1	0	28.0	4	22.0	14	14	14	22	18	22	12	integrity	\N
40	0101000020DB0B0000A960151338D650412DD0E87DCEA44741	DTWR00DEU	11.3199668192373	50.99513094859799	307.14111011940986	swift	1	1	1	100	1	0	26.0	4	18.0	16	16	16	21.6	16	18	12	integrity	\N
41	0101000020DB0B000009219EB0B78550417FA5A3332A054C41	DNAB00DNK	10.16452297559708	56.15761197192072	80.19286218378693	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	24	18	24	12	integrity	\N
42	0101000020DB0B00006E1B6DB468285041202DD31520334C41	DNHS00DNK	8.620669353621736	56.36185470497151	74.56052151788026	swift	1	1	1	100	1	0	24.0	4	20.0	16	16	16	23.6	16	23.6	12	integrity	\N
43	0101000020DB0B0000FE011C8F3EDC504178E25006F0694B41	DNSO00DNK	11.560656918056338	55.43382277444088	89.22721974086016	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	24	18	24	12	integrity	\N
44	0101000020DB0B0000628BF479B1F0494188B41C832EE53A41	ESAC00ESP	-0.5049283372559267	38.37533181463216	147.10557712987065	swift	1	1	1	100	1	0	22.0	4	18.0	10	10	10	18	14	18	8	integrity	\N
45	0101000020DB0B00000D76620F4B7D4841373C0BE73ECA3841	ESAM00ESP	-2.4193377192986314	36.88085397414271	140.05933520570397	swift	1	1	1	100	1	0	19.8	2	17.8	10	10	10	20	16	20	10	integrity	\N
46	0101000020DB0B0000D64C733FB1664C41000F093F3A554041	ESBN00ESP	2.777537311322072	42.11307548831531	198.55687383841723	swift	1	1	1	100	1	0	21.6	4	17.8	10	10	10	20	16	20	10	integrity	\N
47	0101000020DB0B0000D2D5C9DA5A064741C2D81CD10DF93A41	ESCB00ESP	-4.800504958072628	37.848853004656746	153.86355203855783	swift	1	1	1	100	1	0	22.0	2	19.8	10	10	10	20	16	20	10	integrity	\N
48	0101000020DB0B000086CB048879F145416CE02DDF49693941	ESCD00ESP	-6.158863779593832	36.68181211702565	75.50806604512036	swift	1	1	1	100	1	0	21.2	No data	20.0	10	10	10	18.8	15.8	18	10	integrity	\N
49	0101000020DB0B0000632BEF3557734841DD9565D94F054241	ESCM00ESP	-3.8398184738095327	43.436426353567946	67.16113125346601	swift	1	1	1	100	1	0	22.0	4	18.0	10	10	10	20	16	20	10	integrity	\N
50	0101000020DB0B00006644B020A6BA4541CF35E2645E844241	ESCO00ESP	-8.315944341547874	43.32212693461011	144.31543313711882	swift	1	1	1	100	1	0	24.6	2	20.0	10	10	10	20	16	20	10	integrity	\N
51	0101000020DB0B000013779C65474F494120EDB17846C23D41	ESCU00ESP	-1.7339426834024247	39.94670751112873	1039.5116650043055	swift	1	1	1	100	1	0	18.0	2	16.0	10	10	10	20	16	20	10	integrity	\N
52	0101000020DB0B0000A7BC631869614B41DCE61AA4019A3B41	ESEI00ESP	1.580398535430454	39.00321488607189	74.57803305238485	swift	1	1	1	100	1	0	21.8	4	18.0	10	10	10	18	14	18	8	integrity	\N
53	0101000020DB0B0000560A012FBD9D3B41A83BA8E692332D41	ESGC00ESP	-15.425218932342084	27.86438110275436	102.5051077324897	swift	1	1	1	100	1	0	17.0	0.2	16.0	10	10	10	18.6	12	18	8	integrity	\N
54	0101000020DB0B000052D6FF4A27EE48419657C1FDF9F83F41	ESGU00ESP	-2.56341101080316	41.1685352428166	1284.1525867432356	swift	1	1	1	100	1	0	24.0	4	19.8	10	10	10	20	16	20	10	integrity	\N
55	0101000020DB0B0000C5D5DB68DB33454111FCA57925AD3A41	ESHU00ESP	-7.401746526678807	37.2231917780367	104.77144938427956	swift	1	1	1	100	1	0	21.8	1.8	19.8	10	10	10	20	16	20	10	integrity	\N
56	0101000020DB0B00002E02A7C535384641CBCD95C8AC203E41	ESME00ESP	-6.42325233898016	39.48461945627938	470.88724895287305	swift	1	1	1	100	1	0	23.2	3.8	18.6	10	10	10	20	16	20	10	integrity	\N
57	0101000020DB0B0000BA87D3DD960D474105D4C45E5AE03841	ESMG00ESP	-4.498399867666078	36.63278112830263	95.31619084067644	swift	1	1	1	100	1	0	19.8	1.8	18.0	10	10	10	18	14	18	8	integrity	\N
58	0101000020DB0B0000F213B911ED224C41B39CC379DF753C41	ESML00ESP	2.6571320419394	39.60287621141151	107.49620464909822	swift	1	1	1	100	1	0	23.8	4	18.0	12	12	12	18	14	18	8	integrity	\N
59	0101000020DB0B00003C682CD883F24C41265C65522E003D41	ESMR00ESP	3.854877831350541	40.00734953387112	83.15541211888194	swift	1	1	1	100	1	0	24.0	4	17.8	12	12	12	20	14	20	10	integrity	\N
60	0101000020DB0B0000EE26D91C3E764941DCF301FED74F3A41	ESMU00ESP	-1.1553432836356852	37.952030575554055	112.77135229296982	swift	1	1	1	100	1	0	23.2	3.8	19.0	10	10	10	20	16	20	10	integrity	\N
61	0101000020DB0B00002E34B8BD88F0474135DF62263CC43B41	ESMZ00ESP	-3.555594935279621	38.51259085222452	885.1645529102534	swift	1	1	1	100	1	0	24.0	4	19.8	10	10	10	20	16	19.4	10	integrity	\N
62	0101000020DB0B0000B3470D402786474150526A3A9E5A3E41	ESNM00ESP	-4.500887878420164	39.92930165818216	572.0832126513124	swift	1	1	1	100	1	0	22.0	2	19.6	10	10	10	20	16	20	10	integrity	\N
63	0101000020DB0B000050FCFA4E4D334741D6BB46D4DC5D4241	ESOV00ESP	-5.934612289875425	43.54435567590289	149.26956020016223	swift	1	1	1	100	1	0	23.8	3.8	20.0	10	10	10	20	16	20	10	integrity	\N
64	0101000020DB0B0000FEF0FD6DC56445412609C5DA3ECC4141	ESSC00ESP	-8.577764938147281	42.4032731767382	377.8463563444093	swift	1	1	1	100	1	0	20.0	2	18.0	10	10	10	18	16	18	10	integrity	\N
65	0101000020DB0B0000FA8F7B10CD634A41952CF8DD1C7E3D41	ESSE00ESP	-0.070961797431674	39.97401031463127	108.34997193235904	swift	1	1	1	100	1	0	22.0	4	18.0	10	10	10	20	16	20	10	integrity	\N
66	0101000020DB0B000031DF620FEA3D4B41914AA43C0F4B3F41	ESTA00ESP	1.0748262096836032	41.15862195694535	208.38689972367132	swift	1	1	1	100	1	0	22.0	4	18.0	10	10	10	20	16	20	10	integrity	\N
67	0101000020DB0B000034036A9E42A647414B140D0D7D9C4041	ESVA00ESP	-4.701621286626681	41.62287082216804	777.6521751508117	swift	1	1	1	100	1	0	22.0	4	20.0	10	10	10	20	16	20	10	integrity	\N
68	0101000020DB0B0000667184D1DCE7484181DEB6E8294C4141	ESVI00ESP	-2.9248967841001976	42.6916087930266	532.6043971534818	swift	1	1	1	100	1	0	24.0	4	20.0	10	10	10	20	16	20	10	integrity	\N
69	0101000020DB0B00004EC8CAA2661D4A41F25C2AA8E6364041	ESZA00ESP	-0.7806202609470282	41.651417474739006	269.1498013390228	swift	1	1	1	100	1	0	24.0	4	20.0	10	10	10	20	16	20	10	integrity	\N
70	0101000020DB0B00000BF8EE3922F4524145EEB6046A5D5241	FIHA00FIN	24.184474918141543	65.84170833240718	33.15386461652815	swift	1	1	1	100	1	0	26.0	4	20.0	18	18	18	21.4	16	20	10	integrity	\N
71	0101000020DB0B0000372EE45D3FB85341CCE4BE37568D5141	FIII00FIN	27.190286026333755	63.57105157879408	127.89508460275827	swift	1	1	1	100	1	0	28.0	6	20.0	18	18	18	24	16	24	10	integrity	\N
72	0101000020DB0B0000550C7F79B60E53415F3DE15095B35141	FIKL00FIN	23.94681613336003	64.25994386538994	45.3242506030947	swift	1	1	1	100	1	0	28.0	6	20.0	18	18	18	24	16	24	10	integrity	\N
73	0101000020DB0B000063C05BCF00665341C689EF8C52D95241	FIKM00FIN	27.38673728265461	66.71613320334282	186.42275836132467	swift	1	1	1	100	1	0	26.0	4	20.0	14	15.4	14	20	14	20	8	integrity	\N
74	0101000020DB0B00003F58BF065AAC5241CF8332D0AC395341	FIMU00FIN	23.67630445132596	67.96577876130465	284.5391300627962	swift	1	1	1	100	1	0	27.9	6	20.0	18	18	18	24	16	24	10	integrity	\N
75	0101000020DB0B0000BAB2BE5AC7B652415CE5BDF57FDE5041	FINA00FIN	21.34541284797725	62.47551661463479	29.474699150770903	swift	1	1	1	100	1	0	28.0	6	20.0	18	18	18	23	16	23	10	integrity	\N
76	0101000020DB0B0000B304B14B11575341ED72397911D14F41	FIEK00FIN	23.47751004103519	59.989865414800455	39.44705576635897	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	21.4	14	18	8	integrity	\N
77	0101000020DB0B0000381B8E53C2325341BAA71E38CEA45341	FIIV00FIN	27.546348044976348	68.64971605154467	159.0872371941805	swift	1	1	1	100	1	0	28.0	6	20.0	18	18	18	22	16	22	10	integrity	\N
78	0101000020DB0B00008C3F5BBCF9815341BE8AAC4E26C85041	FIJM00FIN	25.17113116931152	61.92221285528209	125.026047764346	swift	1	1	1	100	1	0	25.6	4	20.0	14	14	14	22	16	20	10	integrity	\N
79	0101000020DB0B000016618096184F54410B01EF0C73485141	FIJO00FIN	29.74198694531013	62.59825864866438	120.53718197066335	swift	1	1	1	100	1	0	26.0	4	20.0	20	20	20	26	18	26	12	integrity	\N
80	0101000020DB0B000009675019C13F54417938A8D7629C5041	FILA00FIN	28.49984364373265	61.11774229709438	128.41498387698084	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	20.8	14	20.8	10	integrity	\N
81	0101000020DB0B0000964D527E71CD53413E035A52C53A5041	FILV00FIN	25.94691369927596	60.50355400175052	28.147040938027203	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	24	16	20	10	integrity	\N
82	0101000020DB0B000046E955E3FADF53415E0B9000AE2B5241	FISU00FIN	28.915763681867062	64.88277417899981	229.33440396003425	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	22	14	22	8	integrity	\N
83	0101000020DB0B000012E646F360455341DF6180AB078B5041	FITA00FIN	23.76975662317402	61.48641311970705	131.10738609917462	swift	1	1	1	100	1	0	26.0	4	20.0	18	18	18	26	16.6	25.4	12	integrity	\N
84	0101000020DB0B00008CC3F473BAD952416F9D1A042A2C5041	FIUU00FIN	21.42147295285212	60.8040999309955	37.7397103626281	swift	1	1	1	100	1	0	27.8	4	20.0	14	14	14	22	16	22	9.8	integrity	\N
85	0101000020DB0B00000F6CEA9EB7834C4118B23CBD4C2D4741	FRAB00FRA	1.8149957158472896	50.15940368807632	105.13241918571292	swift	1	1	1	100	1	0	26.0	4	22.0	14	14	14	20	16	20	10	integrity	\N
86	0101000020DB0B0000E79D9F3CEB634D4111AFAF26FE8D4641	FRAR00FRA	3.515927202940238	49.53312782462732	232.90893628727645	swift	1	1	1	100	1	0	22.0	4	18.0	12	12	12	20	16	20	10	integrity	\N
87	0101000020DB0B00008C6FF6AF87414E41156F4523CED84541	FRBD00FRA	5.16334383746364	48.77998236665842	296.8337543476373	swift	1	1	1	100	1	0	24.0	4	22.0	14	14	14	20	16	20	10	integrity	\N
88	0101000020DB0B000051DB78C72DF14941D6C862B5FED74141	FRBY00FRA	-1.4097666166616285	43.52623903756677	88.76527763903141	swift	1	1	1	100	1	0	24.0	4	20.0	10	10	10	20	16	20	10	integrity	\N
89	0101000020DB0B0000FC8D22A439A44A41F4A08E1925DE4641	FRCB00FRA	-1.4976278329700572	49.50337446653312	85.63598592020571	swift	1	1	1	100	1	0	22.0	4	20.0	12	12	12	20	16	20	10	integrity	\N
90	0101000020DB0B0000C9F95D6FAE794B4133FFB4FEC1764441	FRCH00FRA	0.5440038793693572	46.840005366642885	106.83989691734314	swift	1	1	1	100	1	0	24.0	4	20.0	10	10	10	20	16	20	10	integrity	\N
91	0101000020DB0B0000FE5A1C1D7F164E412A61940CFD994441	FRDI00FRA	5.010169376314347	47.30170219119873	333.29856426641345	swift	1	1	1	100	1	0	28.0	4	23.8	14	14	14	20	16	20	10	integrity	\N
92	0101000020DB0B00006A603F2D71D34C41BFF2D2CFB4C24541	FRDL00FRA	2.6392639702516685	48.53921438770868	129.8734153555706	swift	1	1	1	100	1	0	23.4	3.4	20.0	14	14	14	20	16	20	10	integrity	\N
93	0101000020DB0B0000808E25CCA8CD4C41F1B3B43CA1B24741	FRDU00FRA	2.242179313675801	50.805916537918094	56.13121313322336	swift	1	1	1	100	1	0	24.0	4	22.0	14	14	14	20	16	20	10	integrity	\N
94	0101000020DB0B000054D2382362F54E41B90B6F67E5C74341	FRGE00FRA	6.580248197865033	46.39314361974638	564.341665907763	swift	1	1	1	100	1	0	22.0	4	18.0	14	14	14	20	16	20	10	integrity	\N
95	0101000020DB0B000073A7EACCE4C54E41AA4FFF5ACE0C4141	FRHR00FRA	6.473207028155847	43.15992141130073	178.81775556970388	swift	1	1	1	100	1	0	23.0	4	17.6	10	10	10	18	14	18	8	integrity	\N
96	0101000020DB0B000006B1AE63068B4B4151050F6AB4BC4641	FRHV00FRA	0.1532088030959539	49.50516532644043	163.4696474513039	swift	1	1	1	100	1	0	25.6	3.6	22.0	14	14	14	20	16	20	10	integrity	\N
97	0101000020DB0B00008FCB16E6AC0D4B41A56587C1CC754141	FRLA00FRA	0.4514490265210425	43.26056869195722	427.3834154913202	swift	1	1	1	100	1	0	22.0	4	18.0	10	10	10	20	16	20	10	integrity	\N
98	0101000020DB0B000055472AA9BE714B41C7D6224A07794541	FRLM00FRA	0.2709051540789571	48.01407288671416	115.80700915120542	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	20	16	20	10	integrity	\N
99	0101000020DB0B0000666BD2B3985C494198B0F4ACC58E4541	FRLO00FRA	-3.3632779180431367	47.73017748564283	70.96008088625968	swift	1	1	1	100	1	0	26.0	4	22.0	12.6	14	14	20	16	20	10	integrity	\N
100	0101000020DB0B00006DC22B29648A4D41ABAFCE45F2A54141	FRMG00FRA	4.429668892595342	43.77779541000584	147.52817677799612	swift	1	1	1	100	1	0	22.0	4	18.0	14	14	14	20	16	18	10	integrity	\N
101	0101000020DB0B0000E04F7885CF9C4C414A8D8B9691E94341	FRMO00FRA	2.5804664064598906	46.346105430860014	294.2159151760861	swift	1	1	1	100	1	0	23.8	2	21.6	14	14	14	20	16	20	10	integrity	\N
102	0101000020DB0B0000D476F91286BE4C4107C2B7B62E574141	FRNA00FRA	3.183038976242407	43.337634336354405	91.17355669103564	swift	1	1	1	100	1	0	26.0	4	20.0	12	12	12	20	16	20	10	integrity	\N
103	0101000020DB0B00009730BB3EFE304F41A1D2BCD73F734141	FRNI00FRA	7.122034579744726	43.65388783783178	157.89984445273876	swift	1	1	1	100	1	0	25.6	4	20.0	14	13.6	13.8	18	14	18	8	integrity	\N
104	0101000020DB0B000088894C4CD5654B41DC4C7B45E0114341	FRPE00FRA	0.6983386069693265	45.19743690688368	163.86497985944152	swift	1	1	1	100	1	0	21.8	4	17.8	10	10	10	20	16	20	10	integrity	\N
105	0101000020DB0B0000562712578C964A41614CB8EE770D4641	FRPT00FRA	-1.3705299798143258	48.54593486901647	139.27428151667118	swift	1	1	1	100	1	0	24.0	4	22.0	14	14	14	20	16	20	10	integrity	\N
106	0101000020DB0B00005268CFA90B714C4120220E4DD33C4241	FRRO00FRA	2.561771171647901	44.35894282404206	641.6779073774815	swift	1	1	1	100	1	0	21.8	4	17.8	12	12	12	20	14	18	10	integrity	\N
107	0101000020DB0B0000610CF25887084A41BEC5C21F218D4441	FRSG00FRA	-1.928818663226224	46.69727262225727	78.48690097313374	swift	1	1	1	100	1	0	26.0	4	22.0	14	14	14	20	16	20	10	integrity	\N
108	0101000020DB0B0000C527B8D46F534C4117A591DE8F984841	GBCC00GBR	1.158929280446574	51.792443634245394	70.46124572865665	swift	1	1	1	100	1	0	26.0	4	22.0	14	14	14	22	16	22	10	integrity	\N
109	0101000020DB0B00007209DA04565C49412378E11583544941	GBCD00GBR	-4.657141206360011	52.08326526594439	72.48035525437444	swift	1	1	1	100	1	0	22.0	2	22.0	16	16	16	20	16	20	10	integrity	\N
110	0101000020DB0B0000CEF5E936E3E94B41173A66C9CE2A4A41	GBCT00GBR	-0.0311987703923861	53.56238513338445	66.21846272516996	swift	1	1	1	100	1	0	24.0	4	20.4	16	16	16	22	16	22	10	integrity	\N
111	0101000020DB0B0000BF9D0524D3404A411156DA952CA04B41	GBDB00GBR	-3.8200977370498417	54.93215512579128	75.67254519928247	swift	1	1	1	100	1	0	22.0	2	20.0	14.2	14.2	14.2	22	16	20	10	integrity	\N
112	0101000020DB0B0000B26CBF9F53B34C41C1F5DBDEF2404941	GBGY00GBR	1.7244634067935776	52.61283521647962	65.52964528184384	swift	1	1	1	100	1	0	24.2	4	22.0	16	16	16	22	16	22	10	integrity	\N
113	0101000020DB0B00009E0C33D6DC024B41876265C25B1A4C41	GBKS00GBR	-2.463058237694036	55.64560315794999	208.097620729357	swift	1	1	1	100	1	0	16.0	No data	16.0	12	12	12	20	16	20	10	integrity	\N
114	0101000020DB0B0000B0A352C800714B411E67C80973184B41	GBLH00GBR	-1.244007175886253	54.56054565986892	72.09099617041647	swift	1	1	1	100	1	0	24.0	2	20.0	14	14	14	24	16	22	10	integrity	\N
115	0101000020DB0B0000FB4C512A0D634A41E79C36D8D63F4A41	GBLP00GBR	-3.037422844583856	53.372586534516174	109.13166534341872	swift	1	1	1	100	1	0	23.0	2	20.0	16	16	16	22	16	20	10	integrity	\N
116	0101000020DB0B000044C714B04FE1484139E0036B82EC4741	GBNQ00GBR	-5.012149360813812	50.35146721288834	159.52394496556371	swift	1	1	1	100	1	0	23.8	3.8	20.0	14	14	14	20	16	20	10	integrity	\N
117	0101000020DB0B0000A84801ADE7BC4941AD95B491A1044D41	GBOB00GBR	-5.475713611608828	56.410044216105376	82.05020836833864	swift	1	1	1	100	1	0	22.0	2	20.0	16	16	16	24	16	24	10	integrity	\N
118	0101000020DB0B0000E9EEA89DB1994B41FD998181409C4D41	GBPH00GBR	-1.781877969130158	57.50882357238356	73.09148144349456	swift	1	1	1	100	1	0	24.0	4	20.0	18	18	18	25.8	18	24	12	integrity	\N
119	0101000020DB0B0000DDEC506EECE34941DEF16F8F08A34841	GBSA00GBR	-3.415738380076055	51.40352477661217	94.73777388967574	swift	1	1	1	100	1	0	26.0	4	22.0	16	16	16	20	16	20	10	integrity	\N
120	0101000020DB0B00003CFDB28446A14A41C3466F27930C4E41	GBTA00GBR	-4.058294409133552	57.8102975221319	103.8621032834053	swift	1	1	1	100	1	0	23.8	2	20.0	18	18	18	25.8	18	24	10.8	integrity	\N
121	0101000020DB0B0000DF8547D7899B4A412B6922D94B144941	GBUS00GBR	-2.219577303049113	52.06336441047964	69.58085353113711	swift	1	1	1	100	1	0	26.0	4	22.0	12	12	12	21	16	20	10	integrity	\N
122	0101000020DB0B000090F032A6A024534160C793067C1F4541	HUBU00HUN	19.30027798890316	47.63612330963077	258.71992989163846	swift	1	1	1	100	1	0	30.0	6	22.0	16	16	16	23.4	20	23.4	14	integrity	\N
123	0101000020DB0B0000E103D4303FD0534130F660685D914541	HUNY00HUN	21.73248433577168	47.930408729159694	168.07127506285906	swift	1	1	1	100	1	0	28.0	4	22.0	16	16	16	20.8	16	18	12	integrity	\N
124	0101000020DB0B000071BB4B05707753418688B6F1A5044441	HUSZ00HUN	20.16500196312463	46.24518692976507	155.67461348790675	swift	1	1	1	100	1	0	30.0	6	22.0	16	16	16	21.6	18	21.6	12	integrity	\N
125	0101000020DB0B0000504F40A760D15241200440051D6A4441	HUVE00HUN	18.041954660758943	46.896417248246976	181.8170576542616	swift	1	1	1	100	1	0	30.0	6	22.0	16	16	16	23.8	20	23.8	14	integrity	\N
126	0101000020DB0B0000EE091C2136794741546BB08929B54B41	IRBA00IRL	-9.366437255573246	54.27816976704746	125.39852585177869	swift	1	1	1	100	1	0	25.8	2	22.0	18	18	18	23.8	16	22	10	integrity	\N
127	0101000020DB0B000056783DE3FD134741407D03C03CB64941	IRCO00IRL	-9.082310590273972	51.900531847172985	238.0589798176661	swift	1	1	1	100	1	0	24.0	2	22.0	14	14	14	20	16	20	10	integrity	\N
128	0101000020DB0B00008889138EF6DA48413B2D763AE2C24A41	IRDU00IRL	-6.213616834123636	53.59931213737659	105.72206839360295	swift	1	1	1	100	1	0	26.0	2	24.0	18	18	18	23.8	16	22	10	integrity	\N
129	0101000020DB0B0000CEE0C3EF0C1F474145D075D7A68A4A41	IREN00IRL	-9.422296721439242	52.85172201480399	89.61914236471057	swift	1	1	1	100	1	0	26.0	4	22.4	18	18	18	23.8	16	21.8	10	integrity	\N
130	0101000020DB0B00006FABAE256FBB484197902614693A4C41	IRLD00IRL	-7.147606734226415	55.24044927408538	121.12282487284392	swift	1	1	1	100	1	0	22.0	2	20.0	18	18	18	22	16	22	10	integrity	\N
131	0101000020DB0B000097359BCD670E4841B8DB86ED47D04941	IRWA00IRL	-7.309116733642794	52.30170903592254	75.73811965528876	swift	1	1	1	100	1	0	25.6	2	22.2	16	16	16	22	16	22	10	integrity	\N
132	0101000020DB0B00001BCFE71BEEE54F41CDAF155D6FC53D41	ITAL00ITA	8.35199776120333	40.64348004697548	78.37771289423108	swift	1	1	1	100	1	0	22.0	4	19.4	12	12	12	16	14	16	8	integrity	\N
133	0101000020DB0B00004707B59973725141EE982F643C8A4141	ITAN00ITA	13.130368961939311	43.7527683962766	72.6161566823721	swift	1	1	1	100	1	0	26.0	4	20.0	14	16	16	22	18	20	12	integrity	\N
134	0101000020DB0B0000943D4A2C44584F412C40B4CCD2614241	ITAP00ITA	7.319390905199526	44.76143918178565	416.1233229255304	swift	1	1	1	100	1	0	24.0	4	18.0	16	16	16	18	14	18	8	integrity	\N
135	0101000020DB0B00002E6CC278D4055141D07DED27FD284141	ITAZ00ITA	11.739339698957489	43.33627715321298	322.702794178389	swift	1	1	1	100	1	0	27.8	5.8	20.0	16	16	16	18	14	18	8	integrity	\N
136	0101000020DB0B000097C6DF934DC55241C7EF2C4B89AC3E41	ITBI00ITA	17.100416507893748	40.93797234436691	269.80038677714765	swift	1	1	1	100	1	0	28.0	6	20.0	16	16	16	20	18	18	12	integrity	\N
137	0101000020DB0B0000A079067CE72B50412A2DC4E769853B41	ITCA00ITA	9.057720385660826	39.31757025791192	111.31227790005504	swift	1	1	1	100	1	0	23.6	4	17.8	14	14	14	18.8	16	18.8	10	integrity	\N
138	0101000020DB0B0000126D2292EF0B51413441A6859B644041	ITCI00ITA	11.78868386691834	42.427426110818175	218.4536772407592	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	20	16	20	10	integrity	\N
139	0101000020DB0B00007475C50A7E1E5241709C475605B53941	ITCO00ITA	14.859383117534902	38.12078128507755	759.030747640878	swift	1	1	1	100	1	0	24.0	4	17.6	14	14	14	20	16	20	10	integrity	\N
140	0101000020DB0B000001BDB8B0BE045041C262968E49C44341	ITDO00ITA	8.416720073093577	46.419362841607565	1797.2249422259629	swift	1	1	1	100	1	0	8.0	No data	8.0	10	10	10	12	10	10	4	integrity	\N
141	0101000020DB0B00004FA348F70EA9514166AB96C5A1E93E41	ITFO00ITA	13.668566309018647	41.26615133622386	86.78837631456554	swift	1	1	1	100	1	0	24.0	4	18.0	14	14	14	20	16	20	10	integrity	\N
142	0101000020DB0B0000386FBF199F2C53419E8D8836F9D83D41	ITLE00ITA	18.2814380426592	40.35382239264372	80.50001456029713	swift	1	1	1	100	1	0	27.6	5.8	19.6	16	16	16	22	18	22	12	integrity	\N
143	0101000020DB0B00009F428CA2EF5650413156915004F34241	ITMI00ITA	9.51900380858843	45.46474086598525	150.57051544450223	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	20	14	18	10	integrity	\N
144	0101000020DB0B0000C961354C192B5141FF5DDE00CC543741	ITPT00ITA	11.99567163224786	36.80939351166979	151.04941801074892	swift	1	1	1	100	1	0	24.0	4	18.0	14	14	14	18	14	18	8	integrity	\N
145	0101000020DB0B00006473BA8C221E5141E2A20A6591154241	ITRA00ITA	12.084418043706975	44.422897134606	46.74752884078771	swift	1	1	1	100	1	0	26.0	4	20.0	14	12	14	21.2	16	20	11.6	integrity	\N
146	0101000020DB0B0000F336F613E509524164D726D5FE6E3741	ITRG00ITA	14.531642700075448	36.78232281018454	63.09519640821964	swift	1	1	1	100	1	0	26.0	6	17.8	14	14	14	20	16	20	10	integrity	\N
147	0101000020DB0B0000E5797482F08A52411FBFB6D4A97A3A41	ITRS00ITA	16.155527882327316	38.50592408631746	699.4366227081046	swift	1	1	1	100	1	0	26.0	4	20.0	12	12	12	20	16	20	10	integrity	\N
148	0101000020DB0B000061F2E88C6160504192F8CA3DE7D83D41	ITSA00ITA	9.670206153182594	40.70178449496022	118.10623246151954	swift	1	1	1	100	1	0	22.0	4	18.0	12	12	12	18	14	18	8	integrity	\N
149	0101000020DB0B00008101D6D4B1645241EC6CFE2476A83C41	ITSC00ITA	15.823202262562315	39.82332273728036	221.16763582546264	swift	1	1	1	100	1	0	22.0	2	18.0	12	12	12	20	16	20	10	integrity	\N
150	0101000020DB0B00000B3920138B125241BAA8DE2262D13D41	ITSL00ITA	14.899430152265936	40.56315804465964	68.44730189535767	swift	1	1	1	100	1	0	27.6	5.6	20.0	14	14	14	20	16	20	10	integrity	\N
151	0101000020DB0B0000DBA7D6160D7B5041609396DA3DE84141	ITSP00ITA	9.991361107320651	44.23449689179451	164.06672717165202	swift	1	1	1	100	1	0	24.0	4	18.0	12	12	12	18	14	18	8	integrity	\N
152	0101000020DB0B00006FBB1507CB04524122863D266D164041	ITTE00ITA	14.84155462018802	41.96496988459767	292.66386174596846	swift	1	1	1	100	1	0	26.0	4	19.8	14	14	14	18	14.2	18	12	integrity	\N
153	0101000020DB0B00004FAE17785155514124F797E4D61A3941	ITTP00ITA	12.513685634925066	37.853013000395165	92.2792476741597	swift	1	1	1	100	1	0	21.4	2	18.0	12	12	12	18	14	18	8	integrity	\N
154	0101000020DB0B00003ADFFDF6C39D51416649E2FC611D4341	ITTR00ITA	13.802659046086267	45.59299680815257	51.626731649041176	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	18	14	18	8	integrity	\N
155	0101000020DB0B0000D555B538C52A5141E97A475BB3084341	ITVE00ITA	12.292081025719945	45.54104166525493	62.43221968505532	swift	1	1	1	100	1	0	28.0	4	22.0	16	16	16	24	20	24	14	integrity	\N
156	0101000020DB0B0000D969EC969E144E411321CCF5A99E4841	NLBR00NLD	4.4829397858062645	52.023695652325976	45.61685942765325	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	21.8	18	21.8	12	integrity	\N
157	0101000020DB0B000095749207A5D54E416B07E26272AD4941	NLMM00NLD	5.803614350965131	53.32572035909046	53.34919956792146	swift	1	1	1	100	1	0	28.0	4	22.0	14	14	14	22	16	22	10	integrity	\N
158	0101000020DB0B000051779E1C0BB54E419EBA2EF909A14741	NLUL00NLD	5.786942570132546	50.90863014558688	165.89360717963427	swift	1	1	1	100	1	0	26.0	4	22.0	14	14	14	21.8	18	21.6	12	integrity	\N
159	0101000020DB0B0000F26D15DC486E5241726C3D55E7095441	NOAL00NOR	23.27905580869584	69.96692891109791	85.39905108883977	swift	1	1	1	100	1	0	27.4	5.4	20.0	16	16	16	20	14	20	8	integrity	\N
160	0101000020DB0B000073ED9F5249DA4E4182FE3F7A23B44F41	NOBE00NOR	4.981315673298274	60.41133816740036	83.93900491017848	swift	1	1	1	100	1	0	23.8	2	20.0	18	18	18	24	16	22	12	integrity	\N
161	0101000020DB0B0000D34D7C4B25E9504136A164E914175241	NOBR00NOR	12.428256768940548	65.77285056012833	188.5624710675329	swift	1	1	1	100	1	0	25.8	4	20.0	18	18	18	22.8	17.2	22	11.6	integrity	\N
162	0101000020DB0B00001F43B49DBA2D5041B6C2586945D14F41	NOGE00NOR	8.545219299052563	60.62660685641751	507.3832660578191	swift	1	1	1	100	1	0	20.0	2	18.0	14	14	14	17	16	16	12	integrity	\N
163	0101000020DB0B00004155417593B35041E9DCB0858DF74F41	NOHA00NOR	11.047354542556992	60.80662956754581	212.3686556657776	swift	1	1	1	100	1	0	22.0	2	20.0	16	16	14	25.6	16	20	10	integrity	\N
164	0101000020DB0B00007BA94262220F50416303D093C3C84D41	NOKR00NOR	8.110485993252848	58.22310581494983	79.43205939605832	swift	1	1	1	100	1	0	24.0	4	20.0	14	14	14	21.8	18	21.8	12	integrity	\N
165	0101000020DB0B00009C71F01276FF4F415B5FEFA748F25041	NOKU00NOR	7.50037537867879	63.06410820138415	55.40952780097723	swift	1	1	1	100	1	0	25.4	5.4	20.0	18	18	18	26	18	26	12	integrity	\N
166	0101000020DB0B00009EB52C5C3B0251417A33853582095341	NOLF00NOR	13.26266651482453	68.00672422327163	71.21165577042848	swift	1	1	1	100	1	0	18.0	2	16.0	18	18	18	20	14	20	8	integrity	\N
167	0101000020DB0B0000AA9E263B8D425341B0199DC5CB885441	NONO00NOR	29.722243839597777	70.63604966096771	36.40455258823931	swift	1	1	1	100	1	0	26.0	6	20.0	14	14	14	20	14	20	8	integrity	\N
168	0101000020DB0B0000EEC14CBBCB635041CD6A6A4361A84E41	NOPG00NOR	9.57124977320354	59.26543675228488	99.78690629918128	swift	1	1	1	100	1	0	24.0	4	20.0	16	16	16	21.8	16	20	10	integrity	\N
169	0101000020DB0B00005574FE1F566051418E15E62F7BBE5241	NORO00NOR	15.38119117417506	67.25825088593466	51.63441868685186	swift	1	1	1	100	1	0	25.6	5.6	20.0	18	18	18	22	16	22	10	integrity	\N
170	0101000020DB0B0000742EB71A8CAB5141E3EAE07444AA5341	NOSE00NOR	17.83498604551924	69.36738525085013	76.77744907978922	swift	1	1	1	100	1	0	24.0	4	20.0	16	16	16	22	16	22	10	integrity	\N
171	0101000020DB0B0000D868C35857104F41722EC043BB794E41	NOSV00NOR	5.668355838567689	58.9829648730929	86.53149675671011	swift	1	1	1	100	1	0	24.0	4	20.0	18	18	18	24	18	24	12	integrity	\N
172	0101000020DB0B00002178067143955041A8662ECD3A175141	NOTR00NOR	10.520964739494357	63.42473734751265	61.04249545186758	swift	1	1	1	100	1	0	24.0	4	20.0	12	12	12	22	16	22	10	integrity	\N
173	0101000020DB0B0000F4DE92558BE54E410F7875131F6D5041	NOVA00NOR	4.87561697861957	61.766801832410266	56.50757097639144	swift	1	1	1	100	1	0	19.8	3.8	16.0	14	14	14	22	16	16	12	integrity	\N
174	0101000020DB0B00007BBD61F0876E50411A19762325515041	NOVI00NOR	9.746414548299123	61.59738770833578	308.8950604684651	swift	1	1	1	100	1	0	21.4	4	18.0	12	10	10	17.2	14	16	8	integrity	\N
175	0101000020DB0B0000C62AE073BB5C32413F06CB485A374341	PRAC00PRT	-27.258046397190583	38.66423801880704	139.28331781644374	swift	1	1	1	100	1	0	14.0	No data	14.0	8	8	8	18	14	18	10	integrity	\N
176	0101000020DB0B0000FDB14196A1674641736E62D5E5084141	PRBR00PRT	-6.751669042100432	41.806580943242565	739.6154450513422	swift	1	1	1	100	1	0	22.0	2	18.0	10	10	10	20	16	20	10	integrity	\N
177	0101000020DB0B0000E86BEFF55CE64541E40C8CA6C6154041	PRGU00PRT	-7.217989108765717	40.57938682981521	922.505026304163	swift	1	1	1	100	1	0	21.8	3.8	17.8	10	10	10	20	14	18	10	integrity	\N
178	0101000020DB0B0000904C35178D6E444147F8B9384AE03A41	PRLA00PRT	-8.53991270334988	37.12473674698936	94.99716605525464	swift	1	1	1	100	1	0	20.0	No data	20.0	10	10	10	18	14	18	8	integrity	\N
179	0101000020DB0B0000C89DC7756C5B4441649A075626EB3D41	PRLB00PRT	-9.144883011145216	38.85070547910146	67.94839358888566	swift	1	1	1	100	1	0	22.0	2	20.0	10	10	10	18	14	18	8	integrity	\N
180	0101000020DB0B00006AA8B523AA9A4441A6C320161A1D3F41	PRLE00PRT	-8.984238432133335	39.60834601771339	90.11426940467209	swift	1	1	1	100	1	0	21.8	1.8	20.0	10	10	10	20	16	20	10	integrity	\N
181	0101000020DB0B0000DC6FCD361731454112F6C3676DD34041	PRMA00PRT	-8.541226994433554	41.23296350138079	175.44309964962304	swift	1	1	1	100	1	0	21.6	1.8	19.8	10	10	10	20	16	20	10	integrity	\N
182	0101000020DB0B0000909921196CBA3B417431CF3A0D0B3741	PRMD00PRT	-16.91379018378587	32.655296324667965	166.15015587210655	swift	1	1	1	100	1	0	16.0	No data	16.0	8	8	8	16.4	12	16	8.2	integrity	\N
183	0101000020DB0B0000C39BD5A5DA4052411A86C4B4E5CC5241	SWGA00SWE	20.65712842015784	67.1502847220926	396.52110758330673	swift	1	1	1	100	1	0	27.6	5.8	20.0	18	18	18	22	16	22	10	integrity	\N
184	0101000020DB0B0000ED29C19BFF6052416CC2C8156C7F4D41	SWGO00SWE	18.33070133425542	57.63798134450504	84.71108303032815	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	23.8	18	21.8	12	integrity	\N
185	0101000020DB0B0000EEA1C4F853F951413BD1473BACFB4F41	SWGV00SWE	17.136569197470855	60.65188256378286	71.11067067738622	swift	1	1	1	100	1	0	28.0	6	20.0	15.4	16	16	25.4	16	22	12	integrity	\N
186	0101000020DB0B000012A7CC1538EA5141741F423402715041	SWHU00SWE	17.084739908353765	61.72151773309145	77.80548476520926	swift	1	1	1	100	1	0	26.0	4	20.0	16	18	16	24	16	24	10	integrity	\N
187	0101000020DB0B000018E43A8FA771514139459AA764724D41	SWJO00SWE	14.228873263957096	57.7716939145167	214.861291657202	swift	1	1	1	100	1	0	24.0	4	20.0	16	16	16	25.8	18	25.8	12	integrity	\N
188	0101000020DB0B0000BC8C56DCCA2D514132673ECFFDCD4E41	SWKA00SWE	13.204139752219596	59.40236519246223	89.15943400748074	swift	1	1	1	100	1	0	25.8	4	20.0	14	14	14	26	16	24	10	integrity	\N
189	0101000020DB0B0000534610ABA8745141E90A25F364F94B41	SWKR00SWE	14.08928618687256	56.03837431978612	49.589850024320185	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	22	16	22	10	integrity	\N
190	0101000020DB0B0000F70C21A5ABFF5141B3F80E3DD9904C41	SWLJ00SWE	16.478650808908597	56.6391639831584	53.7703907918185	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	26	18	24	12	integrity	\N
191	0101000020DB0B0000BB70B39352EF5141E3B19C07F99E4D41	SWLU00SWE	16.416168644866534	57.89015284683509	46.16230847965926	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	24	16	24	10	integrity	\N
192	0101000020DB0B0000F6D1FD5CEA4151415AF4677C1AE54F41	SWMA00SWE	13.703941623705422	60.67758613234167	343.2606793520972	swift	1	1	1	100	1	0	26.0	4	20.0	18	18	18	24	16	24	10	integrity	\N
193	0101000020DB0B000074FF99E8E55752413F52571BA24B4F41	SWNO00SWE	18.67713750803946	59.74955022855294	60.23676816094667	swift	1	1	1	100	1	0	26.0	4	20.0	14	14	14	22	16	20	10	integrity	\N
194	0101000020DB0B0000CEF609A3AA065241C1C22D233C634E41	SWNY00SWE	16.989678902698504	58.76897040803749	56.45327665098012	swift	1	1	1	100	1	0	24.0	4	20.0	14	13.8	14	17.8	16	17.8	10	integrity	\N
195	0101000020DB0B000025D50AB9F59D5141E426CBD554C24E41	SWOB00SWE	15.208655986021052	59.28765406842137	72.37255343608558	swift	1	1	1	100	1	0	26.0	4	20.0	18	18	18	26	18	26	12	integrity	\N
196	0101000020DB0B0000B863C189E12752410F140605D9225141	SWOK00SWE	18.720317048031017	63.28675071092607	39.0325678717345	swift	1	1	1	100	1	0	26.0	4	20.0	18	18	18	24	16	24	10	integrity	\N
197	0101000020DB0B0000187E79BF786B514177ED3B38B8F85041	SWOS00SWE	14.836888292464527	63.06762667125792	359.0711606750265	swift	1	1	1	100	1	0	22.0	2	20.0	18	18	18	25	14	18.2	12	integrity	\N
198	0101000020DB0B0000EC9CABA34A5B5141BAFF74DD36875041	SWSG00SWE	14.359406756910966	62.03252640850642	398.49640751536936	swift	1	1	1	100	1	0	26.0	4	20.0	18	18	18	26	18	24	12	integrity	\N
199	0101000020DB0B00007857B4F9ED7C5241CCE151791FD15141	SWSK00SWE	21.02700574861753	64.76754103227628	90.54613592661916	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	24	16	22	10	integrity	\N
200	0101000020DB0B00003EBD7FB378C351413E5F1CFF40DC5141	SWST00SWE	17.104850124565004	65.0917614595836	397.4226267011836	swift	1	1	1	100	1	0	24.0	4	20.0	18	18	18	24	16	24	10	integrity	\N
201	0101000020DB0B0000F0D2EAA0A9E95041A88E61A44EE34D41	SWTA00SWE	11.919369096797071	58.34493592604694	48.121354069560766	swift	1	1	1	100	1	0	22.0	4	18.0	14	14	14	16	12	16	8	integrity	\N
202	0101000020DB0B000084D7B67FA712514149CB057A78B34C41	SWVA00SWE	12.536726302594433	56.93530023682503	72.76520345173776	swift	1	1	1	100	1	0	26.0	4	20.0	16	16	16	25.8	18	25.8	12	integrity	\N
203	0101000020DB0B0000B58AC254B3D448411664701BEA384641	CDDIS-BRST00FRA	-4.496590972318327	48.38049592706119	67.85400440730155	CDDIS	1	1	1	100	1	0	23.4	2.8	\N	12	12	12	20	\N	20	10	single	\N
204	0101000020DB0B0000F7E0C2DA09E05041DE41D3A8D5D44341	CDDIS-BZRG00ITA	11.336801037870336	46.49902608781936	329.35670915432274	CDDIS	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	single	\N
205	0101000020DB0B0000358CDAEF90265541519F54DA9D223B41	CDDIS-DYNG00GRC	23.932435120860944	38.07855225905263	512.5906738275662	CDDIS	1	1	1	100	1	0	34.0	10	20.0	18	16	16	18	14	18	8	single	\N
206	0101000020DB0B0000F2B680004A5A5341566A2CE594604641	CDDIS-GANP00SVK	20.322940100030934	49.03471546164339	746.4139375127852	CDDIS	1	1	1	100	1	0	26.0	6	18.0	14	14	14	17.4	\N	17.4	8	single	\N
207	0101000020DB0B0000F8A7DDDB70D54741A31DF47D6B485241	CDDIS-HOFN00ISL	-15.197915991240674	64.26729393548385	82.91697385255247	CDDIS	1	1	1	100	1	0	30.0	8	20.0	16.4	16.4	16.4	22	16	22	10	single	\N
208	0101000020DB0B000011875A350D885641082C3FADB2CB4041	CDDIS-ISTA00TUR	29.019344836338988	41.10444920237076	147.31103530246764	CDDIS	1	1	1	100	1	0	17.6	8	\N	10	10	10	20	16	19.8	9.8	single	\N
209	0101000020DB0B0000C91B0D71C65A5341297ED40D6C024941	CDDIS-JOZ200POL	21.032355993337514	52.09783782240663	152.51611880213022	CDDIS	1	1	1	100	1	0	13.4	4.8	\N	15.8	No data	No data	25.4	\N	23.2	14	single	\N
210	0101000020DB0B0000048D6A5E56EE4741545472BD6F403641	CDDIS-MELI00ESP	-2.9516495327644523	35.28119079189763	88.86781552154571	CDDIS	1	1	1	100	1	0	\N	\N	\N	10	10	10	18	\N	18	8	single	\N
211	0101000020DB0B00000A1905020B905841B6E6309527733941	CDDIS-NICO00CYP	33.396449300357084	35.14098856523961	190.08638558816165	CDDIS	1	1	1	100	1	0	35.3	12	21.6	15.8	14	15.4	18	14	18	8	single	\N
212	0101000020DB0B00000A4B1AD1C57D4F4173EA020A7D2B4441	CDDIS-ZIM200CHE	7.465034758624598	46.87709598941269	956.435776779428	CDDIS	1	1	1	100	1	0	12.0	4	\N	10	10	10	20	\N	20	10	single	\N
213	0101000020DB0B0000C7D1FDE6C7044E41521E1A7968FB4641	EUREF-DOUR00BEL	4.594956120669757	50.09487909554585	283.4419005000964	EUREF	1	1	1	100	1	0	32.0	8	\N	18	16	16	22	18	22	12	single	\N
214	0101000020DB0B00004B081A24D645534116DC2359A44A4E41	EUREF-KURE00EST	22.51006428574603	58.255636993137294	41.52924586832523	EUREF	1	1	1	100	1	0	\N	\N	\N	No data	No data	No data	No data	No data	No data	No data	single	\N
215	0101000020DB0B000003E917DAE2645141186C1A4205293541	EUREF-LAMP00ITA	12.60566009373436	35.49977682350124	57.77874969318509	EUREF	1	1	1	100	1	0	12.0	2	\N	10	10	10	16	12	16	6	single	\N
216	0101000020DB0B0000275D9B32C3A35041CE7ED5DB9D975741	EUREF-NYA200NOR	11.858639806606904	78.9303330769046	81.4867866197601	EUREF	1	1	1	100	1	0	30.0	8	\N	20	18	18	20	\N	20	\N	single	\N
217	0101000020DB0B000049FA93B0679353413A61669748744F41	EUREF-SUR400EST	24.3802654927862	59.46357572133538	84.42448587715626	EUREF	1	1	1	100	1	0	\N	\N	\N	12	12	12	26	18	26	12	single	\N
218	0101000020DB0B0000B71836238A3E5441265E3748A6B94F41	EUREF-TOIL00EST	27.536641410607007	59.422040883293526	76.75045477412641	EUREF	1	1	1	100	1	0	\N	\N	\N	No data	No data	No data	No data	No data	No data	No data	single	\N
219	0101000020DB0B0000DE2FB56D7D5C4F41A820B113AAE64541	SATINFO-DRUL	7.129497787546824	48.91184775938761	388.7095334129408	SATINFO	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	single	\N
220	0101000020DB0B00008C621043FE8F4E411765715A2E324241	SATINFO-GAPC	6.043524663123487	44.50072807355564	753.7541574509814	SATINFO	1	1	1	100	1	0	12.0	4	\N	10	10	10	18	\N	18	8	single	\N
221	0101000020DB0B0000E9AFA125BDD44C4178F30F7268F84441	SATINFO-GIE1	2.7815515015604064	47.61301068715	212.2277710475028	SATINFO	1	1	1	100	1	0	12.0	4	\N	10	10	10	18	\N	18	8	single	\N
222	0101000020DB0B0000D8E0030F44214F415089BC056DB54441	SATINFO-MNBL	6.8061373594455885	47.49583939740139	413.0845569539815	SATINFO	1	1	1	100	1	0	18.0	4	14.0	10	10	10	18	\N	18	8	single	\N
223	0101000020DB0B00006BC9C623BF5B4E417A4A3BEFAEA14341	SATINFO-MTLC	5.5746102480497095	46.17984216239294	546.0155975362286	SATINFO	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	single	\N
224	0101000020DB0B00007C0EF6B40C6B4A4114567798A1564341	SATINFO-QUYC	-0.98184600661117	45.3543623367435	59.1605773922056	SATINFO	1	1	1	100	1	0	16.0	2	14.0	10	10	10	18	\N	18	8	single	\N
225	0101000020DB0B0000F8715E4E343A4D41FBBB28B887284341	SATINFO-STFE	3.727048422509525	45.52673573311071	592.2573146037757	SATINFO	1	1	1	100	1	0	12.0	4	\N	10	10	10	18	\N	18	8	single	\N
226	0101000020DB0B00009E16B0BF96394E41882A43F2958C4741	SEPTENTRIO-HOEG	4.90044774777548	50.77857532461424	97.60354272462428	SEPTENTRIO	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	single	\N
227	0101000020DB0B0000CE9CFE3C6CE04D41B9864E42D58D4741	SEPTENTRIO-LEEU	4.254178505057958	50.75391598320529	90.2635410875082	SEPTENTRIO	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	single	\N
228	0101000020DB0B00006657BB672A024E4156CFC80B8EC14741	SEPTENTRIO-MECH	4.470239770401888	51.003110112056206	68.23714512959123	SEPTENTRIO	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	single	\N
229	0101000020DB0B000029012FF4BB18514109C55B51BA504941	SAPOS-0007	12.39223612	52.94797966	101.4544924	SAPOS	1	1	1	100	1	0	24	10	14	12	12	12	20	\N	20	12	rtk	\N
230	0101000020DB0B00002590BB2F76815141243AFECBB47E4841	SAPOS-0012	13.89953957	51.94096608	114.4094434	SAPOS	1	1	1	100	1	0	25.7	7.9	17.9	11.9	11.9	11.9	17.9	13.9	17.9	9.9	rtk	\N
231	0101000020DB0B0000027FDCE3EC4E51418480C19172974841	SAPOS-0020	13.15556828	52.07716238	117.0328751	SAPOS	1	1	1	100	1	0	27.9	10	18	12	12	12	22	18	22	12	rtk	\N
232	0101000020DB0B0000DF8C68F5EAB751416C9DB82D2E874841	SAPOS-0026	14.71304501	51.95029282	109.4039446	SAPOS	1	1	1	100	1	0	28	10	18	12	12	12	22	18	22	12	rtk	\N
233	0101000020DB0B000053C3D0D1D9185141C25A1E5683324841	SAPOS-0082	12.32418792	51.63176399	138.0633365	SAPOS	1	1	1	100	1	0	24	8	16	10	10	10	18	14	18	10	rtk	\N
234	0101000020DB0B000028B7AAAFF9015141332E49E247D34741	SAPOS-0094	11.96705705	51.19990661	169.0915716	SAPOS	1	1	1	100	1	0	24	8	16	10	10	10	18	14	18	10	rtk	\N
235	0101000020DB0B0000BB172C8F660651415CE26A65BA9A4841	SAPOS-0095	12.07334117	52.11619031	130.2916214	SAPOS	1	1	1	100	1	0	24	8	16	10	10	10	18	14	18	10	rtk	\N
236	0101000020DB0B00003E30A2AAEDE950413EE5FBA88F5F4841	SAPOS-0104	11.63784632	51.85070142	125.325916	SAPOS	1	1	1	100	1	0	24	8	16	10	10	10	18	14	18	10	rtk	\N
237	0101000020DB0B00006EA1B6AFC4F650411C76AAAAAD074941	SAPOS-0105	11.86061796	52.62117838	88.36198976	SAPOS	1	1	1	100	1	0	20	4	16	10	10	10	18	\N	18	10	rtk	\N
238	0101000020DB0B00004B233D5FA54551410EA4074C5B274841	SAPOS-0136	12.98282793	51.56547785	154.0804705	SAPOS	1	1	1	100	1	0	20	8	\N	12	12	12	20	\N	20	12	rtk	\N
239	0101000020DB0B0000D26428E0F34A5141D341F538CCBC4741	SAPOS-0140	13.02862768	51.07355423	258.3720261	SAPOS	1	1	1	100	1	0	18	8	\N	10.6	11.6	10	18	\N	18	10	rtk	\N
240	0101000020DB0B0000CAD92231EB39514102F98D57EF344741	SAPOS-0144	12.74296973	50.45496181	931.5979846	SAPOS	1	1	1	100	1	0	18	6	\N	12	12	12	20	\N	20	12	rtk	\N
288	0101000020DB0B000072610C3AAE6C504138A0E58E782E4541	SAPOS-0396	9.793244392	48.10011431	599.4324209	SAPOS	1	1	1	100	1	0	24	6	18	12	12	12	20	\N	20	12	rtk	\N
289	0101000020DB0B0000C8CC0F5A47095041D1E99BE1FB7F4541	SAPOS-0398	8.415791406	48.46448561	784.5508577	SAPOS	1	1	1	100	1	0	24	6	16	10	10	10	18	\N	18	10	rtk	\N
290	0101000020DB0B00003C33145237395041C2DBEC284D8A4541	SAPOS-0400	9.078394268	48.51950125	382.305293	SAPOS	1	1	1	100	1	0	20	6	14	10	10	10	20	\N	20	12	rtk	\N
291	0101000020DB0B0000894BB1D85BCE4F4161CDAB1834844541	SAPOS-0404	7.943179752	48.47616524	223.8691182	SAPOS	1	1	1	100	1	0	22	6	17.6	12	12	12	22	\N	22	14	rtk	\N
292	0101000020DB0B00000BAE1D4D740C50410606CECCE76E4641	SAPOS-0405	8.425052178	49.56510874	140.9432667	SAPOS	1	1	1	100	1	0	23.4	7.2	16.2	9	9	9	18	\N	18	10.8	rtk	\N
293	0101000020DB0B00006C027BB8E96C5041523BC2BF050B4641	SAPOS-0407	9.79226301	49.11596822	444.48814	SAPOS	1	1	1	100	1	0	30	10	18	12	12	12	20	\N	20	12	rtk	\N
294	0101000020DB0B0000409041DC97FF4F413439FDB91CE14641	SAPOS-0448	8.226702493	50.0880911	241.8051942	SAPOS	1	1	1	100	1	0	23.8	8	\N	12	12	12	22	18	22	14	rtk	\N
295	0101000020DB0B0000FCA43DCB9C605041652379BD152C4741	SAPOS-0467	9.609132517	50.4463337	351.3647086	SAPOS	1	1	1	100	1	0	23.8	7.9	\N	11.9	11.9	11.9	19.8	15.9	19.8	11.9	rtk	\N
296	0101000020DB0B00000B18CF8DB1325041775729A1BC6C4641	SAPOS-0468	8.966422159	49.56137307	509.8825321	SAPOS	1	1	1	100	1	0	20.6	7.4	\N	10	10	10	18	14	18	10	rtk	\N
297	0101000020DB0B0000999DC23D21475041BFCC45D7ED714741	SAPOS-0470	9.236596569	50.76595686	314.865025	SAPOS	1	1	1	100	1	0	25.8	8	\N	12	12	12	20	16	20	12	rtk	\N
298	0101000020DB0B0000A26F60B4B8A54F4151C9C7DE691E4741	SAPOS-0512	7.569715334	50.35829572	184.0615377	SAPOS	1	1	1	100	1	0	26	8	\N	12	12	12	22	18	22	14	rtk	\N
299	0101000020DB0B0000CAD431EE28BC4F417D71F72F05574641	SAPOS-0523	7.774015027	49.44413569	307.5255756	SAPOS	1	1	1	100	1	0	24	8	16	12	12	12	20	16	20	12	rtk	\N
300	0101000020DB0B00004E1EAAE890054F4116AADEB7C2044741	SAPOS-0526	6.42754204	50.21014821	498.3753702	SAPOS	1	1	1	100	1	0	21.9	8	13.9	9.9	9.9	9.9	19.9	15.9	19.9	11.9	rtk	\N
301	0101000020DB0B0000A06C2D7489AE4F41168AE57D1B904641	SAPOS-0528	7.665288936	49.70488939	230.8377689	SAPOS	1	1	1	100	1	0	24	8	16	12	12	12	18	14	18	10	rtk	\N
302	0101000020DB0B0000BCCDA91D167C4F41AE9BC2F2CA784841	SAPOS-0580	7.174471616	51.94436275	143.9336461	SAPOS	1	1	1	100	1	0	28	8	\N	12	12	12	22	\N	22	14	rtk	\N
303	0101000020DB0B00002BDB24F995C35041BAE4D56E016D4941	SAPOS-0679	11.09845782	53.09687238	67.4888497	SAPOS	1	1	1	100	1	0	30	10	\N	14	14	14	20	\N	20	12	rtk	\N
304	0101000020DB0B000097510C8ECC01514150A46F2A4D484A41	SAPOS-0773	12.09819661	54.09294355	81.33692628	SAPOS	1	1	1	100	1	0	30	8	\N	12	12	12	22	\N	22	12	rtk	\N
305	0101000020DB0B00004777709FA1545141FD1D4AB8B54A4A41	SAPOS-0775	13.39394582	54.07510096	59.93932016	SAPOS	1	1	1	100	1	0	27	8	\N	12	12	12	22	\N	22	12	rtk	\N
306	0101000020DB0B00005353A5B3CE075141AE5A9EF1FC044A41	SAPOS-0785	12.1761136	53.78176987	72.88909849	SAPOS	1	1	1	100	1	0	30	10	\N	10	12	10	22	\N	22	12	rtk	\N
307	0101000020DB0B0000CECAC31D8F43514184FDE037FBA64941	SAPOS-0797	13.07213976	53.32968206	118.8514985	SAPOS	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	rtk	\N
308	0101000020DB0B0000CB4B0C9FEE3B5041BC3F1C9BD9A54941	SAPOS-1671	9.018876829	53.35944228	58.37063703	SAPOS	1	1	1	100	1	0	28	8	\N	10	12	12	20	\N	20	10	rtk	\N
309	0101000020DB0B0000F102704F265D5041E465C703121F4A41	SAPOS-1708	9.523516716	53.92020465	101.2423201	SAPOS	1	1	1	100	1	0	30	10	18	14	14	14	20	\N	20	10	rtk	\N
310	0101000020DB0B000021B57DD03423504105D24E0441FC4641	SAPOS-0451	8.72994092	50.21976797	222.4976045	SAPOS	1	1	1	100	1	0	21.8	7.8	\N	10	10	10	18	14	18	10	rtk	\N
311	0101000020DB0B0000C9EC8EFB4E984F417282D19DC5004841	SAPOS-0614	7.416120407	51.39730303	174.997883	SAPOS	1	1	1	100	1	0	28	10	\N	12	12	12	18	\N	18	10	rtk	\N
312	0101000020DB0B0000A371367635AA4F41E2AAB1B8B78E4941	SAPOS-0645	7.444619457	53.2299891	65.72092706	SAPOS	1	1	1	100	1	0	28	8	\N	12	12	12	24	\N	24	14	rtk	\N
313	0101000020DB0B0000D9F91DEB71F54F416A4BFD357E394941	SAPOS-0659	8.039036467	52.84884783	98.77588397	SAPOS	1	1	1	100	1	0	28	10	\N	12	12	12	24	\N	24	14	rtk	\N
314	0101000020DB0B0000DDED38978F9650412C419E401E8E4941	SAPOS-0660	10.41167033	53.25352265	74.35632121	SAPOS	1	1	1	100	1	0	30	10	\N	12	12	12	22	\N	22	12	rtk	\N
315	0101000020DB0B0000CD3F571EB6715041B5D860EDA9534941	SAPOS-0661	9.847305967	52.98517898	117.8299618	SAPOS	1	1	1	100	1	0	32	10	\N	12	12	12	20	\N	20	12	rtk	\N
316	0101000020DB0B00007D54168136954F4119DDC22AA81F4941	SAPOS-0683	7.315470476	52.71589758	89.28521673	SAPOS	1	1	1	100	1	0	32	10	\N	12	12	12	24	\N	24	14	rtk	\N
317	0101000020DB0B0000BF6BF210896E504149DF2E1121D64841	SAPOS-0688	9.801513039	52.40750869	123.8220368	SAPOS	1	1	1	100	1	0	29	10	\N	12	12	12	24	\N	24	14	rtk	\N
318	0101000020DB0B0000A9D8AF3D992C50417B88A79265124941	SAPOS-0689	8.801953718	52.67897977	100.1523961	SAPOS	1	1	1	100	1	0	28	10	\N	12	12	12	22	\N	22	12	rtk	\N
319	0101000020DB0B00002F5278141D845041870DB1BB7E7D4A41	SAPOS-0706	10.13206217	54.35549425	114.5143434	SAPOS	1	1	1	100	1	0	28	8	18	14	14	14	22	\N	22	12	rtk	\N
320	0101000020DB0B0000986F168E77A750411943F448A6104A41	SAPOS-0715	10.68053128	53.85289155	98.18467644	SAPOS	1	1	1	100	1	0	32	10	20	14	14	14	22	\N	22	12	rtk	\N
321	0101000020DB0B0000C8D08CC645305041B722E99A609D4A41	SAPOS-0722	8.80778724	54.4965251	52.78294623	SAPOS	1	1	1	100	1	0	32	8	20	14	14	14	22	\N	22	12	rtk	\N
322	0101000020DB0B0000B753253F0C6B5041D658C1AAD8CD4941	SAPOS-0836	9.742371651	53.54715745	50.69514185	SAPOS	1	1	1	100	1	0	32	10	\N	12	12	12	22	\N	22	12	rtk	\N
323	0101000020DB0B000035DDE4B069294F41AE58E2DA22404641	SAPOS-0931	6.746025601	49.31367872	245.7092617	SAPOS	1	1	1	100	1	0	26	8	18	12	12	12	22	18	22	14	rtk	\N
324	0101000020DB0B00006D16B26E1AD150418C3F9A9304E04541	SAPOS-EIC2	11.19239185	48.9117522	583.2325551	SAPOS	1	1	1	100	1	0	28	10	\N	14	14	14	24	\N	24	14	rtk	\N
325	0101000020DB0B0000BC7DFEC84F6750417D783EEC10BB4441	SAPOS-LND2	9.722363077	47.56822372	548.3531118	SAPOS	1	1	1	100	1	0	22	6	16	12	12	12	22	\N	22	14	rtk	\N
326	0101000020DB0B00004E380D87BB4F514144F2E82570334641	SAPOS-NEU2	12.98286971	49.2626878	553.9079799	SAPOS	1	1	1	100	1	0	24	8	14	12	11.8	11.8	18	\N	18	10	rtk	\N
327	0101000020DB0B00005436E9867D9F5041C6518E9F8ACE4541	SAPOS-NOER	10.49870842	48.83651482	515.0782677	SAPOS	1	1	1	100	1	0	27.8	7.8	18	10	11.8	10	20	\N	20	12	rtk	\N
328	0101000020DB0B000063244430DFEC5041A45952E8FFE44441	SAPOS-TLZ2	11.5443336	47.75091764	786.149886	SAPOS	1	1	1	100	1	0	28.6	8.8	17.6	11	11	11	22	\N	22	13.2	rtk	\N
\.


--
-- Data for Name: JPN_stations_v2; Type: TABLE DATA; Schema: swift; Owner: dj
--

COPY swift."JPN_stations_v2" (id, geom, id_0, station, provider, pilot, commercial, access, sla, base, rover, "bds-b1", "bds-b2", "bds-b2a", "gal-e1", "gal-e5a", "gal-e5b", "gps-l1c", "gps-l2p", "gps-l5", "site name", "swift site", longitude, latitude, type, status) FROM stdin;
1	0101000020E610000032C19C6A614460403EAA489F3D444040	\N	JPAK01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	22.0	22.0	14.0	\N	\N	130.1368916570296	32.533130560379945	integrity	\N
2	0101000020E6100000C8C955F31147604015AA0A834B4A3F40	\N	JPBK01JPN	swift	1	1	1	100	1	0	46.8	23.6	22.0	14.0	14.0	14.0	18.0	18.0	12.0	\N	\N	130.22094122653493	31.290214719871148	integrity	\N
3	0101000020E61000000EBB58F36B9A6140316AC0659BDD4140	\N	JPCH01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	140.82567756014072	35.73130485434775	integrity	\N
4	0101000020E6100000C5DD63C622D161401D8A1449DE7F4640	\N	JPES01JPN	swift	1	1	1	100	1	0	40.0	18.0	\N	14.0	16.0	14.0	19.8	18.0	12.0	\N	\N	142.53549499039778	44.99897111418634	integrity	\N
5	0101000020E61000007198FB71DF446140E7752F4888764140	\N	JPFJ01JPN	swift	1	1	1	100	1	0	42.0	18.0	21.8	14.0	16.0	16.0	18.0	18.0	10.0	\N	\N	138.15227603091947	34.92603399579439	integrity	\N
6	0101000020E61000000DF278C3757D6140B23CC4A945F94340	\N	JPGA01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	20.0	18.0	12.0	\N	\N	139.92062543508692	39.947438450640576	integrity	\N
7	0101000020E6100000E715EA5E276F614029CBED508B154240	\N	JPGY01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	139.4735560008987	36.16831409083381	integrity	\N
8	0101000020E61000006F5384C86BAE6140D135A3BDE1B24440	\N	JPHG01JPN	swift	1	1	1	100	1	0	38.0	16.0	20.0	14.0	16.0	14.0	18.0	18.0	10.0	\N	\N	141.45065713734536	41.39751406163453	integrity	\N
9	0101000020E6100000CB2A92F5C7796140595223F706894040	\N	JPHJ01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	16.0	16.0	19.8	19.4	13.6	\N	\N	139.8056590895488	33.070525066611204	integrity	\N
10	0101000020E6100000F24A22C8761A60400EEE3FB3BB5D4040	\N	JPHZ01JPN	swift	1	1	1	100	1	0	40.0	18.0	16.0	10.0	10.0	10.0	10.0	10.0	6.0	\N	\N	128.82699972818187	32.732290655341885	integrity	\N
11	0101000020E61000005CE031B6A080614046FBE8B3B3334540	\N	JPIK01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	14.0	14.0	14.0	20.0	20.0	12.0	\N	\N	140.01961812726483	42.40392159343769	integrity	\N
12	0101000020E61000004B726A6E401F604015698362CEAC3B40	\N	JPIN01JPN	swift	1	1	1	100	1	0	59.3	27.4	27.2	17.6	17.6	17.6	25.4	25.2	15.4	\N	\N	128.97661515035938	27.67502418239845	integrity	\N
13	0101000020E6100000B495F0769A8B61409C1027E5726A4440	\N	JPKC01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	16.0	16.0	20.0	20.0	12.0	\N	\N	140.36260554303374	40.83163132102456	integrity	\N
14	0101000020E6100000CE186F31223E604031B0CCA043483C40	\N	JPKI01JPN	swift	1	1	1	100	1	0	49.8	25.8	22.0	16.0	16.0	16.0	23.8	23.8	14.0	\N	\N	129.94167396257984	28.282281923268048	integrity	\N
15	0101000020E61000003B3E247A023960406A0072B5C8774040	\N	JPKK01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	12.0	12.0	12.0	20.0	18.0	12.0	\N	\N	129.7815523822663	32.93581264559255	integrity	\N
16	0101000020E6100000C64D2AF1D99160406D1DB25AB82A4140	\N	JPKM01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	12.0	12.0	12.0	18.0	18.0	11.8	\N	\N	132.5578542543646	34.333751046152294	integrity	\N
17	0101000020E610000023C656B71DFD5F40E03FDD7A308A3A40	\N	JPKO01JPN	swift	1	1	1	100	1	0	56.0	26.0	26.0	16.0	16.0	16.0	24.0	24.0	14.0	\N	\N	127.95493873094578	26.53980224515533	integrity	\N
18	0101000020E61000001E8EAA997EAF61406144D7D3E4224440	\N	JPKR01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	16.0	15.8	16.0	18.0	18.0	10.0	\N	\N	141.48420413314392	40.27260826121415	integrity	\N
19	0101000020E61000009002E4E307C3604070F9FE445ABF4040	\N	JPKT01JPN	swift	1	1	1	100	1	0	44.0	17.6	22.0	13.2	13.2	13.2	15.4	15.4	6.6	\N	\N	134.09471315892415	33.49494230699463	integrity	\N
20	0101000020E610000029D1B090B2136140F27FA5DE0D4D4240	\N	JPKW01JPN	swift	1	1	1	100	1	0	44.0	20.0	22.0	16.0	16.0	16.0	18.0	18.0	12.0	\N	\N	136.61554750952317	36.60198577004475	integrity	\N
21	0101000020E6100000C0222680A7EC6040C31B0BF7F3314140	\N	JPKZ01JPN	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	16.0	16.0	20.0	20.0	12.0	\N	\N	135.3954468483771	34.39025772135167	integrity	\N
22	0101000020E61000009A5E82FB213F6140D150435DAA1E4240	\N	JPMA01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	14.0	14.0	6.0	\N	\N	137.9728982492714	36.23957410609149	integrity	\N
23	0101000020E6100000D4F9EC92BC7E614085D90184F3784140	\N	JPMB01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	139.9605192783771	34.94493150797192	integrity	\N
24	0101000020E610000049603AAEFA2B60402785B9345E2F4140	\N	JPMG01JPN	swift	1	1	1	100	1	0	44.0	20.0	20.0	14.0	14.0	14.0	18.0	18.0	10.0	\N	\N	129.3743506565245	34.37006243761635	integrity	\N
25	0101000020E610000015FD404194BC61402CDDB57434CD4340	\N	JPMI01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	14.0	14.0	14.0	16.0	16.0	10.0	\N	\N	141.893097521716	39.60316332702709	integrity	\N
26	0101000020E6100000C51AA52B2CE96140BF5EECCFCC224640	\N	JPMM01JPN	swift	1	1	1	100	1	0	43.7	18.0	22.0	14.0	14.0	14.0	18.0	18.0	10.0	\N	\N	143.28664190527903	44.27187537232884	integrity	\N
27	0101000020E61000002BCF76F69EA66140D703E386E38E4640	\N	JPMS01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	18.0	18.0	16.4	16.2	10.0	\N	\N	141.2069046326154	45.11631856999127	integrity	\N
28	0101000020E61000007A16DDBA426460408E51AB9206274140	\N	JPNA01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	13.4	13.6	14.0	16.0	16.0	8.0	\N	\N	131.13314574414454	34.30488808980145	integrity	\N
29	0101000020E610000069AB21C098316240A22CE1567BA04540	\N	JPNE01JPN	swift	1	1	1	100	1	0	36.0	14.0	20.0	16.0	16.0	16.0	20.0	20.0	12.0	\N	\N	145.54989630294884	43.25376401896325	integrity	\N
30	0101000020E61000007095705DFAB461406890CD5815134640	\N	JPOB01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	15.6	16.0	16.0	18.0	18.0	10.0	\N	\N	141.65556213368427	44.14908895528134	integrity	\N
31	0101000020E610000062C24D773A8F60407D7CD7DB65944140	\N	JPOD01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	132.47588696658482	35.159358482568656	integrity	\N
32	0101000020E61000004B89362370A76040DC17239C97284240	\N	JPOK01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	12.0	12.0	12.0	14.0	14.0	8.0	\N	\N	133.2324386658823	36.31712676728759	integrity	\N
33	0101000020E610000084786ED7A6A0614053C0162BB3944540	\N	JPOT01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	18.0	18.0	18.0	18.0	10.0	\N	\N	141.02036639763185	43.16171778307821	integrity	\N
34	0101000020E6100000D4EBD25CC99F61403F54284ECE294340	\N	JPRF01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	140.9933303947024	38.32660843819803	integrity	\N
35	0101000020E61000001D9945DD0F236240E06A0D807DEE4540	\N	JPRS01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	16.0	16.0	16.0	20.0	20.0	12.0	\N	\N	145.09568656533602	43.86320496230269	integrity	\N
36	0101000020E6100000367FC658BF0062407DE26B2D37784540	\N	JPSR01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	16.0	16.0	20.0	20.0	12.0	\N	\N	144.02335776108674	42.93918388145264	integrity	\N
37	0101000020E610000096FD6CE2B22E60400AC6BA7A4A584140	\N	JPSU01JPN	swift	1	1	1	100	1	0	42.0	18.0	\N	12.0	13.0	12.0	16.0	16.0	8.0	\N	\N	129.4593364838335	34.689772931287806	integrity	\N
38	0101000020E6100000F962A546F63160404944C9E01F723C40	\N	JPTA01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	12.0	12.0	12.0	16.0	16.0	8.0	\N	\N	129.56131298353264	28.44579892076243	integrity	\N
39	0101000020E610000028AE9C19511A6140B333759851364140	\N	JPTB01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	14.0	14.0	14.0	16.0	16.0	8.0	\N	\N	136.82239990808125	34.42436509821655	integrity	\N
40	0101000020E6100000FBCD4B51BA586140E9EFECCA83D14240	\N	JPTD01JPN	swift	1	1	1	100	1	0	37.8	16.2	18.0	14.4	14.4	14.4	16.2	16.2	9.0	\N	\N	138.7727438431319	37.63683449334332	integrity	\N
41	0101000020E6100000C0DE080053FD60403980AEB778CD4140	\N	JPTG01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	135.91638185245938	35.60524650593329	integrity	\N
42	0101000020E6100000AB148D2888966140DCA1DF00137C4240	\N	JPTO01JPN	swift	1	1	1	100	1	0	34.0	14.0	18.0	14.0	16.0	16.0	14.0	14.0	8.0	\N	\N	140.70412089876967	36.96932993812126	integrity	\N
43	0101000020E6100000AB1F0F6865A0604061A9DE4BF4614040	\N	JPTS01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	11.8	16.0	16.0	18.0	18.0	12.0	\N	\N	133.01237872079705	32.76526783344412	integrity	\N
44	0101000020E6100000B0EC34B5C5C560402C2A47F9EEBB4140	\N	JPTT01JPN	swift	1	1	1	100	1	0	42.0	18.0	20.0	14.0	16.0	16.0	16.0	16.0	8.0	\N	\N	134.1803842576678	35.46823039984551	integrity	\N
45	0101000020E610000044BFF57BA97960405A87D4410A914040	\N	JPUS01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	18.0	18.0	10.0	\N	\N	131.80193899152266	33.13312552335147	integrity	\N
46	0101000020E6100000964268FBDAB66140120D93CF8BB24640	\N	JPWK01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	16.0	16.0	18.0	18.0	10.0	\N	\N	141.71423120845128	45.394891688158296	integrity	\N
47	0101000020E6100000F65BCE59CBB26040FEC7362B7A514140	\N	JPYK01JPN	swift	1	1	1	100	1	0	44.0	18.0	22.0	12.0	12.0	12.0	20.0	20.0	12.0	\N	\N	133.58732309631858	34.636540796040194	integrity	\N
48	0101000020E6100000CFBB99B5F6D35F40A9655F1FA7124340	\N	KTCR01KOR	swift	1	1	1	100	1	0	44.0	20.0	22.0	16.0	16.0	16.0	16.0	16.0	8.0	\N	\N	127.31193294537591	38.14572517545759	integrity	\N
49	0101000020E61000006BB691FB9CC85F40AC16383802444140	\N	KTG101KOR	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	14.0	14.0	18.0	18.0	10.4	\N	\N	127.13458146314376	34.53131773699474	integrity	\N
50	0101000020E6100000288F6AD524286040C8A1A192ABA64140	\N	KTG201KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	16.0	16.0	18.0	18.0	10.0	\N	\N	129.25449629604668	35.302110985681395	integrity	\N
51	0101000020E610000092A251D1C9C15F409088995EEBCF4240	\N	KTGB01KOR	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	14.0	14.0	16.0	16.0	8.0	\N	\N	127.02794297191784	37.624370408027175	integrity	\N
52	0101000020E6100000640525C8679F5F40058E4EE114DF4240	\N	KTGH01KOR	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	14.0	14.0	18.0	18.0	10.0	\N	\N	126.49070933928812	37.74282471023256	integrity	\N
53	0101000020E6100000E965373BF61360403E593A1F2E714140	\N	KTGJ01KOR	swift	1	1	1	100	1	0	42.0	18.0	20.0	12.0	12.0	12.0	14.0	14.0	6.0	\N	\N	128.6238075334543	34.88422003125241	integrity	\N
54	0101000020E610000021A36343841C6040A80C365960E04240	\N	KTGN01KOR	swift	1	1	1	100	1	0	42.0	20.0	20.0	16.0	18.0	18.0	16.0	16.0	10.0	\N	\N	128.8911454149284	37.7529403222955	integrity	\N
55	0101000020E61000008E17E366EDE05F408C9C259565EA4240	\N	KTGY01KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	14.0	14.0	6.0	\N	\N	127.51448986222223	37.83122505508899	integrity	\N
56	0101000020E6100000BBF27044C9A25F4079A18DA0365B4240	\N	KTHM01KOR	swift	1	1	1	100	1	0	49.8	22.0	24.0	14.0	14.0	14.0	16.0	16.0	8.0	\N	\N	126.5435343840608	36.71260458865704	integrity	\N
57	0101000020E610000075FBD04B64BA5F40B57A795BD3904240	\N	KTHS01KOR	swift	1	1	1	100	1	0	47.0	20.0	22.0	16.0	16.0	16.0	16.0	16.0	8.0	\N	\N	126.91237159164832	37.13145011359794	integrity	\N
58	0101000020E610000002136DF3C9EE5F40D0C497D5ABC24140	\N	KTHY01KOR	swift	1	1	1	100	1	0	44.0	20.0	21.8	14.0	14.0	13.8	16.0	16.0	10.0	\N	\N	127.73107610370428	35.5208689681109	integrity	\N
59	0101000020E610000081BDF5CB74BD5F4015AC19423B0A4240	\N	KTIS01KOR	swift	1	1	1	100	1	0	45.5	22.0	22.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	126.96025370596	36.07993341687703	integrity	\N
60	0101000020E6100000B2FDD341B9945F40B6EB57B463BB4040	\N	KTJJ01KOR	swift	1	1	1	100	1	0	48.0	22.0	22.0	14.0	14.0	14.0	16.0	16.0	8.0	\N	\N	126.3238071985459	33.46398023884778	integrity	\N
61	0101000020E61000007FBE072F57E55F4007BE6F2FAA644240	\N	KTJP01KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	16.0	16.0	14.0	14.0	8.0	\N	\N	127.58344627147925	36.78644364315192	integrity	\N
62	0101000020E61000008234918675B55F401A53AC0B7BA94040	\N	KTSG01KOR	swift	1	1	1	100	1	0	44.0	20.0	22.0	14.0	14.0	14.0	18.0	16.0	12.0	\N	\N	126.83529819660365	33.32406755365646	integrity	\N
63	0101000020E610000092C9985EE12C6040FA004B2F5D7F4240	\N	KTUJ01KOR	swift	1	1	1	100	1	0	43.0	20.0	20.0	16.0	16.0	16.0	16.0	16.0	10.0	\N	\N	129.40251092759405	36.99503127252861	integrity	\N
64	0101000020E6100000EC642C44561660403A59C423A82D4240	\N	KTUS01KOR	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	14.0	14.0	16.0	16.0	8.0	\N	\N	128.69803055449245	36.35669371688205	integrity	\N
65	0101000020E610000083D6DBB6B79C5F401AC709CDA2AD4140	\N	KTYG01KOR	swift	1	1	1	100	1	0	44.0	20.0	20.0	12.0	12.0	12.0	14.0	14.0	8.0	\N	\N	126.44871303051518	35.35653079011372	integrity	\N
66	0101000020E610000062AABC1717E95F409B542F82DBA54240	\N	KTYJ01KOR	swift	1	1	1	100	1	0	48.0	20.0	24.0	16.0	16.0	16.0	18.0	18.0	10.0	\N	\N	127.64203446792956	37.295761368856994	integrity	\N
67	0101000020E61000005DC90553DD136040D1EAED9DA5094340	\N	KTYY01KOR	swift	1	1	1	100	1	0	44.0	20.0	20.0	16.0	16.6	16.0	16.0	16.0	8.0	\N	\N	128.62076712732497	38.07536672703794	integrity	\N
68	0101000020E61000008E5EC4D3AB1560403FD00AAAF79C4140	\N	SKCW01KOR	swift	1	1	1	100	1	0	44.0	18.0	20.8	14.0	14.0	14.0	14.0	14.0	6.0	\N	\N	128.6772250018443	35.22630811241151	integrity	\N
69	0101000020E61000003E9664949B0F604006B2F712D3EB4140	\N	SKDG01KOR	swift	1	1	1	100	1	0	42.0	18.0	22.0	14.0	14.0	14.0	15.6	15.6	9.4	\N	\N	128.48774165769458	35.84237897009375	integrity	\N
70	0101000020E61000003470EF307E23604043EDBE529DBE4240	\N	SKDH01KOR	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	14.0	14.0	16.0	16.0	10.0	\N	\N	129.10915419354717	37.48917612383459	integrity	\N
71	0101000020E61000000057B1594D0B60409BFE4F0AA27D4240	\N	SKDY01KOR	swift	1	1	1	100	1	0	42.0	20.0	18.0	12.0	12.0	12.0	12.0	12.0	6.0	\N	\N	128.35319218289078	36.98150757699951	integrity	\N
72	0101000020E6100000920BE10DF4BC5F4039C08DD23A464240	\N	SKGG01KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	16.0	16.0	8.0	\N	\N	126.9523958871562	36.54867011948995	integrity	\N
73	0101000020E61000004C4B6721D6D05F40069AA8002EB94240	\N	SKGJ01KOR	swift	1	1	1	100	1	0	42.0	18.0	20.0	12.0	12.0	12.0	14.0	14.0	6.0	\N	\N	127.26306948745076	37.44671638710501	integrity	\N
74	0101000020E6100000EF6683E766D25F4018DB16D9FAA34140	\N	SKGS01KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	12.0	12.0	12.0	18.0	18.0	10.0	\N	\N	127.287530783007	35.28109277359016	integrity	\N
75	0101000020E610000036204F95C32A6040EAAA88741D014240	\N	SKHJ01KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	14.0	14.0	6.0	\N	\N	129.3363749070574	36.00871140168404	integrity	\N
76	0101000020E6100000409B4AEC162E60400552A43CCE564240	\N	SKHP01KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	10.0	12.0	12.0	14.0	14.0	9.6	\N	\N	129.44029821940967	36.67816885016877	integrity	\N
77	0101000020E610000007667DF48DA95F405AC8084CA4C14240	\N	SKIC01KOR	swift	1	1	1	100	1	0	46.0	20.0	24.0	16.0	16.0	16.0	16.0	16.0	8.0	\N	\N	126.64928924795105	37.51282644680823	integrity	\N
78	0101000020E61000004645E92BDD915F40ECB7EBAB2D3E4140	\N	SKJD01KOR	swift	1	1	1	100	1	0	44.0	20.8	20.0	13.6	14.0	14.0	16.0	16.0	8.0	\N	\N	126.27912423878033	34.48576878556909	integrity	\N
79	0101000020E61000002AB7610E9AC45F409661E034D6034340	\N	SKJG01KOR	swift	1	1	1	100	1	0	46.0	20.0	24.0	18.0	18.0	18.0	16.0	16.0	8.0	\N	\N	127.07190284292724	38.02997456508744	integrity	\N
80	0101000020E6100000ED28A87E48A25F40424C67A32DC14040	\N	SKJJ01KOR	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	16.0	16.0	16.0	16.0	8.0	\N	\N	126.53567472860205	33.50920527023165	integrity	\N
81	0101000020E61000002FC3795409F95F40434AAD679B6E4140	\N	SKNH01KOR	swift	1	1	1	100	1	0	42.0	18.0	20.0	14.0	14.0	14.0	16.0	16.0	8.0	\N	\N	127.891194456967	34.86411758386068	integrity	\N
82	0101000020E61000009D210513C4B35F40BD27583F4FED4240	\N	SKPJ01KOR	swift	1	1	1	100	1	0	44.0	18.0	22.0	14.0	14.0	14.0	15.8	15.8	8.0	\N	\N	126.8088424253569	37.85398093990759	integrity	\N
83	0101000020E6100000A149D1C9C0AC5F40BC94D4619B094240	\N	SKSC01KOR	swift	1	1	1	100	1	0	44.0	20.0	20.0	16.0	16.0	16.0	16.0	16.0	8.0	\N	\N	126.69926686704868	36.0750543869012	integrity	\N
84	0101000020E610000070673A4F540860408E82B423C1EF4240	\N	SKSN01KOR	swift	1	1	1	100	1	0	40.0	18.0	18.0	10.0	10.0	10.0	12.0	12.0	6.0	\N	\N	128.26029168517152	37.87308164895977	integrity	\N
85	0101000020E6100000E1ADE524A39F5F408159EF1D81634240	\N	SKSS01KOR	swift	1	1	1	100	1	0	46.0	20.0	22.0	16.0	16.0	16.0	14.0	14.0	8.0	\N	\N	126.49433252744304	36.777377836103376	integrity	\N
86	0101000020E61000005DF410F65BF05F40014A795403194240	\N	SKYD01KOR	swift	1	1	1	100	1	0	42.0	18.0	20.0	10.0	10.0	10.0	14.0	14.0	6.0	\N	\N	127.75561286597936	36.195414122794325	integrity	\N
87	0101000020E61000001719E71F14FF5F40341ABD7E340D4340	\N	SKYG01KOR	swift	1	1	1	100	1	0	42.0	18.0	20.0	12.0	12.0	12.0	14.0	14.0	6.0	\N	\N	127.98560330932774	38.10316452249063	integrity	\N
88	0101000020E6100000A5AD8548356D5E40614749ED3FA83840	\N	TWDS01TWN	swift	1	1	1	100	1	0	50.0	26.0	20.0	14.0	14.0	14.0	20.0	20.0	12.0	\N	\N	121.70637715391656	24.657225447073305	integrity	\N
89	0101000020E610000089C15E5329565E401D2374CA1EB53840	\N	TWFX01TWN	swift	1	1	1	100	1	0	46.0	20.0	22.0	14.0	12.0	14.0	16.0	16.0	10.0	\N	\N	121.34627231839671	24.70750108085041	integrity	\N
90	0101000020E6100000751AA182497F5E400B7142CFC1023940	\N	TWGL01TWN	swift	1	1	1	100	1	0	46.0	20.8	22.0	12.0	12.0	12.0	16.0	16.0	8.0	\N	\N	121.98886171086072	25.010769799920165	integrity	\N
91	0101000020E61000006AC3DB5794445E402BCC84F3F5093940	\N	TWGY01TWN	swift	1	1	1	100	1	0	56.0	26.0	26.0	14.0	14.0	14.0	22.9	22.2	14.0	\N	\N	121.07155415021194	25.038909168168328	integrity	\N
92	0101000020E610000057089185C63A5E40A3E53FA7A9C73840	\N	TWHC01TWN	swift	1	1	1	100	1	0	52.0	26.0	22.0	14.0	14.0	14.0	14.0	14.0	8.0	\N	\N	120.91836680568063	24.779932454204424	integrity	\N
93	0101000020E610000072BD97ED11695E40C82E412FAE393940	\N	TWJS01TWN	swift	1	1	1	100	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	121.6417192441784	25.22531409589172	integrity	\N
94	0101000020E6100000C7C9BAED254C5E40023AE4CA61F43840	\N	TWPZ01TWN	swift	1	1	1	100	1	0	58.0	26.0	28.0	14.0	14.0	14.0	22.0	22.0	12.0	\N	\N	121.18981497994456	24.95461719581545	integrity	\N
95	0101000020E61000007BFF0E6DB5625E40A7F09551AE123940	\N	TWZS01TWN	swift	1	1	1	100	1	0	56.0	26.0	26.0	14.0	14.0	14.0	22.0	22.0	12.0	\N	\N	121.54232336487432	25.07297239218374	integrity	\N
\.


--
-- Data for Name: NA_stations_v2; Type: TABLE DATA; Schema: swift; Owner: dj
--

COPY swift."NA_stations_v2" (id, geom, "project id", "site name", "swift site", longitude, latitude, "street add", city, "zip code", state, country, "site statu", "approved f", "project na", station, provider, base, rover, "bds-b1", "bds-b2", "bds-b2a", "gal-e1", "gal-e5a", "gal-e5b", "gps-l1c", "gps-l2c", "gps-l2p", "gps-l5", pilot, commercial, access, sla, type, status) FROM stdin;
37	0101000020E6100000A0C37C7901A855C02F71FD1E69D43F40	\N	\N	\N	-86.62509	31.82972902	\N	\N	\N	\N	\N	\N	\N	\N	ALGR00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
38	0101000020E610000016E6D232714357C04B98A3A6610F4140	\N	\N	\N	-93.05378409	34.12016757	\N	\N	\N	\N	\N	\N	\N	\N	ARAK00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	16	14	1	1	1	100	single	\N
41	0101000020E610000019DA4AF91ABE56C02B88A2BC66214240	\N	\N	\N	-90.97039635	36.26094778	\N	\N	\N	\N	\N	\N	\N	\N	ARPH00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	\N
43	0101000020E6100000CE93217D49E15BC06769C083937C4040	\N	\N	\N	-111.5201104	32.97325179	\N	\N	\N	\N	\N	\N	\N	\N	AZCO00USA	swift	1	0	10	No data	\N	12	12	12	19.2	\N	18	14	1	1	1	100	single	\N
45	0101000020E61000000D9DE8047EE95BC044B3A15170994140	\N	\N	\N	-111.6483166	35.1987402	\N	\N	\N	\N	\N	\N	\N	\N	AZFL00USA	swift	1	0	8	No data	\N	10	10	10	19.8	\N	18	14	1	1	1	100	single	\N
46	0101000020E61000003518D9846AB25BC0D6A635F6BAB24040	\N	\N	\N	-110.7877514	33.39633062	\N	\N	\N	\N	\N	\N	\N	\N	AZGB00USA	swift	1	0	8	No data	\N	14	14	14	18	\N	16	14	1	1	1	100	single	\N
49	0101000020E61000003B641415BBC35BC098F5833610F73F40	\N	\N	\N	-111.0582936	31.96509114	\N	\N	\N	\N	\N	\N	\N	\N	AZST00USA	swift	1	0	12	No data	\N	12	12	12	20	\N	18	14	1	1	1	100	single	\N
53	0101000020E6100000FC74971F93A45CC08D1480353DCE4040	\N	\N	\N	-114.5714797	33.61124295	\N	\N	\N	\N	\N	\N	\N	\N	CABE00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	\N
54	0101000020E6100000674EF27E37995DC0F7CB694758AE4240	\N	\N	\N	-118.3940122	37.36206906	\N	\N	\N	\N	\N	\N	\N	\N	CABS00USA	swift	1	0	8	No data	\N	12	12	12	17.8	\N	16	14	1	1	1	100	single	\N
55	0101000020E610000093E57F4D31475DC0074DE01009704140	\N	\N	\N	-117.1123842	34.87527667	\N	\N	\N	\N	\N	\N	\N	\N	CABW00USA	swift	1	0	14	No data	14	16	16	16	18	\N	18	14	1	1	1	100	single	\N
57	0101000020E610000002429028D9815DC08F67C0EE2EEA4040	\N	\N	\N	-118.0288793	33.82955727	\N	\N	\N	\N	\N	\N	\N	\N	CACY00USA	swift	1	0	16	No data	16	16	16	16	19.8	16	16	14	1	1	1	100	single	\N
58	0101000020E61000003CE0151CB9CF5DC0D558882F8FE14140	\N	\N	\N	-119.2456732	35.76218218	\N	\N	\N	\N	\N	\N	\N	\N	CADA00USA	swift	1	0	16	No data	16	16	16	16	16.8	16	16.8	14	1	1	1	100	single	\N
60	0101000020E6100000F64CE5A37B0B5FC0C11D452963654440	\N	\N	\N	-124.1794214	40.79208866	\N	\N	\N	\N	\N	\N	\N	\N	CAEA00USA	swift	1	0	17.4	1.4	16	16	No data	No data	20	16	4	14	1	1	1	100	single	\N
61	0101000020E6100000D4C9631756925EC09C787BCE65EA4240	\N	\N	\N	-122.2865046	37.83123189	\N	\N	\N	\N	\N	\N	\N	\N	CAEM00USA	swift	1	0	16	No data	16	16	16	16	17.6	16	17.6	14	1	1	1	100	single	\N
62	0101000020E6100000A5DF19C80E5C5EC02FEFFD4F76804440	\N	\N	\N	-121.4384022	41.00361061	\N	\N	\N	\N	\N	\N	\N	\N	CAFR00USA	swift	1	0	10	No data	\N	16	16	16	20	\N	20	14	1	1	1	100	single	\N
64	0101000020E6100000F7E978CCC0245EC0DCF189E9007C4140	\N	\N	\N	-120.5742675	34.96877784	\N	\N	\N	\N	\N	\N	\N	\N	CAGU00USA	swift	1	0	14	No data	14	16	16	16	18	16	18	14	1	1	1	100	single	\N
65	0101000020E6100000F03E7DBA709B5EC0C5F7CD1673BB4240	\N	\N	\N	-122.4287554	37.46444974	\N	\N	\N	\N	\N	\N	\N	\N	CAHM00USA	swift	1	0	10	No data	\N	16	16	16	19.6	\N	17.6	14	1	1	1	100	single	\N
66	0101000020E610000052F3B0AB240D5DC0C0A762F842DC4040	\N	\N	\N	-116.2053632	33.72079377	\N	\N	\N	\N	\N	\N	\N	\N	CAIO00USA	swift	1	0	14	No data	14	16	16	16	20	18	20	14	1	1	1	100	single	\N
67	0101000020E610000096D4642195BA5EC088C04F24B1854340	\N	\N	\N	-122.9153522	39.04446844	\N	\N	\N	\N	\N	\N	\N	\N	CALK00USA	swift	1	0	10	No data	\N	16	16	16	20	\N	18	14	1	1	1	100	single	\N
68	0101000020E6100000CF3758EE3B6A5EC0C060F54F89934240	\N	\N	\N	-121.6599079	37.15262794	\N	\N	\N	\N	\N	\N	\N	\N	CAMH00USA	swift	1	0	10	No data	\N	16	16	16	17.6	\N	17.6	14	1	1	1	100	single	\N
69	0101000020E6100000DB221FAA5FA75EC00637E71A45604340	\N	\N	\N	-122.6152139	38.75210892	\N	\N	\N	\N	\N	\N	\N	\N	CAMN00USA	swift	1	0	12	No data	12	12	12	12	16	16	16	14	1	1	1	100	single	\N
71	0101000020E6100000CE339B6CA8FF5CC01CE371EE825D4040	\N	\N	\N	-115.9946548	32.73055821	\N	\N	\N	\N	\N	\N	\N	\N	CAOC00USA	swift	1	0	8	No data	\N	14	14	14	20	\N	16	14	1	1	1	100	single	\N
73	0101000020E61000001A4BFD61F07E5EC0F0F25B1108E44240	\N	\N	\N	-121.9834218	37.78149621	\N	\N	\N	\N	\N	\N	\N	\N	CASA00USA	swift	1	0	12	No data	12	12	12	12	16	16	16	14	1	1	1	100	single	\N
75	0101000020E6100000B9A063ACDB785EC0D5415E0F26A54240	\N	\N	\N	-121.8884078	37.290224	\N	\N	\N	\N	\N	\N	\N	\N	CASJ00USA	swift	1	0	10	No data	\N	16	16	16	18	\N	18	14	1	1	1	100	single	\N
79	0101000020E61000008EA4EE14BC735EC00924F643CB564340	\N	\N	\N	-121.8083546	38.67807817	\N	\N	\N	\N	\N	\N	\N	\N	CAWD00USA	swift	1	0	14	No data	14	16	16	16	19.8	16	18	14	1	1	1	100	single	\N
80	0101000020E610000099558E7F55B05CC041FFD2DC695F4040	\N	\N	\N	-114.7552184	32.74541817	\N	\N	\N	\N	\N	\N	\N	\N	CAWI00USA	swift	1	0	14	No data	14	16	16	15.6	17.8	16	17.8	14	1	1	1	100	single	\N
81	0101000020E6100000FB3DB14E95D65EC0F00115E959B44340	\N	\N	\N	-123.352863	39.40899385	\N	\N	\N	\N	\N	\N	\N	\N	CAWS00USA	swift	1	0	10	No data	\N	16	16	16	20	\N	16	14	1	1	1	100	single	\N
82	0101000020E6100000AB04300AA7245EC0FCE0BE062BAF4240	\N	\N	\N	-120.5726953	37.36850056	\N	\N	\N	\N	\N	\N	\N	\N	CAWY00USA	swift	1	0	16	No data	16	16	16	16	18	16	16	14	1	1	1	100	single	\N
83	0101000020E6100000B3A6C354C4A85EC00728CB18B8DD4440	\N	\N	\N	-122.6369831	41.73218069	\N	\N	\N	\N	\N	\N	\N	\N	CAYA00USA	swift	1	0	10	No data	\N	16	16	16	18	\N	18	14	1	1	1	100	single	\N
85	0101000020E6100000D49B51F3552F5BC09AA0C01A6B934340	\N	\N	\N	-108.739621	39.15170607	\N	\N	\N	\N	\N	\N	\N	\N	COFT00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
86	0101000020E61000005D8C81759CA759C013BE73FF430B4340	\N	\N	\N	-102.6189245	38.08801263	\N	\N	\N	\N	\N	\N	\N	\N	COLA00USA	swift	1	0	12.6	No data	\N	10.8	10.8	10.8	16.2	\N	14.4	12.6	1	1	1	100	single	\N
87	0101000020E6100000B02770A161475AC04BA9AEF0EC124440	\N	\N	\N	-105.1153339	40.14785584	\N	\N	\N	\N	\N	\N	\N	\N	COLM00USA	swift	1	0	8	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
89	0101000020E6100000F9F4D89681F05AC03617874C5C134340	\N	\N	\N	-107.7579095	38.15125424	\N	\N	\N	\N	\N	\N	\N	\N	CORI00USA	swift	1	0	8	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
91	0101000020E6100000FBC5CFF325C254C064343C07E0223D40	\N	\N	\N	-83.03356643	29.1362309	\N	\N	\N	\N	\N	\N	\N	\N	FLCK00USA	swift	1	0	18	No data	18	12	12	12	18	\N	18	12	1	1	1	100	single	\N
92	0101000020E6100000E3855BDBA73154C0E17A98E6EB5A3C40	\N	\N	\N	-80.77587017	28.35516206	\N	\N	\N	\N	\N	\N	\N	\N	FLCO00USA	swift	1	0	14	2	\N	12	12	12	20	\N	18	12	1	1	1	100	single	\N
93	0101000020E6100000FF379B33871E54C017C4386676773940	\N	\N	\N	-80.47700205	25.46665038	\N	\N	\N	\N	\N	\N	\N	\N	FLHO00USA	swift	1	0	18	No data	18	12	12	12	18	18	18	12	1	1	1	100	single	\N
94	0101000020E6100000E08D9AE93D7D54C07B56CA1927073C40	\N	\N	\N	-81.95690384	28.02794038	\N	\N	\N	\N	\N	\N	\N	\N	FLLL00USA	swift	1	0	12	No data	\N	13.2	13.2	13.2	18	\N	18	12	1	1	1	100	single	\N
95	0101000020E6100000BBF55802027154C0B1B8073ABD233A40	\N	\N	\N	-81.76574763	26.13960612	\N	\N	\N	\N	\N	\N	\N	\N	FLNA00USA	swift	1	0	12	No data	\N	14	14	14	18	\N	18	12	1	1	1	100	single	\N
96	0101000020E610000059390F82A9B455C068F6ABC633693E40	\N	\N	\N	-86.82284595	30.41094629	\N	\N	\N	\N	\N	\N	\N	\N	FLNV00USA	swift	1	0	16	No data	18	12	12	12	16	16	16	12	1	1	1	100	single	\N
97	0101000020E6100000B567F92E239F54C0180199C6C42F3B40	\N	\N	\N	-82.48652243	27.18659631	\N	\N	\N	\N	\N	\N	\N	\N	FLOP00USA	swift	1	0	12	No data	\N	14	14	14	20	\N	18	12	1	1	1	100	single	\N
98	0101000020E610000013273958665355C044A9184229D03D40	\N	\N	\N	-85.30312162	29.81312955	\N	\N	\N	\N	\N	\N	\N	\N	FLPJ00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
99	0101000020E61000008FB55418FA6254C0C890294090493E40	\N	\N	\N	-81.54651459	30.28735734	\N	\N	\N	\N	\N	\N	\N	\N	FLPL00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	18	12	1	1	1	100	single	\N
100	0101000020E610000028FF2824787C54C09941DF8A82DC3C40	\N	\N	\N	-81.94483284	28.86136692	\N	\N	\N	\N	\N	\N	\N	\N	FLSS00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	18	12	1	1	1	100	single	\N
103	0101000020E61000004AEEB0894C1155C04F24F32359E44040	\N	\N	\N	-84.2702965	33.78397035	\N	\N	\N	\N	\N	\N	\N	\N	GADE00USA	swift	1	0	10	No data	\N	12	12	12	15	\N	14	12	1	1	1	100	single	\N
104	0101000020E61000004F986A459FB954C05B1F9C70AB084040	\N	\N	\N	-82.90034614	32.06773193	\N	\N	\N	\N	\N	\N	\N	\N	GAMR00USA	swift	1	0	15.6	No data	\N	18.2	18.2	18.2	24.6	\N	24.6	15.6	1	1	1	100	single	\N
105	0101000020E6100000F071E0B4A44554C09255F8D091084040	\N	\N	\N	-81.08817789	32.06694996	\N	\N	\N	\N	\N	\N	\N	\N	GASV00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	\N
106	0101000020E61000002FCCF8AD0CAE57C01A6E3CAF63554440	\N	\N	\N	-94.7195239	40.66710463	\N	\N	\N	\N	\N	\N	\N	\N	IABE00USA	swift	1	0	10	No data	\N	14	14	14	18	\N	16	14	1	1	1	100	single	\N
107	0101000020E6100000489362B27E1C57C08C781D379D444540	\N	\N	\N	-92.44523296	42.53604783	\N	\N	\N	\N	\N	\N	\N	\N	IACE00USA	swift	1	0	10	No data	\N	16	16	16	18	\N	17.2	14	1	1	1	100	single	\N
110	0101000020E610000019B91B024FB156C0FC62DFE3063F4540	\N	\N	\N	-90.77044728	42.49239777	\N	\N	\N	\N	\N	\N	\N	\N	IAGM00USA	swift	1	0	12	No data	\N	14	14	14	17.6	\N	16	14	1	1	1	100	single	\N
113	0101000020E6100000314A86D24D8E5CC049543DD32A414640	\N	\N	\N	-114.2234999	44.50911942	\N	\N	\N	\N	\N	\N	\N	\N	IDCL00USA	swift	1	0	10	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
114	0101000020E6100000946B0A64F6235DC0258E237338CA4540	\N	\N	\N	-116.5619135	43.57984771	\N	\N	\N	\N	\N	\N	\N	\N	IDNP00USA	swift	1	0	10	No data	\N	14	14	14	18	\N	16	14	1	1	1	100	single	\N
115	0101000020E6100000423D224B8B1C5CC071D50A0DA36E4540	\N	\N	\N	-112.4460018	42.86435092	\N	\N	\N	\N	\N	\N	\N	\N	IDPO00USA	swift	1	0	10	No data	\N	14	14	14	16	\N	16	14	1	1	1	100	single	\N
117	0101000020E61000008BCEC7EF0CFD55C04A6805659E704440	\N	\N	\N	-87.95391459	40.87983382	\N	\N	\N	\N	\N	\N	\N	\N	ILAS00USA	swift	1	0	10	No data	\N	14	14	14	16	\N	14	12	1	1	1	100	single	\N
119	0101000020E61000003A6865B143EF55C0DAD89900CB804340	\N	\N	\N	-87.73850665	39.00619514	\N	\N	\N	\N	\N	\N	\N	\N	ILRO00USA	swift	1	0	12	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
124	0101000020E6100000B890687E0CC455C012FF0B5FBABB4440	\N	\N	\N	-87.06326256	41.4666251	\N	\N	\N	\N	\N	\N	\N	\N	INVO00USA	swift	1	0	12	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
125	0101000020E610000007644C4DC46658C04CA6E9373CCF4240	\N	\N	\N	-97.60573132	37.61902522	\N	\N	\N	\N	\N	\N	\N	\N	KSAB00USA	swift	1	0	12	No data	\N	12	12	12	17.4	\N	16	14	1	1	1	100	single	\N
127	0101000020E6100000D2EFB1AA946D59C03E16CBC291AC4340	\N	\N	\N	-101.7121989	39.34819827	\N	\N	\N	\N	\N	\N	\N	\N	KSGL00USA	swift	1	0	20	No data	20	14	14	14	16	\N	16	14	1	1	1	100	single	\N
129	0101000020E6100000FD4B529962B857C05AB33ADE098F4340	\N	\N	\N	-94.881018	39.11748865	\N	\N	\N	\N	\N	\N	\N	\N	KSKA00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
130	0101000020E61000000434956EE0F254C0C67054F2DA504340	\N	\N	\N	-83.79494824	38.63168172	\N	\N	\N	\N	\N	\N	\N	\N	KYME00USA	swift	1	0	12.4	0.4	\N	14	14	14	18	\N	17	14	1	1	1	100	single	\N
131	0101000020E6100000002061F7E12556C043CB9971438A4240	\N	\N	\N	-88.59191689	37.08018322	\N	\N	\N	\N	\N	\N	\N	\N	KYPD00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
132	0101000020E61000002D8449AF15BD56C0C7D0DA027C913E40	\N	\N	\N	-90.95444853	30.56829851	\N	\N	\N	\N	\N	\N	\N	\N	LADE00USA	swift	1	0	10	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
134	0101000020E610000068FC0CB9639856C0596D1F6E5E923D40	\N	\N	\N	-90.3810866	29.57175339	\N	\N	\N	\N	\N	\N	\N	\N	LARS00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
135	0101000020E6100000BAE8F90D726F57C057F4A0033F3F4040	\N	\N	\N	-93.74133634	32.49411054	\N	\N	\N	\N	\N	\N	\N	\N	LASP00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	14	12	1	1	1	100	single	\N
136	0101000020E61000002EBFBAC765A551C068588CBA56C94440	\N	\N	\N	-70.58433717	41.57295925	\N	\N	\N	\N	\N	\N	\N	\N	MAEA00USA	swift	1	0	14	2	\N	14	14	14	18	\N	16	12	1	1	1	100	single	\N
138	0101000020E6100000211D1EC2782B53C0C8F1E07AD6AC4340	\N	\N	\N	-76.6792455	39.35029541	\N	\N	\N	\N	\N	\N	\N	\N	MDBA00USA	swift	1	0	14	2	\N	16	16	16	18	\N	18	12	1	1	1	100	single	\N
143	0101000020E61000003E82D19B80EC54C09C7F81414E264540	\N	\N	\N	-83.69534965	42.29926318	\N	\N	\N	\N	\N	\N	\N	\N	MICY00USA	swift	1	0	10	No data	\N	14	14	14	16	\N	16	12	1	1	1	100	single	\N
145	0101000020E61000006D5255911FE854C0E1BD59396A764540	\N	\N	\N	-83.62692674	42.9251167	\N	\N	\N	\N	\N	\N	\N	\N	MIGB00USA	swift	1	0	18	No data	18	14	14	14	18	16	18	14	1	1	1	100	single	\N
146	0101000020E6100000190F849EAC2D55C0E0EB73CEB2544640	\N	\N	\N	-84.71366084	44.66170674	\N	\N	\N	\N	\N	\N	\N	\N	MIGR00USA	swift	1	0	20	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
147	0101000020E6100000601B548FB2EB54C099F8BC45D40A4540	\N	\N	\N	-83.68277343	42.08460304	\N	\N	\N	\N	\N	\N	\N	\N	MIMI00USA	swift	1	0	14	2	\N	14	14	14	20	\N	18	14	1	1	1	100	single	\N
149	0101000020E610000003B9DD2EA86055C0303AACB2672D4740	\N	\N	\N	-85.51026508	46.35472711	\N	\N	\N	\N	\N	\N	\N	\N	MINB00USA	swift	1	0	12	2	\N	12	12	12	17	\N	17	13	1	1	1	100	single	\N
150	0101000020E610000091D54A74182556C001D96F1644904740	\N	\N	\N	-88.57961757	47.12707787	\N	\N	\N	\N	\N	\N	\N	\N	MIUP00USA	swift	1	0	10	No data	\N	16	16	16	18	\N	18	14	1	1	1	100	single	\N
151	0101000020E6100000DBD2170072C257C02122F3D010764740	\N	\N	\N	-95.03820803	46.92238819	\N	\N	\N	\N	\N	\N	\N	\N	MNAE00USA	swift	1	0	12	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
152	0101000020E6100000A50D8F16CA6157C0170ABF71259E4740	\N	\N	\N	-93.52795948	47.23551771	\N	\N	\N	\N	\N	\N	\N	\N	MNAS00USA	swift	1	0	10	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
154	0101000020E6100000590AB396633058C017276321DF6F4740	\N	\N	\N	-96.75607841	46.8739969	\N	\N	\N	\N	\N	\N	\N	\N	MNMH00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	18	14	1	1	1	100	single	\N
156	0101000020E610000084597058BD6157C004D4691732664640	\N	\N	\N	-93.52718173	44.79840367	\N	\N	\N	\N	\N	\N	\N	\N	MNSP00USA	swift	1	0	6.2	No data	\N	16	16	16	18	\N	16	14	1	1	1	100	single	\N
157	0101000020E6100000E70EEE1037E657C08418BF5B66CF4540	\N	\N	\N	-95.59711097	43.62031123	\N	\N	\N	\N	\N	\N	\N	\N	MNWN00USA	swift	1	0	12	No data	\N	14	14	14	17.8	\N	16	14	1	1	1	100	single	\N
158	0101000020E61000000E8D1F1130D457C03F573AA3D6734840	\N	\N	\N	-95.31543377	48.90498772	\N	\N	\N	\N	\N	\N	\N	\N	MNWR00USA	swift	1	0	20	No data	20	18	18	18	18	16	18	14	1	1	1	100	single	\N
159	0101000020E6100000E29D53FB3AA956C06778373F13554340	\N	\N	\N	-90.64422496	38.66464987	\N	\N	\N	\N	\N	\N	\N	\N	MOCF00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	14	14	1	1	1	100	single	\N
162	0101000020E6100000EF452874666F57C00545FB71DE614340	\N	\N	\N	-93.74062828	38.76460099	\N	\N	\N	\N	\N	\N	\N	\N	MOWB00USA	swift	1	0	10	No data	\N	12	12	12	14	\N	14	12	1	1	1	100	single	\N
164	0101000020E610000003317D6DC52C56C05ACB8DB74F2E4040	\N	\N	\N	-88.69955003	32.36180777	\N	\N	\N	\N	\N	\N	\N	\N	MSMD00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
165	0101000020E61000003CE9335611BF56C0B9704132F4F53F40	\N	\N	\N	-90.98543315	31.96075739	\N	\N	\N	\N	\N	\N	\N	\N	MSPG00USA	swift	1	0	12	No data	\N	12	12	12	14	\N	14	12	1	1	1	100	single	\N
166	0101000020E610000082340818826B56C06F54FA4B83863E40	\N	\N	\N	-89.6798153	30.52544093	\N	\N	\N	\N	\N	\N	\N	\N	MSPY00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
167	0101000020E61000009A417C60C7945BC0D4F89EF4324E4840	\N	\N	\N	-110.324669	48.61093004	\N	\N	\N	\N	\N	\N	\N	\N	MTB100USA	swift	1	0	20	No data	20	14	14	14	18	16	18	14	1	1	1	100	single	\N
168	0101000020E61000008DC98745315D5BC0D8929F9E08C34640	\N	\N	\N	-109.4561323	45.52370055	\N	\N	\N	\N	\N	\N	\N	\N	MTCO00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
169	0101000020E6100000BE8AE7C73A205BC033631B0211354840	\N	\N	\N	-108.5035877	48.41458155	\N	\N	\N	\N	\N	\N	\N	\N	MTDD00USA	swift	1	0	22	No data	20.2	16	16	16	19.4	\N	19.4	14	1	1	1	100	single	\N
170	0101000020E6100000C9A42B7D8DAB5AC06BAADD65F5214740	\N	\N	\N	-106.6805108	46.26530145	\N	\N	\N	\N	\N	\N	\N	\N	MTFH00USA	swift	1	0	12	No data	\N	10	10	10	18	\N	16	14	1	1	1	100	single	\N
173	0101000020E61000005F33AFD980335BC059D3A34674834740	\N	\N	\N	-108.8047394	47.02698596	\N	\N	\N	\N	\N	\N	\N	\N	MTGR00USA	swift	1	0	14	No data	\N	16	16	16	16	\N	16	14	1	1	1	100	single	\N
175	0101000020E6100000A91E1FE340345CC006EE06F2682D4840	\N	\N	\N	-112.8164604	48.35476518	\N	\N	\N	\N	\N	\N	\N	\N	MTHT00USA	swift	1	0	14	No data	\N	16	16	16	18.8	\N	17.4	14	1	1	1	100	single	\N
176	0101000020E610000065767176C68A5CC0744A17CD10D74740	\N	\N	\N	-114.1683632	47.68020023	\N	\N	\N	\N	\N	\N	\N	\N	MTPL00USA	swift	1	0	12	No data	\N	16	16	16	18	\N	18	14	1	1	1	100	single	\N
177	0101000020E610000004B573F5BE4C5AC0DDAE1BDFAC354840	\N	\N	\N	-105.1991552	48.41933812	\N	\N	\N	\N	\N	\N	\N	\N	MTPO00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	\N
178	0101000020E61000003200547163D95BC061AD35EF13084740	\N	\N	\N	-111.3966945	46.06310835	\N	\N	\N	\N	\N	\N	\N	\N	MTTF00USA	swift	1	0	12	No data	\N	14	14	14	16	\N	16	14	1	1	1	100	single	\N
179	0101000020E61000002F0F8055818054C016BC8D7255D74140	\N	\N	\N	-82.00789392	35.68229515	\N	\N	\N	\N	\N	\N	\N	\N	NCMR00USA	swift	1	0	14	2	\N	14	14	14	18.2	\N	16	12	1	1	1	100	single	\N
180	0101000020E6100000D3AF84208D1754C0D2EF6F8E427E4140	\N	\N	\N	-80.36798871	34.98640614	\N	\N	\N	\N	\N	\N	\N	\N	NCMV00USA	swift	1	0	14	2	\N	14	14	14	18	\N	16	12	1	1	1	100	single	\N
181	0101000020E61000005408BB93954253C0189F5D192F8E4140	\N	\N	\N	-77.04037946	35.11081235	\N	\N	\N	\N	\N	\N	\N	\N	NCNB00USA	swift	1	0	14	2	\N	14	14	14	20	\N	18	12	1	1	1	100	single	\N
188	0101000020E6100000AC94F9A298C059C057CDD66EF9714840	\N	\N	\N	-103.0093162	48.89042459	\N	\N	\N	\N	\N	\N	\N	\N	NDNN00USA	swift	1	0	20	No data	20	16	16	16	18	16	18	14	1	1	1	100	single	\N
189	0101000020E610000031410DDFC2B759C0216FC16BFA0C4540	\N	\N	\N	-102.871269	42.10139224	\N	\N	\N	\N	\N	\N	\N	\N	NEAL00USA	swift	1	0	10	No data	\N	12	12	12	18	\N	16	14	1	1	1	100	single	\N
190	0101000020E61000004CC47CF5083058C09C766B78FE214440	\N	\N	\N	-96.75054681	40.26557832	\N	\N	\N	\N	\N	\N	\N	\N	NEBT00USA	swift	1	0	10	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
193	0101000020E6100000626FBD01C13059C0E40D17567D914440	\N	\N	\N	-100.7617802	41.13663746	\N	\N	\N	\N	\N	\N	\N	\N	NENP00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
194	0101000020E6100000EBAA402D86BE59C017045E7F75924440	\N	\N	\N	-102.9769395	41.14421074	\N	\N	\N	\N	\N	\N	\N	\N	NESN00USA	swift	1	0	10	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
195	0101000020E6100000BA83D899422359C0DB6333D131704540	\N	\N	\N	-100.55094	42.8765203	\N	\N	\N	\N	\N	\N	\N	\N	NEVT00USA	swift	1	0	10	No data	\N	14	14	14	16	\N	16	14	1	1	1	100	single	\N
196	0101000020E61000004D4EABF080D951C01D5A011124824540	\N	\N	\N	-71.39849488	43.01672566	\N	\N	\N	\N	\N	\N	\N	\N	NHHT00USA	swift	1	0	14	2	\N	14	14	14	16	\N	16	10	1	1	1	100	single	\N
197	0101000020E6100000D2623ABE87A952C045A6538978A14340	\N	\N	\N	-74.6489101	39.26149098	\N	\N	\N	\N	\N	\N	\N	\N	NJMM00USA	swift	1	0	20	2	18	14	14	14	18	16	18	12	1	1	1	100	single	\N
198	0101000020E61000005A283EE3677D5AC09D4872F11E734040	\N	\N	\N	-105.9594658	32.89938181	\N	\N	\N	\N	\N	\N	\N	\N	NMAO00USA	swift	1	0	10	No data	\N	12	12	12	18	No data	18	14	1	1	1	100	single	\N
199	0101000020E61000002BB759619F0E5AC03639211997354040	\N	\N	\N	-104.2284778	32.41867365	\N	\N	\N	\N	\N	\N	\N	\N	NMCB00USA	swift	1	0	No data	No data	\N	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	\N
201	0101000020E6100000EB820BC391835AC0D20A5FA107614140	\N	\N	\N	-106.0557716	34.75804536	\N	\N	\N	\N	\N	\N	\N	\N	NMES00USA	swift	1	0	10	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
202	0101000020E6100000574DC6E7842F5BC0C7E6151592C34140	\N	\N	\N	-108.7424869	35.52789558	\N	\N	\N	\N	\N	\N	\N	\N	NMGP00USA	swift	1	0	10	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
203	0101000020E6100000FBE769C0201C5AC09A34993353734240	\N	\N	\N	-104.439499	36.90097661	\N	\N	\N	\N	\N	\N	\N	\N	NMRN00USA	swift	1	0	8	No data	\N	10	10	10	16.6	\N	16	14	1	1	1	100	single	\N
205	0101000020E6100000DE9623BF59D05AC0E0C4A9396D904040	\N	\N	\N	-107.2554777	33.12833329	\N	\N	\N	\N	\N	\N	\N	\N	NMTC00USA	swift	1	0	10	No data	\N	10	10	10	18	\N	16	14	1	1	1	100	single	\N
206	0101000020E61000009BA7DF2A74EE59C05A000979F3964140	\N	\N	\N	-103.7258403	35.1793052	\N	\N	\N	\N	\N	\N	\N	\N	NMTM00USA	swift	1	0	12	No data	\N	12	12	12	17.6	\N	15.6	13.6	1	1	1	100	single	\N
209	0101000020E61000007A8F8E06CBC65CC060B86BF05B1B4240	\N	\N	\N	-115.1061417	36.21374326	\N	\N	\N	\N	\N	\N	\N	\N	NVLV00USA	swift	1	0	14	No data	14	13.6	14	13.6	16	16	16	14	1	1	1	100	single	\N
210	0101000020E6100000E4C8B9032B845CC06C44ACD509674240	\N	\N	\N	-114.0651254	36.80498763	\N	\N	\N	\N	\N	\N	\N	\N	NVMQ00USA	swift	1	0	6	No data	\N	10	10	10	16	\N	16	14	1	1	1	100	single	\N
213	0101000020E61000003885950A2A925DC0B0202812A73B4440	\N	\N	\N	-118.283816	40.4660361	\N	\N	\N	\N	\N	\N	\N	\N	NVRP00USA	swift	1	0	10	No data	\N	16	16	16	19.6	\N	16	14	1	1	1	100	single	\N
215	0101000020E610000094FF249930485DC0090DAB1579654440	\N	\N	\N	-117.1279662	40.79275771	\N	\N	\N	\N	\N	\N	\N	\N	NVVL00USA	swift	1	0	10	No data	\N	14	14	14	20	\N	18	14	1	1	1	100	single	\N
216	0101000020E610000056606D31E4845CC03B302537AF5E4440	\N	\N	\N	-114.0764278	40.73972215	\N	\N	\N	\N	\N	\N	\N	\N	NVWW00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
217	0101000020E610000089688DA411A053C023115CDD98824540	\N	\N	\N	-78.50107683	43.02029006	\N	\N	\N	\N	\N	\N	\N	\N	NYAN00USA	swift	1	0	20	2	18	14	14	14	20	18	20	14	1	1	1	100	single	\N
218	0101000020E610000094795866595952C056AB23059E5B4440	\N	\N	\N	-73.39608153	40.71575989	\N	\N	\N	\N	\N	\N	\N	\N	NYLH00USA	swift	1	0	20	2	18	18	18	18	20	\N	18	14	1	1	1	100	single	\N
219	0101000020E6100000E4D9066A488152C088D881EF0DC04440	\N	\N	\N	-74.02004481	41.50042528	\N	\N	\N	\N	\N	\N	\N	\N	NYNB00USA	swift	1	0	20	2	18	18	18	18	18	\N	18	12	1	1	1	100	single	\N
220	0101000020E610000096FA471990AB52C05562C714E67F4540	\N	\N	\N	-74.68067009	42.99920902	\N	\N	\N	\N	\N	\N	\N	\N	NYSJ00USA	swift	1	0	14	2	\N	12	12	12	18	\N	18	12	1	1	1	100	single	\N
221	0101000020E6100000A6E6DD1E65B754C0596422422FFA4340	\N	\N	\N	-82.86554691	39.95456721	\N	\N	\N	\N	\N	\N	\N	\N	OHCL00USA	swift	1	0	14	2	\N	14	14	14	19.8	\N	15.8	14	1	1	1	100	single	\N
222	0101000020E6100000719C0C75351C55C024CF168CA19C4340	\N	\N	\N	-84.44076277	39.22368003	\N	\N	\N	\N	\N	\N	\N	\N	OHGB00USA	swift	1	0	12	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
226	0101000020E6100000A046082CCC4958C0B9A68282B9194140	\N	\N	\N	-97.15308667	34.20097381	\N	\N	\N	\N	\N	\N	\N	\N	OKAR00USA	swift	1	0	12.6	No data	\N	12	12	12	18	\N	18	14	1	1	1	100	single	\N
228	0101000020E6100000A6B317FAF5F057C05DF7FB6A33774140	\N	\N	\N	-95.76501324	34.93125665	\N	\N	\N	\N	\N	\N	\N	\N	OKMC00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	\N
229	0101000020E6100000C635BA5AD96258C089CDE8C38ACD4140	\N	\N	\N	-97.54451626	35.60579728	\N	\N	\N	\N	\N	\N	\N	\N	OKOK00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	18	14	1	1	1	100	single	\N
230	0101000020E6100000948486F658FD57C0F5BA877C7E144240	\N	\N	\N	-95.95855487	36.16011006	\N	\N	\N	\N	\N	\N	\N	\N	OKTA00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	14	14	1	1	1	100	single	\N
232	0101000020E6100000C7A01342871A5FC09A2732CE3A8F4540	\N	\N	\N	-124.4145055	43.1189821	\N	\N	\N	\N	\N	\N	\N	\N	ORBA00USA	swift	1	0	8	No data	\N	16	16	16	20	\N	18	14	1	1	1	100	single	\N
233	0101000020E6100000C52A943B22755DC06CBDF80568634640	\N	\N	\N	-117.8302144	44.77661204	\N	\N	\N	\N	\N	\N	\N	\N	ORBC00USA	swift	1	0	18	No data	18	14	14	14	16	16	16	14	1	1	1	100	single	\N
237	0101000020E61000003CF5EDC968AE5EC03029E384AECA4640	\N	\N	\N	-122.7251458	45.5834509	\N	\N	\N	\N	\N	\N	\N	\N	ORPD00USA	swift	1	0	10	No data	\N	14	14	14	17.8	\N	15.8	13.8	1	1	1	100	single	\N
239	0101000020E610000063AAAAE16CC25EC087D0D6FB6C784640	\N	\N	\N	-123.0378956	44.94082592	\N	\N	\N	\N	\N	\N	\N	\N	ORSL00USA	swift	1	0	10	No data	\N	16	16	16	20	\N	18	14	1	1	1	100	single	\N
240	0101000020E61000009146C331A4E452C062FB03C4A84E4440	\N	\N	\N	-75.57252163	40.61452532	\N	\N	\N	\N	\N	\N	\N	\N	PAAL00USA	swift	1	0	14	2	\N	14	14	14	18	\N	18	12	1	1	1	100	single	\N
241	0101000020E610000089FF852F1D0C54C02828241D0E214440	\N	\N	\N	-80.18928135	40.25824322	\N	\N	\N	\N	\N	\N	\N	\N	PACG00USA	swift	1	0	14	2	\N	14	14	14	18	\N	16	12	1	1	1	100	single	\N
242	0101000020E6100000C7B11E8C92FD53C04F73765BB73C4440	\N	\N	\N	-79.96206954	40.47434562	\N	\N	\N	\N	\N	\N	\N	\N	PACR00USA	swift	1	0	14	2	\N	14	14	14	20	\N	20	14	1	1	1	100	single	\N
244	0101000020E61000003F641DD00A4553C01A43AD2742E74440	\N	\N	\N	-77.07878497	41.80670639	\N	\N	\N	\N	\N	\N	\N	\N	PAMF00USA	swift	1	0	14	2	\N	12	12	12	18.2	\N	18	12.2	1	1	1	100	single	\N
247	0101000020E6100000A8F1FBCC53F753C01FE8F4FEB7674040	\N	\N	\N	-79.86448979	32.81030261	\N	\N	\N	\N	\N	\N	\N	\N	SCMP00USA	swift	1	0	18	No data	18	14	14	14	18	16	18	12	1	1	1	100	single	\N
248	0101000020E610000057C43C6D453754C0F7BF6DB7EEBE4040	\N	\N	\N	-80.86361247	33.49166005	\N	\N	\N	\N	\N	\N	\N	\N	SCOB00USA	swift	1	0	12	No data	\N	14	14	14	20	\N	16	12	1	1	1	100	single	\N
250	0101000020E610000007AB77D9AB8158C0C6F253C14DDB4540	\N	\N	\N	-98.02611386	43.7133104	\N	\N	\N	\N	\N	\N	\N	\N	SDML00USA	swift	1	0	10	No data	\N	14	14	14	18	\N	16	14	1	1	1	100	single	\N
253	0101000020E610000052E1BEC40EAB59C0F36BD20ADF474640	\N	\N	\N	-102.6727764	44.56149421	\N	\N	\N	\N	\N	\N	\N	\N	SDRS00USA	swift	1	0	14	No data	\N	12	12	12	18	\N	16	14	1	1	1	100	single	\N
254	0101000020E610000003505AF2174758C0A3F564BC35734640	\N	\N	\N	-97.11083659	44.90007739	\N	\N	\N	\N	\N	\N	\N	\N	SDWT00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	16	14	1	1	1	100	single	\N
256	0101000020E61000009BF12A297F4756C0B55BC3F36FE44140	\N	\N	\N	-89.11713628	35.78466651	\N	\N	\N	\N	\N	\N	\N	\N	TNAM00USA	swift	1	0	12	No data	\N	12	12	12	19.8	\N	14	14	1	1	1	100	single	\N
257	0101000020E6100000255E1A9631B355C08A102E4F2DFB4140	\N	\N	\N	-86.79990151	35.96232023	\N	\N	\N	\N	\N	\N	\N	\N	TNBR00USA	swift	1	0	18	No data	18	12	12	12	19.4	18	17	14	1	1	1	100	single	\N
258	0101000020E61000007909671AC17556C073C132999E864140	\N	\N	\N	-89.83991108	35.05171504	\N	\N	\N	\N	\N	\N	\N	\N	TNME00USA	swift	1	0	12	No data	\N	12	12	12	15.8	\N	14	12	1	1	1	100	single	\N
260	0101000020E6100000260DC1B3B5F657C04F3330344F1A4040	\N	\N	\N	-95.85484022	32.20554211	\N	\N	\N	\N	\N	\N	\N	\N	TXAT00USA	swift	1	0	14	No data	\N	12	12	12	18	\N	14	14	1	1	1	100	single	\N
261	0101000020E6100000037955EB6D5A58C04C329324DFCB3B40	\N	\N	\N	-97.41295894	27.79637364	\N	\N	\N	\N	\N	\N	\N	\N	TXCC00USA	swift	1	0	12	No data	\N	12	12	12	17	\N	16	13	1	1	1	100	single	\N
262	0101000020E610000096E1896A5B3959C0F52EDE8FDB603D40	\N	\N	\N	-100.8962046	29.37835025	\N	\N	\N	\N	\N	\N	\N	\N	TXDL00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	single	\N
263	0101000020E61000002CDE23F6E4935AC05237065383AB3F40	\N	\N	\N	-106.3108497	31.6699726	\N	\N	\N	\N	\N	\N	\N	\N	TXEP00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	18	14	1	1	1	100	single	\N
264	0101000020E6100000353FA319308A58C0E1DECA4C48223D40	\N	\N	\N	-98.1591858	29.13391571	\N	\N	\N	\N	\N	\N	\N	\N	TXFL00USA	swift	1	0	10	No data	\N	12	12	12	17.8	\N	16	13.8	1	1	1	100	single	\N
265	0101000020E61000004E8E8EEDED3858C01702A9E200934040	\N	\N	\N	-96.88952197	33.14846452	\N	\N	\N	\N	\N	\N	\N	\N	TXFR00USA	swift	1	0	13.8	No data	\N	12	12	12	17.4	\N	16	13.4	1	1	1	100	single	\N
268	0101000020E6100000FDCC6ACBCA7759C0536211A280CD4040	\N	\N	\N	-101.8717526	33.60548807	\N	\N	\N	\N	\N	\N	\N	\N	TXLB00USA	swift	1	0	12	No data	\N	12	12	12	16.6	\N	16	12.6	1	1	1	100	single	\N
290	0101000020E6100000339C7CC479A85EC0C33C33DA8DC84740	\N	\N	\N	-122.6324321	47.56682899	\N	\N	\N	\N	\N	\N	\N	\N	WASE00USA	swift	1	0	18	No data	18	16	16	16.6	19.2	16	18	14	1	1	1	100	single	\N
291	0101000020E6100000E078889004965DC0E8672C925D084740	\N	\N	\N	-118.3440286	46.06535556	\N	\N	\N	\N	\N	\N	\N	\N	WAWA00USA	swift	1	0	10	No data	\N	14	14	14	17.2	\N	16	14	1	1	1	100	single	\N
293	0101000020E6100000D26B790609E056C0F61C810D42684640	\N	\N	\N	-91.50055086	44.81451577	\N	\N	\N	\N	\N	\N	\N	\N	WIEC00USA	swift	1	0	10	No data	\N	12	12	12	18	\N	18	14	1	1	1	100	single	\N
294	0101000020E6100000CB227FF6045056C09466777130F54640	\N	\N	\N	-89.25030291	45.91554087	\N	\N	\N	\N	\N	\N	\N	\N	WIER00USA	swift	1	0	10	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
295	0101000020E6100000D1DD22EEF9DE56C0754B9B3FE0014740	\N	\N	\N	-91.48400453	46.01465602	\N	\N	\N	\N	\N	\N	\N	\N	WIHW00USA	swift	1	0	10	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
296	0101000020E6100000A010A6CD1DF555C04CB227E4772C4640	\N	\N	\N	-87.82994405	44.34740879	\N	\N	\N	\N	\N	\N	\N	\N	WIJO00USA	swift	1	0	12	No data	\N	14	14	14	18	\N	18	14	1	1	1	100	single	\N
299	0101000020E6100000FE68B42C8A4D56C0F792C6681D974540	\N	\N	\N	-89.21155851	43.180585	\N	\N	\N	\N	\N	\N	\N	\N	WIPE00USA	swift	1	0	10	No data	\N	14	14	14	17.6	\N	17.6	14	1	1	1	100	single	\N
301	0101000020E6100000DFC1D354A47554C09184F90265314340	\N	\N	\N	-81.83815499	38.38589513	\N	\N	\N	\N	\N	\N	\N	\N	WVSA00USA	swift	1	0	14	2	\N	14	14	14	18	\N	18	12	1	1	1	100	single	\N
302	0101000020E61000009D1A1EB14C955AC06A566C82DE6B4540	\N	\N	\N	-106.3328059	42.84272795	\N	\N	\N	\N	\N	\N	\N	\N	WYCR00USA	swift	1	0	14	No data	\N	12	11.8	11.8	16	\N	16	14	1	1	1	100	single	\N
303	0101000020E610000097DEA3A3C1BD5BC04204A07A39A24440	\N	\N	\N	-110.9649438	41.26737912	\N	\N	\N	\N	\N	\N	\N	\N	WYEV00USA	swift	1	0	26	No data	26	15.6	15.6	15.6	20.8	20.8	20.8	18.2	1	1	1	100	single	\N
304	0101000020E61000006A0B19D95F5C5AC099737CF654234640	\N	\N	\N	-105.4433501	44.27603036	\N	\N	\N	\N	\N	\N	\N	\N	WYGE00USA	swift	1	0	14	No data	\N	10.2	10.2	10.2	18	\N	16	14	1	1	1	100	single	\N
1	0101000020E6100000F3412A2048895CC06E6E4C4F58884940	\N	\N	\N	-114.1450272	51.065195	\N	\N	\N	\N	\N	\N	\N	\N	ABCG00CAN	swift	1	0	12	No data	\N	16	16	16	20	\N	16	14	1	1	1	100	single	\N
2	0101000020E61000004D3D1C6E51D85BC07D10764839EF4840	\N	\N	\N	-111.3799701	49.86893564	\N	\N	\N	\N	\N	\N	\N	\N	TABB00CAN	swift	1	0	22	No data	22	16	16	16	20	16	18.2	14	1	1	1	100	integrity	\N
3	0101000020E610000057056A31F89D5CC0231DD4345E984940	\N	\N	\N	-114.4682735	51.19037495	\N	\N	\N	\N	\N	\N	\N	\N	TABC00CAN	swift	1	0	18	No data	18	16	16	16	18	16	16	14	1	1	1	100	integrity	\N
4	0101000020E6100000DF8F36E991655CC0ABC84BABDFBC4A40	\N	\N	\N	-113.5870307	53.47557584	\N	\N	\N	\N	\N	\N	\N	\N	TABE00CAN	swift	1	0	18	No data	19.8	16	16	16	19.4	16	16	14	1	1	1	100	integrity	\N
5	0101000020E6100000CFDE742648DB5DC097B4988EEF9A4B40	\N	\N	\N	-119.4262787	55.2104357	\N	\N	\N	\N	\N	\N	\N	\N	TABG00CAN	swift	1	0	20	No data	20.6	16	16	16	20	16	20	14	1	1	1	100	integrity	\N
6	0101000020E610000066DD3F16A2635DC0CA0C860081B54A40	\N	\N	\N	-117.556768	53.41799933	\N	\N	\N	\N	\N	\N	\N	\N	TABH00CAN	swift	1	0	20	No data	20	16	16	16	20	16	20	14	1	1	1	100	integrity	\N
7	0101000020E61000005F7EA7C98CB15BC0A5413CD803014A40	\N	\N	\N	-110.774218	52.00792983	\N	\N	\N	\N	\N	\N	\N	\N	TABO00CAN	swift	1	0	20	No data	20	16	16	16	20	16	18	14	1	1	1	100	integrity	\N
8	0101000020E6100000960DC6E3FDD25BC0FE27A005F8FE4A40	\N	\N	\N	-111.2967462	53.99194403	\N	\N	\N	\N	\N	\N	\N	\N	TABP00CAN	swift	1	0	24	No data	24	18	18	18	21.8	16	18	16	1	1	1	100	integrity	\N
9	0101000020E610000046EFAF7930F45DC06FB4CAE93E9A4840	\N	\N	\N	-119.8154587	49.20504496	\N	\N	\N	\N	\N	\N	\N	\N	TBC300CAN	swift	1	0	12	No data	12	12	12	12	16	16	16	14	1	1	1	100	integrity	\N
10	0101000020E6100000231BFE8900A95EC071E73E108BF24A40	\N	\N	\N	-122.6406579	53.89486888	\N	\N	\N	\N	\N	\N	\N	\N	TBCG00CAN	swift	1	0	18	No data	20	16	16	16	24	16	18	14	1	1	1	100	integrity	\N
11	0101000020E6100000F88903E8F7A95FC08028983185324B40	\N	\N	\N	-126.655756	54.39468975	\N	\N	\N	\N	\N	\N	\N	\N	TBCH00CAN	swift	1	0	14	No data	16	16	16	16	19.2	16	16	14	1	1	1	100	integrity	\N
12	0101000020E6100000F401DC87571460C0C60C7D45F1064B40	\N	\N	\N	-128.6356849	54.05423802	\N	\N	\N	\N	\N	\N	\N	\N	TBCK00CAN	swift	1	0	16	No data	16	16	16	16	20	16	18	14	1	1	1	100	integrity	\N
13	0101000020E61000000A40ED0184215FC0476DA839F5EA4840	\N	\N	\N	-124.5236821	49.83560868	\N	\N	\N	\N	\N	\N	\N	\N	TBCP00CAN	swift	1	0	16	No data	16.2	18	18	18	22	16	20	14	1	1	1	100	integrity	\N
14	0101000020E61000001692825D03C15FC021C17DB29C504940	\N	\N	\N	-127.0158304	50.62978202	\N	\N	\N	\N	\N	\N	\N	\N	TBCS00CAN	swift	1	0	17.4	No data	15.4	17.6	17.6	17.6	24.2	17.6	19.8	15.4	1	1	1	100	integrity	\N
15	0101000020E61000004A181758117A5FC0B1AE237183934840	\N	\N	\N	-125.9073086	49.15244879	\N	\N	\N	\N	\N	\N	\N	\N	TBCT00CAN	swift	1	0	14	No data	14	14	14	14	18	16	18	14	1	1	1	100	integrity	\N
16	0101000020E610000059260D7F173E5DC0F1898E479DA64940	\N	\N	\N	-116.9701841	51.30167479	\N	\N	\N	\N	\N	\N	\N	\N	TBCW00CAN	swift	1	0	16	No data	16	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
17	0101000020E61000002ED2BCCA77EA58C066BC312D7F974840	\N	\N	\N	-99.66356152	49.18356862	\N	\N	\N	\N	\N	\N	\N	\N	TMBK00CAN	swift	1	0	20	No data	20	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
18	0101000020E61000002702CDCEFF4558C015A12298B4FD4840	\N	\N	\N	-97.09373827	49.9820738	\N	\N	\N	\N	\N	\N	\N	\N	TMBW00CAN	swift	1	0	22	No data	22	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
19	0101000020E610000084060720DAD150C00373DB5B9D984640	\N	\N	\N	-67.2789383	45.19230221	\N	\N	\N	\N	\N	\N	\N	\N	TNBS00CAN	swift	1	0	20	2	18	16	16	16	20.4	14	18	12	1	1	1	100	integrity	\N
20	0101000020E6100000678942891EEA54C086E03CC5BFD84840	\N	\N	\N	-83.65811378	49.69335237	\N	\N	\N	\N	\N	\N	\N	\N	TONH00CAN	swift	1	0	24	2	22	18	18	18	24	18	22	16	1	1	1	100	integrity	\N
21	0101000020E6100000B654F72B51E956C0E75F3F82EAB44840	\N	\N	\N	-91.64557933	49.41340664	\N	\N	\N	\N	\N	\N	\N	\N	TONI00CAN	swift	1	0	16	No data	18	14	14	14	18	16	18	14	1	1	1	100	integrity	\N
22	0101000020E6100000DE2C90668D4D54C0A86A8A19C4774540	\N	\N	\N	-81.21175541	42.93567199	\N	\N	\N	\N	\N	\N	\N	\N	TONL00CAN	swift	1	0	20	2	18	14	14	14	20	18	18	14	1	1	1	100	integrity	\N
23	0101000020E6100000CDE249FBB4D453C0711CBAD1AEEB4540	\N	\N	\N	-79.32354624	43.84127256	\N	\N	\N	\N	\N	\N	\N	\N	TONM00CAN	swift	1	0	20	2	18	18	18	18	20	16	20	14	1	1	1	100	integrity	\N
24	0101000020E610000027BDF3B491EE52C03A1BD9326CB44640	\N	\N	\N	-75.72764324	45.40955196	\N	\N	\N	\N	\N	\N	\N	\N	TONO00CAN	swift	1	0	22	2	20	16	16	16	20	18	20	14	1	1	1	100	integrity	\N
25	0101000020E610000004238A2415D155C0FAB516E268674840	\N	\N	\N	-87.26691545	48.80788828	\N	\N	\N	\N	\N	\N	\N	\N	TONS00CAN	swift	1	0	18	No data	18	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
26	0101000020E6100000B912AA69513155C0756D561A84FF4740	\N	\N	\N	-84.77059404	47.99621896	\N	\N	\N	\N	\N	\N	\N	\N	TONW00CAN	swift	1	0	20	2	18	18	18	18	18	16	18	14	1	1	1	100	integrity	\N
27	0101000020E6100000C3322E03EB2152C0146803F29D334740	\N	\N	\N	-72.52996902	46.40325761	\N	\N	\N	\N	\N	\N	\N	\N	TQC300CAN	swift	1	0	21.6	1.8	19.8	18	18	18	21.6	18	21.6	14.4	1	1	1	100	integrity	\N
28	0101000020E6100000ED9F86F3D9D452C0C9098F0D0F704740	\N	\N	\N	-75.32580269	46.87545938	\N	\N	\N	\N	\N	\N	\N	\N	TQCA00CAN	swift	1	0	18	1.8	16.2	14.4	14.4	14.4	17.8	16.2	17.8	12.6	1	1	1	100	integrity	\N
29	0101000020E61000009B86D141D16853C0D76D2FEDC4384840	\N	\N	\N	-77.63777204	48.44350972	\N	\N	\N	\N	\N	\N	\N	\N	TQCB00CAN	swift	1	0	24	2	22	16	16	16	24	18	22	16	1	1	1	100	integrity	\N
30	0101000020E6100000302D2CB0EE1E50C0B6DA8142566A4840	\N	\N	\N	-64.48331837	48.83075744	\N	\N	\N	\N	\N	\N	\N	\N	TQCG00CAN	swift	1	0	20	2	18	16	16	16	20	16	20	12	1	1	1	100	integrity	\N
31	0101000020E610000055BB68C0472151C0458613A0BF3A4840	\N	\N	\N	-68.52000437	48.45897294	\N	\N	\N	\N	\N	\N	\N	\N	TQCR00CAN	swift	1	0	24	2	20.6	20	20	20	22	20	20	16	1	1	1	100	integrity	\N
32	0101000020E61000001E25654197705AC0C79F45429D974A40	\N	\N	\N	-105.7592319	53.18448666	\N	\N	\N	\N	\N	\N	\N	\N	TSKA00CAN	swift	1	0	20	No data	20	14	14	16	16	16	16	14	1	1	1	100	integrity	\N
33	0101000020E610000050F8116429135BC0DD16D98C5B634A40	\N	\N	\N	-108.2994013	52.77623139	\N	\N	\N	\N	\N	\N	\N	\N	TSKB00CAN	swift	1	0	18	No data	18	13.6	14	14	18	16	18	14	1	1	1	100	integrity	\N
34	0101000020E6100000C4B5357D51F35AC0680586AC6E244940	\N	\N	\N	-107.8018487	50.2846275	\N	\N	\N	\N	\N	\N	\N	\N	TSKS00CAN	swift	1	0	22	No data	22	17.8	18	18	18	16	18	14	1	1	1	100	integrity	\N
35	0101000020E610000094CB35BB249F59C0FDFA2136D89A4940	\N	\N	\N	-102.4866169	51.20972325	\N	\N	\N	\N	\N	\N	\N	\N	TSKY00CAN	swift	1	0	20	No data	21.8	16	18	17.4	18	16	18	14	1	1	1	100	integrity	\N
36	0101000020E6100000A64F404D8CB155C0F9870C2F31C34040	\N	\N	\N	-86.77418834	33.52493847	\N	\N	\N	\N	\N	\N	\N	\N	ALBH01USA	swift	1	0	18	No data	18	12	12	12	17.8	16	16	14	1	1	1	100	integrity	\N
39	0101000020E61000005E942C697D0257C0E9BBF82E677D4140	\N	\N	\N	-92.03890447	34.97971141	\N	\N	\N	\N	\N	\N	\N	\N	ARCB00USA	swift	1	0	18	No data	18	12	12	12	18	18	16	14	1	1	1	100	integrity	\N
40	0101000020E61000006FE29AF1EC9A57C08C678EB46DB14140	\N	\N	\N	-94.4207119	35.38616044	\N	\N	\N	\N	\N	\N	\N	\N	ARFM00USA	swift	1	0	18	No data	18	14	14	14	16	16	16	14	1	1	1	100	integrity	\N
42	0101000020E6100000FCF5549888F85BC03EE6A8482AD14040	\N	\N	\N	-111.8833371	33.6341029	\N	\N	\N	\N	\N	\N	\N	\N	AZCH00USA	swift	1	0	12	No data	12	12	16	15.8	19.4	16	17.4	14	1	1	1	100	integrity	\N
44	0101000020E61000005FA1C50897625CC020DC321A58664040	\N	\N	\N	-113.5404684	32.79956367	\N	\N	\N	\N	\N	\N	\N	\N	AZDL00USA	swift	1	0	14	No data	14	14	16	15.6	20	18	18	14	1	1	1	100	integrity	\N
47	0101000020E61000003E2883FE1D8A5BC04964A39C7D734140	\N	\N	\N	-110.1580807	34.90227087	\N	\N	\N	\N	\N	\N	\N	\N	AZHB00USA	swift	1	0	16	No data	16	14	14	14	19.6	18	18	14	1	1	1	100	integrity	\N
48	0101000020E6100000159CB0B357DD5BC08456F52CE7754240	\N	\N	\N	-111.4584779	36.92111742	\N	\N	\N	\N	\N	\N	\N	\N	AZPG00USA	swift	1	0	16	No data	16	12	12	12	18	16	16	14	1	1	1	100	integrity	\N
50	0101000020E6100000845C4EAE4E755BC083FC4BD651204040	\N	\N	\N	-109.8329273	32.25249747	\N	\N	\N	\N	\N	\N	\N	\N	AZWC00USA	swift	1	0	16.6	No data	16.4	14	14	14	20	18	20	14	1	1	1	100	integrity	\N
51	0101000020E61000002DC4341D4BEC5EC02A24B2725C744340	\N	\N	\N	-123.6920846	38.90907129	\N	\N	\N	\N	\N	\N	\N	\N	CAAA00USA	swift	1	0	14	No data	14	16	16	16	16	14	16	14	1	1	1	100	integrity	\N
52	0101000020E6100000714C6084BA225EC0790C878CE4BD4440	\N	\N	\N	-120.5426341	41.48353726	\N	\N	\N	\N	\N	\N	\N	\N	CAAS00USA	swift	1	0	18	No data	18	16	16	16	20	16	20	14	1	1	1	100	integrity	\N
56	0101000020E61000006B1B351518ED5DC0102F1DAD49694240	\N	\N	\N	-119.7045949	36.82256092	\N	\N	\N	\N	\N	\N	\N	\N	CACS00USA	swift	1	0	16	No data	16	16	16	16	19.6	16	18	14	1	1	1	100	integrity	\N
59	0101000020E6100000F3C98AE16A8C5EC078C57C0E66814240	\N	\N	\N	-122.1940235	37.01092702	\N	\N	\N	\N	\N	\N	\N	\N	CADV00USA	swift	1	0	12	No data	12	16	16	16	16.4	16	16	14	1	1	1	100	integrity	\N
63	0101000020E6100000662728EAF17A5EC066A630C672BC4240	\N	\N	\N	-121.9210153	37.47225263	\N	\N	\N	\N	\N	\N	\N	\N	CAFT00USA	swift	1	0	16	No data	16	16	16	16	17.8	16	17.8	14	1	1	1	100	integrity	\N
70	0101000020E61000008D2A1E728EA65CC0D19C2FD5506B4140	\N	\N	\N	-114.6024442	34.83840432	\N	\N	\N	\N	\N	\N	\N	\N	CAND00USA	swift	1	0	15.6	No data	16	12	12	12	18	16	18	14	1	1	1	100	integrity	\N
72	0101000020E61000009080762CDB985EC05990A0D7234A4440	\N	\N	\N	-122.3883773	40.57921882	\N	\N	\N	\N	\N	\N	\N	\N	CARD01USA	swift	1	0	16	No data	16.2	16	16	16	20	16	18	14	1	1	1	100	integrity	\N
74	0101000020E61000002D74CA48622A5EC0FAFC838AA2354440	\N	\N	\N	-120.6622488	40.41902286	\N	\N	\N	\N	\N	\N	\N	\N	CASE00USA	swift	1	0	16	No data	16	14	14	14	18	16	18	14	1	1	1	100	integrity	\N
76	0101000020E610000088CFE7ED19555EC0062293A5B9364240	\N	\N	\N	-121.3297076	36.42754049	\N	\N	\N	\N	\N	\N	\N	\N	CASO00USA	swift	1	0	16	No data	16	16	16	16	19.6	16	17.6	14	1	1	1	100	integrity	\N
77	0101000020E61000003EBB325EA93D5DC0792F4A12FC694040	\N	\N	\N	-116.9634624	32.82800511	\N	\N	\N	\N	\N	\N	\N	\N	CAST00USA	swift	1	0	12	No data	12	16	16	16	20	18	20	14	1	1	1	100	integrity	\N
78	0101000020E6100000A64EF685C6CC5DC03B161DC1F41F4140	\N	\N	\N	-119.1996169	34.24965681	\N	\N	\N	\N	\N	\N	\N	\N	CAVA00USA	swift	1	0	14	No data	14	16	16	16	19.8	16	18	14	1	1	1	100	integrity	\N
84	0101000020E61000003BCF8E0A52F359C0E91F6DB115204440	\N	\N	\N	-103.8018824	40.25066202	\N	\N	\N	\N	\N	\N	\N	\N	COFO00USA	swift	1	0	14	No data	14	14	14	14	16	16	16	14	1	1	1	100	integrity	\N
88	0101000020E61000000C6D4AC3BA275AC0B93F51B822214340	\N	\N	\N	-104.6207741	38.25887207	\N	\N	\N	\N	\N	\N	\N	\N	COPU00USA	swift	1	0	16	No data	16	14	14	14	16	16	16	14	1	1	1	100	integrity	\N
90	0101000020E61000006E3B2300AE0554C0EE450FD7C55E3A40	\N	\N	\N	-80.08874515	26.3702063	\N	\N	\N	\N	\N	\N	\N	\N	FLBR00USA	swift	1	0	No data	No data	No data	No data	No data	No data	No data	No data	No data	No data	1	1	1	100	integrity	\N
101	0101000020E61000002AA6146C4A0D55C042BDF0B52DE03E40	\N	\N	\N	-84.20766737	30.87569749	\N	\N	\N	\N	\N	\N	\N	\N	GACA00USA	swift	1	0	18	No data	18	12	12	12	18.2	18	17.8	12	1	1	1	100	integrity	\N
102	0101000020E6100000EB6499136E3F55C09CFA820EA13B4040	\N	\N	\N	-84.99109354	32.46585256	\N	\N	\N	\N	\N	\N	\N	\N	GACB00USA	swift	1	0	18	No data	18	12	12	12	16	14	14	12	1	1	1	100	integrity	\N
108	0101000020E6100000C22ECC3A4A8C57C0C8BF641D6D404540	\N	\N	\N	-94.19203062	42.50332992	\N	\N	\N	\N	\N	\N	\N	\N	IAFD00USA	swift	1	0	18	No data	18	12	12	12	16	16	16	14	1	1	1	100	integrity	\N
109	0101000020E610000039988F9C33D456C036D7FE08A2504440	\N	\N	\N	-91.31565012	40.62994492	\N	\N	\N	\N	\N	\N	\N	\N	IAFM00USA	swift	1	0	18	No data	18	12	12	12	18	16	18	14	1	1	1	100	integrity	\N
111	0101000020E610000081BC0D2072D457C087F7A09032D44440	\N	\N	\N	-95.31946565	41.65779312	\N	\N	\N	\N	\N	\N	\N	\N	IAHL00USA	swift	1	0	18	No data	18	12	12	12	18	16	18	14	1	1	1	100	integrity	\N
112	0101000020E6100000A8870DBB94B05CC0BF0CE796AD4C4540	\N	\N	\N	-114.7590778	42.59904753	\N	\N	\N	\N	\N	\N	\N	\N	IDBU00USA	swift	1	0	18	No data	18	14	14	14	16	16	16	14	1	1	1	100	integrity	\N
116	0101000020E6100000AA5F8EC385FA5BC0BCB8A6A310D64540	\N	\N	\N	-111.9144143	43.67238279	\N	\N	\N	\N	\N	\N	\N	\N	IDRY00USA	swift	1	0	20	No data	20	14	14	14	16	16	16	14	1	1	1	100	integrity	\N
118	0101000020E610000025E16B9DF20C56C0C2DFED49F9E94440	\N	\N	\N	-88.20230804	41.82792019	\N	\N	\N	\N	\N	\N	\N	\N	ILCY01USA	swift	1	0	16	No data	16	13.8	14	14	17.4	16	16	14	1	1	1	100	integrity	\N
120	0101000020E61000002A12FA36506C56C0A3E5822B07E44440	\N	\N	\N	-89.69239592	41.78146881	\N	\N	\N	\N	\N	\N	\N	\N	ILSL01USA	swift	1	0	18	No data	18	14	14	14	18	16	18	14	1	1	1	100	integrity	\N
121	0101000020E61000004A64FE55F05256C04AAABE0C29C64340	\N	\N	\N	-89.29591894	39.54812774	\N	\N	\N	\N	\N	\N	\N	\N	ILTV00USA	swift	1	0	16	No data	18	14	14	14	17.8	16	16	14	1	1	1	100	integrity	\N
122	0101000020E6100000600A2837BE4855C06777CC69E4894440	\N	\N	\N	-85.13660983	41.07728312	\N	\N	\N	\N	\N	\N	\N	\N	INFW00USA	swift	1	0	20	2	18	14	14	14	19	15.8	16	14	1	1	1	100	integrity	\N
123	0101000020E6100000D5EA8A9D197155C09EEE7E0D6F304340	\N	\N	\N	-85.76718844	38.37838906	\N	\N	\N	\N	\N	\N	\N	\N	INSG00USA	swift	1	0	18	No data	18	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
126	0101000020E61000000B50093EBC1D59C030D55093AE3D4340	\N	\N	\N	-100.4646144	38.48189012	\N	\N	\N	\N	\N	\N	\N	\N	KSDN00USA	swift	1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	1	100	integrity	\N
128	0101000020E6100000F34ECB30AA7B58C0506562049E074340	\N	\N	\N	-97.93226261	38.0595098	\N	\N	\N	\N	\N	\N	\N	\N	KSHU00USA	swift	1	0	18	No data	18	14	14	14	16	16	16	14	1	1	1	100	integrity	\N
133	0101000020E61000008F77A27F5D2A57C0070400E8ACD03E40	\N	\N	\N	-92.6619567	30.81513834	\N	\N	\N	\N	\N	\N	\N	\N	LAOD00USA	swift	1	0	18	No data	18	12	12	12	16	16	16	12	1	1	1	100	integrity	\N
137	0101000020E6100000B92C4FB510C151C047F4BE33523F4540	\N	\N	\N	-71.01664479	42.49469611	\N	\N	\N	\N	\N	\N	\N	\N	MASG00USA	swift	1	0	20	2	18	16	16	16	16	14	16	10	1	1	1	100	integrity	\N
139	0101000020E6100000FD3F7717221B51C0CE456C4555454640	\N	\N	\N	-68.42395579	44.54166477	\N	\N	\N	\N	\N	\N	\N	\N	MEEW00USA	swift	1	0	20	2	18	16	16	16	16	14	16	10	1	1	1	100	integrity	\N
140	0101000020E61000007A7654907A1551C0A5F297923CAD4740	\N	\N	\N	-68.3356057	47.35341103	\N	\N	\N	\N	\N	\N	\N	\N	MEMW00USA	swift	1	0	20	2	18	16	16	16	20	16	20	12	1	1	1	100	integrity	\N
141	0101000020E61000007498714B128A51C080513871A8574640	\N	\N	\N	-70.15736662	44.68482795	\N	\N	\N	\N	\N	\N	\N	\N	MEPL00USA	swift	1	0	22	2	20	14	14	14	24	20	18	16	1	1	1	100	integrity	\N
142	0101000020E610000081629E74A6DB54C0A31E260AC2874640	\N	\N	\N	-83.43203464	45.06060912	\N	\N	\N	\N	\N	\N	\N	\N	MIAL00USA	swift	1	0	20	2	18	14	14	14	18	16	18	14	1	1	1	100	integrity	\N
144	0101000020E610000092AE997CF3CB54C021DC8DD3CA284540	\N	\N	\N	-83.18673625	42.31868977	\N	\N	\N	\N	\N	\N	\N	\N	MIDB00USA	swift	1	0	22	2	20	14	14	14	20	18	20	14	1	1	1	100	integrity	\N
148	0101000020E610000018A38536469055C03D15CB88E69D4540	\N	\N	\N	-86.25428546	43.23359785	\N	\N	\N	\N	\N	\N	\N	\N	MIMK00USA	swift	1	0	16	No data	16	14	14	14	16	14	16	12	1	1	1	100	integrity	\N
153	0101000020E6100000BD7559A7659556C0BB7FA80BE3DF4740	\N	\N	\N	-90.33432945	47.74911638	\N	\N	\N	\N	\N	\N	\N	\N	MNGM01USA	swift	1	0	18	No data	18	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
155	0101000020E6100000096B63EC04BD57C02CCEFF4864DE4640	\N	\N	\N	-94.9534255	45.73743546	\N	\N	\N	\N	\N	\N	\N	\N	MNSC00USA	swift	1	0	18	No data	18	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
160	0101000020E6100000952FE4E8DCA057C003B78BBCEE884240	\N	\N	\N	-94.51348326	37.06978566	\N	\N	\N	\N	\N	\N	\N	\N	MOJP00USA	swift	1	0	18	No data	18	12	12	12	20	16	16	14	1	1	1	100	integrity	\N
161	0101000020E6100000A9168D8C401E57C0B78DB3A76CDE4340	\N	\N	\N	-92.47268976	39.73769089	\N	\N	\N	\N	\N	\N	\N	\N	MOMC00USA	swift	1	0	18	No data	18	12	12	14	18	16	18	14	1	1	1	100	integrity	\N
163	0101000020E6100000F1C659436FB956C041A9AC5CDEB34040	\N	\N	\N	-90.89741596	33.40522345	\N	\N	\N	\N	\N	\N	\N	\N	MSLL00USA	swift	1	0	18	No data	18	12	12	12	15.8	16	15.8	14	1	1	1	100	integrity	\N
171	0101000020E61000006E85B01ACBA85AC03605CF10D0184840	\N	\N	\N	-106.6373965	48.19384966	\N	\N	\N	\N	\N	\N	\N	\N	MTGC02USA	swift	1	0	22	No data	22	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
172	0101000020E6100000FD3383F8C02D5AC06AF008B8318D4740	\N	\N	\N	-104.714903	47.1030798	\N	\N	\N	\N	\N	\N	\N	\N	MTGE00USA	swift	1	0	22	No data	22	14	14	14	18	16	16	14	1	1	1	100	integrity	\N
174	0101000020E610000015D742DA108A5CC07E04178E941F4740	\N	\N	\N	-114.1572786	46.24672104	\N	\N	\N	\N	\N	\N	\N	\N	MTHN00USA	swift	1	0	16	No data	16	12	12	12	16	16	16	14	1	1	1	100	integrity	\N
182	0101000020E61000004686C91225B853C08D9CE0F6DF124140	\N	\N	\N	-78.87726278	34.14745985	\N	\N	\N	\N	\N	\N	\N	\N	NCTC00USA	swift	1	0	20	2	18	14	14	14	19.4	18	16.2	12	1	1	1	100	integrity	\N
183	0101000020E6100000AD3AA394EDB658C07129BE0C0C0D4840	\N	\N	\N	-98.85825077	48.10193023	\N	\N	\N	\N	\N	\N	\N	\N	NDDL00USA	swift	1	0	20	No data	20	12	14	13.8	18	16	18	14	1	1	1	100	integrity	\N
184	0101000020E61000006D85D9993CAE58C0D75579E943724740	\N	\N	\N	-98.72244879	46.89269751	\N	\N	\N	\N	\N	\N	\N	\N	NDJT00USA	swift	1	0	20	No data	20	16	14	14.8	18	16	18	14	1	1	1	100	integrity	\N
185	0101000020E6100000A51BBC0A045359C0F330DDB9EA204840	\N	\N	\N	-101.2971217	48.25716327	\N	\N	\N	\N	\N	\N	\N	\N	NDLB00USA	swift	1	0	20	No data	20	14	14	14	18	16	18	14	1	1	1	100	integrity	\N
186	0101000020E61000002F88273FD24258C0FEC155D86BF34740	\N	\N	\N	-97.04408244	47.90172867	\N	\N	\N	\N	\N	\N	\N	\N	NDLS00USA	swift	1	0	20	No data	20	12	16	13.8	18	16	18	14	1	1	1	100	integrity	\N
187	0101000020E6100000F090BD39373959C046F9D55EBC694740	\N	\N	\N	-100.8939957	46.82606111	\N	\N	\N	\N	\N	\N	\N	\N	NDMN00USA	swift	1	0	20	No data	20	12	12	12	18	16	18	14	1	1	1	100	integrity	\N
191	0101000020E6100000326F9BCADE9558C005D05A973B764440	\N	\N	\N	-98.34172311	40.92369358	\N	\N	\N	\N	\N	\N	\N	\N	NEGI00USA	swift	1	0	20	No data	20	12	12	12	18	16	18	14	1	1	1	100	integrity	\N
192	0101000020E6100000AB9DBC233E5A58C0A1272BA739044540	\N	\N	\N	-97.4100427	42.03300943	\N	\N	\N	\N	\N	\N	\N	\N	NENF00USA	swift	1	0	18	No data	18	14	14	14	18	16	16	14	1	1	1	100	integrity	\N
200	0101000020E6100000FC6541727CF05AC04E705E5A5C224040	\N	\N	\N	-107.7575956	32.26844339	\N	\N	\N	\N	\N	\N	\N	\N	NMDE00USA	swift	1	0	18	No data	18	14	14	14	18	18	18	14	1	1	1	100	integrity	\N
204	0101000020E610000099A14CFE02A55AC019ABCDFF2BAA4140	\N	\N	\N	-106.5783077	35.32946775	\N	\N	\N	\N	\N	\N	\N	\N	NMRR00USA	swift	1	0	16	No data	16	10	10	10	18	18	18	14	1	1	1	100	integrity	\N
207	0101000020E6100000444DF4F9A8A05CC07A519A519CCE4240	\N	\N	\N	-114.5103135	37.61414547	\N	\N	\N	\N	\N	\N	\N	\N	NVCA00USA	swift	1	0	12	No data	12	12	12	12	18	16	16	14	1	1	1	100	integrity	\N
208	0101000020E61000008EC87729F5B65CC024F1138317A14340	\N	\N	\N	-114.8587135	39.25853003	\N	\N	\N	\N	\N	\N	\N	\N	NVEL00USA	swift	1	0	18	No data	18	12	12	12	18	16	16	14	1	1	1	100	integrity	\N
211	0101000020E61000009016670C73FF5CC0AE6DC4724F1A4240	\N	\N	\N	-115.991397	36.20554957	\N	\N	\N	\N	\N	\N	\N	\N	NVPP00USA	swift	1	0	14.4	No data	14.4	14.4	14.4	14.4	16.2	14.4	14.4	12.6	1	1	1	100	integrity	\N
212	0101000020E6100000F54718062CF25DC03D68B088E5C14340	\N	\N	\N	-119.783937	39.51481732	\N	\N	\N	\N	\N	\N	\N	\N	NVRO00USA	swift	1	0	16	No data	16	14	14	14	18	16	18	14	1	1	1	100	integrity	\N
214	0101000020E6100000C1B45EC2D74E5DC07CEF6FD0DE084340	\N	\N	\N	-117.2319189	38.06929975	\N	\N	\N	\N	\N	\N	\N	\N	NVTN00USA	swift	1	0	16	No data	16	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
223	0101000020E61000005F8ABCF6D68754C0C511D68C2D9D4440	\N	\N	\N	-82.12249535	41.22795258	\N	\N	\N	\N	\N	\N	\N	\N	OHLG00USA	swift	1	0	18	2	16	14	14	14	18	17.8	18	14	1	1	1	100	integrity	\N
225	0101000020E61000004B8735325BD558C063A063EEF7514140	\N	\N	\N	-99.33369117	34.64037876	\N	\N	\N	\N	\N	\N	\N	\N	OKAL00USA	swift	1	0	18	No data	18	14	14	14	18	18	18	14	1	1	1	100	integrity	\N
227	0101000020E6100000643F8BA5C85E59C00A50AE8449574240	\N	\N	\N	-101.4809965	36.6819311	\N	\N	\N	\N	\N	\N	\N	\N	OKGU00USA	swift	1	0	18	No data	18	12	12	12	16	17.4	16	14	1	1	1	100	integrity	\N
231	0101000020E6100000E583F9861DF75EC055999448C3174740	\N	\N	\N	-123.8611772	46.18564708	\N	\N	\N	\N	\N	\N	\N	\N	ORAS00USA	swift	1	0	14.4	No data	16	16.2	16.2	16.2	19.8	14.4	16.2	12.6	1	1	1	100	integrity	\N
234	0101000020E61000001F42018008545EC0EC653E94A6074640	\N	\N	\N	-121.3130188	44.05977109	\N	\N	\N	\N	\N	\N	\N	\N	ORBD00USA	swift	1	0	18	No data	18	16	16	16	20	16	18	14	1	1	1	100	integrity	\N
235	0101000020E61000001633C2DB83C35DC0CF914BD26BCB4540	\N	\N	\N	-119.054923	43.58922795	\N	\N	\N	\N	\N	\N	\N	\N	ORBR00USA	swift	1	0	18	No data	18	14	14	14	20	16	20	14	1	1	1	100	integrity	\N
236	0101000020E6100000F60CE19865C85EC0DB03E76B1A064640	\N	\N	\N	-123.131201	44.04768132	\N	\N	\N	\N	\N	\N	\N	\N	OREU00USA	swift	1	0	18	No data	18	18	18	18	20	16	20	14	1	1	1	100	integrity	\N
238	0101000020E6100000DEE522BE13D65EC05CDE452D879A4540	\N	\N	\N	-123.344955	43.20725027	\N	\N	\N	\N	\N	\N	\N	\N	ORRB00USA	swift	1	0	14	No data	14	13.6	13.6	13.6	16	16	16	14	1	1	1	100	integrity	\N
243	0101000020E610000007F289C8720554C0D5747FED47104540	\N	\N	\N	-80.08513082	42.12719506	\N	\N	\N	\N	\N	\N	\N	\N	PAER00USA	swift	1	0	20	2	18	16	16	16	18	16	16	14	1	1	1	100	integrity	\N
245	0101000020E610000029FA6CB2403753C06783E907371D4440	\N	\N	\N	-76.86332379	40.22824191	\N	\N	\N	\N	\N	\N	\N	\N	PANC00USA	swift	1	0	20	2	18	18	18	18	18	16	18	12	1	1	1	100	integrity	\N
246	0101000020E61000000737A5FE72F053C02B3817DA144D4440	\N	\N	\N	-79.75701872	40.60219885	\N	\N	\N	\N	\N	\N	\N	\N	PATM00USA	swift	1	0	20	2	18	14	14	14	16	16	16	12	1	1	1	100	integrity	\N
249	0101000020E6100000A9DFE066CC1B59C0615E15E270C44640	\N	\N	\N	-100.4343507	45.53469492	\N	\N	\N	\N	\N	\N	\N	\N	SDMG00USA	swift	1	0	20	No data	20	14	15.2	14	18	16	18	14	1	1	1	100	integrity	\N
251	0101000020E6100000D94933CCBF0359C0F03F099E88F44540	\N	\N	\N	-100.0585814	43.91041923	\N	\N	\N	\N	\N	\N	\N	\N	SDPR00USA	swift	1	0	No data	No data	No data	No data	No data	No data	No data	No data	No data	No data	1	1	1	100	integrity	\N
252	0101000020E610000082531F48DECE59C0204F3F666F0A4640	\N	\N	\N	-103.232317	44.08152464	\N	\N	\N	\N	\N	\N	\N	\N	SDRC00USA	swift	1	0	16	No data	16	12	12	12	16	16	16	14	1	1	1	100	integrity	\N
255	0101000020E6100000EC7D15A650FE54C00F8EA383BFE54140	\N	\N	\N	-83.97367241	35.79490705	\N	\N	\N	\N	\N	\N	\N	\N	TNAC00USA	swift	1	0	18	No data	18	12	14	14	18	16	14	12	1	1	1	100	integrity	\N
259	0101000020E61000001E2796A5677759C0C73D654EFA9A4140	\N	\N	\N	-101.8657011	35.21076374	\N	\N	\N	\N	\N	\N	\N	\N	TXAM00USA	swift	1	0	18	No data	18	12	12	12	18	18	18	14	1	1	1	100	integrity	\N
266	0101000020E6100000686BF1E7A3B257C0A3495AD8704C3D40	\N	\N	\N	-94.79125403	29.29859688	\N	\N	\N	\N	\N	\N	\N	\N	TXGV00USA	swift	1	0	18	No data	18	14	14	14	16	16.8	16	14	1	1	1	100	integrity	\N
267	0101000020E61000004C5047F0546F58C0FB3B80EAC41E3F40	\N	\N	\N	-97.73955924	31.1201922	\N	\N	\N	\N	\N	\N	\N	\N	TXKL00USA	swift	1	0	18	No data	18	12	12	12	16	16	16	12	1	1	1	100	integrity	\N
269	0101000020E610000062AEFB7DB5005AC0D46D3FCF554F3E40	\N	\N	\N	-104.0110774	30.3099031	\N	\N	\N	\N	\N	\N	\N	\N	TXMF00USA	swift	1	0	18	No data	18	14	14	14	18	18	18	14	1	1	1	100	integrity	\N
270	0101000020E6100000E73DC6C3D8A957C06958C665609A3F40	\N	\N	\N	-94.65385527	31.60303341	\N	\N	\N	\N	\N	\N	\N	\N	TXNC00USA	swift	1	0	16	No data	16	12	12	12	16	15.8	16	12	1	1	1	100	integrity	\N
224	0101000020E6100000413F1904120355C0BAC1CC4E71824440	\N	\N	\N	-84.04797461	41.01908288	\N	\N	\N	\N	\N	\N	\N	\N	OHOT00USA	swift	1	0	14	2	\N	14	14	14	20	\N	18	14	1	1	1	100	single	\N
271	0101000020E6100000AA3D36139D9759C09EC009BFB3D83F40	\N	\N	\N	-102.3689621	31.84649271	\N	\N	\N	\N	\N	\N	\N	\N	TXOD00USA	swift	1	0	18	No data	18	14	14	14	18	18	18	14	1	1	1	100	integrity	\N
272	0101000020E610000043C89A0D091A58C0343B625F78723C40	\N	\N	\N	-96.40680256	28.44714924	\N	\N	\N	\N	\N	\N	\N	\N	TXPO00USA	swift	1	0	16	No data	16	12	12	12	16	16	16	12	1	1	1	100	integrity	\N
273	0101000020E6100000319D7343556858C05694B7C8E2213A40	\N	\N	\N	-97.63020407	26.1323667	\N	\N	\N	\N	\N	\N	\N	\N	TXSB00USA	swift	1	0	18	No data	18	12	12	12	16	16	16	12	1	1	1	100	integrity	\N
282	0101000020E6100000A84F17CE5A5154C0514900AB61A04240	\N	\N	\N	-81.2711673	37.25298059	\N	\N	\N	\N	\N	\N	\N	\N	VABF00USA	swift	1	0	20	2	18	14	14	14	16	14	16	12	1	1	1	100	integrity	\N
283	0101000020E61000009A6DD9E7121A53C0AD604470966E4240	\N	\N	\N	-76.40740391	36.86396602	\N	\N	\N	\N	\N	\N	\N	\N	VACP00USA	swift	1	0	20	2	18	14	14	14	18	16	18	12	1	1	1	100	integrity	\N
286	0101000020E6100000FAB18B9A963E52C021EB67B985CD4540	\N	\N	\N	-72.97794212	43.60564344	\N	\N	\N	\N	\N	\N	\N	\N	VTRU00USA	swift	1	0	20	2	18	16	16	16	20	18	20	14	1	1	1	100	integrity	\N
289	0101000020E6100000DDEEE53E39AF5DC0D440B98EED524840	\N	\N	\N	-118.737869	48.64787468	\N	\N	\N	\N	\N	\N	\N	\N	WARP00USA	swift	1	0	18	No data	18	14	14	14	18	16	16.2	14	1	1	1	100	integrity	\N
292	0101000020E6100000558F8F71A0205EC02BB79B7DF14C4740	\N	\N	\N	-120.5097927	46.60111971	\N	\N	\N	\N	\N	\N	\N	\N	WAYA00USA	swift	1	0	18	No data	18	16	16	16	19.6	16	17.6	14	1	1	1	100	integrity	\N
297	0101000020E61000008CCBA77D29D056C04E93DFC3A1E94540	\N	\N	\N	-91.2525324	43.82524918	\N	\N	\N	\N	\N	\N	\N	\N	WILC00USA	swift	1	0	18	No data	18	14	14	14	17	16	16	14	1	1	1	100	integrity	\N
298	0101000020E61000003928A3C2FF6B56C02CD67091FB964640	\N	\N	\N	-89.68748537	45.17955225	\N	\N	\N	\N	\N	\N	\N	\N	WIMR03USA	swift	1	0	18	No data	18	16	16	16	18	16	18	14	1	1	1	100	integrity	\N
300	0101000020E61000001B9330998BFF55C0558650299F894540	\N	\N	\N	-87.99289541	43.07516972	\N	\N	\N	\N	\N	\N	\N	\N	WISS00USA	swift	1	0	18	No data	18	14	14	14	16	14	16	14	1	1	1	100	integrity	\N
305	0101000020E6100000CE9A690C044D5BC09A5864645ECC4440	\N	\N	\N	-109.2033721	41.59663062	\N	\N	\N	\N	\N	\N	\N	\N	WYRS00USA	swift	1	0	14	No data	14	12	12	12	16	16	16	14	1	1	1	100	integrity	\N
306	0101000020E6100000DB6D179A6BFD5AC0F5F9A4EA09024640	\N	\N	\N	-107.9596925	44.01592763	\N	\N	\N	\N	\N	\N	\N	\N	WYWL00USA	swift	1	0	20	No data	20	12	12	12	16	16	16	14	1	1	1	100	integrity	\N
274	0101000020E61000007FEFFCC3120A58C0970B6C00FCC73D40	\N	\N	\N	-96.15739536	29.78118899	\N	\N	\N	\N	\N	\N	\N	\N	TXSL00USA	swift	1	0	16	No data	16	12	12	12	17.2	16	15.8	14	1	1	1	100	single	\N
275	0101000020E61000009BB77F9F104B58C073BE7551366E3D40	\N	\N	\N	-97.17288959	29.43051633	\N	\N	\N	\N	\N	\N	\N	\N	TXSN00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	16	14	1	1	1	100	single	\N
276	0101000020E6100000FC64D69C4D2959C0D7F996BD95923E40	\N	\N	\N	-100.6453621	30.57259736	\N	\N	\N	\N	\N	\N	\N	\N	TXSR00USA	swift	1	0	12	No data	\N	12	12	12	16	\N	16	12	1	1	1	100	single	\N
277	0101000020E61000001E90DF362E1A59C07415A47C353C4040	\N	\N	\N	-100.4090707	32.47038229	\N	\N	\N	\N	\N	\N	\N	\N	TXSW00USA	swift	1	0	12	No data	\N	12	12	12	18	\N	18	14	1	1	1	100	single	\N
278	0101000020E61000006E8ECE5463F45BC010C8EBE2B2934340	\N	\N	\N	-111.8185627	39.15389668	\N	\N	\N	\N	\N	\N	\N	\N	UTGU00USA	swift	1	0	10	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
279	0101000020E610000066AABB0DC5BD5BC0A9D1B37212AA4340	\N	\N	\N	-110.9651522	39.32868799	\N	\N	\N	\N	\N	\N	\N	\N	UTHU00USA	swift	1	0	10	No data	\N	12	12	12	16	\N	16	14	1	1	1	100	single	\N
280	0101000020E6100000BC0FF6DCF8555BC0AD314BAF8BEF4240	\N	\N	\N	-109.3433144	37.87145034	\N	\N	\N	\N	\N	\N	\N	\N	UTML00USA	swift	1	0	16	No data	16	12	12	12	16	16	16	14	1	1	1	100	single	\N
281	0101000020E6100000BF30F4E3CA7E54C07201A23FB85A4240	\N	\N	\N	-81.98113345	36.70874782	\N	\N	\N	\N	\N	\N	\N	\N	VAAB00USA	swift	1	0	14	2	\N	14	14	14	20	\N	20	12	1	1	1	100	single	\N
284	0101000020E6100000049A7C71B15E53C0A6E7A3ADC6C64240	\N	\N	\N	-77.47958028	37.55293818	\N	\N	\N	\N	\N	\N	\N	\N	VARM00USA	swift	1	0	14	2	\N	16	16	16	18	\N	18	12	1	1	1	100	single	\N
285	0101000020E61000001E6EC9A257F953C0BDFD985ADFA34240	\N	\N	\N	-79.89597387	37.28025372	\N	\N	\N	\N	\N	\N	\N	\N	VAVN00USA	swift	1	0	No data	No data	No data	No data	No data	No data	No data	\N	No data	No data	1	1	1	100	single	\N
287	0101000020E6100000EE7C3F355E9E5EC01C1C57E98F604840	\N	\N	\N	-122.4745	48.75439183	\N	\N	\N	\N	\N	\N	\N	\N	WALD00USA	swift	1	0	18	No data	18	18	18	18	19.2	16	17.8	14	1	1	1	100	single	\N
288	0101000020E610000092FE03511C525DC038F28280E3D74740	\N	\N	\N	-117.2829783	47.68663031	\N	\N	\N	\N	\N	\N	\N	\N	WAMW00USA	swift	1	0	10	No data	\N	14	14	14	16	\N	16	14	1	1	1	100	single	\N
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: EU_stations_v2_id_seq; Type: SEQUENCE SET; Schema: swift; Owner: dj
--

SELECT pg_catalog.setval('swift."EU_stations_v2_id_seq"', 1648, true);


--
-- Name: CONUS_stations_v2 CONUS_stations_v2_pkey; Type: CONSTRAINT; Schema: backup; Owner: dj
--

ALTER TABLE ONLY backup."CONUS_stations_v2"
    ADD CONSTRAINT "CONUS_stations_v2_pkey" PRIMARY KEY (id);


--
-- Name: EU_stations_v2 EU_stations_v2_pkey; Type: CONSTRAINT; Schema: backup; Owner: dj
--

ALTER TABLE ONLY backup."EU_stations_v2"
    ADD CONSTRAINT "EU_stations_v2_pkey" PRIMARY KEY (id_0);


--
-- Name: JPN_stations_v2 JPN_stations_v2_pkey; Type: CONSTRAINT; Schema: backup; Owner: dj
--

ALTER TABLE ONLY backup."JPN_stations_v2"
    ADD CONSTRAINT "JPN_stations_v2_pkey" PRIMARY KEY (id_0);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: geo_api_ap_station geo_api_ap_station_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.geo_api_ap_station
    ADD CONSTRAINT geo_api_ap_station_pkey PRIMARY KEY (id);


--
-- Name: geo_api_eu_station geo_api_eu_station_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.geo_api_eu_station
    ADD CONSTRAINT geo_api_eu_station_pkey PRIMARY KEY (id);


--
-- Name: geo_api_station geo_api_station_pkey; Type: CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.geo_api_station
    ADD CONSTRAINT geo_api_station_pkey PRIMARY KEY (id);


--
-- Name: CONUS_stations_v2 CONUS_stations_v2_pkey; Type: CONSTRAINT; Schema: swift; Owner: dj
--

ALTER TABLE ONLY swift."CONUS_stations_v2"
    ADD CONSTRAINT "CONUS_stations_v2_pkey" PRIMARY KEY (id);


--
-- Name: EU_stations_v2 EU_stations_v2_pkey; Type: CONSTRAINT; Schema: swift; Owner: dj
--

ALTER TABLE ONLY swift."EU_stations_v2"
    ADD CONSTRAINT "EU_stations_v2_pkey" PRIMARY KEY (id);


--
-- Name: JPN_stations_v2 JPN_stations_v2_pkey; Type: CONSTRAINT; Schema: swift; Owner: dj
--

ALTER TABLE ONLY swift."JPN_stations_v2"
    ADD CONSTRAINT "JPN_stations_v2_pkey" PRIMARY KEY (id);


--
-- Name: NA_stations_v2 NA_stations_v2_pkey; Type: CONSTRAINT; Schema: swift; Owner: dj
--

ALTER TABLE ONLY swift."NA_stations_v2"
    ADD CONSTRAINT "NA_stations_v2_pkey" PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: geo_api_ap_station_geom_c0a083ab_id; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX geo_api_ap_station_geom_c0a083ab_id ON public.geo_api_ap_station USING gist (geom);


--
-- Name: geo_api_ap_station_id_53acaf56_like; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX geo_api_ap_station_id_53acaf56_like ON public.geo_api_ap_station USING btree (id varchar_pattern_ops);


--
-- Name: geo_api_eu_station_geom_ac99a876_id; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX geo_api_eu_station_geom_ac99a876_id ON public.geo_api_eu_station USING gist (geom);


--
-- Name: geo_api_eu_station_id_c0fd2f91_like; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX geo_api_eu_station_id_c0fd2f91_like ON public.geo_api_eu_station USING btree (id varchar_pattern_ops);


--
-- Name: geo_api_station_geom_b4b78e80_id; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX geo_api_station_geom_b4b78e80_id ON public.geo_api_station USING gist (geom);


--
-- Name: geo_api_station_id_87aa45b5_like; Type: INDEX; Schema: public; Owner: dj
--

CREATE INDEX geo_api_station_id_87aa45b5_like ON public.geo_api_station USING btree (id varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

