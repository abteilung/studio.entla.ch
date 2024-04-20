--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8 (Debian 13.8-1.pgdg110+1)
-- Dumped by pg_dump version 13.8 (Debian 13.8-1.pgdg110+1)

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
-- Name: tiger; Type: SCHEMA; Schema: -; Owner: directus
--

CREATE SCHEMA tiger;


ALTER SCHEMA tiger OWNER TO directus;

--
-- Name: tiger_data; Type: SCHEMA; Schema: -; Owner: directus
--

CREATE SCHEMA tiger_data;


ALTER SCHEMA tiger_data OWNER TO directus;

--
-- Name: topology; Type: SCHEMA; Schema: -; Owner: directus
--

CREATE SCHEMA topology;


ALTER SCHEMA topology OWNER TO directus;

--
-- Name: SCHEMA topology; Type: COMMENT; Schema: -; Owner: directus
--

COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- Name: postgis_tiger_geocoder; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;


--
-- Name: EXTENSION postgis_tiger_geocoder; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;


--
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Application; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Application" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'published'::character varying,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."Application" OWNER TO directus;

--
-- Name: Application_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Application_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Application_id_seq" OWNER TO directus;

--
-- Name: Application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Application_id_seq" OWNED BY public."Application".id;


--
-- Name: ClimateClass; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."ClimateClass" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'published'::character varying,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying,
    cc integer,
    clicla integer
);


ALTER TABLE public."ClimateClass" OWNER TO directus;

--
-- Name: ClimateClass_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."ClimateClass_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ClimateClass_id_seq" OWNER TO directus;

--
-- Name: ClimateClass_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."ClimateClass_id_seq" OWNED BY public."ClimateClass".id;


--
-- Name: Decks; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Decks" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    "Materialien" json
);


ALTER TABLE public."Decks" OWNER TO directus;

--
-- Name: Decks_Decks; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Decks_Decks" (
    id integer NOT NULL,
    "Decks_id" integer,
    "related_Decks_id" integer
);


ALTER TABLE public."Decks_Decks" OWNER TO directus;

--
-- Name: Decks_Decks_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Decks_Decks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Decks_Decks_id_seq" OWNER TO directus;

--
-- Name: Decks_Decks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Decks_Decks_id_seq" OWNED BY public."Decks_Decks".id;


--
-- Name: Decks_asdfghj; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Decks_asdfghj" (
    id integer NOT NULL,
    "Decks_id" integer,
    item character varying(255) DEFAULT NULL::character varying,
    collection character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."Decks_asdfghj" OWNER TO directus;

--
-- Name: Decks_asdfghj_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Decks_asdfghj_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Decks_asdfghj_id_seq" OWNER TO directus;

--
-- Name: Decks_asdfghj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Decks_asdfghj_id_seq" OWNED BY public."Decks_asdfghj".id;


--
-- Name: Decks_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Decks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Decks_id_seq" OWNER TO directus;

--
-- Name: Decks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Decks_id_seq" OWNED BY public."Decks".id;


--
-- Name: Decks_many; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Decks_many" (
    id integer NOT NULL,
    "Decks_id" integer,
    item character varying(255) DEFAULT NULL::character varying,
    collection character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."Decks_many" OWNER TO directus;

--
-- Name: Decks_many_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Decks_many_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Decks_many_id_seq" OWNER TO directus;

--
-- Name: Decks_many_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Decks_many_id_seq" OWNED BY public."Decks_many".id;


--
-- Name: DoorCategory; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."DoorCategory" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying,
    wingdoors boolean DEFAULT false,
    "doorCasings" boolean
);


ALTER TABLE public."DoorCategory" OWNER TO directus;

--
-- Name: DoorCategory_Product; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."DoorCategory_Product" (
    id integer NOT NULL,
    "DoorCategory_id" integer,
    "Product_id" integer
);


ALTER TABLE public."DoorCategory_Product" OWNER TO directus;

--
-- Name: DoorCategory_Product_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."DoorCategory_Product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DoorCategory_Product_id_seq" OWNER TO directus;

--
-- Name: DoorCategory_Product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."DoorCategory_Product_id_seq" OWNED BY public."DoorCategory_Product".id;


--
-- Name: DoorCategory_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."DoorCategory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DoorCategory_id_seq" OWNER TO directus;

--
-- Name: DoorCategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."DoorCategory_id_seq" OWNED BY public."DoorCategory".id;


--
-- Name: DoorType; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."DoorType" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'published'::character varying,
    sort integer,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying,
    application integer,
    image uuid,
    prices_surfaces character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."DoorType" OWNER TO directus;

--
-- Name: DoorType_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."DoorType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DoorType_id_seq" OWNER TO directus;

--
-- Name: DoorType_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."DoorType_id_seq" OWNED BY public."DoorType".id;


--
-- Name: HeatProtection; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."HeatProtection" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'published'::character varying,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."HeatProtection" OWNER TO directus;

--
-- Name: HeatProtection_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."HeatProtection_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."HeatProtection_id_seq" OWNER TO directus;

--
-- Name: HeatProtection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."HeatProtection_id_seq" OWNED BY public."HeatProtection".id;


--
-- Name: Modifications; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Modifications" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'published'::character varying,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying,
    category integer
);


ALTER TABLE public."Modifications" OWNER TO directus;

--
-- Name: Modifications_cat_surface; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Modifications_cat_surface" (
    id integer NOT NULL,
    "Modifications_id" integer,
    cat_surface_id integer
);


ALTER TABLE public."Modifications_cat_surface" OWNER TO directus;

--
-- Name: Modifications_cat_surface_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Modifications_cat_surface_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Modifications_cat_surface_id_seq" OWNER TO directus;

--
-- Name: Modifications_cat_surface_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Modifications_cat_surface_id_seq" OWNED BY public."Modifications_cat_surface".id;


--
-- Name: Modifications_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Modifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Modifications_id_seq" OWNER TO directus;

--
-- Name: Modifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Modifications_id_seq" OWNED BY public."Modifications".id;


--
-- Name: Product; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Product" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'published'::character varying,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    "DoorType" integer,
    application integer,
    thickness real,
    "SoundProofing" integer,
    "HeatProtection" integer,
    weight real,
    rc2 boolean DEFAULT false,
    rc3 boolean DEFAULT false,
    vkf boolean DEFAULT false,
    "leadThickness" real,
    prices character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."Product" OWNER TO directus;

--
-- Name: Product_ClimateClass; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Product_ClimateClass" (
    id integer NOT NULL,
    "Product_id" integer,
    "ClimateClass_id" integer
);


ALTER TABLE public."Product_ClimateClass" OWNER TO directus;

--
-- Name: Product_ClimateClass_1; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Product_ClimateClass_1" (
    id integer NOT NULL,
    "Product_id" integer,
    "ClimateClass_id" integer
);


ALTER TABLE public."Product_ClimateClass_1" OWNER TO directus;

--
-- Name: Product_ClimateClass_1_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Product_ClimateClass_1_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_ClimateClass_1_id_seq" OWNER TO directus;

--
-- Name: Product_ClimateClass_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Product_ClimateClass_1_id_seq" OWNED BY public."Product_ClimateClass_1".id;


--
-- Name: Product_ClimateClass_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Product_ClimateClass_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_ClimateClass_id_seq" OWNER TO directus;

--
-- Name: Product_ClimateClass_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Product_ClimateClass_id_seq" OWNED BY public."Product_ClimateClass".id;


--
-- Name: Product_HeatProtection; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Product_HeatProtection" (
    id integer NOT NULL,
    "Product_id" integer,
    "HeatProtection_id" integer
);


ALTER TABLE public."Product_HeatProtection" OWNER TO directus;

--
-- Name: Product_HeatProtection_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Product_HeatProtection_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_HeatProtection_id_seq" OWNER TO directus;

--
-- Name: Product_HeatProtection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Product_HeatProtection_id_seq" OWNED BY public."Product_HeatProtection".id;


--
-- Name: Product_SoundProofing; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Product_SoundProofing" (
    id integer NOT NULL,
    "Product_id" integer,
    "SoundProofing_id" integer
);


ALTER TABLE public."Product_SoundProofing" OWNER TO directus;

--
-- Name: Product_SoundProofing_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Product_SoundProofing_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_SoundProofing_id_seq" OWNER TO directus;

--
-- Name: Product_SoundProofing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Product_SoundProofing_id_seq" OWNED BY public."Product_SoundProofing".id;


--
-- Name: Product_Surface; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Product_Surface" (
    id integer NOT NULL,
    "Product_id" integer,
    "Surface_id" integer
);


ALTER TABLE public."Product_Surface" OWNER TO directus;

--
-- Name: Product_Surface_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Product_Surface_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_Surface_id_seq" OWNER TO directus;

--
-- Name: Product_Surface_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Product_Surface_id_seq" OWNED BY public."Product_Surface".id;


--
-- Name: Product_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Product_id_seq" OWNER TO directus;

--
-- Name: Product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Product_id_seq" OWNED BY public."Product".id;


--
-- Name: SoundProofing; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."SoundProofing" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'published'::character varying,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying,
    value character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."SoundProofing" OWNER TO directus;

--
-- Name: SoundProofing_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."SoundProofing_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SoundProofing_id_seq" OWNER TO directus;

--
-- Name: SoundProofing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."SoundProofing_id_seq" OWNED BY public."SoundProofing".id;


--
-- Name: Surface; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public."Surface" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    cat_surface integer,
    items json
);


ALTER TABLE public."Surface" OWNER TO directus;

--
-- Name: Surface_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public."Surface_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Surface_id_seq" OWNER TO directus;

--
-- Name: Surface_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public."Surface_id_seq" OWNED BY public."Surface".id;


--
-- Name: cat_modifications; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.cat_modifications (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.cat_modifications OWNER TO directus;

--
-- Name: cat_modifications_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.cat_modifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cat_modifications_id_seq OWNER TO directus;

--
-- Name: cat_modifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.cat_modifications_id_seq OWNED BY public.cat_modifications.id;


--
-- Name: cat_surface; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.cat_surface (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.cat_surface OWNER TO directus;

--
-- Name: cat_surface_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.cat_surface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cat_surface_id_seq OWNER TO directus;

--
-- Name: cat_surface_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.cat_surface_id_seq OWNED BY public.cat_surface.id;


--
-- Name: directus_activity; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text,
    origin character varying(255)
);


ALTER TABLE public.directus_activity OWNER TO directus;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_activity_id_seq OWNER TO directus;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;


--
-- Name: directus_collections; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(30),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_collections OWNER TO directus;

--
-- Name: directus_dashboards; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);


ALTER TABLE public.directus_dashboards OWNER TO directus;

--
-- Name: directus_extensions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);


ALTER TABLE public.directus_extensions OWNER TO directus;

--
-- Name: directus_fields; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);


ALTER TABLE public.directus_fields OWNER TO directus;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_fields_id_seq OWNER TO directus;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;


--
-- Name: directus_files; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    uploaded_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer
);


ALTER TABLE public.directus_files OWNER TO directus;

--
-- Name: directus_flows; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_flows OWNER TO directus;

--
-- Name: directus_folders; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);


ALTER TABLE public.directus_folders OWNER TO directus;

--
-- Name: directus_migrations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.directus_migrations OWNER TO directus;

--
-- Name: directus_notifications; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);


ALTER TABLE public.directus_notifications OWNER TO directus;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_notifications_id_seq OWNER TO directus;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;


--
-- Name: directus_operations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_operations OWNER TO directus;

--
-- Name: directus_panels; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(30) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_panels OWNER TO directus;

--
-- Name: directus_permissions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    role uuid,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text
);


ALTER TABLE public.directus_permissions OWNER TO directus;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_permissions_id_seq OWNER TO directus;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;


--
-- Name: directus_presets; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(30) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);


ALTER TABLE public.directus_presets OWNER TO directus;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_presets_id_seq OWNER TO directus;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;


--
-- Name: directus_relations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);


ALTER TABLE public.directus_relations OWNER TO directus;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_relations_id_seq OWNER TO directus;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;


--
-- Name: directus_revisions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);


ALTER TABLE public.directus_revisions OWNER TO directus;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_revisions_id_seq OWNER TO directus;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;


--
-- Name: directus_roles; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(30) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT true NOT NULL
);


ALTER TABLE public.directus_roles OWNER TO directus;

--
-- Name: directus_sessions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent character varying(255),
    share uuid,
    origin character varying(255)
);


ALTER TABLE public.directus_sessions OWNER TO directus;

--
-- Name: directus_settings; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    report_feature_url character varying(255) DEFAULT NULL::character varying,
    report_bug_url character varying(255) DEFAULT NULL::character varying,
    report_error_url character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.directus_settings OWNER TO directus;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_settings_id_seq OWNER TO directus;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;


--
-- Name: directus_shares; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);


ALTER TABLE public.directus_shares OWNER TO directus;

--
-- Name: directus_translations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.directus_translations OWNER TO directus;

--
-- Name: directus_users; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json,
    entla_user integer
);


ALTER TABLE public.directus_users OWNER TO directus;

--
-- Name: directus_versions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);


ALTER TABLE public.directus_versions OWNER TO directus;

--
-- Name: directus_webhooks; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json,
    was_active_before_deprecation boolean DEFAULT false NOT NULL,
    migrated_flow character varying(36) DEFAULT NULL::character varying
);


ALTER TABLE public.directus_webhooks OWNER TO directus;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directus_webhooks_id_seq OWNER TO directus;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;


--
-- Name: homepage; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.homepage (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    title character varying(255) DEFAULT NULL::character varying,
    seo character varying(36) DEFAULT NULL::character varying,
    "subTitle" character varying(255)
);


ALTER TABLE public.homepage OWNER TO directus;

--
-- Name: homepage_files; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.homepage_files (
    id integer NOT NULL,
    homepage_id integer,
    directus_files_id uuid
);


ALTER TABLE public.homepage_files OWNER TO directus;

--
-- Name: homepage_files_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.homepage_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepage_files_id_seq OWNER TO directus;

--
-- Name: homepage_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.homepage_files_id_seq OWNED BY public.homepage_files.id;


--
-- Name: homepage_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.homepage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepage_id_seq OWNER TO directus;

--
-- Name: homepage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.homepage_id_seq OWNED BY public.homepage.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    title character varying(255) DEFAULT NULL::character varying,
    body text,
    contact integer
);


ALTER TABLE public.jobs OWNER TO directus;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO directus;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    title character varying(255) DEFAULT NULL::character varying,
    slug character varying(255) DEFAULT NULL::character varying,
    image uuid,
    body text,
    seo character varying(36) DEFAULT NULL::character varying,
    "subTitle" character varying(255)
);


ALTER TABLE public.pages OWNER TO directus;

--
-- Name: pages_files; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.pages_files (
    id integer NOT NULL,
    pages_id integer,
    directus_files_id character varying(36) DEFAULT NULL::character varying
);


ALTER TABLE public.pages_files OWNER TO directus;

--
-- Name: pages_files_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.pages_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_files_id_seq OWNER TO directus;

--
-- Name: pages_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.pages_files_id_seq OWNED BY public.pages_files.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO directus;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    title character varying(255) DEFAULT NULL::character varying,
    slug character varying(255) DEFAULT NULL::character varying,
    image uuid,
    body text,
    seo character varying(36) DEFAULT NULL::character varying
);


ALTER TABLE public.posts OWNER TO directus;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO directus;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: quotes; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.quotes (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    title character varying(255) DEFAULT NULL::character varying,
    reference character varying(255) DEFAULT NULL::character varying,
    quote_data character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.quotes OWNER TO directus;

--
-- Name: quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotes_id_seq OWNER TO directus;

--
-- Name: quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.quotes_id_seq OWNED BY public.quotes.id;


--
-- Name: redirects; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.redirects (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    url_old character varying(255) DEFAULT NULL::character varying,
    url_new character varying(255) DEFAULT NULL::character varying,
    response_code character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.redirects OWNER TO directus;

--
-- Name: seo; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.seo (
    id uuid NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    meta_description text,
    cononical_url character varying(255) DEFAULT NULL::character varying,
    no_follow boolean DEFAULT false,
    no_index boolean DEFAULT false,
    sitemap_change_frequency character varying(255) DEFAULT NULL::character varying,
    sitemap_priority real DEFAULT '0.5'::real,
    og_image uuid
);


ALTER TABLE public.seo OWNER TO directus;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.settings (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created character varying(36) DEFAULT NULL::character varying,
    date_created timestamp with time zone,
    user_updated character varying(36) DEFAULT NULL::character varying,
    date_updated timestamp with time zone,
    url character varying(255) DEFAULT NULL::character varying,
    og_image uuid,
    lageplan public.geometry(Point,4326) DEFAULT NULL::public.geometry
);


ALTER TABLE public.settings OWNER TO directus;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO directus;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: team; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.team (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    first_name character varying(255) DEFAULT NULL::character varying,
    last_name character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    title character varying(255) DEFAULT NULL::character varying,
    avatar uuid
);


ALTER TABLE public.team OWNER TO directus;

--
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id_seq OWNER TO directus;

--
-- Name: team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;


--
-- Name: Application id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Application" ALTER COLUMN id SET DEFAULT nextval('public."Application_id_seq"'::regclass);


--
-- Name: ClimateClass id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."ClimateClass" ALTER COLUMN id SET DEFAULT nextval('public."ClimateClass_id_seq"'::regclass);


--
-- Name: Decks id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks" ALTER COLUMN id SET DEFAULT nextval('public."Decks_id_seq"'::regclass);


--
-- Name: Decks_Decks id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_Decks" ALTER COLUMN id SET DEFAULT nextval('public."Decks_Decks_id_seq"'::regclass);


--
-- Name: Decks_asdfghj id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_asdfghj" ALTER COLUMN id SET DEFAULT nextval('public."Decks_asdfghj_id_seq"'::regclass);


--
-- Name: Decks_many id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_many" ALTER COLUMN id SET DEFAULT nextval('public."Decks_many_id_seq"'::regclass);


--
-- Name: DoorCategory id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorCategory" ALTER COLUMN id SET DEFAULT nextval('public."DoorCategory_id_seq"'::regclass);


--
-- Name: DoorCategory_Product id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorCategory_Product" ALTER COLUMN id SET DEFAULT nextval('public."DoorCategory_Product_id_seq"'::regclass);


--
-- Name: DoorType id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorType" ALTER COLUMN id SET DEFAULT nextval('public."DoorType_id_seq"'::regclass);


--
-- Name: HeatProtection id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."HeatProtection" ALTER COLUMN id SET DEFAULT nextval('public."HeatProtection_id_seq"'::regclass);


--
-- Name: Modifications id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Modifications" ALTER COLUMN id SET DEFAULT nextval('public."Modifications_id_seq"'::regclass);


--
-- Name: Modifications_cat_surface id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Modifications_cat_surface" ALTER COLUMN id SET DEFAULT nextval('public."Modifications_cat_surface_id_seq"'::regclass);


--
-- Name: Product id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public."Product_id_seq"'::regclass);


--
-- Name: Product_ClimateClass id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass" ALTER COLUMN id SET DEFAULT nextval('public."Product_ClimateClass_id_seq"'::regclass);


--
-- Name: Product_ClimateClass_1 id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass_1" ALTER COLUMN id SET DEFAULT nextval('public."Product_ClimateClass_1_id_seq"'::regclass);


--
-- Name: Product_HeatProtection id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_HeatProtection" ALTER COLUMN id SET DEFAULT nextval('public."Product_HeatProtection_id_seq"'::regclass);


--
-- Name: Product_SoundProofing id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_SoundProofing" ALTER COLUMN id SET DEFAULT nextval('public."Product_SoundProofing_id_seq"'::regclass);


--
-- Name: Product_Surface id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_Surface" ALTER COLUMN id SET DEFAULT nextval('public."Product_Surface_id_seq"'::regclass);


--
-- Name: SoundProofing id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."SoundProofing" ALTER COLUMN id SET DEFAULT nextval('public."SoundProofing_id_seq"'::regclass);


--
-- Name: Surface id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Surface" ALTER COLUMN id SET DEFAULT nextval('public."Surface_id_seq"'::regclass);


--
-- Name: cat_modifications id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.cat_modifications ALTER COLUMN id SET DEFAULT nextval('public.cat_modifications_id_seq'::regclass);


--
-- Name: cat_surface id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.cat_surface ALTER COLUMN id SET DEFAULT nextval('public.cat_surface_id_seq'::regclass);


--
-- Name: directus_activity id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);


--
-- Name: directus_fields id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);


--
-- Name: directus_notifications id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);


--
-- Name: directus_permissions id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);


--
-- Name: directus_presets id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);


--
-- Name: directus_relations id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);


--
-- Name: directus_revisions id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);


--
-- Name: directus_settings id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);


--
-- Name: directus_webhooks id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);


--
-- Name: homepage id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.homepage ALTER COLUMN id SET DEFAULT nextval('public.homepage_id_seq'::regclass);


--
-- Name: homepage_files id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.homepage_files ALTER COLUMN id SET DEFAULT nextval('public.homepage_files_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_files id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.pages_files ALTER COLUMN id SET DEFAULT nextval('public.pages_files_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: quotes id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.quotes ALTER COLUMN id SET DEFAULT nextval('public.quotes_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: team id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);


--
-- Data for Name: Application; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Application" (id, status, sort, user_created, date_created, user_updated, date_updated, name) FROM stdin;
1	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:17:50.878+00	\N	\N	Aussenanwendung
2	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:17:50.906+00	\N	\N	Innenanwendung
3	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:17:50.913+00	\N	\N	Brandschutztüren
\.


--
-- Data for Name: ClimateClass; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."ClimateClass" (id, status, sort, user_created, date_created, user_updated, date_updated, name, cc, clicla) FROM stdin;
1	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.819+00	\N	\N	2c	\N	\N
2	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.836+00	\N	\N	2a	\N	\N
3	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.843+00	\N	\N	2d	\N	\N
4	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.85+00	\N	\N	3c	\N	\N
5	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.858+00	\N	\N	3d	\N	\N
6	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.867+00	\N	\N	3e	\N	\N
\.


--
-- Data for Name: Decks; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Decks" (id, status, sort, user_created, date_created, user_updated, date_updated, "Materialien") FROM stdin;
\.


--
-- Data for Name: Decks_Decks; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Decks_Decks" (id, "Decks_id", "related_Decks_id") FROM stdin;
\.


--
-- Data for Name: Decks_asdfghj; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Decks_asdfghj" (id, "Decks_id", item, collection) FROM stdin;
\.


--
-- Data for Name: Decks_many; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Decks_many" (id, "Decks_id", item, collection) FROM stdin;
\.


--
-- Data for Name: DoorCategory; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."DoorCategory" (id, status, sort, user_created, date_created, user_updated, date_updated, name, wingdoors, "doorCasings") FROM stdin;
2	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:27:50.785+00	\N	\N	Normtüren	f	\N
3	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:28:02.945+00	\N	\N	Masstüren	f	\N
4	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:28:13.034+00	\N	\N	Futtertüren	f	\N
5	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:28:21.148+00	\N	\N	Rahmentüren	f	\N
\.


--
-- Data for Name: DoorCategory_Product; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."DoorCategory_Product" (id, "DoorCategory_id", "Product_id") FROM stdin;
\.


--
-- Data for Name: DoorType; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."DoorType" (id, status, sort, date_created, user_updated, date_updated, name, application, image, prices_surfaces) FROM stdin;
1	published	\N	2024-04-19 16:30:29.937+00	\N	\N	Aluspan mit Aluminium-Deckblatt	1	\N	\N
2	published	\N	2024-04-19 16:30:44.711+00	\N	\N	Aluspan mit Aluminium-Einlage	1	\N	\N
3	published	\N	2024-04-19 16:30:57.269+00	\N	\N	Alu-Therma	1	\N	\N
4	published	\N	2024-04-19 16:31:08.185+00	\N	\N	Massiv-Türe	2	\N	\N
5	published	\N	2024-04-19 16:31:21.792+00	\N	\N	Hohl-Türe	2	\N	\N
6	published	\N	2024-04-19 16:31:31.631+00	\N	\N	RS-Röhrenspan	2	\N	\N
7	published	\N	2024-04-19 16:31:42.542+00	\N	\N	LS Leichtspan	2	\N	\N
8	published	\N	2024-04-19 16:31:52.458+00	\N	\N	SP Spanvoll	2	\N	\N
9	published	\N	2024-04-19 16:32:04.139+00	\N	\N	Aluspan mit Aluminiumeinlage	2	\N	\N
10	published	\N	2024-04-19 16:32:13.313+00	\N	\N	dB-Favorit	2	\N	\N
11	published	\N	2024-04-19 16:32:33.929+00	\N	\N	dB-Favorit Alu	2	\N	\N
12	published	\N	2024-04-19 16:32:53.167+00	\N	\N	Strahlenschutztüre	2	\N	\N
13	published	\N	2024-04-19 16:33:03.409+00	\N	\N	Brandex EI30	3	\N	\N
14	published	\N	2024-04-19 16:33:12.655+00	\N	\N	Brandex Alu EI30	3	\N	\N
15	published	\N	2024-04-19 16:33:32.117+00	\N	\N	dB-Favorit EI30	3	\N	\N
16	published	\N	2024-04-19 16:33:39.179+00	\N	\N	dB-Favorit Alu EI30	3	\N	\N
17	published	\N	2024-04-19 16:33:57.334+00	\N	\N	VSSM Massvolltüre EI30	3	\N	\N
\.


--
-- Data for Name: HeatProtection; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."HeatProtection" (id, status, sort, user_created, date_created, user_updated, date_updated, name) FROM stdin;
1	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.675+00	\N	\N	NPD
2	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.703+00	\N	\N	1.9
3	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.712+00	\N	\N	1.7
4	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.721+00	\N	\N	1.5
5	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.732+00	\N	\N	0.9
6	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.741+00	\N	\N	1.0
7	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.752+00	\N	\N	1.2
8	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.766+00	\N	\N	1.4
9	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.774+00	\N	\N	1.6
10	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.782+00	\N	\N	1.8
11	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.795+00	\N	\N	1.3
\.


--
-- Data for Name: Modifications; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Modifications" (id, status, sort, user_created, date_created, user_updated, date_updated, name, category) FROM stdin;
1	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:23:45.754+00	\N	\N	Falz 4-seitig gleichlaufend / hobeln und fasen	1
\.


--
-- Data for Name: Modifications_cat_surface; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Modifications_cat_surface" (id, "Modifications_id", cat_surface_id) FROM stdin;
1	1	1
2	1	2
\.


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Product" (id, status, sort, user_created, date_created, user_updated, date_updated, "DoorType", application, thickness, "SoundProofing", "HeatProtection", weight, rc2, rc3, vkf, "leadThickness", prices) FROM stdin;
8	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:35:20.688+00	\N	\N	1	1	39.5	2	2	25	f	f	f	\N	\N
\.


--
-- Data for Name: Product_ClimateClass; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Product_ClimateClass" (id, "Product_id", "ClimateClass_id") FROM stdin;
\.


--
-- Data for Name: Product_ClimateClass_1; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Product_ClimateClass_1" (id, "Product_id", "ClimateClass_id") FROM stdin;
2	8	1
\.


--
-- Data for Name: Product_HeatProtection; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Product_HeatProtection" (id, "Product_id", "HeatProtection_id") FROM stdin;
\.


--
-- Data for Name: Product_SoundProofing; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Product_SoundProofing" (id, "Product_id", "SoundProofing_id") FROM stdin;
\.


--
-- Data for Name: Product_Surface; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Product_Surface" (id, "Product_id", "Surface_id") FROM stdin;
1	8	13
\.


--
-- Data for Name: SoundProofing; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."SoundProofing" (id, status, sort, user_created, date_created, user_updated, date_updated, name, value) FROM stdin;
1	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.085+00	\N	\N	Rw = 29 dB	R ' w 24 - 26 dB
2	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.108+00	\N	\N	Rw = 28 dB	R ' w 23 - 25 dB
3	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.118+00	\N	\N	Rw = 30 dB	R ' w 25 - 27 dB
4	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.127+00	\N	\N	Rw = 31 dB	R ' w 26 - 28 dB
5	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.134+00	\N	\N	Rw = 32 dB	R ' w 27 - 29 dB
6	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.142+00	\N	\N	Rw = 34 dB	R ' w = 29 - 31 dB
7	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.147+00	\N	\N	Rw = 35 dB	R ' w = 30 - 32 dB
8	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.152+00	\N	\N	Rw = 33 dB	R ' w 28 - 30 dB
9	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.161+00	\N	\N	Rw = 37 dB	R ' w 34 - 36 dB
10	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.167+00	\N	\N	Rw = 42 dB	R ' w 37 - 40 dB
11	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.173+00	\N	\N	Rw = 43 dB	R ' w 37 - 42 dB
12	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.179+00	\N	\N	Rw = 20 dB	R ' w 16 - 19 dB
\.


--
-- Data for Name: Surface; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public."Surface" (id, status, sort, user_created, date_created, user_updated, date_updated, cat_surface, items) FROM stdin;
1	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.608+00	\N	\N	1	["Okumé Sperrholz zum Überfurnieren"]
2	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.626+00	\N	\N	1	["Limba 1a für Natur gem."]
3	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.634+00	\N	\N	1	["Bibolo","Koto gedämpft","Sipo"]
4	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.642+00	\N	\N	1	["Buche","Esche","Fichte","Föhre","Lärche"]
5	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.649+00	\N	\N	1	["Fichte mit Ast"]
6	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.661+00	\N	\N	1	["Ahorn","Birke","Eiche","Ulme"]
7	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.678+00	\N	\N	1	["Amerikanischer Birnbaum","Amerikanischer Kirschbaum","Amerikanischer Nussbaum"]
8	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.687+00	\N	\N	1	["Europäischer Birnbaum","Europäischer Kirschbaum","Europäischer Nussbaum"]
9	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.695+00	\N	\N	1	["Elsbeer","Kanadischer Ahorn","Kastanie"]
10	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.71+00	\N	\N	4	["Buche","Fichte","Kiefer","Koto","Limba","Lärche","Okumé","Sipo"]
11	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.717+00	\N	\N	4	["Ahorn","Birke","Eiche","Esche","Ulme"]
12	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.727+00	\N	\N	4	["Amerikanischer Nussbaum","Arve"]
13	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.743+00	\N	\N	3	["Aluminium-Deckblatt"]
14	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.767+00	\N	\N	1	["Hartplattendeck 2 x 3.2 mm","Hartplattendeck 3.2 mm","Hartplattendeck 4.0 mm","Hartplattendeck 5.0 mm"]
\.


--
-- Data for Name: cat_modifications; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.cat_modifications (id, name) FROM stdin;
1	Kantenbearbeitungen
\.


--
-- Data for Name: cat_surface; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.cat_surface (id, name) FROM stdin;
1	Hartplattendeck oder furniert
2	Mit Kunstharz belegt und/oder Aluminium-Einlage
3	Mit Aluminium-Deckblatt, gebürstet zum Streichen
4	Sonderarbeiten an Mass-Türen
\.


--
-- Data for Name: directus_activity; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, comment, origin) FROM stdin;
1	login	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:10:44.128+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_users	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	\N	https://directus.entla-postgres.orb.local
2	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:20.304+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_extensions	f1be1611-88f4-4413-b9dd-19c37fed45a9	\N	https://directus.entla-postgres.orb.local
3	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:30.162+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_settings	1	\N	https://directus.entla-postgres.orb.local
4	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.298+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	1	\N	https://directus.entla-postgres.orb.local
5	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.32+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	2	\N	https://directus.entla-postgres.orb.local
6	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.332+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	3	\N	https://directus.entla-postgres.orb.local
7	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.341+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	4	\N	https://directus.entla-postgres.orb.local
8	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.351+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	5	\N	https://directus.entla-postgres.orb.local
9	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.357+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	6	\N	https://directus.entla-postgres.orb.local
10	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.372+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	7	\N	https://directus.entla-postgres.orb.local
11	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.378+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	8	\N	https://directus.entla-postgres.orb.local
12	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.388+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	9	\N	https://directus.entla-postgres.orb.local
13	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.405+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	homepage	\N	https://directus.entla-postgres.orb.local
14	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.581+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	10	\N	https://directus.entla-postgres.orb.local
15	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.587+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	11	\N	https://directus.entla-postgres.orb.local
16	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.593+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	12	\N	https://directus.entla-postgres.orb.local
17	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.601+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	13	\N	https://directus.entla-postgres.orb.local
18	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.606+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	14	\N	https://directus.entla-postgres.orb.local
19	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.614+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	15	\N	https://directus.entla-postgres.orb.local
20	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.621+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	16	\N	https://directus.entla-postgres.orb.local
21	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.629+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	17	\N	https://directus.entla-postgres.orb.local
22	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.635+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	18	\N	https://directus.entla-postgres.orb.local
23	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.641+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	19	\N	https://directus.entla-postgres.orb.local
24	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.649+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	20	\N	https://directus.entla-postgres.orb.local
25	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.656+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	21	\N	https://directus.entla-postgres.orb.local
26	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.664+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	22	\N	https://directus.entla-postgres.orb.local
27	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.673+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	pages	\N	https://directus.entla-postgres.orb.local
28	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.761+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	23	\N	https://directus.entla-postgres.orb.local
29	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.767+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	24	\N	https://directus.entla-postgres.orb.local
30	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.772+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	25	\N	https://directus.entla-postgres.orb.local
31	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.777+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	26	\N	https://directus.entla-postgres.orb.local
32	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.785+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	27	\N	https://directus.entla-postgres.orb.local
33	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.789+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	28	\N	https://directus.entla-postgres.orb.local
34	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.795+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	29	\N	https://directus.entla-postgres.orb.local
35	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.801+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	30	\N	https://directus.entla-postgres.orb.local
36	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.805+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	31	\N	https://directus.entla-postgres.orb.local
37	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.812+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	32	\N	https://directus.entla-postgres.orb.local
38	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.819+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	33	\N	https://directus.entla-postgres.orb.local
39	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.825+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	34	\N	https://directus.entla-postgres.orb.local
40	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.831+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	posts	\N	https://directus.entla-postgres.orb.local
41	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.899+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	35	\N	https://directus.entla-postgres.orb.local
42	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.911+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	36	\N	https://directus.entla-postgres.orb.local
43	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.919+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	37	\N	https://directus.entla-postgres.orb.local
44	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.925+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	38	\N	https://directus.entla-postgres.orb.local
45	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.933+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	39	\N	https://directus.entla-postgres.orb.local
46	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.938+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	40	\N	https://directus.entla-postgres.orb.local
47	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.945+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	41	\N	https://directus.entla-postgres.orb.local
48	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.953+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	42	\N	https://directus.entla-postgres.orb.local
49	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.959+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	43	\N	https://directus.entla-postgres.orb.local
50	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:13:59.965+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	jobs	\N	https://directus.entla-postgres.orb.local
51	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.046+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	44	\N	https://directus.entla-postgres.orb.local
52	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.052+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	45	\N	https://directus.entla-postgres.orb.local
53	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.06+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	46	\N	https://directus.entla-postgres.orb.local
54	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.07+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	47	\N	https://directus.entla-postgres.orb.local
55	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.076+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	48	\N	https://directus.entla-postgres.orb.local
56	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.08+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	49	\N	https://directus.entla-postgres.orb.local
57	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.086+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	50	\N	https://directus.entla-postgres.orb.local
58	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.091+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	51	\N	https://directus.entla-postgres.orb.local
59	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.097+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	team	\N	https://directus.entla-postgres.orb.local
60	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.2+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	52	\N	https://directus.entla-postgres.orb.local
61	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.206+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	53	\N	https://directus.entla-postgres.orb.local
62	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.214+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	54	\N	https://directus.entla-postgres.orb.local
63	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.22+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	55	\N	https://directus.entla-postgres.orb.local
64	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.225+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	56	\N	https://directus.entla-postgres.orb.local
65	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.232+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	57	\N	https://directus.entla-postgres.orb.local
66	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.238+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	58	\N	https://directus.entla-postgres.orb.local
67	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.243+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	59	\N	https://directus.entla-postgres.orb.local
68	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.251+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	60	\N	https://directus.entla-postgres.orb.local
69	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.256+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	61	\N	https://directus.entla-postgres.orb.local
70	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.261+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	62	\N	https://directus.entla-postgres.orb.local
71	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.269+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	DoorCategory	\N	https://directus.entla-postgres.orb.local
72	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.341+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	63	\N	https://directus.entla-postgres.orb.local
73	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.374+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	64	\N	https://directus.entla-postgres.orb.local
74	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.401+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	65	\N	https://directus.entla-postgres.orb.local
75	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.408+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	66	\N	https://directus.entla-postgres.orb.local
76	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.418+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	67	\N	https://directus.entla-postgres.orb.local
77	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.425+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	68	\N	https://directus.entla-postgres.orb.local
78	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.438+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	69	\N	https://directus.entla-postgres.orb.local
79	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.442+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	70	\N	https://directus.entla-postgres.orb.local
80	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.45+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	71	\N	https://directus.entla-postgres.orb.local
81	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.457+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	72	\N	https://directus.entla-postgres.orb.local
82	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.469+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	73	\N	https://directus.entla-postgres.orb.local
83	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.477+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	quotes	\N	https://directus.entla-postgres.orb.local
84	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.542+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	74	\N	https://directus.entla-postgres.orb.local
85	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.547+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	75	\N	https://directus.entla-postgres.orb.local
86	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.554+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	76	\N	https://directus.entla-postgres.orb.local
87	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.558+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Product_ClimateClass	\N	https://directus.entla-postgres.orb.local
88	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.617+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	77	\N	https://directus.entla-postgres.orb.local
89	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.623+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	78	\N	https://directus.entla-postgres.orb.local
90	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.628+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	79	\N	https://directus.entla-postgres.orb.local
91	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.638+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Product_ClimateClass_1	\N	https://directus.entla-postgres.orb.local
92	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.697+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	80	\N	https://directus.entla-postgres.orb.local
93	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.702+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	81	\N	https://directus.entla-postgres.orb.local
94	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.706+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	82	\N	https://directus.entla-postgres.orb.local
95	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.711+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Product_HeatProtection	\N	https://directus.entla-postgres.orb.local
96	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.773+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	83	\N	https://directus.entla-postgres.orb.local
97	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.778+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	84	\N	https://directus.entla-postgres.orb.local
98	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.785+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	85	\N	https://directus.entla-postgres.orb.local
99	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.79+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Product_SoundProofing	\N	https://directus.entla-postgres.orb.local
100	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.865+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	86	\N	https://directus.entla-postgres.orb.local
101	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.876+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	87	\N	https://directus.entla-postgres.orb.local
102	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.887+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	88	\N	https://directus.entla-postgres.orb.local
103	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.898+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	89	\N	https://directus.entla-postgres.orb.local
104	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.905+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	90	\N	https://directus.entla-postgres.orb.local
105	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.915+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	91	\N	https://directus.entla-postgres.orb.local
106	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.92+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	92	\N	https://directus.entla-postgres.orb.local
107	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.924+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	93	\N	https://directus.entla-postgres.orb.local
108	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.93+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	94	\N	https://directus.entla-postgres.orb.local
109	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.936+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	95	\N	https://directus.entla-postgres.orb.local
110	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:00.94+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Decks	\N	https://directus.entla-postgres.orb.local
111	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.005+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	96	\N	https://directus.entla-postgres.orb.local
112	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.01+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	97	\N	https://directus.entla-postgres.orb.local
113	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.021+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	98	\N	https://directus.entla-postgres.orb.local
114	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.027+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Decks_Decks	\N	https://directus.entla-postgres.orb.local
115	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.094+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	99	\N	https://directus.entla-postgres.orb.local
116	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.1+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	100	\N	https://directus.entla-postgres.orb.local
117	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.106+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	101	\N	https://directus.entla-postgres.orb.local
118	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.115+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	102	\N	https://directus.entla-postgres.orb.local
119	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.121+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Decks_asdfghj	\N	https://directus.entla-postgres.orb.local
120	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.191+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	103	\N	https://directus.entla-postgres.orb.local
121	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.196+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	104	\N	https://directus.entla-postgres.orb.local
122	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.203+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	105	\N	https://directus.entla-postgres.orb.local
123	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.207+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	106	\N	https://directus.entla-postgres.orb.local
124	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.212+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Decks_many	\N	https://directus.entla-postgres.orb.local
125	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.267+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	107	\N	https://directus.entla-postgres.orb.local
126	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.272+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	108	\N	https://directus.entla-postgres.orb.local
127	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.276+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	109	\N	https://directus.entla-postgres.orb.local
128	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.281+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Modifications_cat_surface	\N	https://directus.entla-postgres.orb.local
129	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.343+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	110	\N	https://directus.entla-postgres.orb.local
130	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.347+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	111	\N	https://directus.entla-postgres.orb.local
131	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.354+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	112	\N	https://directus.entla-postgres.orb.local
132	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.359+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	pages_files	\N	https://directus.entla-postgres.orb.local
133	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.407+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	113	\N	https://directus.entla-postgres.orb.local
134	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.412+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	114	\N	https://directus.entla-postgres.orb.local
135	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.418+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	115	\N	https://directus.entla-postgres.orb.local
136	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.425+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Product_Surface	\N	https://directus.entla-postgres.orb.local
137	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.478+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	116	\N	https://directus.entla-postgres.orb.local
138	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.485+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	117	\N	https://directus.entla-postgres.orb.local
139	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.488+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	118	\N	https://directus.entla-postgres.orb.local
140	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.493+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	119	\N	https://directus.entla-postgres.orb.local
141	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.496+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	120	\N	https://directus.entla-postgres.orb.local
142	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.502+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	121	\N	https://directus.entla-postgres.orb.local
143	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.508+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	122	\N	https://directus.entla-postgres.orb.local
144	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.513+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	123	\N	https://directus.entla-postgres.orb.local
145	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.523+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	124	\N	https://directus.entla-postgres.orb.local
146	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.53+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	125	\N	https://directus.entla-postgres.orb.local
147	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.535+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	redirects	\N	https://directus.entla-postgres.orb.local
148	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.592+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	126	\N	https://directus.entla-postgres.orb.local
149	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.596+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	127	\N	https://directus.entla-postgres.orb.local
150	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.601+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	128	\N	https://directus.entla-postgres.orb.local
151	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.604+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	129	\N	https://directus.entla-postgres.orb.local
152	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.607+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	130	\N	https://directus.entla-postgres.orb.local
153	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.612+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	131	\N	https://directus.entla-postgres.orb.local
154	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.615+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	132	\N	https://directus.entla-postgres.orb.local
155	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.618+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	133	\N	https://directus.entla-postgres.orb.local
156	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.622+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	134	\N	https://directus.entla-postgres.orb.local
157	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.626+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	seo	\N	https://directus.entla-postgres.orb.local
158	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.676+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	135	\N	https://directus.entla-postgres.orb.local
159	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.679+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	136	\N	https://directus.entla-postgres.orb.local
160	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.682+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	137	\N	https://directus.entla-postgres.orb.local
161	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.687+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	DoorCategory_Product	\N	https://directus.entla-postgres.orb.local
162	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.753+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	138	\N	https://directus.entla-postgres.orb.local
163	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.759+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	139	\N	https://directus.entla-postgres.orb.local
164	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.765+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	140	\N	https://directus.entla-postgres.orb.local
165	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.769+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	141	\N	https://directus.entla-postgres.orb.local
166	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.772+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	142	\N	https://directus.entla-postgres.orb.local
167	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.778+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	143	\N	https://directus.entla-postgres.orb.local
168	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.791+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	144	\N	https://directus.entla-postgres.orb.local
169	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.815+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	145	\N	https://directus.entla-postgres.orb.local
170	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.82+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	146	\N	https://directus.entla-postgres.orb.local
171	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.827+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	147	\N	https://directus.entla-postgres.orb.local
172	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.836+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	settings	\N	https://directus.entla-postgres.orb.local
173	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.91+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	148	\N	https://directus.entla-postgres.orb.local
174	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.92+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	149	\N	https://directus.entla-postgres.orb.local
175	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.934+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	150	\N	https://directus.entla-postgres.orb.local
176	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.946+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	151	\N	https://directus.entla-postgres.orb.local
177	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.956+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	152	\N	https://directus.entla-postgres.orb.local
178	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.962+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	153	\N	https://directus.entla-postgres.orb.local
179	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.969+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	154	\N	https://directus.entla-postgres.orb.local
180	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.974+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	155	\N	https://directus.entla-postgres.orb.local
181	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.978+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	156	\N	https://directus.entla-postgres.orb.local
182	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.983+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	157	\N	https://directus.entla-postgres.orb.local
183	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.99+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	158	\N	https://directus.entla-postgres.orb.local
184	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.995+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	159	\N	https://directus.entla-postgres.orb.local
185	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:01.999+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	160	\N	https://directus.entla-postgres.orb.local
186	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.005+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	161	\N	https://directus.entla-postgres.orb.local
187	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.01+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	162	\N	https://directus.entla-postgres.orb.local
188	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.014+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	163	\N	https://directus.entla-postgres.orb.local
189	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.017+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	164	\N	https://directus.entla-postgres.orb.local
190	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.025+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	165	\N	https://directus.entla-postgres.orb.local
191	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.036+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	166	\N	https://directus.entla-postgres.orb.local
192	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.041+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	167	\N	https://directus.entla-postgres.orb.local
193	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.045+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	168	\N	https://directus.entla-postgres.orb.local
194	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.049+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	169	\N	https://directus.entla-postgres.orb.local
195	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.056+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	170	\N	https://directus.entla-postgres.orb.local
196	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.062+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Product	\N	https://directus.entla-postgres.orb.local
197	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.139+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	171	\N	https://directus.entla-postgres.orb.local
198	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.144+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	172	\N	https://directus.entla-postgres.orb.local
199	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.15+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	173	\N	https://directus.entla-postgres.orb.local
200	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.155+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	174	\N	https://directus.entla-postgres.orb.local
201	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.159+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	175	\N	https://directus.entla-postgres.orb.local
202	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.163+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	176	\N	https://directus.entla-postgres.orb.local
203	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.169+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	177	\N	https://directus.entla-postgres.orb.local
204	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.173+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	178	\N	https://directus.entla-postgres.orb.local
205	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.179+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	179	\N	https://directus.entla-postgres.orb.local
206	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.184+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	180	\N	https://directus.entla-postgres.orb.local
207	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.188+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	DoorType	\N	https://directus.entla-postgres.orb.local
208	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.253+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	181	\N	https://directus.entla-postgres.orb.local
209	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.259+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	182	\N	https://directus.entla-postgres.orb.local
210	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.264+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	183	\N	https://directus.entla-postgres.orb.local
211	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.269+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	184	\N	https://directus.entla-postgres.orb.local
212	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.273+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	185	\N	https://directus.entla-postgres.orb.local
213	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.277+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	186	\N	https://directus.entla-postgres.orb.local
214	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.282+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	187	\N	https://directus.entla-postgres.orb.local
215	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.289+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	188	\N	https://directus.entla-postgres.orb.local
216	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.295+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	189	\N	https://directus.entla-postgres.orb.local
217	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.301+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Surface	\N	https://directus.entla-postgres.orb.local
218	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.371+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	190	\N	https://directus.entla-postgres.orb.local
219	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.377+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	191	\N	https://directus.entla-postgres.orb.local
220	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.381+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	192	\N	https://directus.entla-postgres.orb.local
221	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.386+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	193	\N	https://directus.entla-postgres.orb.local
222	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.389+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	194	\N	https://directus.entla-postgres.orb.local
223	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.401+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	195	\N	https://directus.entla-postgres.orb.local
224	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.405+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	196	\N	https://directus.entla-postgres.orb.local
225	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.409+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	197	\N	https://directus.entla-postgres.orb.local
226	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.417+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	198	\N	https://directus.entla-postgres.orb.local
227	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.421+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	199	\N	https://directus.entla-postgres.orb.local
228	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.425+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	ClimateClass	\N	https://directus.entla-postgres.orb.local
229	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.492+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	200	\N	https://directus.entla-postgres.orb.local
230	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.5+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	201	\N	https://directus.entla-postgres.orb.local
231	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.505+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	202	\N	https://directus.entla-postgres.orb.local
232	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.511+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	203	\N	https://directus.entla-postgres.orb.local
233	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.515+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	204	\N	https://directus.entla-postgres.orb.local
234	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.52+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	205	\N	https://directus.entla-postgres.orb.local
235	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.524+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	206	\N	https://directus.entla-postgres.orb.local
236	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.529+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	207	\N	https://directus.entla-postgres.orb.local
237	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.533+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	208	\N	https://directus.entla-postgres.orb.local
238	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.539+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	209	\N	https://directus.entla-postgres.orb.local
239	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.542+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	210	\N	https://directus.entla-postgres.orb.local
240	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.548+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Modifications	\N	https://directus.entla-postgres.orb.local
241	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.607+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	211	\N	https://directus.entla-postgres.orb.local
242	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.61+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	212	\N	https://directus.entla-postgres.orb.local
243	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.614+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	213	\N	https://directus.entla-postgres.orb.local
244	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.618+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	214	\N	https://directus.entla-postgres.orb.local
245	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.62+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	215	\N	https://directus.entla-postgres.orb.local
246	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.632+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	216	\N	https://directus.entla-postgres.orb.local
247	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.636+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	217	\N	https://directus.entla-postgres.orb.local
248	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.64+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	218	\N	https://directus.entla-postgres.orb.local
249	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.645+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	HeatProtection	\N	https://directus.entla-postgres.orb.local
250	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.705+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	219	\N	https://directus.entla-postgres.orb.local
251	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.711+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	220	\N	https://directus.entla-postgres.orb.local
252	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.721+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	221	\N	https://directus.entla-postgres.orb.local
253	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.725+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	222	\N	https://directus.entla-postgres.orb.local
254	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.734+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	223	\N	https://directus.entla-postgres.orb.local
255	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.739+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	224	\N	https://directus.entla-postgres.orb.local
256	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.746+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	225	\N	https://directus.entla-postgres.orb.local
257	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.756+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	226	\N	https://directus.entla-postgres.orb.local
258	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.761+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	227	\N	https://directus.entla-postgres.orb.local
259	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.772+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	SoundProofing	\N	https://directus.entla-postgres.orb.local
260	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.833+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	228	\N	https://directus.entla-postgres.orb.local
261	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.837+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	229	\N	https://directus.entla-postgres.orb.local
262	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.841+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	230	\N	https://directus.entla-postgres.orb.local
263	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.848+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	231	\N	https://directus.entla-postgres.orb.local
264	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.851+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	232	\N	https://directus.entla-postgres.orb.local
265	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.855+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	233	\N	https://directus.entla-postgres.orb.local
266	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.86+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	234	\N	https://directus.entla-postgres.orb.local
267	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.863+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	235	\N	https://directus.entla-postgres.orb.local
268	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.868+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	Application	\N	https://directus.entla-postgres.orb.local
269	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.935+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	236	\N	https://directus.entla-postgres.orb.local
270	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.938+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	237	\N	https://directus.entla-postgres.orb.local
271	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:02.945+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	cat_modifications	\N	https://directus.entla-postgres.orb.local
272	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.003+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	238	\N	https://directus.entla-postgres.orb.local
273	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.01+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	239	\N	https://directus.entla-postgres.orb.local
274	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.015+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	cat_surface	\N	https://directus.entla-postgres.orb.local
275	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.097+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	240	\N	https://directus.entla-postgres.orb.local
276	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.18+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	241	\N	https://directus.entla-postgres.orb.local
277	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.305+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	242	\N	https://directus.entla-postgres.orb.local
278	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.359+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	243	\N	https://directus.entla-postgres.orb.local
279	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.419+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	244	\N	https://directus.entla-postgres.orb.local
280	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.486+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	245	\N	https://directus.entla-postgres.orb.local
281	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:03.54+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	246	\N	https://directus.entla-postgres.orb.local
282	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:53.393+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_folders	24e6a80b-6441-4963-a4fc-cac2978773af	\N	https://directus.entla-postgres.orb.local
283	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:14:57.576+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_folders	fe38f767-ade3-4362-bc38-c65861fad0c2	\N	https://directus.entla-postgres.orb.local
284	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:15:17.377+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_folders	fe38f767-ade3-4362-bc38-c65861fad0c2	\N	https://directus.entla-postgres.orb.local
285	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:15:35.062+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_folders	6d26620a-9265-4fb4-b2b8-94057ddf82e6	\N	https://directus.entla-postgres.orb.local
286	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:15:39.888+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_folders	6d26620a-9265-4fb4-b2b8-94057ddf82e6	\N	https://directus.entla-postgres.orb.local
287	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:17:50.892+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Application	1	\N	https://directus.entla-postgres.orb.local
288	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:17:50.908+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Application	2	\N	https://directus.entla-postgres.orb.local
289	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 15:17:50.914+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Application	3	\N	https://directus.entla-postgres.orb.local
415	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.722+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	1	\N	https://directus.entla-postgres.orb.local
290	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:23:05.689+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	cat_modifications	1	\N	https://directus.entla-postgres.orb.local
291	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:23:45.783+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	cat_surface	1	\N	https://directus.entla-postgres.orb.local
292	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:23:45.804+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Modifications_cat_surface	1	\N	https://directus.entla-postgres.orb.local
293	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:23:45.816+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	cat_surface	2	\N	https://directus.entla-postgres.orb.local
294	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:23:45.823+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Modifications_cat_surface	2	\N	https://directus.entla-postgres.orb.local
295	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:23:45.836+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Modifications	1	\N	https://directus.entla-postgres.orb.local
296	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:02.092+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	cat_surface	3	\N	https://directus.entla-postgres.orb.local
297	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:11.19+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	cat_surface	4	\N	https://directus.entla-postgres.orb.local
298	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.618+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	1	\N	https://directus.entla-postgres.orb.local
299	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.628+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	2	\N	https://directus.entla-postgres.orb.local
300	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.636+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	3	\N	https://directus.entla-postgres.orb.local
301	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.644+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	4	\N	https://directus.entla-postgres.orb.local
302	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.652+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	5	\N	https://directus.entla-postgres.orb.local
303	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.664+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	6	\N	https://directus.entla-postgres.orb.local
304	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.68+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	7	\N	https://directus.entla-postgres.orb.local
305	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.69+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	8	\N	https://directus.entla-postgres.orb.local
306	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.703+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	9	\N	https://directus.entla-postgres.orb.local
307	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.712+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	10	\N	https://directus.entla-postgres.orb.local
308	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.72+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	11	\N	https://directus.entla-postgres.orb.local
309	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.735+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	12	\N	https://directus.entla-postgres.orb.local
310	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.747+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	13	\N	https://directus.entla-postgres.orb.local
311	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:24:30.776+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Surface	14	\N	https://directus.entla-postgres.orb.local
312	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.096+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	1	\N	https://directus.entla-postgres.orb.local
313	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.111+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	2	\N	https://directus.entla-postgres.orb.local
314	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.12+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	3	\N	https://directus.entla-postgres.orb.local
315	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.13+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	4	\N	https://directus.entla-postgres.orb.local
316	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.136+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	5	\N	https://directus.entla-postgres.orb.local
317	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.143+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	6	\N	https://directus.entla-postgres.orb.local
318	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.148+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	7	\N	https://directus.entla-postgres.orb.local
319	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.155+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	8	\N	https://directus.entla-postgres.orb.local
320	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.163+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	9	\N	https://directus.entla-postgres.orb.local
321	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.168+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	10	\N	https://directus.entla-postgres.orb.local
322	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.175+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	11	\N	https://directus.entla-postgres.orb.local
323	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:23.18+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	SoundProofing	12	\N	https://directus.entla-postgres.orb.local
341	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:26:37.084+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product	1	\N	https://directus.entla-postgres.orb.local
342	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:26:37.092+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product	2	\N	https://directus.entla-postgres.orb.local
343	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:26:37.099+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product	3	\N	https://directus.entla-postgres.orb.local
324	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.682+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	1	\N	https://directus.entla-postgres.orb.local
325	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.705+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	2	\N	https://directus.entla-postgres.orb.local
326	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.715+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	3	\N	https://directus.entla-postgres.orb.local
327	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.722+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	4	\N	https://directus.entla-postgres.orb.local
328	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.733+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	5	\N	https://directus.entla-postgres.orb.local
329	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.747+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	6	\N	https://directus.entla-postgres.orb.local
330	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.755+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	7	\N	https://directus.entla-postgres.orb.local
331	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.767+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	8	\N	https://directus.entla-postgres.orb.local
332	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.777+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	9	\N	https://directus.entla-postgres.orb.local
333	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.785+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	10	\N	https://directus.entla-postgres.orb.local
334	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:39.797+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	HeatProtection	11	\N	https://directus.entla-postgres.orb.local
335	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.827+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	ClimateClass	1	\N	https://directus.entla-postgres.orb.local
336	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.838+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	ClimateClass	2	\N	https://directus.entla-postgres.orb.local
337	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.845+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	ClimateClass	3	\N	https://directus.entla-postgres.orb.local
338	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.854+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	ClimateClass	4	\N	https://directus.entla-postgres.orb.local
339	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.861+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	ClimateClass	5	\N	https://directus.entla-postgres.orb.local
340	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:25:54.869+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	ClimateClass	6	\N	https://directus.entla-postgres.orb.local
344	delete	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:26:43.271+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product	1	\N	https://directus.entla-postgres.orb.local
345	delete	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:26:43.274+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product	2	\N	https://directus.entla-postgres.orb.local
346	delete	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:26:43.276+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product	3	\N	https://directus.entla-postgres.orb.local
347	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:27:50.805+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorCategory	2	\N	https://directus.entla-postgres.orb.local
348	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:28:02.963+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorCategory	3	\N	https://directus.entla-postgres.orb.local
349	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:28:13.047+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorCategory	4	\N	https://directus.entla-postgres.orb.local
350	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:28:21.153+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorCategory	5	\N	https://directus.entla-postgres.orb.local
351	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:30:29.961+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	1	\N	https://directus.entla-postgres.orb.local
352	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:30:44.734+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	2	\N	https://directus.entla-postgres.orb.local
353	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:30:57.289+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	3	\N	https://directus.entla-postgres.orb.local
354	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:31:08.201+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	4	\N	https://directus.entla-postgres.orb.local
355	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:31:21.798+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	5	\N	https://directus.entla-postgres.orb.local
356	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:31:31.638+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	6	\N	https://directus.entla-postgres.orb.local
357	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:31:42.548+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	7	\N	https://directus.entla-postgres.orb.local
358	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:31:52.465+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	8	\N	https://directus.entla-postgres.orb.local
359	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:32:04.148+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	9	\N	https://directus.entla-postgres.orb.local
360	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:32:13.32+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	10	\N	https://directus.entla-postgres.orb.local
361	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:32:33.948+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	11	\N	https://directus.entla-postgres.orb.local
362	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:32:53.174+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	12	\N	https://directus.entla-postgres.orb.local
363	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:33:03.413+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	13	\N	https://directus.entla-postgres.orb.local
364	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:33:12.66+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	14	\N	https://directus.entla-postgres.orb.local
365	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:33:32.125+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	15	\N	https://directus.entla-postgres.orb.local
366	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:33:39.185+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	16	\N	https://directus.entla-postgres.orb.local
367	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:33:57.338+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	DoorType	17	\N	https://directus.entla-postgres.orb.local
370	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:35:20.723+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product_ClimateClass_1	2	\N	https://directus.entla-postgres.orb.local
371	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:35:20.743+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product_Surface	1	\N	https://directus.entla-postgres.orb.local
372	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:35:20.748+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	Product	8	\N	https://directus.entla-postgres.orb.local
373	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 16:36:11.263+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_extensions	505f4f67-7b75-4f5b-b057-242598c4a71d	\N	https://directus.entla-postgres.orb.local
374	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:07:35.483+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_settings	1	\N	https://directus.entla-postgres.orb.local
375	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:08:37.967+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
376	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:09:16.872+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
377	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:09:45.229+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
378	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:09:46.585+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_operations	9d4c5262-c441-4e43-afaf-c613226b11cb	\N	https://directus.entla-postgres.orb.local
379	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:09:46.6+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
380	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:10:12.993+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
381	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:10:43.268+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_settings	1	\N	https://directus.entla-postgres.orb.local
382	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:10:50.234+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_settings	1	\N	https://directus.entla-postgres.orb.local
383	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-19 19:10:54.473+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_settings	1	\N	https://directus.entla-postgres.orb.local
384	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:22:48.698+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
385	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:22:48.728+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	1	\N	https://directus.entla-postgres.orb.local
386	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:23:11.41+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
387	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:23:11.424+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	2	\N	https://directus.entla-postgres.orb.local
388	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:23:31.926+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
389	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:23:31.954+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	3	\N	https://directus.entla-postgres.orb.local
390	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:23:54.891+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
391	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:23:54.905+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	4	\N	https://directus.entla-postgres.orb.local
392	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:10.323+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
393	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:10.35+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	5	\N	https://directus.entla-postgres.orb.local
394	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:23.526+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
395	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:23.553+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	6	\N	https://directus.entla-postgres.orb.local
396	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:38.28+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
397	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:38.293+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	7	\N	https://directus.entla-postgres.orb.local
398	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:50.996+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
399	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:24:51.026+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	8	\N	https://directus.entla-postgres.orb.local
400	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:07.043+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
401	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:07.054+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	9	\N	https://directus.entla-postgres.orb.local
402	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:19.733+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
403	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:19.742+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	10	\N	https://directus.entla-postgres.orb.local
404	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:31.518+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
405	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:31.529+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	11	\N	https://directus.entla-postgres.orb.local
406	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:42.295+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
407	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:42.311+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	12	\N	https://directus.entla-postgres.orb.local
408	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:57.898+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
409	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:25:57.915+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	13	\N	https://directus.entla-postgres.orb.local
410	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:07.688+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
411	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:07.703+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	14	\N	https://directus.entla-postgres.orb.local
412	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:18.858+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
413	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:18.873+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	15	\N	https://directus.entla-postgres.orb.local
414	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.701+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
416	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.725+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	10	\N	https://directus.entla-postgres.orb.local
417	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.727+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	11	\N	https://directus.entla-postgres.orb.local
418	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.728+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	12	\N	https://directus.entla-postgres.orb.local
419	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.729+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	13	\N	https://directus.entla-postgres.orb.local
420	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.73+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	14	\N	https://directus.entla-postgres.orb.local
421	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.732+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	15	\N	https://directus.entla-postgres.orb.local
422	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.733+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	2	\N	https://directus.entla-postgres.orb.local
423	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.734+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	3	\N	https://directus.entla-postgres.orb.local
424	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.735+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	4	\N	https://directus.entla-postgres.orb.local
425	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.736+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	5	\N	https://directus.entla-postgres.orb.local
426	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.736+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	6	\N	https://directus.entla-postgres.orb.local
427	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.737+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	7	\N	https://directus.entla-postgres.orb.local
428	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.738+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	8	\N	https://directus.entla-postgres.orb.local
429	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:26:26.739+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	team	9	\N	https://directus.entla-postgres.orb.local
430	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.728+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	38c2cc6f-39c9-4c54-8859-459a15608e79	\N	https://directus.entla-postgres.orb.local
431	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.736+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	03b91eaa-2ceb-4127-bcb0-5ca911221d90	\N	https://directus.entla-postgres.orb.local
432	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.746+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	588f542f-0c1b-4a1a-9ce6-2aedc4e60409	\N	https://directus.entla-postgres.orb.local
433	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.747+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	4f10645d-d328-4926-83b1-ded8750eb0e3	\N	https://directus.entla-postgres.orb.local
434	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.751+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	b1dec839-e9db-4dc4-be8f-e0283a0641f2	\N	https://directus.entla-postgres.orb.local
435	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.77+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	f8733deb-05df-4166-8ab8-cbf8c45c215a	\N	https://directus.entla-postgres.orb.local
436	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.79+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	9e2fdafb-312c-48f0-980f-4a78f46daaa4	\N	https://directus.entla-postgres.orb.local
437	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.797+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	43eab949-47b4-41b5-aab7-6782a64e43c5	\N	https://directus.entla-postgres.orb.local
438	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.823+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	724fea3d-983e-44c8-8933-765b9dfb9b8c	\N	https://directus.entla-postgres.orb.local
439	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.824+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	4871510b-f8ed-43a0-9b06-714430b31dcd	\N	https://directus.entla-postgres.orb.local
440	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.832+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	afa1cb6d-68ab-4938-9bec-46fafcebbca9	\N	https://directus.entla-postgres.orb.local
441	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.84+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	3711b3e8-23e2-403e-ba2e-e5ce4068d2a9	\N	https://directus.entla-postgres.orb.local
442	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.842+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	42cf7e5e-953e-45f0-b700-33b6d9fb6920	\N	https://directus.entla-postgres.orb.local
443	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.853+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	841257fd-3bf8-49a9-812c-efbd6fb9f110	\N	https://directus.entla-postgres.orb.local
444	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.855+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	457b1228-a3cc-4e8c-b9ce-2f2b64373fb5	\N	https://directus.entla-postgres.orb.local
445	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:27.424+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	b9376cc6-2c96-4c17-91f4-0b699a67bdaf	\N	https://directus.entla-postgres.orb.local
446	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:52.248+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	28c3168a-30b2-4d56-b531-183cbc78afae	\N	https://directus.entla-postgres.orb.local
448	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.498+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	5a79381c-4749-44cb-9080-494c26117948	\N	https://directus.entla-postgres.orb.local
450	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.544+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	76a5c8fd-f8dd-43d5-8174-2d9336de3782	\N	https://directus.entla-postgres.orb.local
454	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.625+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	48dc4ffb-ddf9-4e9f-a579-0964355760ee	\N	https://directus.entla-postgres.orb.local
447	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.492+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	68c5969a-7867-4aac-9b2f-3fdb66f81507	\N	https://directus.entla-postgres.orb.local
449	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.536+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	cd0de9db-b5ce-4636-9fb2-0677c4ec3690	\N	https://directus.entla-postgres.orb.local
451	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.62+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	e4c641ac-e971-4c3c-b321-a9142fc36e1d	\N	https://directus.entla-postgres.orb.local
452	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.616+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	1a2fe64d-2386-4022-ae23-5a5f4df6893e	\N	https://directus.entla-postgres.orb.local
453	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.621+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	66a6536d-0c71-48bd-9988-f9e1035b8839	\N	https://directus.entla-postgres.orb.local
455	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.624+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	938aa17e-1099-4f40-9358-72dc83cefce7	\N	https://directus.entla-postgres.orb.local
456	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.636+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	90b560f0-e26b-470f-81e2-269a6beda121	\N	https://directus.entla-postgres.orb.local
457	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.645+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	847f3618-0df4-4e99-a27e-27196589b02c	\N	https://directus.entla-postgres.orb.local
458	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.643+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	b7a6babf-3702-4801-a50b-2115bc3700d9	\N	https://directus.entla-postgres.orb.local
459	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.656+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	44d52a91-ab35-41b0-b9b3-00628fb0a516	\N	https://directus.entla-postgres.orb.local
460	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.672+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	84ffe199-7fce-4e76-8f26-9309c1680fe7	\N	https://directus.entla-postgres.orb.local
461	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.492+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	bf51d748-34ed-48a9-9309-e523c4c05083	\N	https://directus.entla-postgres.orb.local
462	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.498+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	0186c02c-3da7-4925-acc1-c5d36929dc52	\N	https://directus.entla-postgres.orb.local
463	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.554+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	7c15ecc4-f4b1-4184-a52f-42eb23b313ec	\N	https://directus.entla-postgres.orb.local
464	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.617+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	02483b5a-3d2a-47e0-963c-fcf6cc65cf97	\N	https://directus.entla-postgres.orb.local
465	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.631+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	7214caf5-1b4a-437f-8ee9-56efe5b5d545	\N	https://directus.entla-postgres.orb.local
466	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.646+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	9dd4a36b-3715-458c-b8b4-712d61b5a9a5	\N	https://directus.entla-postgres.orb.local
467	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.646+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	d73e2efc-d9b3-4382-9f57-77a2dbc6e1ab	\N	https://directus.entla-postgres.orb.local
468	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.652+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	44af479d-e290-45a9-a725-52e4f62cdd36	\N	https://directus.entla-postgres.orb.local
469	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.685+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	e4eb0c20-cb36-489d-a5d9-2599f969574e	\N	https://directus.entla-postgres.orb.local
470	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.686+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	0c0ca496-0aaa-4391-8ce5-f0512996ce71	\N	https://directus.entla-postgres.orb.local
471	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.684+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	8a7ac3ac-d582-4cbe-be27-332f23069039	\N	https://directus.entla-postgres.orb.local
472	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.684+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	c754daf5-dfd3-457d-b9ed-79863a911f96	\N	https://directus.entla-postgres.orb.local
473	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.688+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	3aed12af-3205-4750-9ec4-ba4d2a043934	\N	https://directus.entla-postgres.orb.local
474	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.723+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	a3ab8a3e-1faa-48d4-87a7-3ba911ff847c	\N	https://directus.entla-postgres.orb.local
475	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.724+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	89ea3a33-5676-40bf-bfa9-946c34efe4ca	\N	https://directus.entla-postgres.orb.local
476	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.727+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	5cb8c50b-7efa-481c-9534-4ff5db080ac5	\N	https://directus.entla-postgres.orb.local
477	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.728+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	2c388d29-7e1d-4a46-a357-628d08696c29	\N	https://directus.entla-postgres.orb.local
481	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:39.995+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_roles	75ffdb49-44e0-4cbc-8da5-e523bf74192c	\N	https://directus.entla-postgres.orb.local
482	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.022+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	1	\N	https://directus.entla-postgres.orb.local
483	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.028+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	2	\N	https://directus.entla-postgres.orb.local
484	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.035+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	3	\N	https://directus.entla-postgres.orb.local
485	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.04+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	4	\N	https://directus.entla-postgres.orb.local
486	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.046+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	5	\N	https://directus.entla-postgres.orb.local
487	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.052+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	6	\N	https://directus.entla-postgres.orb.local
488	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.059+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	7	\N	https://directus.entla-postgres.orb.local
489	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.063+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	8	\N	https://directus.entla-postgres.orb.local
490	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.066+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	9	\N	https://directus.entla-postgres.orb.local
491	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.07+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	10	\N	https://directus.entla-postgres.orb.local
492	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.074+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	11	\N	https://directus.entla-postgres.orb.local
493	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.078+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	12	\N	https://directus.entla-postgres.orb.local
494	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.081+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	13	\N	https://directus.entla-postgres.orb.local
495	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.084+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	14	\N	https://directus.entla-postgres.orb.local
496	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.087+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	15	\N	https://directus.entla-postgres.orb.local
497	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.09+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	16	\N	https://directus.entla-postgres.orb.local
498	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.093+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	17	\N	https://directus.entla-postgres.orb.local
499	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.096+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	18	\N	https://directus.entla-postgres.orb.local
500	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.099+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	19	\N	https://directus.entla-postgres.orb.local
501	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.102+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	20	\N	https://directus.entla-postgres.orb.local
502	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.105+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	21	\N	https://directus.entla-postgres.orb.local
503	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.109+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	22	\N	https://directus.entla-postgres.orb.local
504	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.113+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	23	\N	https://directus.entla-postgres.orb.local
505	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:40.118+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	24	\N	https://directus.entla-postgres.orb.local
478	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.74+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	060ab3e5-330d-4f4f-8a20-778394929f32	\N	https://directus.entla-postgres.orb.local
479	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.745+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	3cabaf72-d1b8-4660-acb1-7ac7c4bc1fd4	\N	https://directus.entla-postgres.orb.local
480	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.746+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_files	b530c2cd-49be-43da-8f7e-9b144a07280e	\N	https://directus.entla-postgres.orb.local
506	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:49.142+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	25	\N	https://directus.entla-postgres.orb.local
507	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:50.169+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	26	\N	https://directus.entla-postgres.orb.local
508	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:51.658+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	27	\N	https://directus.entla-postgres.orb.local
509	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:52.63+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	28	\N	https://directus.entla-postgres.orb.local
510	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:54.397+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	29	\N	https://directus.entla-postgres.orb.local
511	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:55.513+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	30	\N	https://directus.entla-postgres.orb.local
512	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:56.831+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	31	\N	https://directus.entla-postgres.orb.local
513	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:00.327+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	32	\N	https://directus.entla-postgres.orb.local
514	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:02.198+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	33	\N	https://directus.entla-postgres.orb.local
515	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:03.656+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	34	\N	https://directus.entla-postgres.orb.local
516	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:04.819+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	35	\N	https://directus.entla-postgres.orb.local
517	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:06.227+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	36	\N	https://directus.entla-postgres.orb.local
518	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:08.153+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	37	\N	https://directus.entla-postgres.orb.local
519	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:10.163+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	38	\N	https://directus.entla-postgres.orb.local
520	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:11.803+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	39	\N	https://directus.entla-postgres.orb.local
521	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:13.948+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	40	\N	https://directus.entla-postgres.orb.local
522	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:15.416+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	41	\N	https://directus.entla-postgres.orb.local
523	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:17.199+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	42	\N	https://directus.entla-postgres.orb.local
524	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:19.008+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	43	\N	https://directus.entla-postgres.orb.local
525	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:22.405+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	44	\N	https://directus.entla-postgres.orb.local
526	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:24.434+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	45	\N	https://directus.entla-postgres.orb.local
527	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:27.477+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	46	\N	https://directus.entla-postgres.orb.local
528	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:29.144+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	47	\N	https://directus.entla-postgres.orb.local
529	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:30.345+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	48	\N	https://directus.entla-postgres.orb.local
530	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:31.531+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	49	\N	https://directus.entla-postgres.orb.local
531	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:32.763+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	50	\N	https://directus.entla-postgres.orb.local
532	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:34.618+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	51	\N	https://directus.entla-postgres.orb.local
533	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:36.031+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	52	\N	https://directus.entla-postgres.orb.local
534	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:37.377+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	53	\N	https://directus.entla-postgres.orb.local
535	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:38.849+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	54	\N	https://directus.entla-postgres.orb.local
536	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:40.984+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	55	\N	https://directus.entla-postgres.orb.local
537	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:36:42.544+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_permissions	56	\N	https://directus.entla-postgres.orb.local
538	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:39:05.631+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_users	cf1d30d7-7d7e-4c8c-83ab-fd807d1c9f19	\N	https://directus.entla-postgres.orb.local
539	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:39:05.648+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_roles	75ffdb49-44e0-4cbc-8da5-e523bf74192c	\N	https://directus.entla-postgres.orb.local
540	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:00.468+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
541	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:00.5+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	pages	1	\N	https://directus.entla-postgres.orb.local
542	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:22.024+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
543	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:22.072+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	pages	1	\N	https://directus.entla-postgres.orb.local
544	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:34.586+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
545	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:42.617+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
546	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:42.648+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	pages	1	\N	https://directus.entla-postgres.orb.local
547	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:41:13.137+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
548	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:41:13.163+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	pages	2	\N	https://directus.entla-postgres.orb.local
549	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:41:47.508+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
550	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:41:47.525+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	pages	3	\N	https://directus.entla-postgres.orb.local
551	run	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:42:06.33+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	\N	https://directus.entla-postgres.orb.local
552	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:42:06.361+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	pages	4	\N	https://directus.entla-postgres.orb.local
553	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:24:32.537+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage	1	\N	https://directus.entla-postgres.orb.local
554	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:29.511+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	247	\N	https://directus.entla-postgres.orb.local
555	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:33.586+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	1	\N	https://directus.entla-postgres.orb.local
556	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:33.734+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	2	\N	https://directus.entla-postgres.orb.local
557	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:33.776+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	3	\N	https://directus.entla-postgres.orb.local
558	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:33.833+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	4	\N	https://directus.entla-postgres.orb.local
559	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:33.88+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	5	\N	https://directus.entla-postgres.orb.local
560	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:33.923+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	6	\N	https://directus.entla-postgres.orb.local
561	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:33.962+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	7	\N	https://directus.entla-postgres.orb.local
562	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:34.014+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	247	\N	https://directus.entla-postgres.orb.local
563	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:34.05+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	8	\N	https://directus.entla-postgres.orb.local
564	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:34.099+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	9	\N	https://directus.entla-postgres.orb.local
565	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:52.112+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	248	\N	https://directus.entla-postgres.orb.local
566	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.307+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	10	\N	https://directus.entla-postgres.orb.local
567	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.376+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	11	\N	https://directus.entla-postgres.orb.local
568	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.417+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	12	\N	https://directus.entla-postgres.orb.local
569	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.454+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	13	\N	https://directus.entla-postgres.orb.local
570	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.486+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	14	\N	https://directus.entla-postgres.orb.local
571	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.521+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	15	\N	https://directus.entla-postgres.orb.local
572	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.563+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	16	\N	https://directus.entla-postgres.orb.local
573	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.596+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	17	\N	https://directus.entla-postgres.orb.local
574	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.636+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	248	\N	https://directus.entla-postgres.orb.local
575	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.671+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	18	\N	https://directus.entla-postgres.orb.local
576	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.712+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	19	\N	https://directus.entla-postgres.orb.local
577	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.755+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	20	\N	https://directus.entla-postgres.orb.local
578	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.789+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	21	\N	https://directus.entla-postgres.orb.local
579	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:57:55.825+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	22	\N	https://directus.entla-postgres.orb.local
580	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:58:16.784+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage	1	\N	https://directus.entla-postgres.orb.local
581	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:58:41.16+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage	1	\N	https://directus.entla-postgres.orb.local
582	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:24.25+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	249	\N	https://directus.entla-postgres.orb.local
583	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:24.49+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	250	\N	https://directus.entla-postgres.orb.local
584	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:24.497+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_collections	homepage_files	\N	https://directus.entla-postgres.orb.local
585	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:24.567+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	251	\N	https://directus.entla-postgres.orb.local
586	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:24.644+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	252	\N	https://directus.entla-postgres.orb.local
587	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:27.881+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	1	\N	https://directus.entla-postgres.orb.local
588	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:27.942+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	2	\N	https://directus.entla-postgres.orb.local
589	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:27.98+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	3	\N	https://directus.entla-postgres.orb.local
590	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.022+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	4	\N	https://directus.entla-postgres.orb.local
591	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.058+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	5	\N	https://directus.entla-postgres.orb.local
592	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.094+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	6	\N	https://directus.entla-postgres.orb.local
593	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.127+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	7	\N	https://directus.entla-postgres.orb.local
594	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.17+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	247	\N	https://directus.entla-postgres.orb.local
595	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.221+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	8	\N	https://directus.entla-postgres.orb.local
596	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.257+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	249	\N	https://directus.entla-postgres.orb.local
597	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:59:28.295+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	directus_fields	9	\N	https://directus.entla-postgres.orb.local
598	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 15:01:40.018+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage_files	1	\N	https://directus.entla-postgres.orb.local
599	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 15:01:40.032+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage_files	2	\N	https://directus.entla-postgres.orb.local
600	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 15:01:40.041+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage_files	3	\N	https://directus.entla-postgres.orb.local
601	create	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 15:01:40.046+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage_files	4	\N	https://directus.entla-postgres.orb.local
602	update	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 15:01:40.06+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	homepage	1	\N	https://directus.entla-postgres.orb.local
\.


--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
homepage	factory	\N	\N	f	t	\N	\N	t	archived	draft	\N	all	#2ECDA7	\N	1	\N	open	\N	f
pages	file_copy	\N	\N	f	f	[{"language":"de-DE","translation":"Seiten"}]	\N	t	archived	draft	\N	all	#2ECDA7	\N	2	\N	open	\N	f
posts	edit_document	\N	{{image.$thumbnail}}	f	f	\N	\N	t	archived	draft	\N	all	#2ECDA7	\N	3	\N	open	\N	f
jobs	hardware	\N	\N	f	f	\N	\N	t	archived	draft	\N	all	#2ECDA7	\N	4	\N	open	\N	f
team	frame_person	\N	\N	f	f	\N	\N	t	archived	draft	\N	all	#2ECDA7	\N	5	\N	open	\N	f
DoorCategory	warehouse	\N	\N	f	f	[{"language":"de-DE","translation":"Türenkategorie"}]	\N	t	archived	draft	\N	all	#FFA439	\N	6	\N	open	\N	f
quotes	attach_money	\N	\N	f	f	\N	\N	t	archived	draft	\N	all	#FFA439	\N	7	\N	open	\N	f
Product_ClimateClass	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	8	\N	open	\N	f
Product_ClimateClass_1	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	9	\N	open	\N	f
Product_HeatProtection	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	10	\N	open	\N	f
Product_SoundProofing	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	11	\N	open	\N	f
Decks	layers	\N	{{Materialien}} 	t	f	\N	\N	t	archived	draft	\N	all	\N	\N	12	\N	open	\N	f
Decks_Decks	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	13	\N	open	\N	f
Decks_asdfghj	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	14	\N	open	\N	f
Decks_many	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	15	\N	open	\N	f
Modifications_cat_surface	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	16	\N	open	\N	f
pages_files	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	17	\N	open	\N	f
Product_Surface	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	18	\N	open	\N	f
redirects	redo	\N	\N	f	f	\N	\N	t	archived	draft	\N	all	#FF99DD	\N	19	\N	open	\N	f
seo	search	\N	{{title}} | No Index:{{no_index}} No Follow:{{no_follow}}	f	f	\N	\N	t	\N	\N	\N	all	#FF99DD	\N	20	\N	open	\N	f
DoorCategory_Product	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	21	\N	open	\N	f
settings	\N	\N	\N	f	f	\N	status	t	archived	draft	sort	all	\N	\N	\N	\N	open	\N	f
Product	door_back	\N	{{name}}	f	f	[{"language":"de-DE","translation":"Produkte"}]	\N	t	archived	draft	\N	all	#FFA439	\N	1	DoorCategory	open	\N	f
DoorType	tools_power_drill	\N	\N	f	f	[{"language":"de-DE","translation":"Türentyp"}]	\N	t	archived	draft	\N	all	#2ECDA7	\N	2	Product	open	\N	f
Surface	vertical_align_bottom	\N	{{name}}	f	f	[{"language":"de-DE","translation":"Oberflächen"}]	\N	t	archived	draft	\N	all	#FFA439	\N	2	DoorCategory	open	\N	f
ClimateClass	nest_eco_leaf	\N	{{name}}{{cc.name}}	f	f	[{"language":"de-DE","translation":"Klimaklasse"}]	\N	t	archived	draft	\N	all	#2ECDA7	\N	3	Product	open	\N	f
Modifications	tools_power_drill	\N	\N	f	f	[{"language":"de-DE","translation":"Bearbeitungen"}]	\N	t	archived	draft	\N	all	#FFA439	\N	3	DoorCategory	open	\N	f
HeatProtection	mode_heat	\N	\N	f	f	[{"language":"de-DE","translation":"Wärmeschutz"}]	\N	t	archived	draft	\N	all	#2ECDA7	\N	4	Product	open	\N	f
SoundProofing	noise_aware	\N	{{name}} ({{value}})	f	f	[{"language":"de-DE","translation":"Schallschutz"}]	\N	t	archived	draft	\N	all	#2ECDA7	\N	5	Product	open	\N	f
Application	build	\N	\N	f	f	[{"language":"de-DE","translation":"Anwendung"}]	\N	t	archived	draft	\N	all	#2ECDA7	\N	1	Product	open	\N	f
cat_modifications	category	\N	\N	f	f	[{"language":"de-DE","translation":"Bearbeitungskategorie"}]	\N	t	\N	\N	\N	all	#FFA439	\N	1	Modifications	open	\N	f
cat_surface	category	\N	{{name}}	f	f	[{"language":"de-DE","translation":"Oberflächenkategorien"}]	\N	t	\N	\N	\N	all	#FFA439	\N	1	Surface	open	\N	f
homepage_files	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
\.


--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
\.


--
-- Data for Name: directus_extensions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_extensions (enabled, id, folder, source, bundle) FROM stdin;
t	f1be1611-88f4-4413-b9dd-19c37fed45a9	0665f631-9f90-4225-83ad-49fa895f3acb	registry	\N
t	505f4f67-7b75-4f5b-b057-242598c4a71d	410572b8-10c6-4552-aa27-ffb9a7f78d87	registry	\N
\.


--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
23	posts	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
24	posts	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
25	posts	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
26	posts	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
27	posts	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
28	posts	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
29	posts	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
30	posts	title	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
31	posts	slug	\N	input	{"iconLeft":"conversion_path"}	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
32	posts	image	file	file-image	\N	\N	\N	f	f	10	full	\N	\N	\N	t	\N	\N	\N
33	posts	body	\N	input-rich-text-html	{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]}	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
34	posts	seo	m2o	select-dropdown-m2o	{"enableSelect":false}	\N	\N	f	f	12	full	\N	\N	\N	f	\N	\N	\N
35	jobs	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
36	jobs	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
37	jobs	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
38	jobs	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
39	jobs	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	5	half	\N	\N	\N	f	\N	\N	\N
40	jobs	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	6	half	\N	\N	\N	f	\N	\N	\N
41	jobs	title	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
42	jobs	body	\N	input-rich-text-html	{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
43	jobs	contact	m2o	select-dropdown-m2o	{"template":"{{first_name}} {{last_name}}"}	related-values	{"template":"{{first_name}} {{last_name}}"}	f	f	9	full	[{"language":"de-DE","translation":"Kontakt"}]	\N	\N	f	\N	\N	\N
44	team	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
45	team	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
46	team	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
4	homepage	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
5	homepage	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	5	half	\N	\N	\N	f	\N	\N	\N
6	homepage	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	6	half	\N	\N	\N	f	\N	\N	\N
7	homepage	title	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
9	homepage	seo	m2o	select-dropdown-m2o	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
10	pages	id	\N	input	\N	\N	\N	t	f	1	full	\N	\N	\N	f	\N	\N	\N
11	pages	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
12	pages	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
13	pages	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
14	pages	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
15	pages	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
16	pages	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
17	pages	title	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
18	pages	slug	\N	input	{"iconLeft":"conversion_path"}	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
19	pages	image	file	file-image	\N	\N	\N	f	f	11	full	[{"language":"de-DE","translation":"Hauptbild"}]	\N	\N	f	\N	\N	\N
20	pages	gallery	files	files	{"limit":5}	\N	\N	f	f	12	full	[{"language":"de-DE","translation":"Bildergalerie"}]	\N	\N	f	\N	\N	\N
21	pages	body	\N	input-rich-text-html	{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]}	\N	\N	f	f	13	full	\N	\N	\N	f	\N	\N	\N
22	pages	seo	m2o	select-dropdown-m2o	{"enableSelect":false}	\N	\N	f	f	14	full	\N	\N	\N	f	\N	\N	\N
3	homepage	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	3	half	\N	\N	\N	f	\N	\N	\N
47	team	first_name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	4	half	\N	\N	\N	f	\N	\N	\N
48	team	last_name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	5	half	\N	\N	\N	f	\N	\N	\N
49	team	email	\N	input	{"iconLeft":"alternate_email"}	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
50	team	title	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
51	team	avatar	file	file-image	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
52	DoorCategory	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
53	DoorCategory	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
54	DoorCategory	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
55	DoorCategory	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
56	DoorCategory	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
57	DoorCategory	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
58	DoorCategory	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
59	DoorCategory	name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
60	DoorCategory	wingdoors	cast-boolean	boolean	\N	boolean	\N	f	f	9	half	[{"language":"de-DE","translation":"Flügel"}]	\N	\N	f	\N	\N	\N
61	DoorCategory	doorCasings	cast-boolean	boolean	\N	boolean	\N	f	f	10	half	[{"language":"de-DE","translation":"Futtertypen aktivieren"}]	\N	\N	f	\N	\N	\N
62	DoorCategory	products	m2m	list-m2m	{"template":"{{Product_id.thickness}} {{Product_id.DoorType.name}}"}	related-values	{"template":"{{Product_id.DoorType.name}}"}	f	f	11	full	\N	\N	\N	f	\N	\N	\N
63	quotes	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
64	quotes	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
65	quotes	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
66	quotes	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
67	quotes	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
68	quotes	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
69	quotes	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
70	quotes	title	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
71	quotes	user	o2m	list-o2m	\N	\N	\N	f	f	9	half	\N	\N	\N	f	\N	\N	\N
72	quotes	reference	\N	input	{"iconLeft":"barefoot"}	\N	\N	f	f	10	half	\N	\N	\N	f	\N	\N	\N
73	quotes	quote_data	\N	input-code	{"language":"JSON"}	\N	\N	t	f	11	full	[{"language":"de-DE","translation":"Offertdaten"}]	\N	\N	f	\N	\N	\N
74	Product_ClimateClass	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
75	Product_ClimateClass	Product_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
76	Product_ClimateClass	ClimateClass_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
77	Product_ClimateClass_1	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
78	Product_ClimateClass_1	Product_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
79	Product_ClimateClass_1	ClimateClass_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
80	Product_HeatProtection	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
81	Product_HeatProtection	Product_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
82	Product_HeatProtection	HeatProtection_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
83	Product_SoundProofing	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
84	Product_SoundProofing	Product_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
85	Product_SoundProofing	SoundProofing_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
86	Decks	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
87	Decks	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
88	Decks	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
89	Decks	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
90	Decks	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
91	Decks	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
92	Decks	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
93	Decks	Materialien	cast-json	list	{"fields":[{"field":"Material","name":"Material","type":"string","meta":{"field":"Material","type":"string","required":true,"interface":null}}],"template":"{{ Material }}"}	formatted-json-value	{"format":"{{Materia}}"}	f	f	9	full	\N	\N	\N	f	\N	\N	\N
94	Decks	asdfghj	m2a	list-m2a	\N	related-values	{"template":"{{item:Surface.name}}"}	f	f	10	full	\N	\N	\N	f	\N	\N	\N
95	Decks	Prices	m2m	list-m2m	\N	related-values	{"template":"{{related_Decks_id.Materialien}}"}	f	f	11	full	\N	\N	\N	f	\N	\N	\N
96	Decks_Decks	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
97	Decks_Decks	Decks_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
98	Decks_Decks	related_Decks_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
99	Decks_asdfghj	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
100	Decks_asdfghj	Decks_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
101	Decks_asdfghj	item	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
102	Decks_asdfghj	collection	\N	\N	\N	\N	\N	f	t	4	full	\N	\N	\N	f	\N	\N	\N
103	Decks_many	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
104	Decks_many	Decks_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
105	Decks_many	item	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
106	Decks_many	collection	\N	\N	\N	\N	\N	f	t	4	full	\N	\N	\N	f	\N	\N	\N
107	Modifications_cat_surface	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
108	Modifications_cat_surface	Modifications_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
109	Modifications_cat_surface	cat_surface_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
110	pages_files	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
111	pages_files	pages_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
112	pages_files	directus_files_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
113	Product_Surface	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
114	Product_Surface	Product_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
115	Product_Surface	Surface_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
116	redirects	id	uuid	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
117	redirects	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
118	redirects	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	3	half	\N	\N	\N	f	\N	\N	\N
119	redirects	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
120	redirects	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	5	half	\N	\N	\N	f	\N	\N	\N
121	redirects	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	6	half	\N	\N	\N	f	\N	\N	\N
122	redirects	notice-yzy2ah	alias,no-data	presentation-notice	{"icon":"warning","text":"For redirects to take effect, the site has to be re-deployed.","color":"warning"}	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
123	redirects	url_old	\N	input	{"placeholder":"/old-url","trim":true,"iconLeft":"conversion_path_off"}	\N	\N	f	f	8	full	\N	\N	\N	t	\N	\N	\N
124	redirects	url_new	\N	input	{"iconLeft":"conversion_path"}	\N	\N	f	f	9	full	\N	\N	\N	t	\N	\N	\N
125	redirects	response_code	\N	select-dropdown	{"allowOther":true,"icon":"call_split","choices":[{"text":"Permanent (301)","value":"301"},{"text":"Temporary (302)","value":"302"}]}	\N	\N	f	f	10	full	\N	\N	\N	t	\N	\N	\N
126	seo	id	uuid	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
127	seo	title	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
128	seo	meta_description	\N	input-multiline	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
129	seo	cononical_url	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
130	seo	no_follow	cast-boolean	boolean	\N	\N	\N	f	f	5	half	\N	\N	\N	f	\N	\N	\N
131	seo	no_index	cast-boolean	boolean	\N	\N	\N	f	f	6	half	\N	\N	\N	f	\N	\N	\N
132	seo	sitemap_change_frequency	\N	input	\N	\N	\N	f	f	7	half	\N	\N	\N	f	\N	\N	\N
133	seo	sitemap_priority	\N	input	\N	\N	\N	f	f	8	half	\N	\N	\N	f	\N	\N	\N
134	seo	og_image	file	file-image	{}	image	\N	f	f	9	full	\N	Defaults to global site OG image. The recommended size is 1200px x 630px. The image will be focal cropped to this dimension.	\N	f	\N	\N	\N
135	DoorCategory_Product	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
136	DoorCategory_Product	DoorCategory_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
137	DoorCategory_Product	Product_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
138	settings	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
139	settings	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published","color":"var(--theme--primary)"},{"text":"Draft","value":"draft","color":"var(--theme--foreground)"},{"text":"Archived","value":"archived","color":"var(--theme--warning)"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"Draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"Archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
140	settings	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
141	settings	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
142	settings	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
143	settings	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
144	settings	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
145	settings	url	\N	input	{"placeholder":"https://entla.ch"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
146	settings	og_image	file	file-image	{}	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
147	settings	lageplan	\N	map	{"defaultView":{"center":{"lng":0,"lat":0},"zoom":0,"bearing":0,"pitch":0},"geometryType":"Point"}	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
148	Product	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
149	Product	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
150	Product	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
151	Product	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
152	Product	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
153	Product	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
154	Product	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
155	Product	DoorType	m2o	select-dropdown-m2o	{"template":"{{name}}"}	related-values	{"template":"{{name}}"}	f	f	8	half	[{"language":"de-DE","translation":"Türtyp"}]	\N	\N	f	\N	\N	\N
156	Product	application	m2o	select-dropdown-m2o	{"template":"{{name}}","enableCreate":false}	related-values	{"template":"{{name}}"}	f	f	10	half	[{"language":"de-DE","translation":"Anwendung"}]	\N	\N	t	\N	\N	\N
157	Product	thickness	\N	input	{"iconLeft":"vertical_align_center"}	formatted-value	{"icon":"vertical_align_center","suffix":" mm"}	f	f	11	half	[{"language":"de-DE","translation":"Türdicke (mm)"}]	\N	\N	t	\N	\N	\N
158	Product	SoundProofing	m2o	select-dropdown-m2o	{"template":"{{name}}","enableCreate":false}	related-values	{"template":"{{name}}"}	f	f	12	half	[{"language":"de-DE","translation":"Schallschutz"}]	\N	\N	t	\N	\N	\N
159	Product	HeatProtection	m2o	select-dropdown-m2o	{"template":"{{name}}","enableCreate":false}	related-values	{"template":"{{name}}"}	f	f	13	half	[{"language":"de-DE","translation":"Wärmeschutz"}]	\N	\N	t	\N	\N	\N
160	Product	ClimateClass	m2m	list-m2m	{"enableCreate":false,"template":"{{ClimateClass_id.name}}"}	related-values	{"template":"{{ClimateClass_id.name}}"}	f	f	14	half	[{"language":"de-DE","translation":"Klimaklassen"}]	\N	\N	t	\N	\N	\N
161	Product	weight	\N	input	{"iconLeft":"scale"}	formatted-value	{"suffix":" kg/m2","conditionalFormatting":null}	f	f	15	half	[{"language":"de-DE","translation":"Gewicht"}]	\N	\N	f	\N	\N	\N
162	Product	Surfaces	m2m	list-m2m	{"template":"{{Surface_id.items}}"}	related-values	{"template":"{{Surface_id.items}}"}	f	f	16	full	[{"language":"de-DE","translation":"Verfügbare Oberflächen"}]	\N	\N	f	\N	\N	\N
163	Product	divider-5t2_qv	alias,no-data	presentation-divider	{"title":"Einbruchschutz ","icon":"enhanced_encryption"}	\N	\N	f	f	17	full	\N	\N	\N	f	\N	\N	\N
164	Product	rc2	cast-boolean	boolean	\N	boolean	{"labelOn":"Einbruchschutz RC2"}	f	f	18	half	[{"language":"de-DE","translation":"RC2"}]	\N	\N	f	\N	\N	\N
165	Product	rc3	cast-boolean	boolean	\N	\N	\N	f	f	19	half	[{"language":"de-DE","translation":"RC3"}]	\N	\N	f	\N	\N	\N
166	Product	divider-1zdqx9	alias,no-data	presentation-divider	{"title":"VKF-Zulassung","inlineTitle":true}	\N	\N	f	f	20	full	\N	\N	\N	f	\N	\N	\N
167	Product	vkf	cast-boolean	boolean	\N	\N	\N	f	f	21	full	[{"language":"de-DE","translation":"EI30 mit VKF-Zulassung"}]	\N	\N	f	\N	\N	\N
168	Product	divider-arvyjc	alias,no-data	presentation-divider	{"title":"Strahlenschutz"}	\N	\N	f	f	22	full	\N	\N	\N	f	\N	\N	\N
169	Product	leadThickness	\N	input	{"iconLeft":"shield_with_heart"}	formatted-value	{"suffix":" mm"}	f	f	23	full	[{"language":"de-DE","translation":"Blei in mm"}]	\N	[{"name":"Wenn Türentyp == Strahlenschutztüre","rule":null,"options":{"font":"sans-serif","trim":false,"masked":false,"clear":false,"slug":false},"hidden":false}]	f	\N	\N	\N
170	Product	prices	\N	input-code	\N	\N	\N	t	f	24	full	\N	\N	\N	f	\N	\N	\N
171	DoorType	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
172	DoorType	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
173	DoorType	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
174	DoorType	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
175	DoorType	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	5	half	\N	\N	\N	f	\N	\N	\N
176	DoorType	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	6	half	\N	\N	\N	f	\N	\N	\N
177	DoorType	name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	7	full	[{"language":"de-DE","translation":"Türentyp"}]	\N	\N	f	\N	\N	\N
178	DoorType	application	m2o	select-dropdown-m2o	{"template":"{{name}}"}	related-values	{"template":"{{name}}"}	f	f	8	full	[{"language":"de-DE","translation":"Anwendung"}]	\N	\N	f	\N	\N	\N
179	DoorType	image	file	file-image	{"folder":"92a278b6-c1ae-4c56-95a8-8ca0bdbcd001"}	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
180	DoorType	prices_surfaces	\N	input-code	\N	\N	\N	f	f	12	full	[{"language":"de-DE","translation":"Preistabelle Oberflächen"}]	\N	\N	f	\N	\N	\N
181	Surface	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
182	Surface	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
183	Surface	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
184	Surface	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
185	Surface	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
186	Surface	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
187	Surface	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
188	Surface	cat_surface	m2o	select-dropdown-m2o	\N	related-values	{"template":"{{name}}"}	f	f	9	full	[{"language":"de-DE","translation":"Oberflächenkategorie"}]	\N	\N	f	\N	\N	\N
189	Surface	items	cast-json	tags	{"alphabetize":true}	labels	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
190	ClimateClass	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
191	ClimateClass	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
192	ClimateClass	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
193	ClimateClass	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
194	ClimateClass	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
195	ClimateClass	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
196	ClimateClass	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
197	ClimateClass	name	\N	input	{"iconLeft":"text_fields"}	formatted-value	{"prefix":null,"suffix":null,"icon":"nest_eco_leaf","color":null}	f	f	8	full	[{"language":"de-DE","translation":"Klimaklasse"}]	\N	\N	f	\N	\N	\N
198	ClimateClass	cc	\N	select-dropdown-m2o	\N	\N	\N	f	t	9	full	\N	\N	\N	f	\N	\N	\N
199	ClimateClass	clicla	\N	select-dropdown-m2o	\N	\N	\N	f	t	10	full	\N	\N	\N	f	\N	\N	\N
200	Modifications	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
201	Modifications	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
202	Modifications	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
203	Modifications	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
204	Modifications	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
205	Modifications	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
206	Modifications	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
207	Modifications	name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
208	Modifications	category	m2o	select-dropdown-m2o	{"template":"{{name}}"}	related-values	{"template":"{{name}}"}	f	f	9	half	[{"language":"de-DE","translation":"Kategorie"}]	\N	\N	f	\N	\N	\N
209	Modifications	surface	m2m	list-m2m	{"template":"{{cat_surface_id.name}}"}	related-values	{"template":"{{cat_surface_id.name}}"}	f	f	10	half	\N	\N	\N	t	\N	\N	\N
210	Modifications	divider-luvkdr	alias,no-data	presentation-divider	{"title":"Preise"}	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
211	HeatProtection	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
212	HeatProtection	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
213	HeatProtection	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
214	HeatProtection	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
215	HeatProtection	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
216	HeatProtection	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
217	HeatProtection	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
218	HeatProtection	name	\N	input	{"iconLeft":"text_fields"}	formatted-value	{"icon":"local_fire_department"}	f	f	8	full	[{"language":"de-DE","translation":"Wärmeschutz"}]	\N	\N	f	\N	\N	\N
219	SoundProofing	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
220	SoundProofing	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
221	SoundProofing	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
222	SoundProofing	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
223	SoundProofing	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
224	SoundProofing	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
225	SoundProofing	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
226	SoundProofing	name	\N	input	{"iconLeft":"text_fields"}	formatted-value	{"icon":"noise_aware"}	f	f	10	full	[{"language":"de-DE","translation":"Schallschutz"}]	\N	\N	f	\N	\N	\N
227	SoundProofing	value	\N	input	{"iconLeft":"numbers"}	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
228	Application	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
229	Application	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
230	Application	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
231	Application	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
232	Application	date_created	date-created,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
233	Application	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
234	Application	date_updated	date-updated,cast-timestamp	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
235	Application	name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
236	cat_modifications	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
237	cat_modifications	name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
238	cat_surface	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
239	cat_surface	name	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
240	directus_settings	reporting_divider	alias,no-data	presentation-divider	{"icon":"feedback","title":"Reporting"}	\N	\N	f	f	30	full	\N	\N	\N	f	\N	\N	\N
241	directus_settings	report_feature_url	\N	input	{"iconRight":"link","placeholder":"https://example.com/feature"}	\N	\N	f	f	31	half	\N	\N	\N	f	\N	\N	\N
242	directus_settings	report_bug_url	\N	input	{"iconRight":"link","placeholder":"https://example.com/bug"}	\N	\N	f	f	32	half	\N	\N	\N	f	\N	\N	\N
244	directus_users	entla_user	\N	select-dropdown-m2o	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
246	directus_webhooks	migrated_flow	\N	\N	\N	\N	\N	f	t	12	full	\N	\N	\N	f	\N	\N	\N
243	directus_settings	report_error_url	\N	system-display-template	{"placeholder":"https://example.com/error","fields":[{"name":"Error","field":"error","key":"error","path":"error","children":[{"name":"Name","field":"name","key":"error.name","path":"error.name"},{"name":"Message","field":"message","key":"error.message","path":"error.message"}]},{"name":"Navigator","field":"navigator","key":"navigator","path":"navigator","children":[{"name":"Language","field":"language","key":"navigator.language","path":"navigator.language"},{"name":"User Agent","field":"userAgent","key":"navigator.userAgent","path":"navigator.userAgent"}]},{"name":"Route","field":"route","key":"route","path":"route","children":[{"name":"Full Path","field":"fullPath","key":"route.fullPath","path":"route.fullPath"},{"name":"Hash","field":"hash","key":"route.hash","path":"route.hash"},{"name":"Name","field":"name","key":"route.name","path":"route.name"},{"name":"Path","field":"path","key":"route.path","path":"route.path"},{"name":"Query","field":"query","key":"route.query","path":"route.query"}]},{"name":"User","field":"user","key":"user","path":"user","children":[{"name":"ID","field":"id","key":"user.id","path":"user.id"},{"name":"First Name","field":"first_name","key":"user.first_name","path":"user.first_name"},{"name":"Last Name","field":"last_name","key":"user.last_name","path":"user.last_name"},{"name":"Status","field":"status","key":"user.status","path":"user.status"},{"name":"Title","field":"title","key":"user.title","path":"user.title"},{"name":"Description","field":"description","key":"user.description","path":"user.description"},{"name":"Location","field":"location","key":"user.location","path":"user.location"}]},{"name":"Role","field":"role","key":"role","path":"role","children":[{"name":"ID","field":"id","key":"role.id","path":"role.id"},{"name":"Name","field":"name","key":"role.name","path":"role.name"}]}]}	\N	\N	f	f	33	full	\N	\N	\N	f	\N	\N	\N
245	directus_webhooks	was_active_before_deprecation	\N	\N	\N	\N	\N	f	t	11	full	\N	\N	\N	f	\N	\N	\N
248	pages	subTitle	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
250	homepage_files	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
251	homepage_files	homepage_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
252	homepage_files	directus_files_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
1	homepage	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
2	homepage	status	\N	select-dropdown	{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
247	homepage	subTitle	\N	input	{"iconLeft":"text_fields"}	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
249	homepage	slider	files	files	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af"}	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
\.


--
-- Data for Name: directus_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, uploaded_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y) FROM stdin;
38c2cc6f-39c9-4c54-8859-459a15608e79	local	38c2cc6f-39c9-4c54-8859-459a15608e79.avif	clemens_van_den_wyenbergh.avif	Clemens Van Den Wyenbergh	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.686856+00	\N	2024-04-20 09:30:18.856+00	\N	6507	800	781	\N	\N	\N	\N	\N	{}	\N	\N
b1dec839-e9db-4dc4-be8f-e0283a0641f2	local	b1dec839-e9db-4dc4-be8f-e0283a0641f2.avif	mueller_marco-768x768.avif	Mueller Marco 768x768	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.706923+00	\N	2024-04-20 09:30:18.866+00	\N	10024	800	800	\N	\N	\N	\N	\N	{}	\N	\N
4f10645d-d328-4926-83b1-ded8750eb0e3	local	4f10645d-d328-4926-83b1-ded8750eb0e3.avif	urs_wespi.avif	Urs Wespi	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.687225+00	\N	2024-04-20 09:30:18.869+00	\N	6300	800	779	\N	\N	\N	\N	\N	{}	\N	\N
03b91eaa-2ceb-4127-bcb0-5ca911221d90	local	03b91eaa-2ceb-4127-bcb0-5ca911221d90.avif	DSC_1718_2-768x923.avif	Dsc 1718 2 768x923	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.687443+00	\N	2024-04-20 09:30:18.866+00	\N	9936	800	961	\N	\N	\N	\N	\N	{}	\N	\N
588f542f-0c1b-4a1a-9ce6-2aedc4e60409	local	588f542f-0c1b-4a1a-9ce6-2aedc4e60409.avif	lucy_renggli.avif	Lucy Renggli	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.686968+00	\N	2024-04-20 09:30:18.871+00	\N	6738	800	777	\N	\N	\N	\N	\N	{}	\N	\N
f8733deb-05df-4166-8ab8-cbf8c45c215a	local	f8733deb-05df-4166-8ab8-cbf8c45c215a.avif	DSC_1709__2-768x861.avif	Dsc 1709  2 768x861	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.758962+00	\N	2024-04-20 09:30:18.868+00	\N	11037	800	897	\N	\N	\N	\N	\N	{}	\N	\N
43eab949-47b4-41b5-aab7-6782a64e43c5	local	43eab949-47b4-41b5-aab7-6782a64e43c5.avif	martin_laeng.avif	Martin Laeng	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.707309+00	\N	2024-04-20 09:30:18.887+00	\N	6104	800	779	\N	\N	\N	\N	\N	{}	\N	\N
9e2fdafb-312c-48f0-980f-4a78f46daaa4	local	9e2fdafb-312c-48f0-980f-4a78f46daaa4.avif	martin_brun.avif	Martin Brun	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.707151+00	\N	2024-04-20 09:30:18.887+00	\N	7047	800	779	\N	\N	\N	\N	\N	{}	\N	\N
724fea3d-983e-44c8-8933-765b9dfb9b8c	local	724fea3d-983e-44c8-8933-765b9dfb9b8c.avif	felix_renggli.avif	Felix Renggli	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.802018+00	\N	2024-04-20 09:30:18.92+00	\N	6898	800	779	\N	\N	\N	\N	\N	{}	\N	\N
3711b3e8-23e2-403e-ba2e-e5ce4068d2a9	local	3711b3e8-23e2-403e-ba2e-e5ce4068d2a9.avif	cornelia_stadler_ruessli.avif	Cornelia Stadler Ruessli	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.810211+00	\N	2024-04-20 09:30:18.928+00	\N	6834	800	779	\N	\N	\N	\N	\N	{}	\N	\N
841257fd-3bf8-49a9-812c-efbd6fb9f110	local	841257fd-3bf8-49a9-812c-efbd6fb9f110.avif	huwyler_lee-768x768.avif	Huwyler Lee 768x768	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.829588+00	\N	2024-04-20 09:30:18.948+00	\N	8567	800	800	\N	\N	\N	\N	\N	{}	\N	\N
afa1cb6d-68ab-4938-9bec-46fafcebbca9	local	afa1cb6d-68ab-4938-9bec-46fafcebbca9.avif	DSC_1734-768x851.avif	Dsc 1734 768x851	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.767584+00	\N	2024-04-20 09:30:18.968+00	\N	10763	800	886	\N	\N	\N	\N	\N	{}	\N	\N
4871510b-f8ed-43a0-9b06-714430b31dcd	local	4871510b-f8ed-43a0-9b06-714430b31dcd.avif	daniel_schilter.avif	Daniel Schilter	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.751468+00	\N	2024-04-20 09:30:18.967+00	\N	6749	800	779	\N	\N	\N	\N	\N	{}	\N	\N
457b1228-a3cc-4e8c-b9ce-2f2b64373fb5	local	457b1228-a3cc-4e8c-b9ce-2f2b64373fb5.avif	daniel_portmann.avif	Daniel Portmann	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.829488+00	\N	2024-04-20 09:30:18.986+00	\N	5910	800	776	\N	\N	\N	\N	\N	{}	\N	\N
42cf7e5e-953e-45f0-b700-33b6d9fb6920	local	42cf7e5e-953e-45f0-b700-33b6d9fb6920.avif	peter_bucheli.avif	Peter Bucheli	image/avif	6d26620a-9265-4fb4-b2b8-94057ddf82e6	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:18.801269+00	\N	2024-04-20 09:30:18.996+00	\N	5588	800	779	\N	\N	\N	\N	\N	{}	\N	\N
b9376cc6-2c96-4c17-91f4-0b699a67bdaf	local	b9376cc6-2c96-4c17-91f4-0b699a67bdaf.avif	Eine fiktive Türe.avif	Eine Fiktive Türe	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:27.414341+00	\N	2024-04-20 09:30:27.439+00	\N	53894	800	800	\N	\N	\N	\N	\N	{}	\N	\N
28c3168a-30b2-4d56-b531-183cbc78afae	local	28c3168a-30b2-4d56-b531-183cbc78afae.avif	dBFavoritAluEI30.avif	D B Favorit Alu E I30	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:30:52.23906+00	\N	2024-04-20 09:30:52.26+00	\N	15954	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
5a79381c-4749-44cb-9080-494c26117948	local	5a79381c-4749-44cb-9080-494c26117948.avif	AluspanMitAluDeckblatt.avif	Aluspan Mit Alu Deckblatt	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.478027+00	\N	2024-04-20 09:32:54.591+00	\N	16839	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
76a5c8fd-f8dd-43d5-8174-2d9336de3782	local	76a5c8fd-f8dd-43d5-8174-2d9336de3782.avif	BrandexEI30.avif	Brandex E I30	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.524983+00	\N	2024-04-20 09:32:54.654+00	\N	7286	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
cd0de9db-b5ce-4636-9fb2-0677c4ec3690	local	cd0de9db-b5ce-4636-9fb2-0677c4ec3690.avif	AluspanMitAluEinlage.avif	Aluspan Mit Alu Einlage	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.523014+00	\N	2024-04-20 09:32:54.656+00	\N	16204	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
e4c641ac-e971-4c3c-b321-a9142fc36e1d	local	e4c641ac-e971-4c3c-b321-a9142fc36e1d.avif	SPSpanVoll.avif	Sp Span Voll	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.571795+00	\N	2024-04-20 09:32:54.707+00	\N	16405	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
938aa17e-1099-4f40-9358-72dc83cefce7	local	938aa17e-1099-4f40-9358-72dc83cefce7.avif	MassivTuere.avif	Massiv Tuere	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.556052+00	\N	2024-04-20 09:32:54.729+00	\N	5072	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
1a2fe64d-2386-4022-ae23-5a5f4df6893e	local	1a2fe64d-2386-4022-ae23-5a5f4df6893e.avif	HohlTuere.avif	Hohl Tuere	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.554358+00	\N	2024-04-20 09:32:54.729+00	\N	9277	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
66a6536d-0c71-48bd-9988-f9e1035b8839	local	66a6536d-0c71-48bd-9988-f9e1035b8839.avif	dBFavoritAlu.avif	D B Favorit Alu	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.555063+00	\N	2024-04-20 09:32:54.737+00	\N	15954	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
90b560f0-e26b-470f-81e2-269a6beda121	local	90b560f0-e26b-470f-81e2-269a6beda121.avif	RSRoehrenspan.avif	Rs Roehrenspan	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.590854+00	\N	2024-04-20 09:32:54.755+00	\N	13829	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
68c5969a-7867-4aac-9b2f-3fdb66f81507	local	68c5969a-7867-4aac-9b2f-3fdb66f81507.avif	BrandexAluEI30.avif	Brandex Alu E I30	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.463178+00	\N	2024-04-20 09:32:54.594+00	\N	12521	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
48dc4ffb-ddf9-4e9f-a579-0964355760ee	local	48dc4ffb-ddf9-4e9f-a579-0964355760ee.avif	LSLeichtspan.avif	Ls Leichtspan	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.616319+00	\N	2024-04-20 09:32:54.696+00	\N	15698	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
84ffe199-7fce-4e76-8f26-9309c1680fe7	local	84ffe199-7fce-4e76-8f26-9309c1680fe7.avif	StrahlenschutzTuere.avif	Strahlenschutz Tuere	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.64957+00	\N	2024-04-20 09:32:54.867+00	\N	12521	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
847f3618-0df4-4e99-a27e-27196589b02c	local	847f3618-0df4-4e99-a27e-27196589b02c.avif	dBFavoit.avif	D B Favoit	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.592697+00	\N	2024-04-20 09:32:54.714+00	\N	16519	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
b7a6babf-3702-4801-a50b-2115bc3700d9	local	b7a6babf-3702-4801-a50b-2115bc3700d9.avif	dBFavoritEI30.avif	D B Favorit E I30	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.591628+00	\N	2024-04-20 09:32:54.79+00	\N	16519	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
bf51d748-34ed-48a9-9309-e523c4c05083	local	bf51d748-34ed-48a9-9309-e523c4c05083.avif	14-Endfertigung-Buersten-Altholz.avif	14 Endfertigung Buersten Altholz	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.462138+00	\N	2024-04-20 09:35:21.734+00	\N	15613	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
7c15ecc4-f4b1-4184-a52f-42eb23b313ec	local	7c15ecc4-f4b1-4184-a52f-42eb23b313ec.avif	03-Buero-CAD.avif	03 Buero Cad	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.531997+00	\N	2024-04-20 09:35:21.741+00	\N	25157	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
d73e2efc-d9b3-4382-9f57-77a2dbc6e1ab	local	d73e2efc-d9b3-4382-9f57-77a2dbc6e1ab.avif	10-CNC-Steuerpult-Sinumerik.avif	10 Cnc Steuerpult Sinumerik	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.589122+00	\N	2024-04-20 09:35:21.757+00	\N	24463	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
2c388d29-7e1d-4a46-a357-628d08696c29	local	2c388d29-7e1d-4a46-a357-628d08696c29.avif	19-Gruppenraum.avif	19 Gruppenraum	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.698176+00	\N	2024-04-20 09:35:21.922+00	\N	20877	800	533	\N	\N	\N	\N	\N	{}	\N	\N
0186c02c-3da7-4925-acc1-c5d36929dc52	local	0186c02c-3da7-4925-acc1-c5d36929dc52.avif	01-Aussenaufnahme.avif	01 Aussenaufnahme	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.471438+00	\N	2024-04-20 09:35:21.737+00	\N	31549	800	533	\N	\N	\N	\N	\N	{}	\N	\N
9dd4a36b-3715-458c-b8b4-712d61b5a9a5	local	9dd4a36b-3715-458c-b8b4-712d61b5a9a5.avif	15-Oberflaechenbehandlung-Spritzkabine.avif	15 Oberflaechenbehandlung Spritzkabine	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.588607+00	\N	2024-04-20 09:35:21.775+00	\N	17598	800	533	\N	\N	\N	\N	\N	{}	\N	\N
5cb8c50b-7efa-481c-9534-4ff5db080ac5	local	5cb8c50b-7efa-481c-9534-4ff5db080ac5.avif	20-Schulungsraum.avif	20 Schulungsraum	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.704885+00	\N	2024-04-20 09:35:21.892+00	\N	27696	800	533	\N	\N	\N	\N	\N	{}	\N	\N
02483b5a-3d2a-47e0-963c-fcf6cc65cf97	local	02483b5a-3d2a-47e0-963c-fcf6cc65cf97.avif	13-Halle-Endfertigung.avif	13 Halle Endfertigung	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.518028+00	\N	2024-04-20 09:35:21.755+00	\N	38914	800	533	\N	\N	\N	\N	\N	{}	\N	\N
89ea3a33-5676-40bf-bfa9-946c34efe4ca	local	89ea3a33-5676-40bf-bfa9-946c34efe4ca.avif	05-Halle-Massivholzzuschnitt.avif	05 Halle Massivholzzuschnitt	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.697981+00	\N	2024-04-20 09:35:21.888+00	\N	34631	800	533	\N	\N	\N	\N	\N	{}	\N	\N
7214caf5-1b4a-437f-8ee9-56efe5b5d545	local	7214caf5-1b4a-437f-8ee9-56efe5b5d545.avif	02-Buero.avif	02 Buero	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.537633+00	\N	2024-04-20 09:35:21.754+00	\N	19854	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
a3ab8a3e-1faa-48d4-87a7-3ba911ff847c	local	a3ab8a3e-1faa-48d4-87a7-3ba911ff847c.avif	04-Holzlager-Massivholz.avif	04 Holzlager Massivholz	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.69515+00	\N	2024-04-20 09:35:21.905+00	\N	35217	800	533	\N	\N	\N	\N	\N	{}	\N	\N
44af479d-e290-45a9-a725-52e4f62cdd36	local	44af479d-e290-45a9-a725-52e4f62cdd36.avif	16-Grundieren.avif	16 Grundieren	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.603645+00	\N	2024-04-20 09:35:21.823+00	\N	16712	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
3cabaf72-d1b8-4660-acb1-7ac7c4bc1fd4	local	3cabaf72-d1b8-4660-acb1-7ac7c4bc1fd4.avif	09-Maschinenhalle.avif	09 Maschinenhalle	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.730352+00	\N	2024-04-20 09:35:21.977+00	\N	39303	800	533	\N	\N	\N	\N	\N	{}	\N	\N
3aed12af-3205-4750-9ec4-ba4d2a043934	local	3aed12af-3205-4750-9ec4-ba4d2a043934.avif	18-Fuhrpark.avif	18 Fuhrpark	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.617881+00	\N	2024-04-20 09:35:21.887+00	\N	29276	800	533	\N	\N	\N	\N	\N	{}	\N	\N
e4eb0c20-cb36-489d-a5d9-2599f969574e	local	e4eb0c20-cb36-489d-a5d9-2599f969574e.avif	06-Ablaengen-Kippfraese.avif	06 Ablaengen Kippfraese	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.602525+00	\N	2024-04-20 09:35:21.818+00	\N	26561	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
0c0ca496-0aaa-4391-8ce5-f0512996ce71	local	0c0ca496-0aaa-4391-8ce5-f0512996ce71.avif	17-Spedition.avif	17 Spedition	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.618588+00	\N	2024-04-20 09:35:21.828+00	\N	25741	800	533	\N	\N	\N	\N	\N	{}	\N	\N
c754daf5-dfd3-457d-b9ed-79863a911f96	local	c754daf5-dfd3-457d-b9ed-79863a911f96.avif	08-Doppelender-SCM.avif	08 Doppelender Scm	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.602585+00	\N	2024-04-20 09:35:21.822+00	\N	24812	800	533	\N	\N	\N	\N	\N	{}	\N	\N
060ab3e5-330d-4f4f-8a20-778394929f32	local	060ab3e5-330d-4f4f-8a20-778394929f32.avif	12-CNC-Anderson.avif	12 Cnc Anderson	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.731659+00	\N	2024-04-20 09:35:21.971+00	\N	31124	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
8a7ac3ac-d582-4cbe-be27-332f23069039	local	8a7ac3ac-d582-4cbe-be27-332f23069039.avif	11-CNC-Reichenbacher.avif	11 Cnc Reichenbacher	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.618755+00	\N	2024-04-20 09:35:21.827+00	\N	17265	800	1200	\N	\N	\N	\N	\N	{}	\N	\N
b530c2cd-49be-43da-8f7e-9b144a07280e	local	b530c2cd-49be-43da-8f7e-9b144a07280e.avif	07-Presse-Sergiani.avif	07 Presse Sergiani	image/avif	24e6a80b-6441-4963-a4fc-cac2978773af	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:35:21.731747+00	\N	2024-04-20 09:35:21.976+00	\N	21984	800	533	\N	\N	\N	\N	\N	{}	\N	\N
44d52a91-ab35-41b0-b9b3-00628fb0a516	local	44d52a91-ab35-41b0-b9b3-00628fb0a516.avif	AluTherma.avif	Alu Therma	image/avif	fe38f767-ade3-4362-bc38-c65861fad0c2	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:32:54.571067+00	\N	2024-04-20 09:32:54.808+00	\N	11196	800	1155	\N	\N	\N	\N	\N	{}	\N	\N
\.


--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
3571d371-f654-4bb0-a44d-e73b2ceddcbf	slugify	conversion_path	#2ECDA7	\N	active	event	all	{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"],"return":"$last"}	9d4c5262-c441-4e43-afaf-c613226b11cb	2024-04-19 19:08:37.94+00	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b
\.


--
-- Data for Name: directus_folders; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_folders (id, name, parent) FROM stdin;
24e6a80b-6441-4963-a4fc-cac2978773af	corporate	\N
fe38f767-ade3-4362-bc38-c65861fad0c2	produkte	\N
6d26620a-9265-4fb4-b2b8-94057ddf82e6	team	\N
\.


--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
20201028A	Remove Collection Foreign Keys	2024-04-19 15:10:25.780989+00
20201029A	Remove System Relations	2024-04-19 15:10:25.789919+00
20201029B	Remove System Collections	2024-04-19 15:10:25.796206+00
20201029C	Remove System Fields	2024-04-19 15:10:25.80434+00
20201105A	Add Cascade System Relations	2024-04-19 15:10:25.831225+00
20201105B	Change Webhook URL Type	2024-04-19 15:10:25.836809+00
20210225A	Add Relations Sort Field	2024-04-19 15:10:25.842873+00
20210304A	Remove Locked Fields	2024-04-19 15:10:25.84605+00
20210312A	Webhooks Collections Text	2024-04-19 15:10:25.850031+00
20210331A	Add Refresh Interval	2024-04-19 15:10:25.851747+00
20210415A	Make Filesize Nullable	2024-04-19 15:10:25.855422+00
20210416A	Add Collections Accountability	2024-04-19 15:10:25.858094+00
20210422A	Remove Files Interface	2024-04-19 15:10:25.860064+00
20210506A	Rename Interfaces	2024-04-19 15:10:25.876286+00
20210510A	Restructure Relations	2024-04-19 15:10:25.892369+00
20210518A	Add Foreign Key Constraints	2024-04-19 15:10:25.901197+00
20210519A	Add System Fk Triggers	2024-04-19 15:10:25.916974+00
20210521A	Add Collections Icon Color	2024-04-19 15:10:25.918998+00
20210525A	Add Insights	2024-04-19 15:10:25.932385+00
20210608A	Add Deep Clone Config	2024-04-19 15:10:25.933915+00
20210626A	Change Filesize Bigint	2024-04-19 15:10:25.942245+00
20210716A	Add Conditions to Fields	2024-04-19 15:10:25.944049+00
20210721A	Add Default Folder	2024-04-19 15:10:25.947219+00
20210802A	Replace Groups	2024-04-19 15:10:25.949782+00
20210803A	Add Required to Fields	2024-04-19 15:10:25.951342+00
20210805A	Update Groups	2024-04-19 15:10:25.953984+00
20210805B	Change Image Metadata Structure	2024-04-19 15:10:25.957225+00
20210811A	Add Geometry Config	2024-04-19 15:10:25.960015+00
20210831A	Remove Limit Column	2024-04-19 15:10:25.961482+00
20210903A	Add Auth Provider	2024-04-19 15:10:25.968974+00
20210907A	Webhooks Collections Not Null	2024-04-19 15:10:25.971979+00
20210910A	Move Module Setup	2024-04-19 15:10:25.973463+00
20210920A	Webhooks URL Not Null	2024-04-19 15:10:25.976083+00
20210924A	Add Collection Organization	2024-04-19 15:10:25.979038+00
20210927A	Replace Fields Group	2024-04-19 15:10:25.983463+00
20210927B	Replace M2M Interface	2024-04-19 15:10:25.984837+00
20210929A	Rename Login Action	2024-04-19 15:10:25.986402+00
20211007A	Update Presets	2024-04-19 15:10:25.990362+00
20211009A	Add Auth Data	2024-04-19 15:10:25.992969+00
20211016A	Add Webhook Headers	2024-04-19 15:10:25.994601+00
20211103A	Set Unique to User Token	2024-04-19 15:10:25.997939+00
20211103B	Update Special Geometry	2024-04-19 15:10:25.999636+00
20211104A	Remove Collections Listing	2024-04-19 15:10:26.001088+00
20211118A	Add Notifications	2024-04-19 15:10:26.010621+00
20211211A	Add Shares	2024-04-19 15:10:26.020138+00
20211230A	Add Project Descriptor	2024-04-19 15:10:26.021761+00
20220303A	Remove Default Project Color	2024-04-19 15:10:26.025976+00
20220308A	Add Bookmark Icon and Color	2024-04-19 15:10:26.02765+00
20220314A	Add Translation Strings	2024-04-19 15:10:26.028899+00
20220322A	Rename Field Typecast Flags	2024-04-19 15:10:26.032223+00
20220323A	Add Field Validation	2024-04-19 15:10:26.033819+00
20220325A	Fix Typecast Flags	2024-04-19 15:10:26.036896+00
20220325B	Add Default Language	2024-04-19 15:10:26.041876+00
20220402A	Remove Default Value Panel Icon	2024-04-19 15:10:26.045007+00
20220429A	Add Flows	2024-04-19 15:10:26.067472+00
20220429B	Add Color to Insights Icon	2024-04-19 15:10:26.06927+00
20220429C	Drop Non Null From IP of Activity	2024-04-19 15:10:26.070453+00
20220429D	Drop Non Null From Sender of Notifications	2024-04-19 15:10:26.071562+00
20220614A	Rename Hook Trigger to Event	2024-04-19 15:10:26.072689+00
20220801A	Update Notifications Timestamp Column	2024-04-19 15:10:26.076545+00
20220802A	Add Custom Aspect Ratios	2024-04-19 15:10:26.077889+00
20220826A	Add Origin to Accountability	2024-04-19 15:10:26.079158+00
20230401A	Update Material Icons	2024-04-19 15:10:26.082904+00
20230525A	Add Preview Settings	2024-04-19 15:10:26.084424+00
20230526A	Migrate Translation Strings	2024-04-19 15:10:26.091986+00
20230721A	Require Shares Fields	2024-04-19 15:10:26.095273+00
20230823A	Add Content Versioning	2024-04-19 15:10:26.105579+00
20230927A	Themes	2024-04-19 15:10:26.114628+00
20231009A	Update CSV Fields to Text	2024-04-19 15:10:26.117359+00
20231009B	Update Panel Options	2024-04-19 15:10:26.119367+00
20231010A	Add Extensions	2024-04-19 15:10:26.122637+00
20231215A	Add Focalpoints	2024-04-19 15:10:26.124684+00
20240204A	Marketplace	2024-04-19 15:10:26.133834+00
\.


--
-- Data for Name: directus_notifications; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
\.


--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
9d4c5262-c441-4e43-afaf-c613226b11cb	Run Script	exec_scfro	exec	19	1	{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}	\N	\N	3571d371-f654-4bb0-a44d-e73b2ceddcbf	2024-04-19 19:09:46.576+00	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b
\.


--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields) FROM stdin;
1	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_files	create	{}	\N	\N	*
2	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_files	read	{}	\N	\N	*
3	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_files	update	{}	\N	\N	*
4	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_files	delete	{}	\N	\N	*
5	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_dashboards	create	{}	\N	\N	*
6	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_dashboards	read	{}	\N	\N	*
7	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_dashboards	update	{}	\N	\N	*
8	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_dashboards	delete	{}	\N	\N	*
9	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_panels	create	{}	\N	\N	*
10	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_panels	read	{}	\N	\N	*
11	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_panels	update	{}	\N	\N	*
12	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_panels	delete	{}	\N	\N	*
13	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_folders	create	{}	\N	\N	*
14	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_folders	read	{}	\N	\N	*
15	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_folders	update	{}	\N	\N	*
16	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_folders	delete	{}	\N	\N	\N
17	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_users	read	{}	\N	\N	*
18	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_users	update	{"id":{"_eq":"$CURRENT_USER"}}	\N	\N	first_name,last_name,email,password,location,title,description,avatar,language,appearance,theme_light,theme_dark,theme_light_overrides,theme_dark_overrides,tfa_secret
19	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_roles	read	{}	\N	\N	*
20	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_shares	read	{"_or":[{"role":{"_eq":"$CURRENT_ROLE"}},{"role":{"_null":true}}]}	\N	\N	*
21	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_shares	create	{}	\N	\N	*
22	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_shares	update	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*
23	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_shares	delete	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*
24	75ffdb49-44e0-4cbc-8da5-e523bf74192c	directus_flows	read	{"trigger":{"_eq":"manual"}}	\N	\N	id,status,name,icon,color,options,trigger
25	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Application	read	{}	{}	\N	*
26	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Product	read	{}	{}	\N	*
27	75ffdb49-44e0-4cbc-8da5-e523bf74192c	cat_modifications	read	{}	{}	\N	*
28	75ffdb49-44e0-4cbc-8da5-e523bf74192c	cat_surface	read	{}	{}	\N	*
29	75ffdb49-44e0-4cbc-8da5-e523bf74192c	homepage	read	{}	{}	\N	*
30	75ffdb49-44e0-4cbc-8da5-e523bf74192c	DoorType	read	{}	{}	\N	*
31	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Surface	read	{}	{}	\N	*
32	75ffdb49-44e0-4cbc-8da5-e523bf74192c	pages	read	{}	{}	\N	*
33	75ffdb49-44e0-4cbc-8da5-e523bf74192c	ClimateClass	read	{}	{}	\N	*
34	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Modifications	read	{}	{}	\N	*
35	75ffdb49-44e0-4cbc-8da5-e523bf74192c	posts	read	{}	{}	\N	*
36	75ffdb49-44e0-4cbc-8da5-e523bf74192c	HeatProtection	read	{}	{}	\N	*
37	75ffdb49-44e0-4cbc-8da5-e523bf74192c	jobs	read	{}	{}	\N	*
38	75ffdb49-44e0-4cbc-8da5-e523bf74192c	team	read	{}	{}	\N	*
39	75ffdb49-44e0-4cbc-8da5-e523bf74192c	SoundProofing	read	{}	{}	\N	*
40	75ffdb49-44e0-4cbc-8da5-e523bf74192c	DoorCategory	read	{}	{}	\N	*
41	75ffdb49-44e0-4cbc-8da5-e523bf74192c	quotes	read	{}	{}	\N	*
42	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Product_ClimateClass	read	{}	{}	\N	*
43	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Product_ClimateClass_1	read	{}	{}	\N	*
44	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Product_HeatProtection	read	{}	{}	\N	*
45	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Product_SoundProofing	read	{}	{}	\N	*
46	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Decks	read	{}	{}	\N	*
47	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Decks_Decks	read	{}	{}	\N	*
48	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Decks_asdfghj	read	{}	{}	\N	*
49	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Decks_many	read	{}	{}	\N	*
50	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Modifications_cat_surface	read	{}	{}	\N	*
51	75ffdb49-44e0-4cbc-8da5-e523bf74192c	pages_files	read	{}	{}	\N	*
52	75ffdb49-44e0-4cbc-8da5-e523bf74192c	Product_Surface	read	{}	{}	\N	*
53	75ffdb49-44e0-4cbc-8da5-e523bf74192c	redirects	read	{}	{}	\N	*
54	75ffdb49-44e0-4cbc-8da5-e523bf74192c	seo	read	{}	{}	\N	*
55	75ffdb49-44e0-4cbc-8da5-e523bf74192c	DoorCategory_Product	read	{}	{}	\N	*
56	75ffdb49-44e0-4cbc-8da5-e523bf74192c	settings	read	{}	{}	\N	*
\.


--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
2	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	\N	cat_surface	\N	\N	{"tabular":{"fields":["name"]}}	{"tabular":{"widths":{"name":474.51953125}}}	\N	\N	bookmark	\N
3	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	\N	Surface	\N	\N	{"tabular":{"fields":["status","items","cat_surface"]}}	{"tabular":{"widths":{"status":33.55078125,"items":842.48046875,"cat_surface":401.16015625}}}	\N	\N	bookmark	\N
4	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	\N	Product	\N	\N	{"tabular":{"fields":["status","application","DoorType","thickness","rc2"]}}	{"tabular":{"widths":{"status":37.5546875,"application":201.95703125,"DoorType":297.60546875,"rc2":109.09765625}}}	\N	\N	bookmark	\N
1	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	\N	directus_files	\N	cards	{"cards":{"sort":["-uploaded_on"],"page":1}}	{"cards":{"icon":"insert_drive_file","title":"{{ title }}","subtitle":"{{ type }} • {{ filesize }}","size":4,"imageFit":"crop"}}	\N	\N	bookmark	\N
5	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	\N	pages	\N	\N	{"tabular":{"fields":["status","title","slug"]}}	{"tabular":{"widths":{"status":32}}}	\N	\N	bookmark	\N
\.


--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
1	Product	HeatProtection	HeatProtection	\N	\N	\N	\N	\N	nullify
2	Product	SoundProofing	SoundProofing	\N	\N	\N	\N	\N	nullify
3	Product	DoorType	DoorType	\N	\N	\N	\N	\N	nullify
4	Product	application	Application	\N	\N	\N	\N	\N	nullify
6	DoorType	image	directus_files	\N	\N	\N	\N	\N	nullify
7	DoorType	application	Application	\N	\N	\N	\N	\N	nullify
8	Surface	cat_surface	cat_surface	\N	\N	\N	\N	\N	nullify
9	pages	image	directus_files	\N	\N	\N	\N	\N	nullify
10	ClimateClass	clicla	Product	\N	\N	\N	\N	\N	nullify
11	ClimateClass	cc	Product	\N	\N	\N	\N	\N	nullify
12	Modifications	category	cat_modifications	\N	\N	\N	\N	\N	nullify
13	posts	image	directus_files	\N	\N	\N	\N	\N	nullify
14	jobs	contact	team	\N	\N	\N	\N	\N	nullify
15	team	avatar	directus_files	\N	\N	\N	\N	\N	nullify
16	Product_ClimateClass	Product_id	Product	\N	\N	\N	ClimateClass_id	\N	nullify
17	Product_ClimateClass	ClimateClass_id	ClimateClass	\N	\N	\N	Product_id	\N	nullify
18	Product_ClimateClass_1	Product_id	Product	ClimateClass	\N	\N	ClimateClass_id	\N	nullify
19	Product_ClimateClass_1	ClimateClass_id	ClimateClass	\N	\N	\N	Product_id	\N	nullify
20	Product_HeatProtection	Product_id	Product	\N	\N	\N	HeatProtection_id	\N	nullify
21	Product_HeatProtection	HeatProtection_id	HeatProtection	\N	\N	\N	Product_id	\N	nullify
22	Product_SoundProofing	Product_id	Product	\N	\N	\N	SoundProofing_id	\N	nullify
23	Product_SoundProofing	SoundProofing_id	SoundProofing	\N	\N	\N	Product_id	\N	nullify
24	Decks_Decks	Decks_id	Decks	Prices	\N	\N	related_Decks_id	\N	nullify
25	Decks_Decks	related_Decks_id	Decks	\N	\N	\N	Decks_id	\N	nullify
26	Decks_asdfghj	Decks_id	Decks	asdfghj	\N	\N	item	\N	nullify
27	Decks_asdfghj	item	\N	\N	collection	Decks,Surface	Decks_id	\N	nullify
28	Modifications_cat_surface	Modifications_id	Modifications	surface	\N	\N	cat_surface_id	\N	nullify
29	Modifications_cat_surface	cat_surface_id	cat_surface	\N	\N	\N	Modifications_id	\N	nullify
30	pages_files	pages_id	pages	gallery	\N	\N	directus_files_id	\N	nullify
31	Product_Surface	Product_id	Product	Surfaces	\N	\N	Surface_id	\N	nullify
32	Product_Surface	Surface_id	Surface	\N	\N	\N	Product_id	\N	nullify
33	seo	og_image	directus_files	\N	\N	\N	\N	\N	nullify
34	DoorCategory_Product	DoorCategory_id	DoorCategory	products	\N	\N	Product_id	\N	nullify
35	DoorCategory_Product	Product_id	Product	\N	\N	\N	DoorCategory_id	\N	nullify
36	settings	og_image	directus_files	\N	\N	\N	\N	\N	nullify
37	directus_users	entla_user	quotes	user	\N	\N	\N	\N	nullify
38	homepage_files	directus_files_id	directus_files	\N	\N	\N	homepage_id	\N	nullify
39	homepage_files	homepage_id	homepage	slider	\N	\N	directus_files_id	\N	nullify
\.


--
-- Data for Name: directus_revisions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
1	2	directus_extensions	f1be1611-88f4-4413-b9dd-19c37fed45a9	{"id":"f1be1611-88f4-4413-b9dd-19c37fed45a9","enabled":true,"folder":"0665f631-9f90-4225-83ad-49fa895f3acb","source":"registry","bundle":null}	{"id":"f1be1611-88f4-4413-b9dd-19c37fed45a9","enabled":true,"folder":"0665f631-9f90-4225-83ad-49fa895f3acb","source":"registry","bundle":null}	\N	\N
2	3	directus_settings	1	{"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"link","id":"docs","name":"Documentation","url":"https://docs.directus.io","icon":"help","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":true}]}	{"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"link","id":"docs","name":"Documentation","url":"https://docs.directus.io","icon":"help","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":true}]}	\N	\N
3	4	directus_fields	1	{"sort":1,"collection":"homepage","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"homepage","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
4	5	directus_fields	2	{"sort":2,"collection":"homepage","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"homepage","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
5	6	directus_fields	3	{"sort":3,"collection":"homepage","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"homepage","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
6	7	directus_fields	4	{"sort":4,"collection":"homepage","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"homepage","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
7	8	directus_fields	5	{"sort":5,"collection":"homepage","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"homepage","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
8	9	directus_fields	6	{"sort":6,"collection":"homepage","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"homepage","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
9	10	directus_fields	7	{"sort":7,"collection":"homepage","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"homepage","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
312	313	SoundProofing	2	{"name":"Rw = 28 dB","status":"published","value":"R ' w 23 - 25 dB"}	{"name":"Rw = 28 dB","status":"published","value":"R ' w 23 - 25 dB"}	\N	\N
313	314	SoundProofing	3	{"name":"Rw = 30 dB","status":"published","value":"R ' w 25 - 27 dB"}	{"name":"Rw = 30 dB","status":"published","value":"R ' w 25 - 27 dB"}	\N	\N
10	11	directus_fields	8	{"sort":8,"collection":"homepage","field":"image","special":["file"],"interface":"file-image","options":{},"display":"image","display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"homepage","field":"image","special":["file"],"interface":"file-image","options":{},"display":"image","display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
11	12	directus_fields	9	{"sort":9,"collection":"homepage","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"homepage","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
12	13	directus_collections	homepage	{"collection":"homepage","icon":"factory","note":null,"display_template":null,"hidden":false,"singleton":true,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":1,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"homepage","icon":"factory","note":null,"display_template":null,"hidden":false,"singleton":true,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":1,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
13	14	directus_fields	10	{"sort":1,"collection":"pages","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"pages","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
14	15	directus_fields	11	{"sort":2,"collection":"pages","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"pages","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
15	16	directus_fields	12	{"sort":3,"collection":"pages","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"pages","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
16	17	directus_fields	13	{"sort":4,"collection":"pages","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"pages","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
17	18	directus_fields	14	{"sort":5,"collection":"pages","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"pages","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
18	19	directus_fields	15	{"sort":6,"collection":"pages","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"pages","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
314	315	SoundProofing	4	{"name":"Rw = 31 dB","status":"published","value":"R ' w 26 - 28 dB"}	{"name":"Rw = 31 dB","status":"published","value":"R ' w 26 - 28 dB"}	\N	\N
315	316	SoundProofing	5	{"name":"Rw = 32 dB","status":"published","value":"R ' w 27 - 29 dB"}	{"name":"Rw = 32 dB","status":"published","value":"R ' w 27 - 29 dB"}	\N	\N
19	20	directus_fields	16	{"sort":7,"collection":"pages","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"pages","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
20	21	directus_fields	17	{"sort":8,"collection":"pages","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"pages","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
21	22	directus_fields	18	{"sort":9,"collection":"pages","field":"slug","special":null,"interface":"input","options":{"iconLeft":"conversion_path"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"pages","field":"slug","special":null,"interface":"input","options":{"iconLeft":"conversion_path"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
22	23	directus_fields	19	{"sort":10,"collection":"pages","field":"image","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Hauptbild"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"pages","field":"image","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Hauptbild"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
23	24	directus_fields	20	{"sort":11,"collection":"pages","field":"gallery","special":["files"],"interface":"files","options":{"limit":5},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Bildergalerie"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"pages","field":"gallery","special":["files"],"interface":"files","options":{"limit":5},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Bildergalerie"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
24	25	directus_fields	21	{"sort":12,"collection":"pages","field":"body","special":null,"interface":"input-rich-text-html","options":{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":12,"collection":"pages","field":"body","special":null,"interface":"input-rich-text-html","options":{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
25	26	directus_fields	22	{"sort":13,"collection":"pages","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableSelect":false},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":13,"collection":"pages","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableSelect":false},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
26	27	directus_collections	pages	{"collection":"pages","icon":"file_copy","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Seiten"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"pages","icon":"file_copy","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Seiten"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
27	28	directus_fields	23	{"sort":1,"collection":"posts","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"posts","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
46	47	directus_fields	41	{"sort":7,"collection":"jobs","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"jobs","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
28	29	directus_fields	24	{"sort":2,"collection":"posts","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"posts","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
29	30	directus_fields	25	{"sort":3,"collection":"posts","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"posts","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
30	31	directus_fields	26	{"sort":4,"collection":"posts","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"posts","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
31	32	directus_fields	27	{"sort":5,"collection":"posts","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"posts","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
32	33	directus_fields	28	{"sort":6,"collection":"posts","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"posts","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
33	34	directus_fields	29	{"sort":7,"collection":"posts","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"posts","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
34	35	directus_fields	30	{"sort":8,"collection":"posts","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"posts","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
35	36	directus_fields	31	{"sort":9,"collection":"posts","field":"slug","special":null,"interface":"input","options":{"iconLeft":"conversion_path"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"posts","field":"slug","special":null,"interface":"input","options":{"iconLeft":"conversion_path"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
36	37	directus_fields	32	{"sort":10,"collection":"posts","field":"image","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"posts","field":"image","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
316	317	SoundProofing	6	{"name":"Rw = 34 dB","status":"published","value":"R ' w = 29 - 31 dB"}	{"name":"Rw = 34 dB","status":"published","value":"R ' w = 29 - 31 dB"}	\N	\N
317	318	SoundProofing	7	{"name":"Rw = 35 dB","status":"published","value":"R ' w = 30 - 32 dB"}	{"name":"Rw = 35 dB","status":"published","value":"R ' w = 30 - 32 dB"}	\N	\N
37	38	directus_fields	33	{"sort":11,"collection":"posts","field":"body","special":null,"interface":"input-rich-text-html","options":{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"posts","field":"body","special":null,"interface":"input-rich-text-html","options":{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
38	39	directus_fields	34	{"sort":12,"collection":"posts","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableSelect":false},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":12,"collection":"posts","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableSelect":false},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
39	40	directus_collections	posts	{"collection":"posts","icon":"edit_document","note":null,"display_template":"{{image.$thumbnail}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":3,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"posts","icon":"edit_document","note":null,"display_template":"{{image.$thumbnail}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":3,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
40	41	directus_fields	35	{"sort":1,"collection":"jobs","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"jobs","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
41	42	directus_fields	36	{"sort":2,"collection":"jobs","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"jobs","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
42	43	directus_fields	37	{"sort":3,"collection":"jobs","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"jobs","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
43	44	directus_fields	38	{"sort":4,"collection":"jobs","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"jobs","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
44	45	directus_fields	39	{"sort":5,"collection":"jobs","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"jobs","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
45	46	directus_fields	40	{"sort":6,"collection":"jobs","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"jobs","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
47	48	directus_fields	42	{"sort":8,"collection":"jobs","field":"body","special":null,"interface":"input-rich-text-html","options":{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"jobs","field":"body","special":null,"interface":"input-rich-text-html","options":{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
48	49	directus_fields	43	{"sort":9,"collection":"jobs","field":"contact","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{first_name}} {{last_name}}"},"display":"related-values","display_options":{"template":"{{first_name}} {{last_name}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Kontakt"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"jobs","field":"contact","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{first_name}} {{last_name}}"},"display":"related-values","display_options":{"template":"{{first_name}} {{last_name}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Kontakt"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
49	50	directus_collections	jobs	{"collection":"jobs","icon":"hardware","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":4,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"jobs","icon":"hardware","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":4,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
50	51	directus_fields	44	{"sort":1,"collection":"team","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"team","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
51	52	directus_fields	45	{"sort":2,"collection":"team","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"team","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
52	53	directus_fields	46	{"sort":3,"collection":"team","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"team","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
53	54	directus_fields	47	{"sort":4,"collection":"team","field":"first_name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"team","field":"first_name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
54	55	directus_fields	48	{"sort":5,"collection":"team","field":"last_name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"team","field":"last_name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
55	56	directus_fields	49	{"sort":6,"collection":"team","field":"email","special":null,"interface":"input","options":{"iconLeft":"alternate_email"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"team","field":"email","special":null,"interface":"input","options":{"iconLeft":"alternate_email"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
56	57	directus_fields	50	{"sort":7,"collection":"team","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"team","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
57	58	directus_fields	51	{"sort":8,"collection":"team","field":"avatar","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"team","field":"avatar","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
58	59	directus_collections	team	{"collection":"team","icon":"frame_person","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":5,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"team","icon":"frame_person","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":5,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
59	60	directus_fields	52	{"sort":1,"collection":"DoorCategory","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"DoorCategory","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
60	61	directus_fields	53	{"sort":2,"collection":"DoorCategory","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"DoorCategory","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
61	62	directus_fields	54	{"sort":3,"collection":"DoorCategory","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"DoorCategory","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
62	63	directus_fields	55	{"sort":4,"collection":"DoorCategory","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"DoorCategory","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
63	64	directus_fields	56	{"sort":5,"collection":"DoorCategory","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"DoorCategory","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
64	65	directus_fields	57	{"sort":6,"collection":"DoorCategory","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"DoorCategory","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
318	319	SoundProofing	8	{"name":"Rw = 33 dB","status":"published","value":"R ' w 28 - 30 dB"}	{"name":"Rw = 33 dB","status":"published","value":"R ' w 28 - 30 dB"}	\N	\N
65	66	directus_fields	58	{"sort":7,"collection":"DoorCategory","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"DoorCategory","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
66	67	directus_fields	59	{"sort":8,"collection":"DoorCategory","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"DoorCategory","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
67	68	directus_fields	60	{"sort":9,"collection":"DoorCategory","field":"wingdoors","special":["cast-boolean"],"interface":"boolean","options":null,"display":"boolean","display_options":null,"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Flügel"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"DoorCategory","field":"wingdoors","special":["cast-boolean"],"interface":"boolean","options":null,"display":"boolean","display_options":null,"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Flügel"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
68	69	directus_fields	61	{"sort":10,"collection":"DoorCategory","field":"doorCasings","special":["cast-boolean"],"interface":"boolean","options":null,"display":"boolean","display_options":null,"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Futtertypen aktivieren"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"DoorCategory","field":"doorCasings","special":["cast-boolean"],"interface":"boolean","options":null,"display":"boolean","display_options":null,"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Futtertypen aktivieren"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
69	70	directus_fields	62	{"sort":11,"collection":"DoorCategory","field":"products","special":["m2m"],"interface":"list-m2m","options":{"template":"{{Product_id.thickness}} {{Product_id.DoorType.name}}"},"display":"related-values","display_options":{"template":"{{Product_id.DoorType.name}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"DoorCategory","field":"products","special":["m2m"],"interface":"list-m2m","options":{"template":"{{Product_id.thickness}} {{Product_id.DoorType.name}}"},"display":"related-values","display_options":{"template":"{{Product_id.DoorType.name}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
70	71	directus_collections	DoorCategory	{"collection":"DoorCategory","icon":"warehouse","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Türenkategorie"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":6,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"DoorCategory","icon":"warehouse","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Türenkategorie"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":6,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
71	72	directus_fields	63	{"sort":1,"collection":"quotes","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"quotes","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
72	73	directus_fields	64	{"sort":2,"collection":"quotes","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"quotes","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
73	74	directus_fields	65	{"sort":3,"collection":"quotes","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"quotes","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
74	75	directus_fields	66	{"sort":4,"collection":"quotes","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"quotes","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
75	76	directus_fields	67	{"sort":5,"collection":"quotes","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"quotes","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
76	77	directus_fields	68	{"sort":6,"collection":"quotes","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"quotes","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
77	78	directus_fields	69	{"sort":7,"collection":"quotes","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"quotes","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
78	79	directus_fields	70	{"sort":8,"collection":"quotes","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"quotes","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
79	80	directus_fields	71	{"sort":9,"collection":"quotes","field":"user","special":["o2m"],"interface":"list-o2m","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"quotes","field":"user","special":["o2m"],"interface":"list-o2m","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
80	81	directus_fields	72	{"sort":10,"collection":"quotes","field":"reference","special":null,"interface":"input","options":{"iconLeft":"barefoot"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"quotes","field":"reference","special":null,"interface":"input","options":{"iconLeft":"barefoot"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
81	82	directus_fields	73	{"sort":11,"collection":"quotes","field":"quote_data","special":null,"interface":"input-code","options":{"language":"JSON"},"display":null,"display_options":null,"readonly":true,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Offertdaten"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"quotes","field":"quote_data","special":null,"interface":"input-code","options":{"language":"JSON"},"display":null,"display_options":null,"readonly":true,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Offertdaten"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
82	83	directus_collections	quotes	{"collection":"quotes","icon":"attach_money","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":7,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"quotes","icon":"attach_money","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":7,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
83	84	directus_fields	74	{"sort":1,"collection":"Product_ClimateClass","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Product_ClimateClass","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
319	320	SoundProofing	9	{"name":"Rw = 37 dB","status":"published","value":"R ' w 34 - 36 dB"}	{"name":"Rw = 37 dB","status":"published","value":"R ' w 34 - 36 dB"}	\N	\N
84	85	directus_fields	75	{"sort":2,"collection":"Product_ClimateClass","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Product_ClimateClass","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
85	86	directus_fields	76	{"sort":3,"collection":"Product_ClimateClass","field":"ClimateClass_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Product_ClimateClass","field":"ClimateClass_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
86	87	directus_collections	Product_ClimateClass	{"collection":"Product_ClimateClass","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":8,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Product_ClimateClass","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":8,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
87	88	directus_fields	77	{"sort":1,"collection":"Product_ClimateClass_1","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Product_ClimateClass_1","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
88	89	directus_fields	78	{"sort":2,"collection":"Product_ClimateClass_1","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Product_ClimateClass_1","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
89	90	directus_fields	79	{"sort":3,"collection":"Product_ClimateClass_1","field":"ClimateClass_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Product_ClimateClass_1","field":"ClimateClass_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
90	91	directus_collections	Product_ClimateClass_1	{"collection":"Product_ClimateClass_1","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":9,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Product_ClimateClass_1","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":9,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
91	92	directus_fields	80	{"sort":1,"collection":"Product_HeatProtection","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Product_HeatProtection","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
92	93	directus_fields	81	{"sort":2,"collection":"Product_HeatProtection","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Product_HeatProtection","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
93	94	directus_fields	82	{"sort":3,"collection":"Product_HeatProtection","field":"HeatProtection_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Product_HeatProtection","field":"HeatProtection_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
320	321	SoundProofing	10	{"name":"Rw = 42 dB","status":"published","value":"R ' w 37 - 40 dB"}	{"name":"Rw = 42 dB","status":"published","value":"R ' w 37 - 40 dB"}	\N	\N
321	322	SoundProofing	11	{"name":"Rw = 43 dB","status":"published","value":"R ' w 37 - 42 dB"}	{"name":"Rw = 43 dB","status":"published","value":"R ' w 37 - 42 dB"}	\N	\N
322	323	SoundProofing	12	{"name":"Rw = 20 dB","status":"published","value":"R ' w 16 - 19 dB"}	{"name":"Rw = 20 dB","status":"published","value":"R ' w 16 - 19 dB"}	\N	\N
94	95	directus_collections	Product_HeatProtection	{"collection":"Product_HeatProtection","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":10,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Product_HeatProtection","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":10,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
95	96	directus_fields	83	{"sort":1,"collection":"Product_SoundProofing","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Product_SoundProofing","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
96	97	directus_fields	84	{"sort":2,"collection":"Product_SoundProofing","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Product_SoundProofing","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
97	98	directus_fields	85	{"sort":3,"collection":"Product_SoundProofing","field":"SoundProofing_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Product_SoundProofing","field":"SoundProofing_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
98	99	directus_collections	Product_SoundProofing	{"collection":"Product_SoundProofing","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":11,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Product_SoundProofing","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":11,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
99	100	directus_fields	86	{"sort":1,"collection":"Decks","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Decks","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
100	101	directus_fields	87	{"sort":2,"collection":"Decks","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Decks","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
101	102	directus_fields	88	{"sort":3,"collection":"Decks","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Decks","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
102	103	directus_fields	89	{"sort":4,"collection":"Decks","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"Decks","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
323	324	HeatProtection	1	{"id":"1","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:49:53.236Z","name":"NPD"}	{"id":"1","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:49:53.236Z","name":"NPD"}	\N	\N
103	104	directus_fields	90	{"sort":5,"collection":"Decks","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"Decks","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
104	105	directus_fields	91	{"sort":6,"collection":"Decks","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"Decks","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
105	106	directus_fields	92	{"sort":7,"collection":"Decks","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"Decks","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
106	107	directus_fields	93	{"sort":9,"collection":"Decks","field":"Materialien","special":["cast-json"],"interface":"list","options":{"fields":[{"field":"Material","name":"Material","type":"string","meta":{"field":"Material","type":"string","required":true,"interface":null}}],"template":"{{ Material }}"},"display":"formatted-json-value","display_options":{"format":"{{Materia}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"Decks","field":"Materialien","special":["cast-json"],"interface":"list","options":{"fields":[{"field":"Material","name":"Material","type":"string","meta":{"field":"Material","type":"string","required":true,"interface":null}}],"template":"{{ Material }}"},"display":"formatted-json-value","display_options":{"format":"{{Materia}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
107	108	directus_fields	94	{"sort":10,"collection":"Decks","field":"asdfghj","special":["m2a"],"interface":"list-m2a","options":null,"display":"related-values","display_options":{"template":"{{item:Surface.name}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"Decks","field":"asdfghj","special":["m2a"],"interface":"list-m2a","options":null,"display":"related-values","display_options":{"template":"{{item:Surface.name}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
108	109	directus_fields	95	{"sort":11,"collection":"Decks","field":"Prices","special":["m2m"],"interface":"list-m2m","options":null,"display":"related-values","display_options":{"template":"{{related_Decks_id.Materialien}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"Decks","field":"Prices","special":["m2m"],"interface":"list-m2m","options":null,"display":"related-values","display_options":{"template":"{{related_Decks_id.Materialien}}"},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
109	110	directus_collections	Decks	{"collection":"Decks","icon":"layers","note":null,"display_template":"{{Materialien}} ","hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":12,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Decks","icon":"layers","note":null,"display_template":"{{Materialien}} ","hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":12,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
110	111	directus_fields	96	{"sort":1,"collection":"Decks_Decks","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Decks_Decks","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
111	112	directus_fields	97	{"sort":2,"collection":"Decks_Decks","field":"Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Decks_Decks","field":"Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
112	113	directus_fields	98	{"sort":3,"collection":"Decks_Decks","field":"related_Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Decks_Decks","field":"related_Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
113	114	directus_collections	Decks_Decks	{"collection":"Decks_Decks","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":13,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Decks_Decks","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":13,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
114	115	directus_fields	99	{"sort":1,"collection":"Decks_asdfghj","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Decks_asdfghj","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
115	116	directus_fields	100	{"sort":2,"collection":"Decks_asdfghj","field":"Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Decks_asdfghj","field":"Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
116	117	directus_fields	101	{"sort":3,"collection":"Decks_asdfghj","field":"item","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Decks_asdfghj","field":"item","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
117	118	directus_fields	102	{"sort":4,"collection":"Decks_asdfghj","field":"collection","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"Decks_asdfghj","field":"collection","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
118	119	directus_collections	Decks_asdfghj	{"collection":"Decks_asdfghj","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":14,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Decks_asdfghj","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":14,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
119	120	directus_fields	103	{"sort":1,"collection":"Decks_many","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Decks_many","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
120	121	directus_fields	104	{"sort":2,"collection":"Decks_many","field":"Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Decks_many","field":"Decks_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
121	122	directus_fields	105	{"sort":3,"collection":"Decks_many","field":"item","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Decks_many","field":"item","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
122	123	directus_fields	106	{"sort":4,"collection":"Decks_many","field":"collection","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"Decks_many","field":"collection","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
123	124	directus_collections	Decks_many	{"collection":"Decks_many","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":15,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Decks_many","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":15,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
124	125	directus_fields	107	{"sort":1,"collection":"Modifications_cat_surface","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Modifications_cat_surface","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
125	126	directus_fields	108	{"sort":2,"collection":"Modifications_cat_surface","field":"Modifications_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Modifications_cat_surface","field":"Modifications_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
126	127	directus_fields	109	{"sort":3,"collection":"Modifications_cat_surface","field":"cat_surface_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Modifications_cat_surface","field":"cat_surface_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
127	128	directus_collections	Modifications_cat_surface	{"collection":"Modifications_cat_surface","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":16,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Modifications_cat_surface","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":16,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
128	129	directus_fields	110	{"sort":1,"collection":"pages_files","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"pages_files","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
129	130	directus_fields	111	{"sort":2,"collection":"pages_files","field":"pages_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"pages_files","field":"pages_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
130	131	directus_fields	112	{"sort":3,"collection":"pages_files","field":"directus_files_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"pages_files","field":"directus_files_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
131	132	directus_collections	pages_files	{"collection":"pages_files","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":17,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"pages_files","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":17,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
132	133	directus_fields	113	{"sort":1,"collection":"Product_Surface","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Product_Surface","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
133	134	directus_fields	114	{"sort":2,"collection":"Product_Surface","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Product_Surface","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
134	135	directus_fields	115	{"sort":3,"collection":"Product_Surface","field":"Surface_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Product_Surface","field":"Surface_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
135	136	directus_collections	Product_Surface	{"collection":"Product_Surface","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":18,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"Product_Surface","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":18,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
136	137	directus_fields	116	{"sort":1,"collection":"redirects","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"redirects","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
137	138	directus_fields	117	{"sort":2,"collection":"redirects","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"redirects","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
138	139	directus_fields	118	{"sort":3,"collection":"redirects","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"redirects","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
139	140	directus_fields	119	{"sort":4,"collection":"redirects","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"redirects","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
140	141	directus_fields	120	{"sort":5,"collection":"redirects","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"redirects","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
141	142	directus_fields	121	{"sort":6,"collection":"redirects","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"redirects","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
142	143	directus_fields	122	{"sort":7,"collection":"redirects","field":"notice-yzy2ah","special":["alias","no-data"],"interface":"presentation-notice","options":{"icon":"warning","text":"For redirects to take effect, the site has to be re-deployed.","color":"warning"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"redirects","field":"notice-yzy2ah","special":["alias","no-data"],"interface":"presentation-notice","options":{"icon":"warning","text":"For redirects to take effect, the site has to be re-deployed.","color":"warning"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
172	173	directus_fields	148	{"sort":1,"collection":"Product","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Product","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
143	144	directus_fields	123	{"sort":8,"collection":"redirects","field":"url_old","special":null,"interface":"input","options":{"placeholder":"/old-url","trim":true,"iconLeft":"conversion_path_off"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"redirects","field":"url_old","special":null,"interface":"input","options":{"placeholder":"/old-url","trim":true,"iconLeft":"conversion_path_off"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
144	145	directus_fields	124	{"sort":9,"collection":"redirects","field":"url_new","special":null,"interface":"input","options":{"iconLeft":"conversion_path"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"redirects","field":"url_new","special":null,"interface":"input","options":{"iconLeft":"conversion_path"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
145	146	directus_fields	125	{"sort":10,"collection":"redirects","field":"response_code","special":null,"interface":"select-dropdown","options":{"allowOther":true,"icon":"call_split","choices":[{"text":"Permanent (301)","value":"301"},{"text":"Temporary (302)","value":"302"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"redirects","field":"response_code","special":null,"interface":"select-dropdown","options":{"allowOther":true,"icon":"call_split","choices":[{"text":"Permanent (301)","value":"301"},{"text":"Temporary (302)","value":"302"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
146	147	directus_collections	redirects	{"collection":"redirects","icon":"redo","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FF99DD","item_duplication_fields":null,"sort":19,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"redirects","icon":"redo","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FF99DD","item_duplication_fields":null,"sort":19,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
147	148	directus_fields	126	{"sort":1,"collection":"seo","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"seo","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
148	149	directus_fields	127	{"sort":2,"collection":"seo","field":"title","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"seo","field":"title","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
149	150	directus_fields	128	{"sort":3,"collection":"seo","field":"meta_description","special":null,"interface":"input-multiline","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"seo","field":"meta_description","special":null,"interface":"input-multiline","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
150	151	directus_fields	129	{"sort":4,"collection":"seo","field":"cononical_url","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"seo","field":"cononical_url","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
151	152	directus_fields	130	{"sort":5,"collection":"seo","field":"no_follow","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"seo","field":"no_follow","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
152	153	directus_fields	131	{"sort":6,"collection":"seo","field":"no_index","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"seo","field":"no_index","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
324	325	HeatProtection	2	{"id":"2","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:04.653Z","name":"1.9"}	{"id":"2","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:04.653Z","name":"1.9"}	\N	\N
340	341	Product	1	{"status":"published","name":"Aussenanwendung"}	{"status":"published","name":"Aussenanwendung"}	\N	\N
153	154	directus_fields	132	{"sort":7,"collection":"seo","field":"sitemap_change_frequency","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"seo","field":"sitemap_change_frequency","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
154	155	directus_fields	133	{"sort":8,"collection":"seo","field":"sitemap_priority","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"seo","field":"sitemap_priority","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
155	156	directus_fields	134	{"sort":9,"collection":"seo","field":"og_image","special":["file"],"interface":"file-image","options":{},"display":"image","display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":"Defaults to global site OG image. The recommended size is 1200px x 630px. The image will be focal cropped to this dimension.","conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"seo","field":"og_image","special":["file"],"interface":"file-image","options":{},"display":"image","display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":"Defaults to global site OG image. The recommended size is 1200px x 630px. The image will be focal cropped to this dimension.","conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
156	157	directus_collections	seo	{"collection":"seo","icon":"search","note":null,"display_template":"{{title}} | No Index:{{no_index}} No Follow:{{no_follow}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":"#FF99DD","item_duplication_fields":null,"sort":20,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"seo","icon":"search","note":null,"display_template":"{{title}} | No Index:{{no_index}} No Follow:{{no_follow}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":"#FF99DD","item_duplication_fields":null,"sort":20,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
157	158	directus_fields	135	{"sort":1,"collection":"DoorCategory_Product","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"DoorCategory_Product","field":"id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
158	159	directus_fields	136	{"sort":2,"collection":"DoorCategory_Product","field":"DoorCategory_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"DoorCategory_Product","field":"DoorCategory_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
159	160	directus_fields	137	{"sort":3,"collection":"DoorCategory_Product","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"DoorCategory_Product","field":"Product_id","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
160	161	directus_collections	DoorCategory_Product	{"collection":"DoorCategory_Product","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":21,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"DoorCategory_Product","icon":"import_export","note":null,"display_template":null,"hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":21,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
161	162	directus_fields	138	{"sort":1,"collection":"settings","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"settings","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
171	172	directus_collections	settings	{"collection":"settings","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":"status","archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":"sort","accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"collection":"settings","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":"status","archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":"sort","accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	\N	\N
341	342	Product	2	{"status":"published","name":"Innenanwendung"}	{"status":"published","name":"Innenanwendung"}	\N	\N
162	163	directus_fields	139	{"sort":2,"collection":"settings","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published","color":"var(--theme--primary)"},{"text":"Draft","value":"draft","color":"var(--theme--foreground)"},{"text":"Archived","value":"archived","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"Draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"Archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"settings","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published","color":"var(--theme--primary)"},{"text":"Draft","value":"draft","color":"var(--theme--foreground)"},{"text":"Archived","value":"archived","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"Draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"Archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
163	164	directus_fields	140	{"sort":3,"collection":"settings","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"settings","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
164	165	directus_fields	141	{"sort":4,"collection":"settings","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"settings","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
165	166	directus_fields	142	{"sort":5,"collection":"settings","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"settings","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
166	167	directus_fields	143	{"sort":6,"collection":"settings","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"settings","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
167	168	directus_fields	144	{"sort":7,"collection":"settings","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"settings","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
168	169	directus_fields	145	{"sort":8,"collection":"settings","field":"url","special":null,"interface":"input","options":{"placeholder":"https://entla.ch"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"settings","field":"url","special":null,"interface":"input","options":{"placeholder":"https://entla.ch"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
169	170	directus_fields	146	{"sort":9,"collection":"settings","field":"og_image","special":["file"],"interface":"file-image","options":{},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"settings","field":"og_image","special":["file"],"interface":"file-image","options":{},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
170	171	directus_fields	147	{"sort":10,"collection":"settings","field":"lageplan","special":null,"interface":"map","options":{"defaultView":{"center":{"lng":0,"lat":0},"zoom":0,"bearing":0,"pitch":0},"geometryType":"Point"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"settings","field":"lageplan","special":null,"interface":"map","options":{"defaultView":{"center":{"lng":0,"lat":0},"zoom":0,"bearing":0,"pitch":0},"geometryType":"Point"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
342	343	Product	3	{"status":"published","name":"Brandschutztüren"}	{"status":"published","name":"Brandschutztüren"}	\N	\N
173	174	directus_fields	149	{"sort":2,"collection":"Product","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Product","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
174	175	directus_fields	150	{"sort":3,"collection":"Product","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Product","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
175	176	directus_fields	151	{"sort":4,"collection":"Product","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"Product","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
176	177	directus_fields	152	{"sort":5,"collection":"Product","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"Product","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
177	178	directus_fields	153	{"sort":6,"collection":"Product","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"Product","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
178	179	directus_fields	154	{"sort":7,"collection":"Product","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"Product","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
179	180	directus_fields	155	{"sort":8,"collection":"Product","field":"DoorType","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Türtyp"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"Product","field":"DoorType","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Türtyp"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
180	181	directus_fields	156	{"sort":10,"collection":"Product","field":"application","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}","enableCreate":false},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Anwendung"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"Product","field":"application","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}","enableCreate":false},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Anwendung"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
207	208	directus_fields	181	{"sort":1,"collection":"Surface","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Surface","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
181	182	directus_fields	157	{"sort":11,"collection":"Product","field":"thickness","special":null,"interface":"input","options":{"iconLeft":"vertical_align_center"},"display":"formatted-value","display_options":{"icon":"vertical_align_center","suffix":" mm"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Türdicke (mm)"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"Product","field":"thickness","special":null,"interface":"input","options":{"iconLeft":"vertical_align_center"},"display":"formatted-value","display_options":{"icon":"vertical_align_center","suffix":" mm"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Türdicke (mm)"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
182	183	directus_fields	158	{"sort":12,"collection":"Product","field":"SoundProofing","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}","enableCreate":false},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Schallschutz"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":12,"collection":"Product","field":"SoundProofing","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}","enableCreate":false},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Schallschutz"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
183	184	directus_fields	159	{"sort":13,"collection":"Product","field":"HeatProtection","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}","enableCreate":false},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Wärmeschutz"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":13,"collection":"Product","field":"HeatProtection","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}","enableCreate":false},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Wärmeschutz"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
184	185	directus_fields	160	{"sort":14,"collection":"Product","field":"ClimateClass","special":["m2m"],"interface":"list-m2m","options":{"enableCreate":false,"template":"{{ClimateClass_id.name}}"},"display":"related-values","display_options":{"template":"{{ClimateClass_id.name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Klimaklassen"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":14,"collection":"Product","field":"ClimateClass","special":["m2m"],"interface":"list-m2m","options":{"enableCreate":false,"template":"{{ClimateClass_id.name}}"},"display":"related-values","display_options":{"template":"{{ClimateClass_id.name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Klimaklassen"}],"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
185	186	directus_fields	161	{"sort":15,"collection":"Product","field":"weight","special":null,"interface":"input","options":{"iconLeft":"scale"},"display":"formatted-value","display_options":{"suffix":" kg/m2","conditionalFormatting":null},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Gewicht"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":15,"collection":"Product","field":"weight","special":null,"interface":"input","options":{"iconLeft":"scale"},"display":"formatted-value","display_options":{"suffix":" kg/m2","conditionalFormatting":null},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Gewicht"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
186	187	directus_fields	162	{"sort":16,"collection":"Product","field":"Surfaces","special":["m2m"],"interface":"list-m2m","options":{"template":"{{Surface_id.items}}"},"display":"related-values","display_options":{"template":"{{Surface_id.items}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Verfügbare Oberflächen"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":16,"collection":"Product","field":"Surfaces","special":["m2m"],"interface":"list-m2m","options":{"template":"{{Surface_id.items}}"},"display":"related-values","display_options":{"template":"{{Surface_id.items}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Verfügbare Oberflächen"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
187	188	directus_fields	163	{"sort":17,"collection":"Product","field":"divider-5t2_qv","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"Einbruchschutz ","icon":"enhanced_encryption"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":17,"collection":"Product","field":"divider-5t2_qv","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"Einbruchschutz ","icon":"enhanced_encryption"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
188	189	directus_fields	164	{"sort":18,"collection":"Product","field":"rc2","special":["cast-boolean"],"interface":"boolean","options":null,"display":"boolean","display_options":{"labelOn":"Einbruchschutz RC2"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"RC2"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":18,"collection":"Product","field":"rc2","special":["cast-boolean"],"interface":"boolean","options":null,"display":"boolean","display_options":{"labelOn":"Einbruchschutz RC2"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"RC2"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
325	326	HeatProtection	3	{"id":"3","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:13.565Z","name":"1.7"}	{"id":"3","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:13.565Z","name":"1.7"}	\N	\N
189	190	directus_fields	165	{"sort":19,"collection":"Product","field":"rc3","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"RC3"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":19,"collection":"Product","field":"rc3","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"RC3"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
190	191	directus_fields	166	{"sort":20,"collection":"Product","field":"divider-1zdqx9","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"VKF-Zulassung","inlineTitle":true},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":20,"collection":"Product","field":"divider-1zdqx9","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"VKF-Zulassung","inlineTitle":true},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
191	192	directus_fields	167	{"sort":21,"collection":"Product","field":"vkf","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"EI30 mit VKF-Zulassung"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":21,"collection":"Product","field":"vkf","special":["cast-boolean"],"interface":"boolean","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"EI30 mit VKF-Zulassung"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
192	193	directus_fields	168	{"sort":22,"collection":"Product","field":"divider-arvyjc","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"Strahlenschutz"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":22,"collection":"Product","field":"divider-arvyjc","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"Strahlenschutz"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
193	194	directus_fields	169	{"sort":23,"collection":"Product","field":"leadThickness","special":null,"interface":"input","options":{"iconLeft":"shield_with_heart"},"display":"formatted-value","display_options":{"suffix":" mm"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Blei in mm"}],"note":null,"conditions":[{"name":"Wenn Türentyp == Strahlenschutztüre","rule":null,"options":{"font":"sans-serif","trim":false,"masked":false,"clear":false,"slug":false},"hidden":false}],"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":23,"collection":"Product","field":"leadThickness","special":null,"interface":"input","options":{"iconLeft":"shield_with_heart"},"display":"formatted-value","display_options":{"suffix":" mm"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Blei in mm"}],"note":null,"conditions":[{"name":"Wenn Türentyp == Strahlenschutztüre","rule":null,"options":{"font":"sans-serif","trim":false,"masked":false,"clear":false,"slug":false},"hidden":false}],"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
194	195	directus_fields	170	{"sort":24,"collection":"Product","field":"prices","special":null,"interface":"input-code","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":24,"collection":"Product","field":"prices","special":null,"interface":"input-code","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
195	196	directus_collections	Product	{"collection":"Product","icon":"door_back","note":null,"display_template":"{{name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Produkte"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":1,"group":"DoorCategory","collapse":"open","preview_url":null,"versioning":false}	{"collection":"Product","icon":"door_back","note":null,"display_template":"{{name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Produkte"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":1,"group":"DoorCategory","collapse":"open","preview_url":null,"versioning":false}	\N	\N
196	197	directus_fields	171	{"sort":1,"collection":"DoorType","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"DoorType","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
206	207	directus_collections	DoorType	{"collection":"DoorType","icon":"tools_power_drill","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Türentyp"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":2,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	{"collection":"DoorType","icon":"tools_power_drill","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Türentyp"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":2,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	\N	\N
197	198	directus_fields	172	{"sort":2,"collection":"DoorType","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"DoorType","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
198	199	directus_fields	173	{"sort":3,"collection":"DoorType","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"DoorType","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
199	200	directus_fields	174	{"sort":4,"collection":"DoorType","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"DoorType","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
200	201	directus_fields	175	{"sort":5,"collection":"DoorType","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"DoorType","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
201	202	directus_fields	176	{"sort":6,"collection":"DoorType","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"DoorType","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
202	203	directus_fields	177	{"sort":7,"collection":"DoorType","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Türentyp"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"DoorType","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Türentyp"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
203	204	directus_fields	178	{"sort":8,"collection":"DoorType","field":"application","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Anwendung"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"DoorType","field":"application","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Anwendung"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
204	205	directus_fields	179	{"sort":9,"collection":"DoorType","field":"image","special":["file"],"interface":"file-image","options":{"folder":"92a278b6-c1ae-4c56-95a8-8ca0bdbcd001"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"DoorType","field":"image","special":["file"],"interface":"file-image","options":{"folder":"92a278b6-c1ae-4c56-95a8-8ca0bdbcd001"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
205	206	directus_fields	180	{"sort":12,"collection":"DoorType","field":"prices_surfaces","special":null,"interface":"input-code","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Preistabelle Oberflächen"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":12,"collection":"DoorType","field":"prices_surfaces","special":null,"interface":"input-code","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Preistabelle Oberflächen"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
208	209	directus_fields	182	{"sort":2,"collection":"Surface","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Surface","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
209	210	directus_fields	183	{"sort":3,"collection":"Surface","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Surface","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
210	211	directus_fields	184	{"sort":4,"collection":"Surface","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"Surface","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
211	212	directus_fields	185	{"sort":5,"collection":"Surface","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"Surface","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
212	213	directus_fields	186	{"sort":6,"collection":"Surface","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"Surface","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
213	214	directus_fields	187	{"sort":7,"collection":"Surface","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"Surface","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
214	215	directus_fields	188	{"sort":9,"collection":"Surface","field":"cat_surface","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Oberflächenkategorie"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"Surface","field":"cat_surface","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Oberflächenkategorie"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
215	216	directus_fields	189	{"sort":10,"collection":"Surface","field":"items","special":["cast-json"],"interface":"tags","options":{"alphabetize":true},"display":"labels","display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"Surface","field":"items","special":["cast-json"],"interface":"tags","options":{"alphabetize":true},"display":"labels","display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
233	234	directus_fields	205	{"sort":6,"collection":"Modifications","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"Modifications","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
216	217	directus_collections	Surface	{"collection":"Surface","icon":"vertical_align_bottom","note":null,"display_template":"{{name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Oberflächen"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":2,"group":"DoorCategory","collapse":"open","preview_url":null,"versioning":false}	{"collection":"Surface","icon":"vertical_align_bottom","note":null,"display_template":"{{name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Oberflächen"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":2,"group":"DoorCategory","collapse":"open","preview_url":null,"versioning":false}	\N	\N
217	218	directus_fields	190	{"sort":1,"collection":"ClimateClass","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"ClimateClass","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
218	219	directus_fields	191	{"sort":2,"collection":"ClimateClass","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"ClimateClass","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
219	220	directus_fields	192	{"sort":3,"collection":"ClimateClass","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"ClimateClass","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
220	221	directus_fields	193	{"sort":4,"collection":"ClimateClass","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"ClimateClass","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
221	222	directus_fields	194	{"sort":5,"collection":"ClimateClass","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"ClimateClass","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
222	223	directus_fields	195	{"sort":6,"collection":"ClimateClass","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"ClimateClass","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
223	224	directus_fields	196	{"sort":7,"collection":"ClimateClass","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"ClimateClass","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
251	252	directus_fields	221	{"sort":3,"collection":"SoundProofing","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"SoundProofing","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
224	225	directus_fields	197	{"sort":8,"collection":"ClimateClass","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":"formatted-value","display_options":{"prefix":null,"suffix":null,"icon":"nest_eco_leaf","color":null},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Klimaklasse"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"ClimateClass","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":"formatted-value","display_options":{"prefix":null,"suffix":null,"icon":"nest_eco_leaf","color":null},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Klimaklasse"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
225	226	directus_fields	198	{"sort":9,"collection":"ClimateClass","field":"cc","special":null,"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"ClimateClass","field":"cc","special":null,"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
226	227	directus_fields	199	{"sort":10,"collection":"ClimateClass","field":"clicla","special":null,"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"ClimateClass","field":"clicla","special":null,"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
227	228	directus_collections	ClimateClass	{"collection":"ClimateClass","icon":"nest_eco_leaf","note":null,"display_template":"{{name}}{{cc.name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Klimaklasse"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":3,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	{"collection":"ClimateClass","icon":"nest_eco_leaf","note":null,"display_template":"{{name}}{{cc.name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Klimaklasse"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":3,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	\N	\N
228	229	directus_fields	200	{"sort":1,"collection":"Modifications","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Modifications","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
229	230	directus_fields	201	{"sort":2,"collection":"Modifications","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Modifications","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
230	231	directus_fields	202	{"sort":3,"collection":"Modifications","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Modifications","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
231	232	directus_fields	203	{"sort":4,"collection":"Modifications","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"Modifications","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
232	233	directus_fields	204	{"sort":5,"collection":"Modifications","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"Modifications","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
234	235	directus_fields	206	{"sort":7,"collection":"Modifications","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"Modifications","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
235	236	directus_fields	207	{"sort":8,"collection":"Modifications","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"Modifications","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
236	237	directus_fields	208	{"sort":9,"collection":"Modifications","field":"category","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Kategorie"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":9,"collection":"Modifications","field":"category","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"width":"half","translations":[{"language":"de-DE","translation":"Kategorie"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
237	238	directus_fields	209	{"sort":10,"collection":"Modifications","field":"surface","special":["m2m"],"interface":"list-m2m","options":{"template":"{{cat_surface_id.name}}"},"display":"related-values","display_options":{"template":"{{cat_surface_id.name}}"},"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"Modifications","field":"surface","special":["m2m"],"interface":"list-m2m","options":{"template":"{{cat_surface_id.name}}"},"display":"related-values","display_options":{"template":"{{cat_surface_id.name}}"},"readonly":false,"hidden":false,"width":"half","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
238	239	directus_fields	210	{"sort":11,"collection":"Modifications","field":"divider-luvkdr","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"Preise"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"Modifications","field":"divider-luvkdr","special":["alias","no-data"],"interface":"presentation-divider","options":{"title":"Preise"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
239	240	directus_collections	Modifications	{"collection":"Modifications","icon":"tools_power_drill","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Bearbeitungen"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":3,"group":"DoorCategory","collapse":"open","preview_url":null,"versioning":false}	{"collection":"Modifications","icon":"tools_power_drill","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Bearbeitungen"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":3,"group":"DoorCategory","collapse":"open","preview_url":null,"versioning":false}	\N	\N
240	241	directus_fields	211	{"sort":1,"collection":"HeatProtection","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"HeatProtection","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
241	242	directus_fields	212	{"sort":2,"collection":"HeatProtection","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"HeatProtection","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
242	243	directus_fields	213	{"sort":3,"collection":"HeatProtection","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"HeatProtection","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
243	244	directus_fields	214	{"sort":4,"collection":"HeatProtection","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"HeatProtection","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
244	245	directus_fields	215	{"sort":5,"collection":"HeatProtection","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"HeatProtection","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
245	246	directus_fields	216	{"sort":6,"collection":"HeatProtection","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"HeatProtection","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
246	247	directus_fields	217	{"sort":7,"collection":"HeatProtection","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"HeatProtection","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
247	248	directus_fields	218	{"sort":8,"collection":"HeatProtection","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":"formatted-value","display_options":{"icon":"local_fire_department"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Wärmeschutz"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"HeatProtection","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":"formatted-value","display_options":{"icon":"local_fire_department"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Wärmeschutz"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
248	249	directus_collections	HeatProtection	{"collection":"HeatProtection","icon":"mode_heat","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Wärmeschutz"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":4,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	{"collection":"HeatProtection","icon":"mode_heat","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Wärmeschutz"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":4,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	\N	\N
249	250	directus_fields	219	{"sort":1,"collection":"SoundProofing","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"SoundProofing","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
250	251	directus_fields	220	{"sort":2,"collection":"SoundProofing","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"SoundProofing","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
326	327	HeatProtection	4	{"id":"4","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:20.578Z","name":"1.5"}	{"id":"4","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:20.578Z","name":"1.5"}	\N	\N
252	253	directus_fields	222	{"sort":4,"collection":"SoundProofing","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"SoundProofing","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
253	254	directus_fields	223	{"sort":5,"collection":"SoundProofing","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"SoundProofing","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
254	255	directus_fields	224	{"sort":6,"collection":"SoundProofing","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"SoundProofing","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
255	256	directus_fields	225	{"sort":7,"collection":"SoundProofing","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"SoundProofing","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
256	257	directus_fields	226	{"sort":10,"collection":"SoundProofing","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":"formatted-value","display_options":{"icon":"noise_aware"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Schallschutz"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":10,"collection":"SoundProofing","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":"formatted-value","display_options":{"icon":"noise_aware"},"readonly":false,"hidden":false,"width":"full","translations":[{"language":"de-DE","translation":"Schallschutz"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
257	258	directus_fields	227	{"sort":11,"collection":"SoundProofing","field":"value","special":null,"interface":"input","options":{"iconLeft":"numbers"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":11,"collection":"SoundProofing","field":"value","special":null,"interface":"input","options":{"iconLeft":"numbers"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
258	259	directus_collections	SoundProofing	{"collection":"SoundProofing","icon":"noise_aware","note":null,"display_template":"{{name}} ({{value}})","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Schallschutz"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":5,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	{"collection":"SoundProofing","icon":"noise_aware","note":null,"display_template":"{{name}} ({{value}})","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Schallschutz"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":5,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	\N	\N
259	260	directus_fields	228	{"sort":1,"collection":"Application","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"Application","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
269	270	directus_fields	237	{"sort":2,"collection":"cat_modifications","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"cat_modifications","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
327	328	HeatProtection	5	{"id":"5","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:38.052Z","name":"0.9"}	{"id":"5","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:38.052Z","name":"0.9"}	\N	\N
260	261	directus_fields	229	{"sort":2,"collection":"Application","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"Application","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
261	262	directus_fields	230	{"sort":3,"collection":"Application","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":3,"collection":"Application","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
262	263	directus_fields	231	{"sort":4,"collection":"Application","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":4,"collection":"Application","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
263	264	directus_fields	232	{"sort":5,"collection":"Application","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":5,"collection":"Application","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
264	265	directus_fields	233	{"sort":6,"collection":"Application","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":6,"collection":"Application","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
265	266	directus_fields	234	{"sort":7,"collection":"Application","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":7,"collection":"Application","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
266	267	directus_fields	235	{"sort":8,"collection":"Application","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":8,"collection":"Application","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
267	268	directus_collections	Application	{"collection":"Application","icon":"build","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Anwendung"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":1,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	{"collection":"Application","icon":"build","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Anwendung"}],"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":"#2ECDA7","item_duplication_fields":null,"sort":1,"group":"Product","collapse":"open","preview_url":null,"versioning":false}	\N	\N
268	269	directus_fields	236	{"sort":1,"collection":"cat_modifications","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"cat_modifications","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
270	271	directus_collections	cat_modifications	{"collection":"cat_modifications","icon":"category","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Bearbeitungskategorie"}],"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":1,"group":"Modifications","collapse":"open","preview_url":null,"versioning":false}	{"collection":"cat_modifications","icon":"category","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Bearbeitungskategorie"}],"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":1,"group":"Modifications","collapse":"open","preview_url":null,"versioning":false}	\N	\N
271	272	directus_fields	238	{"sort":1,"collection":"cat_surface","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"cat_surface","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
272	273	directus_fields	239	{"sort":2,"collection":"cat_surface","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":2,"collection":"cat_surface","field":"name","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
273	274	directus_collections	cat_surface	{"collection":"cat_surface","icon":"category","note":null,"display_template":"{{name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Oberflächenkategorien"}],"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":1,"group":"Surface","collapse":"open","preview_url":null,"versioning":false}	{"collection":"cat_surface","icon":"category","note":null,"display_template":"{{name}}","hidden":false,"singleton":false,"translations":[{"language":"de-DE","translation":"Oberflächenkategorien"}],"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":"#FFA439","item_duplication_fields":null,"sort":1,"group":"Surface","collapse":"open","preview_url":null,"versioning":false}	\N	\N
274	275	directus_fields	240	{"sort":30,"system":true,"collection":"directus_settings","field":"reporting_divider","special":["alias","no-data"],"interface":"presentation-divider","options":{"icon":"feedback","title":"Reporting"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	{"sort":30,"system":true,"collection":"directus_settings","field":"reporting_divider","special":["alias","no-data"],"interface":"presentation-divider","options":{"icon":"feedback","title":"Reporting"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	\N	\N
275	276	directus_fields	241	{"sort":31,"system":true,"collection":"directus_settings","field":"report_feature_url","special":null,"interface":"input","options":{"iconRight":"link","placeholder":"https://example.com/feature"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","group":null,"translations":null,"note":null,"conditions":null,"required":false}	{"sort":31,"system":true,"collection":"directus_settings","field":"report_feature_url","special":null,"interface":"input","options":{"iconRight":"link","placeholder":"https://example.com/feature"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","group":null,"translations":null,"note":null,"conditions":null,"required":false}	\N	\N
276	277	directus_fields	242	{"sort":32,"system":true,"collection":"directus_settings","field":"report_bug_url","special":null,"interface":"input","options":{"iconRight":"link","placeholder":"https://example.com/bug"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","group":null,"translations":null,"note":null,"conditions":null,"required":false}	{"sort":32,"system":true,"collection":"directus_settings","field":"report_bug_url","special":null,"interface":"input","options":{"iconRight":"link","placeholder":"https://example.com/bug"},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"half","group":null,"translations":null,"note":null,"conditions":null,"required":false}	\N	\N
277	278	directus_fields	243	{"sort":33,"system":true,"collection":"directus_settings","field":"report_error_url","special":null,"interface":"system-display-template","options":{"placeholder":"https://example.com/error","fields":[{"name":"Error","field":"error","key":"error","path":"error","children":[{"name":"Name","field":"name","key":"error.name","path":"error.name"},{"name":"Message","field":"message","key":"error.message","path":"error.message"}]},{"name":"Navigator","field":"navigator","key":"navigator","path":"navigator","children":[{"name":"Language","field":"language","key":"navigator.language","path":"navigator.language"},{"name":"User Agent","field":"userAgent","key":"navigator.userAgent","path":"navigator.userAgent"}]},{"name":"Route","field":"route","key":"route","path":"route","children":[{"name":"Full Path","field":"fullPath","key":"route.fullPath","path":"route.fullPath"},{"name":"Hash","field":"hash","key":"route.hash","path":"route.hash"},{"name":"Name","field":"name","key":"route.name","path":"route.name"},{"name":"Path","field":"path","key":"route.path","path":"route.path"},{"name":"Query","field":"query","key":"route.query","path":"route.query"}]},{"name":"User","field":"user","key":"user","path":"user","children":[{"name":"ID","field":"id","key":"user.id","path":"user.id"},{"name":"First Name","field":"first_name","key":"user.first_name","path":"user.first_name"},{"name":"Last Name","field":"last_name","key":"user.last_name","path":"user.last_name"},{"name":"Status","field":"status","key":"user.status","path":"user.status"},{"name":"Title","field":"title","key":"user.title","path":"user.title"},{"name":"Description","field":"description","key":"user.description","path":"user.description"},{"name":"Location","field":"location","key":"user.location","path":"user.location"}]},{"name":"Role","field":"role","key":"role","path":"role","children":[{"name":"ID","field":"id","key":"role.id","path":"role.id"},{"name":"Name","field":"name","key":"role.name","path":"role.name"}]}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	{"sort":33,"system":true,"collection":"directus_settings","field":"report_error_url","special":null,"interface":"system-display-template","options":{"placeholder":"https://example.com/error","fields":[{"name":"Error","field":"error","key":"error","path":"error","children":[{"name":"Name","field":"name","key":"error.name","path":"error.name"},{"name":"Message","field":"message","key":"error.message","path":"error.message"}]},{"name":"Navigator","field":"navigator","key":"navigator","path":"navigator","children":[{"name":"Language","field":"language","key":"navigator.language","path":"navigator.language"},{"name":"User Agent","field":"userAgent","key":"navigator.userAgent","path":"navigator.userAgent"}]},{"name":"Route","field":"route","key":"route","path":"route","children":[{"name":"Full Path","field":"fullPath","key":"route.fullPath","path":"route.fullPath"},{"name":"Hash","field":"hash","key":"route.hash","path":"route.hash"},{"name":"Name","field":"name","key":"route.name","path":"route.name"},{"name":"Path","field":"path","key":"route.path","path":"route.path"},{"name":"Query","field":"query","key":"route.query","path":"route.query"}]},{"name":"User","field":"user","key":"user","path":"user","children":[{"name":"ID","field":"id","key":"user.id","path":"user.id"},{"name":"First Name","field":"first_name","key":"user.first_name","path":"user.first_name"},{"name":"Last Name","field":"last_name","key":"user.last_name","path":"user.last_name"},{"name":"Status","field":"status","key":"user.status","path":"user.status"},{"name":"Title","field":"title","key":"user.title","path":"user.title"},{"name":"Description","field":"description","key":"user.description","path":"user.description"},{"name":"Location","field":"location","key":"user.location","path":"user.location"}]},{"name":"Role","field":"role","key":"role","path":"role","children":[{"name":"ID","field":"id","key":"role.id","path":"role.id"},{"name":"Name","field":"name","key":"role.name","path":"role.name"}]}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	\N	\N
310	311	Surface	14	{"status":"published","items":["Hartplattendeck 2 x 3.2 mm","Hartplattendeck 3.2 mm","Hartplattendeck 4.0 mm","Hartplattendeck 5.0 mm"],"cat_surface":"1"}	{"status":"published","items":["Hartplattendeck 2 x 3.2 mm","Hartplattendeck 3.2 mm","Hartplattendeck 4.0 mm","Hartplattendeck 5.0 mm"],"cat_surface":"1"}	\N	\N
278	279	directus_fields	244	{"sort":1,"collection":"directus_users","field":"entla_user","special":null,"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"sort":1,"collection":"directus_users","field":"entla_user","special":null,"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
280	281	directus_fields	246	{"sort":12,"system":true,"collection":"directus_webhooks","field":"migrated_flow","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	{"sort":12,"system":true,"collection":"directus_webhooks","field":"migrated_flow","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	\N	\N
279	280	directus_fields	245	{"sort":11,"system":true,"collection":"directus_webhooks","field":"was_active_before_deprecation","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	{"sort":11,"system":true,"collection":"directus_webhooks","field":"was_active_before_deprecation","special":null,"interface":null,"options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"width":"full","group":null,"translations":null,"note":null,"conditions":null,"required":false}	\N	\N
281	282	directus_folders	24e6a80b-6441-4963-a4fc-cac2978773af	{"name":"corporate"}	{"name":"corporate"}	\N	\N
282	283	directus_folders	fe38f767-ade3-4362-bc38-c65861fad0c2	{"name":"produkte","parent":"24e6a80b-6441-4963-a4fc-cac2978773af"}	{"name":"produkte","parent":"24e6a80b-6441-4963-a4fc-cac2978773af"}	\N	\N
283	284	directus_folders	fe38f767-ade3-4362-bc38-c65861fad0c2	{"id":"fe38f767-ade3-4362-bc38-c65861fad0c2","name":"produkte","parent":null}	{"parent":null}	\N	\N
284	285	directus_folders	6d26620a-9265-4fb4-b2b8-94057ddf82e6	{"name":"team","parent":"fe38f767-ade3-4362-bc38-c65861fad0c2"}	{"name":"team","parent":"fe38f767-ade3-4362-bc38-c65861fad0c2"}	\N	\N
285	286	directus_folders	6d26620a-9265-4fb4-b2b8-94057ddf82e6	{"id":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","name":"team","parent":null}	{"parent":null}	\N	\N
286	287	Application	1	{"status":"published","name":"Aussenanwendung"}	{"status":"published","name":"Aussenanwendung"}	\N	\N
287	288	Application	2	{"status":"published","name":"Innenanwendung"}	{"status":"published","name":"Innenanwendung"}	\N	\N
288	289	Application	3	{"status":"published","name":"Brandschutztüren"}	{"status":"published","name":"Brandschutztüren"}	\N	\N
289	290	cat_modifications	1	{"name":"Kantenbearbeitungen"}	{"name":"Kantenbearbeitungen"}	\N	\N
290	291	cat_surface	1	{"name":"Hartplattendeck oder furniert"}	{"name":"Hartplattendeck oder furniert"}	291	\N
292	293	cat_surface	2	{"name":"Mit Kunstharz belegt und/oder Aluminium-Einlage"}	{"name":"Mit Kunstharz belegt und/oder Aluminium-Einlage"}	293	\N
294	295	Modifications	1	{"name":"Falz 4-seitig gleichlaufend / hobeln und fasen","category":1,"surface":{"create":[{"cat_surface_id":{"name":"Hartplattendeck oder furniert"}},{"cat_surface_id":{"name":"Mit Kunstharz belegt und/oder Aluminium-Einlage"}}],"update":[],"delete":[]}}	{"name":"Falz 4-seitig gleichlaufend / hobeln und fasen","category":1,"surface":{"create":[{"cat_surface_id":{"name":"Hartplattendeck oder furniert"}},{"cat_surface_id":{"name":"Mit Kunstharz belegt und/oder Aluminium-Einlage"}}],"update":[],"delete":[]}}	\N	\N
291	292	Modifications_cat_surface	1	{"cat_surface_id":{"name":"Hartplattendeck oder furniert"},"Modifications_id":1}	{"cat_surface_id":{"name":"Hartplattendeck oder furniert"},"Modifications_id":1}	294	\N
293	294	Modifications_cat_surface	2	{"cat_surface_id":{"name":"Mit Kunstharz belegt und/oder Aluminium-Einlage"},"Modifications_id":1}	{"cat_surface_id":{"name":"Mit Kunstharz belegt und/oder Aluminium-Einlage"},"Modifications_id":1}	294	\N
295	296	cat_surface	3	{"name":"Mit Aluminium-Deckblatt, gebürstet zum Streichen"}	{"name":"Mit Aluminium-Deckblatt, gebürstet zum Streichen"}	\N	\N
296	297	cat_surface	4	{"name":"Sonderarbeiten an Mass-Türen"}	{"name":"Sonderarbeiten an Mass-Türen"}	\N	\N
297	298	Surface	1	{"status":"published","items":["Okumé Sperrholz zum Überfurnieren"],"cat_surface":"1"}	{"status":"published","items":["Okumé Sperrholz zum Überfurnieren"],"cat_surface":"1"}	\N	\N
298	299	Surface	2	{"status":"published","items":["Limba 1a für Natur gem."],"cat_surface":"1"}	{"status":"published","items":["Limba 1a für Natur gem."],"cat_surface":"1"}	\N	\N
299	300	Surface	3	{"status":"published","items":["Bibolo","Koto gedämpft","Sipo"],"cat_surface":"1"}	{"status":"published","items":["Bibolo","Koto gedämpft","Sipo"],"cat_surface":"1"}	\N	\N
300	301	Surface	4	{"status":"published","items":["Buche","Esche","Fichte","Föhre","Lärche"],"cat_surface":"1"}	{"status":"published","items":["Buche","Esche","Fichte","Föhre","Lärche"],"cat_surface":"1"}	\N	\N
301	302	Surface	5	{"status":"published","items":["Fichte mit Ast"],"cat_surface":"1"}	{"status":"published","items":["Fichte mit Ast"],"cat_surface":"1"}	\N	\N
302	303	Surface	6	{"status":"published","items":["Ahorn","Birke","Eiche","Ulme"],"cat_surface":"1"}	{"status":"published","items":["Ahorn","Birke","Eiche","Ulme"],"cat_surface":"1"}	\N	\N
303	304	Surface	7	{"status":"published","items":["Amerikanischer Birnbaum","Amerikanischer Kirschbaum","Amerikanischer Nussbaum"],"cat_surface":"1"}	{"status":"published","items":["Amerikanischer Birnbaum","Amerikanischer Kirschbaum","Amerikanischer Nussbaum"],"cat_surface":"1"}	\N	\N
304	305	Surface	8	{"status":"published","items":["Europäischer Birnbaum","Europäischer Kirschbaum","Europäischer Nussbaum"],"cat_surface":"1"}	{"status":"published","items":["Europäischer Birnbaum","Europäischer Kirschbaum","Europäischer Nussbaum"],"cat_surface":"1"}	\N	\N
305	306	Surface	9	{"status":"published","items":["Elsbeer","Kanadischer Ahorn","Kastanie"],"cat_surface":"1"}	{"status":"published","items":["Elsbeer","Kanadischer Ahorn","Kastanie"],"cat_surface":"1"}	\N	\N
306	307	Surface	10	{"status":"published","items":["Buche","Fichte","Kiefer","Koto","Limba","Lärche","Okumé","Sipo"],"cat_surface":"4"}	{"status":"published","items":["Buche","Fichte","Kiefer","Koto","Limba","Lärche","Okumé","Sipo"],"cat_surface":"4"}	\N	\N
307	308	Surface	11	{"status":"published","items":["Ahorn","Birke","Eiche","Esche","Ulme"],"cat_surface":"4"}	{"status":"published","items":["Ahorn","Birke","Eiche","Esche","Ulme"],"cat_surface":"4"}	\N	\N
308	309	Surface	12	{"status":"published","items":["Amerikanischer Nussbaum","Arve"],"cat_surface":"4"}	{"status":"published","items":["Amerikanischer Nussbaum","Arve"],"cat_surface":"4"}	\N	\N
309	310	Surface	13	{"status":"published","items":["Aluminium-Deckblatt"],"cat_surface":"3"}	{"status":"published","items":["Aluminium-Deckblatt"],"cat_surface":"3"}	\N	\N
311	312	SoundProofing	1	{"name":"Rw = 29 dB","status":"published","value":"R ' w 24 - 26 dB"}	{"name":"Rw = 29 dB","status":"published","value":"R ' w 24 - 26 dB"}	\N	\N
328	329	HeatProtection	6	{"id":"6","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:45.247Z","name":"1.0"}	{"id":"6","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:45.247Z","name":"1.0"}	\N	\N
329	330	HeatProtection	7	{"id":"7","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:59.244Z","name":"1.2"}	{"id":"7","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:50:59.244Z","name":"1.2"}	\N	\N
330	331	HeatProtection	8	{"id":"8","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:51:11.774Z","name":"1.4"}	{"id":"8","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:51:11.774Z","name":"1.4"}	\N	\N
331	332	HeatProtection	9	{"id":"9","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:51:20.229Z","name":"1.6"}	{"id":"9","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:51:20.229Z","name":"1.6"}	\N	\N
332	333	HeatProtection	10	{"id":"10","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:56:49.504Z","name":"1.8"}	{"id":"10","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:56:49.504Z","name":"1.8"}	\N	\N
333	334	HeatProtection	11	{"id":"11","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:56:59.259Z","name":"1.3"}	{"id":"11","status":"published","user_created":"6321e383-265b-454a-8403-5d672b3f9317","date_created":"2024-01-18T05:56:59.259Z","name":"1.3"}	\N	\N
334	335	ClimateClass	1	{"status":"published","name":"2c"}	{"status":"published","name":"2c"}	\N	\N
335	336	ClimateClass	2	{"status":"published","name":"2a"}	{"status":"published","name":"2a"}	\N	\N
336	337	ClimateClass	3	{"status":"published","name":"2d"}	{"status":"published","name":"2d"}	\N	\N
337	338	ClimateClass	4	{"status":"published","name":"3c"}	{"status":"published","name":"3c"}	\N	\N
338	339	ClimateClass	5	{"status":"published","name":"3d"}	{"status":"published","name":"3d"}	\N	\N
339	340	ClimateClass	6	{"status":"published","name":"3e"}	{"status":"published","name":"3e"}	\N	\N
343	347	DoorCategory	2	{"status":"published","name":"Normtüren"}	{"status":"published","name":"Normtüren"}	\N	\N
344	348	DoorCategory	3	{"name":"Masstüren","status":"published"}	{"name":"Masstüren","status":"published"}	\N	\N
345	349	DoorCategory	4	{"status":"published","name":"Futtertüren"}	{"status":"published","name":"Futtertüren"}	\N	\N
346	350	DoorCategory	5	{"name":"Rahmentüren","status":"published"}	{"name":"Rahmentüren","status":"published"}	\N	\N
347	351	DoorType	1	{"name":"Aluspan mit Aluminium-Deckblatt","application":1}	{"name":"Aluspan mit Aluminium-Deckblatt","application":1}	\N	\N
348	352	DoorType	2	{"name":"Aluspan mit Aluminium-Einlage","application":1}	{"name":"Aluspan mit Aluminium-Einlage","application":1}	\N	\N
349	353	DoorType	3	{"name":"Alu-Therma","application":1}	{"name":"Alu-Therma","application":1}	\N	\N
350	354	DoorType	4	{"name":"Massiv-Türe","application":2}	{"name":"Massiv-Türe","application":2}	\N	\N
351	355	DoorType	5	{"name":"Hohl-Türe","application":2}	{"name":"Hohl-Türe","application":2}	\N	\N
352	356	DoorType	6	{"name":"RS-Röhrenspan","application":2}	{"name":"RS-Röhrenspan","application":2}	\N	\N
353	357	DoorType	7	{"name":"LS Leichtspan","application":2}	{"name":"LS Leichtspan","application":2}	\N	\N
354	358	DoorType	8	{"name":"SP Spanvoll","application":2}	{"name":"SP Spanvoll","application":2}	\N	\N
355	359	DoorType	9	{"name":"Aluspan mit Aluminiumeinlage","application":2}	{"name":"Aluspan mit Aluminiumeinlage","application":2}	\N	\N
356	360	DoorType	10	{"name":"dB-Favorit","application":2}	{"name":"dB-Favorit","application":2}	\N	\N
357	361	DoorType	11	{"name":"dB-Favorit Alu","application":2}	{"name":"dB-Favorit Alu","application":2}	\N	\N
358	362	DoorType	12	{"application":2,"name":"Strahlenschutztüre"}	{"application":2,"name":"Strahlenschutztüre"}	\N	\N
359	363	DoorType	13	{"name":"Brandex EI30","application":3}	{"name":"Brandex EI30","application":3}	\N	\N
360	364	DoorType	14	{"name":"Brandex Alu EI30","application":3}	{"name":"Brandex Alu EI30","application":3}	\N	\N
361	365	DoorType	15	{"name":"dB-Favorit EI30","application":3}	{"name":"dB-Favorit EI30","application":3}	\N	\N
362	366	DoorType	16	{"name":"dB-Favorit Alu EI30","application":3}	{"name":"dB-Favorit Alu EI30","application":3}	\N	\N
363	367	DoorType	17	{"application":3,"name":"VSSM Massvolltüre EI30"}	{"application":3,"name":"VSSM Massvolltüre EI30"}	\N	\N
391	395	team	6	{"first_name":"Marco Antonio","last_name":"Müller","email":"mmueller@entla.ch","title":"Kundenberatung, Auftragserfassung"}	{"first_name":"Marco Antonio","last_name":"Müller","email":"mmueller@entla.ch","title":"Kundenberatung, Auftragserfassung"}	\N	\N
368	372	Product	8	{"DoorType":1,"application":1,"thickness":39.5,"SoundProofing":2,"HeatProtection":2,"ClimateClass":{"create":[{"Product_id":"+","ClimateClass_id":{"id":1}}],"update":[],"delete":[]},"weight":25,"Surfaces":{"create":[{"Product_id":"+","Surface_id":{"id":13}}],"update":[],"delete":[]}}	{"DoorType":1,"application":1,"thickness":39.5,"SoundProofing":2,"HeatProtection":2,"ClimateClass":{"create":[{"Product_id":"+","ClimateClass_id":{"id":1}}],"update":[],"delete":[]},"weight":25,"Surfaces":{"create":[{"Product_id":"+","Surface_id":{"id":13}}],"update":[],"delete":[]}}	\N	\N
366	370	Product_ClimateClass_1	2	{"Product_id":8,"ClimateClass_id":{"id":1}}	{"Product_id":8,"ClimateClass_id":{"id":1}}	368	\N
367	371	Product_Surface	1	{"Product_id":8,"Surface_id":{"id":13}}	{"Product_id":8,"Surface_id":{"id":13}}	368	\N
369	373	directus_extensions	505f4f67-7b75-4f5b-b057-242598c4a71d	{"id":"505f4f67-7b75-4f5b-b057-242598c4a71d","enabled":true,"folder":"410572b8-10c6-4552-aa27-ffb9a7f78d87","source":"registry","bundle":null}	{"id":"505f4f67-7b75-4f5b-b057-242598c4a71d","enabled":true,"folder":"410572b8-10c6-4552-aa27-ffb9a7f78d87","source":"registry","bundle":null}	\N	\N
434	438	directus_files	724fea3d-983e-44c8-8933-765b9dfb9b8c	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Felix Renggli","filename_download":"felix_renggli.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Felix Renggli","filename_download":"felix_renggli.avif","type":"image/avif","storage":"local"}	\N	\N
370	374	directus_settings	1	{"id":1,"project_name":"Directus","project_url":null,"project_color":"#3399FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"link","id":"docs","name":"Documentation","url":"https://docs.directus.io","icon":"help","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":true}],"project_descriptor":null,"default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_feature_url":null,"report_bug_url":null,"report_error_url":null}	{"project_color":"#3399FF"}	\N	\N
371	375	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","accountability":"all","trigger":"event","options":{"type":"filter","scope":["items.create","items.update"]}}	{"name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","accountability":"all","trigger":"event","options":{"type":"filter","scope":["items.create","items.update"]}}	\N	\N
372	376	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"id":"3571d371-f654-4bb0-a44d-e73b2ceddcbf","name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"]},"operation":null,"date_created":"2024-04-19T19:08:37.940Z","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","operations":[]}	{"name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"]}}	\N	\N
373	377	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"id":"3571d371-f654-4bb0-a44d-e73b2ceddcbf","name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"],"return":"$last"},"operation":null,"date_created":"2024-04-19T19:08:37.940Z","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","operations":[]}	{"name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"],"return":"$last"}}	\N	\N
375	379	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"id":"3571d371-f654-4bb0-a44d-e73b2ceddcbf","name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"]},"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","date_created":"2024-04-19T19:08:37.940Z","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","operations":["9d4c5262-c441-4e43-afaf-c613226b11cb"]}	{"name":"slugify","icon":"conversion_path","color":null,"description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"]},"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","date_created":"2024-04-19T19:08:37.940Z","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b"}	\N	\N
374	378	directus_operations	9d4c5262-c441-4e43-afaf-c613226b11cb	{"flow":"3571d371-f654-4bb0-a44d-e73b2ceddcbf","position_x":19,"position_y":1,"name":"Run Script","key":"exec_scfro","type":"exec","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}	{"flow":"3571d371-f654-4bb0-a44d-e73b2ceddcbf","position_x":19,"position_y":1,"name":"Run Script","key":"exec_scfro","type":"exec","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}	375	\N
481	485	directus_permissions	4	{"collection":"directus_files","action":"delete","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_files","action":"delete","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
482	486	directus_permissions	5	{"collection":"directus_dashboards","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_dashboards","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
483	487	directus_permissions	6	{"collection":"directus_dashboards","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_dashboards","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
484	488	directus_permissions	7	{"collection":"directus_dashboards","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_dashboards","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
485	489	directus_permissions	8	{"collection":"directus_dashboards","action":"delete","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_dashboards","action":"delete","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
486	490	directus_permissions	9	{"collection":"directus_panels","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_panels","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
376	380	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"id":"3571d371-f654-4bb0-a44d-e73b2ceddcbf","name":"slugify","icon":"conversion_path","color":"#2ECDA7","description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"]},"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","date_created":"2024-04-19T19:08:37.940Z","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","operations":["9d4c5262-c441-4e43-afaf-c613226b11cb"]}	{"name":"slugify","icon":"conversion_path","color":"#2ECDA7","description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"]}}	\N	\N
378	382	directus_settings	1	{"id":1,"project_name":"entla.ch","project_url":"https://entla.ch","project_color":"#3399FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":true}],"project_descriptor":"Entla.ch Website & Kalkulator","default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_feature_url":null,"report_bug_url":null,"report_error_url":null}	{"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":true}]}	\N	\N
377	381	directus_settings	1	{"id":1,"project_name":"entla.ch","project_url":"https://entla.ch","project_color":"#3399FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"link","id":"docs","name":"Documentation","url":"https://docs.directus.io","icon":"help","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":true}],"project_descriptor":"Entla.ch Website & Kalkulator","default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_feature_url":null,"report_bug_url":null,"report_error_url":null}	{"project_name":"entla.ch","project_url":"https://entla.ch","project_descriptor":"Entla.ch Website & Kalkulator"}	\N	\N
379	383	directus_settings	1	{"id":1,"project_name":"entla.ch","project_url":"https://entla.ch","project_color":"#3399FF","project_logo":null,"public_foreground":null,"public_background":null,"public_note":null,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"custom_css":null,"storage_default_folder":null,"basemaps":null,"mapbox_key":null,"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":false}],"project_descriptor":"Entla.ch Website & Kalkulator","default_language":"en-US","custom_aspect_ratios":null,"public_favicon":null,"default_appearance":"auto","default_theme_light":null,"theme_light_overrides":null,"default_theme_dark":null,"theme_dark_overrides":null,"report_feature_url":null,"report_bug_url":null,"report_error_url":null}	{"module_bar":[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":false}]}	\N	\N
380	384	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"status":"published","first_name":"Felix","last_name":"Renggli","email":"frenggli@entla.ch","title":"Geschäftsführer / Inhaber"},"event":"team.items.create","collection":"team"},"$last":{"status":"published","first_name":"Felix","last_name":"Renggli","email":"frenggli@entla.ch","title":"Geschäftsführer / Inhaber","slug":"geschaftsfuhrer-inhaber"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"status":"published","first_name":"Felix","last_name":"Renggli","email":"frenggli@entla.ch","title":"Geschäftsführer / Inhaber","slug":"geschaftsfuhrer-inhaber"}}}	\N	\N	\N
381	385	team	1	{"status":"published","first_name":"Felix","last_name":"Renggli","email":"frenggli@entla.ch","title":"Geschäftsführer / Inhaber"}	{"status":"published","first_name":"Felix","last_name":"Renggli","email":"frenggli@entla.ch","title":"Geschäftsführer / Inhaber"}	\N	\N
382	386	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"status":"published","first_name":"Martin","last_name":"Läng","email":"mlaeng@entla.ch","title":"Betriebsleiter, Mitglied der Geschäftsführung"},"event":"team.items.create","collection":"team"},"$last":{"status":"published","first_name":"Martin","last_name":"Läng","email":"mlaeng@entla.ch","title":"Betriebsleiter, Mitglied der Geschäftsführung","slug":"betriebsleiter-mitglied-der-geschaftsfuhrung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"status":"published","first_name":"Martin","last_name":"Läng","email":"mlaeng@entla.ch","title":"Betriebsleiter, Mitglied der Geschäftsführung","slug":"betriebsleiter-mitglied-der-geschaftsfuhrung"}}}	\N	\N	\N
383	387	team	2	{"status":"published","first_name":"Martin","last_name":"Läng","email":"mlaeng@entla.ch","title":"Betriebsleiter, Mitglied der Geschäftsführung"}	{"status":"published","first_name":"Martin","last_name":"Läng","email":"mlaeng@entla.ch","title":"Betriebsleiter, Mitglied der Geschäftsführung"}	\N	\N
433	437	directus_files	43eab949-47b4-41b5-aab7-6782a64e43c5	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Martin Laeng","filename_download":"martin_laeng.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Martin Laeng","filename_download":"martin_laeng.avif","type":"image/avif","storage":"local"}	\N	\N
435	441	directus_files	3711b3e8-23e2-403e-ba2e-e5ce4068d2a9	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Cornelia Stadler Ruessli","filename_download":"cornelia_stadler_ruessli.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Cornelia Stadler Ruessli","filename_download":"cornelia_stadler_ruessli.avif","type":"image/avif","storage":"local"}	\N	\N
384	388	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"status":"published","first_name":"Urs","last_name":"Wespi","email":"uwespi@entla.ch","title":"Kundenberatung, Auftragserfassung"},"event":"team.items.create","collection":"team"},"$last":{"status":"published","first_name":"Urs","last_name":"Wespi","email":"uwespi@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"status":"published","first_name":"Urs","last_name":"Wespi","email":"uwespi@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"}}}	\N	\N	\N
385	389	team	3	{"status":"published","first_name":"Urs","last_name":"Wespi","email":"uwespi@entla.ch","title":"Kundenberatung, Auftragserfassung"}	{"status":"published","first_name":"Urs","last_name":"Wespi","email":"uwespi@entla.ch","title":"Kundenberatung, Auftragserfassung"}	\N	\N
386	390	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Martin","last_name":"brun","status":"published","email":"mbrun@entla.ch","title":"Kundenberatung, Auftragserfassung"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Martin","last_name":"brun","status":"published","email":"mbrun@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Martin","last_name":"brun","status":"published","email":"mbrun@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"}}}	\N	\N	\N
387	391	team	4	{"first_name":"Martin","last_name":"brun","status":"published","email":"mbrun@entla.ch","title":"Kundenberatung, Auftragserfassung"}	{"first_name":"Martin","last_name":"brun","status":"published","email":"mbrun@entla.ch","title":"Kundenberatung, Auftragserfassung"}	\N	\N
388	392	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Clemens","last_name":"Van den Wynenbergh","email":"cvandenwyenbergh@entla.ch","title":"Kundenberatung, Auftragserfassung"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Clemens","last_name":"Van den Wynenbergh","email":"cvandenwyenbergh@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Clemens","last_name":"Van den Wynenbergh","email":"cvandenwyenbergh@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"}}}	\N	\N	\N
389	393	team	5	{"first_name":"Clemens","last_name":"Van den Wynenbergh","email":"cvandenwyenbergh@entla.ch","title":"Kundenberatung, Auftragserfassung"}	{"first_name":"Clemens","last_name":"Van den Wynenbergh","email":"cvandenwyenbergh@entla.ch","title":"Kundenberatung, Auftragserfassung"}	\N	\N
390	394	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Marco Antonio","last_name":"Müller","email":"mmueller@entla.ch","title":"Kundenberatung, Auftragserfassung"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Marco Antonio","last_name":"Müller","email":"mmueller@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Marco Antonio","last_name":"Müller","email":"mmueller@entla.ch","title":"Kundenberatung, Auftragserfassung","slug":"kundenberatung-auftragserfassung"}}}	\N	\N	\N
392	396	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"last_name":"Renggli-Mahler","first_name":"Lucy","email":"lrenggli@entla.ch","title":"Administration, Kundenberatung, Auftragserfassung"},"event":"team.items.create","collection":"team"},"$last":{"last_name":"Renggli-Mahler","first_name":"Lucy","email":"lrenggli@entla.ch","title":"Administration, Kundenberatung, Auftragserfassung","slug":"administration-kundenberatung-auftragserfassung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"last_name":"Renggli-Mahler","first_name":"Lucy","email":"lrenggli@entla.ch","title":"Administration, Kundenberatung, Auftragserfassung","slug":"administration-kundenberatung-auftragserfassung"}}}	\N	\N	\N
393	397	team	7	{"last_name":"Renggli-Mahler","first_name":"Lucy","email":"lrenggli@entla.ch","title":"Administration, Kundenberatung, Auftragserfassung"}	{"last_name":"Renggli-Mahler","first_name":"Lucy","email":"lrenggli@entla.ch","title":"Administration, Kundenberatung, Auftragserfassung"}	\N	\N
394	398	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Cornelia","last_name":"Stadler-Rüssli","email":"cstadler@entla.ch","title":"Buchhaltung / Personal"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Cornelia","last_name":"Stadler-Rüssli","email":"cstadler@entla.ch","title":"Buchhaltung / Personal","slug":"buchhaltung-personal"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Cornelia","last_name":"Stadler-Rüssli","email":"cstadler@entla.ch","title":"Buchhaltung / Personal","slug":"buchhaltung-personal"}}}	\N	\N	\N
395	399	team	8	{"first_name":"Cornelia","last_name":"Stadler-Rüssli","email":"cstadler@entla.ch","title":"Buchhaltung / Personal"}	{"first_name":"Cornelia","last_name":"Stadler-Rüssli","email":"cstadler@entla.ch","title":"Buchhaltung / Personal"}	\N	\N
396	400	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Lee","last_name":"Huwiler","email":"lhuwiler@entla.ch","title":"Administration, Buchhaltung"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Lee","last_name":"Huwiler","email":"lhuwiler@entla.ch","title":"Administration, Buchhaltung","slug":"administration-buchhaltung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Lee","last_name":"Huwiler","email":"lhuwiler@entla.ch","title":"Administration, Buchhaltung","slug":"administration-buchhaltung"}}}	\N	\N	\N
397	401	team	9	{"first_name":"Lee","last_name":"Huwiler","email":"lhuwiler@entla.ch","title":"Administration, Buchhaltung"}	{"first_name":"Lee","last_name":"Huwiler","email":"lhuwiler@entla.ch","title":"Administration, Buchhaltung"}	\N	\N
398	402	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Daniel","last_name":"Schilter","email":"dschilter@entla.ch","title":"Teamleiter CNC"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Daniel","last_name":"Schilter","email":"dschilter@entla.ch","title":"Teamleiter CNC","slug":"teamleiter-cnc"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Daniel","last_name":"Schilter","email":"dschilter@entla.ch","title":"Teamleiter CNC","slug":"teamleiter-cnc"}}}	\N	\N	\N
399	403	team	10	{"first_name":"Daniel","last_name":"Schilter","email":"dschilter@entla.ch","title":"Teamleiter CNC"}	{"first_name":"Daniel","last_name":"Schilter","email":"dschilter@entla.ch","title":"Teamleiter CNC"}	\N	\N
400	404	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Peter","last_name":"Bucheli","email":"pbucheli@entla.ch","title":"Teamleiter Endfertigung"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Peter","last_name":"Bucheli","email":"pbucheli@entla.ch","title":"Teamleiter Endfertigung","slug":"teamleiter-endfertigung"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Peter","last_name":"Bucheli","email":"pbucheli@entla.ch","title":"Teamleiter Endfertigung","slug":"teamleiter-endfertigung"}}}	\N	\N	\N
401	405	team	11	{"first_name":"Peter","last_name":"Bucheli","email":"pbucheli@entla.ch","title":"Teamleiter Endfertigung"}	{"first_name":"Peter","last_name":"Bucheli","email":"pbucheli@entla.ch","title":"Teamleiter Endfertigung"}	\N	\N
402	406	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Daniel","last_name":"Portmann","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Daniel","last_name":"Portmann","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion","slug":"co-teamleiter-rohlingsproduktion"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Daniel","last_name":"Portmann","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion","slug":"co-teamleiter-rohlingsproduktion"}}}	\N	\N	\N
403	407	team	12	{"first_name":"Daniel","last_name":"Portmann","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion"}	{"first_name":"Daniel","last_name":"Portmann","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion"}	\N	\N
404	408	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Dominik","last_name":"Brun","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Dominik","last_name":"Brun","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion","slug":"co-teamleiter-rohlingsproduktion"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Dominik","last_name":"Brun","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion","slug":"co-teamleiter-rohlingsproduktion"}}}	\N	\N	\N
405	409	team	13	{"first_name":"Dominik","last_name":"Brun","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion"}	{"first_name":"Dominik","last_name":"Brun","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion"}	\N	\N
406	410	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"David","last_name":"Wicki","email":"massivholz@entla.ch","title":"Teamleiter Massivholz"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"David","last_name":"Wicki","email":"massivholz@entla.ch","title":"Teamleiter Massivholz","slug":"teamleiter-massivholz"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"David","last_name":"Wicki","email":"massivholz@entla.ch","title":"Teamleiter Massivholz","slug":"teamleiter-massivholz"}}}	\N	\N	\N
407	411	team	14	{"first_name":"David","last_name":"Wicki","email":"massivholz@entla.ch","title":"Teamleiter Massivholz"}	{"first_name":"David","last_name":"Wicki","email":"massivholz@entla.ch","title":"Teamleiter Massivholz"}	\N	\N
408	412	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"first_name":"Markus","last_name":"Brun","email":"unterhalt@entla.ch","title":"Instandhaltung Anlagen und Gebäude"},"event":"team.items.create","collection":"team"},"$last":{"first_name":"Markus","last_name":"Brun","email":"unterhalt@entla.ch","title":"Instandhaltung Anlagen und Gebäude","slug":"instandhaltung-anlagen-und-gebaude"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"first_name":"Markus","last_name":"Brun","email":"unterhalt@entla.ch","title":"Instandhaltung Anlagen und Gebäude","slug":"instandhaltung-anlagen-und-gebaude"}}}	\N	\N	\N
409	413	team	15	{"first_name":"Markus","last_name":"Brun","email":"unterhalt@entla.ch","title":"Instandhaltung Anlagen und Gebäude"}	{"first_name":"Markus","last_name":"Brun","email":"unterhalt@entla.ch","title":"Instandhaltung Anlagen und Gebäude"}	\N	\N
410	414	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"status":"published"},"event":"team.items.update","keys":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],"collection":"team"},"$last":{"status":"published"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"status":"published"}}}	\N	\N	\N
411	415	team	1	{"id":1,"status":"published","sort":null,"first_name":"Felix","last_name":"Renggli","email":"frenggli@entla.ch","title":"Geschäftsführer / Inhaber","avatar":null}	{"status":"published"}	\N	\N
412	416	team	10	{"id":2,"status":"published","sort":null,"first_name":"Martin","last_name":"Läng","email":"mlaeng@entla.ch","title":"Betriebsleiter, Mitglied der Geschäftsführung","avatar":null}	{"status":"published"}	\N	\N
413	417	team	11	{"id":3,"status":"published","sort":null,"first_name":"Urs","last_name":"Wespi","email":"uwespi@entla.ch","title":"Kundenberatung, Auftragserfassung","avatar":null}	{"status":"published"}	\N	\N
414	418	team	12	{"id":4,"status":"published","sort":null,"first_name":"Martin","last_name":"brun","email":"mbrun@entla.ch","title":"Kundenberatung, Auftragserfassung","avatar":null}	{"status":"published"}	\N	\N
415	419	team	13	{"id":5,"status":"published","sort":null,"first_name":"Clemens","last_name":"Van den Wynenbergh","email":"cvandenwyenbergh@entla.ch","title":"Kundenberatung, Auftragserfassung","avatar":null}	{"status":"published"}	\N	\N
416	420	team	14	{"id":6,"status":"published","sort":null,"first_name":"Marco Antonio","last_name":"Müller","email":"mmueller@entla.ch","title":"Kundenberatung, Auftragserfassung","avatar":null}	{"status":"published"}	\N	\N
417	421	team	15	{"id":7,"status":"published","sort":null,"first_name":"Lucy","last_name":"Renggli-Mahler","email":"lrenggli@entla.ch","title":"Administration, Kundenberatung, Auftragserfassung","avatar":null}	{"status":"published"}	\N	\N
418	422	team	2	{"id":8,"status":"published","sort":null,"first_name":"Cornelia","last_name":"Stadler-Rüssli","email":"cstadler@entla.ch","title":"Buchhaltung / Personal","avatar":null}	{"status":"published"}	\N	\N
419	423	team	3	{"id":9,"status":"published","sort":null,"first_name":"Lee","last_name":"Huwiler","email":"lhuwiler@entla.ch","title":"Administration, Buchhaltung","avatar":null}	{"status":"published"}	\N	\N
420	424	team	4	{"id":10,"status":"published","sort":null,"first_name":"Daniel","last_name":"Schilter","email":"dschilter@entla.ch","title":"Teamleiter CNC","avatar":null}	{"status":"published"}	\N	\N
421	425	team	5	{"id":11,"status":"published","sort":null,"first_name":"Peter","last_name":"Bucheli","email":"pbucheli@entla.ch","title":"Teamleiter Endfertigung","avatar":null}	{"status":"published"}	\N	\N
422	426	team	6	{"id":12,"status":"published","sort":null,"first_name":"Daniel","last_name":"Portmann","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion","avatar":null}	{"status":"published"}	\N	\N
423	427	team	7	{"id":13,"status":"published","sort":null,"first_name":"Dominik","last_name":"Brun","email":"produktion@entla.ch","title":"Co-Teamleiter Rohlingsproduktion","avatar":null}	{"status":"published"}	\N	\N
424	428	team	8	{"id":14,"status":"published","sort":null,"first_name":"David","last_name":"Wicki","email":"massivholz@entla.ch","title":"Teamleiter Massivholz","avatar":null}	{"status":"published"}	\N	\N
425	429	team	9	{"id":15,"status":"published","sort":null,"first_name":"Markus","last_name":"Brun","email":"unterhalt@entla.ch","title":"Instandhaltung Anlagen und Gebäude","avatar":null}	{"status":"published"}	\N	\N
426	430	directus_files	38c2cc6f-39c9-4c54-8859-459a15608e79	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Clemens Van Den Wyenbergh","filename_download":"clemens_van_den_wyenbergh.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Clemens Van Den Wyenbergh","filename_download":"clemens_van_den_wyenbergh.avif","type":"image/avif","storage":"local"}	\N	\N
427	432	directus_files	588f542f-0c1b-4a1a-9ce6-2aedc4e60409	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Lucy Renggli","filename_download":"lucy_renggli.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Lucy Renggli","filename_download":"lucy_renggli.avif","type":"image/avif","storage":"local"}	\N	\N
428	433	directus_files	4f10645d-d328-4926-83b1-ded8750eb0e3	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Urs Wespi","filename_download":"urs_wespi.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Urs Wespi","filename_download":"urs_wespi.avif","type":"image/avif","storage":"local"}	\N	\N
429	431	directus_files	03b91eaa-2ceb-4127-bcb0-5ca911221d90	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Dsc 1718 2 768x923","filename_download":"DSC_1718_2-768x923.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Dsc 1718 2 768x923","filename_download":"DSC_1718_2-768x923.avif","type":"image/avif","storage":"local"}	\N	\N
430	434	directus_files	b1dec839-e9db-4dc4-be8f-e0283a0641f2	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Mueller Marco 768x768","filename_download":"mueller_marco-768x768.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Mueller Marco 768x768","filename_download":"mueller_marco-768x768.avif","type":"image/avif","storage":"local"}	\N	\N
431	435	directus_files	f8733deb-05df-4166-8ab8-cbf8c45c215a	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Dsc 1709  2 768x861","filename_download":"DSC_1709__2-768x861.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Dsc 1709  2 768x861","filename_download":"DSC_1709__2-768x861.avif","type":"image/avif","storage":"local"}	\N	\N
432	436	directus_files	9e2fdafb-312c-48f0-980f-4a78f46daaa4	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Martin Brun","filename_download":"martin_brun.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Martin Brun","filename_download":"martin_brun.avif","type":"image/avif","storage":"local"}	\N	\N
436	439	directus_files	4871510b-f8ed-43a0-9b06-714430b31dcd	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Daniel Schilter","filename_download":"daniel_schilter.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Daniel Schilter","filename_download":"daniel_schilter.avif","type":"image/avif","storage":"local"}	\N	\N
437	440	directus_files	afa1cb6d-68ab-4938-9bec-46fafcebbca9	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Dsc 1734 768x851","filename_download":"DSC_1734-768x851.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Dsc 1734 768x851","filename_download":"DSC_1734-768x851.avif","type":"image/avif","storage":"local"}	\N	\N
438	443	directus_files	841257fd-3bf8-49a9-812c-efbd6fb9f110	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Huwyler Lee 768x768","filename_download":"huwyler_lee-768x768.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Huwyler Lee 768x768","filename_download":"huwyler_lee-768x768.avif","type":"image/avif","storage":"local"}	\N	\N
439	444	directus_files	457b1228-a3cc-4e8c-b9ce-2f2b64373fb5	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Daniel Portmann","filename_download":"daniel_portmann.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Daniel Portmann","filename_download":"daniel_portmann.avif","type":"image/avif","storage":"local"}	\N	\N
440	442	directus_files	42cf7e5e-953e-45f0-b700-33b6d9fb6920	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Peter Bucheli","filename_download":"peter_bucheli.avif","type":"image/avif","storage":"local"}	{"folder":"6d26620a-9265-4fb4-b2b8-94057ddf82e6","title":"Peter Bucheli","filename_download":"peter_bucheli.avif","type":"image/avif","storage":"local"}	\N	\N
441	445	directus_files	b9376cc6-2c96-4c17-91f4-0b699a67bdaf	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"Eine Fiktive Türe","filename_download":"Eine fiktive Türe.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"Eine Fiktive Türe","filename_download":"Eine fiktive Türe.avif","type":"image/avif","storage":"local"}	\N	\N
442	446	directus_files	28c3168a-30b2-4d56-b531-183cbc78afae	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favorit Alu E I30","filename_download":"dBFavoritAluEI30.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favorit Alu E I30","filename_download":"dBFavoritAluEI30.avif","type":"image/avif","storage":"local"}	\N	\N
443	447	directus_files	68c5969a-7867-4aac-9b2f-3fdb66f81507	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Brandex Alu E I30","filename_download":"BrandexAluEI30.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Brandex Alu E I30","filename_download":"BrandexAluEI30.avif","type":"image/avif","storage":"local"}	\N	\N
444	448	directus_files	5a79381c-4749-44cb-9080-494c26117948	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Aluspan Mit Alu Deckblatt","filename_download":"AluspanMitAluDeckblatt.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Aluspan Mit Alu Deckblatt","filename_download":"AluspanMitAluDeckblatt.avif","type":"image/avif","storage":"local"}	\N	\N
445	449	directus_files	cd0de9db-b5ce-4636-9fb2-0677c4ec3690	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Aluspan Mit Alu Einlage","filename_download":"AluspanMitAluEinlage.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Aluspan Mit Alu Einlage","filename_download":"AluspanMitAluEinlage.avif","type":"image/avif","storage":"local"}	\N	\N
446	450	directus_files	76a5c8fd-f8dd-43d5-8174-2d9336de3782	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Brandex E I30","filename_download":"BrandexEI30.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Brandex E I30","filename_download":"BrandexEI30.avif","type":"image/avif","storage":"local"}	\N	\N
447	451	directus_files	e4c641ac-e971-4c3c-b321-a9142fc36e1d	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Sp Span Voll","filename_download":"SPSpanVoll.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Sp Span Voll","filename_download":"SPSpanVoll.avif","type":"image/avif","storage":"local"}	\N	\N
448	454	directus_files	48dc4ffb-ddf9-4e9f-a579-0964355760ee	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Ls Leichtspan","filename_download":"LSLeichtspan.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Ls Leichtspan","filename_download":"LSLeichtspan.avif","type":"image/avif","storage":"local"}	\N	\N
449	452	directus_files	1a2fe64d-2386-4022-ae23-5a5f4df6893e	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Hohl Tuere","filename_download":"HohlTuere.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Hohl Tuere","filename_download":"HohlTuere.avif","type":"image/avif","storage":"local"}	\N	\N
450	453	directus_files	66a6536d-0c71-48bd-9988-f9e1035b8839	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favorit Alu","filename_download":"dBFavoritAlu.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favorit Alu","filename_download":"dBFavoritAlu.avif","type":"image/avif","storage":"local"}	\N	\N
451	457	directus_files	847f3618-0df4-4e99-a27e-27196589b02c	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favoit","filename_download":"dBFavoit.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favoit","filename_download":"dBFavoit.avif","type":"image/avif","storage":"local"}	\N	\N
452	455	directus_files	938aa17e-1099-4f40-9358-72dc83cefce7	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Massiv Tuere","filename_download":"MassivTuere.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Massiv Tuere","filename_download":"MassivTuere.avif","type":"image/avif","storage":"local"}	\N	\N
453	456	directus_files	90b560f0-e26b-470f-81e2-269a6beda121	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Rs Roehrenspan","filename_download":"RSRoehrenspan.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Rs Roehrenspan","filename_download":"RSRoehrenspan.avif","type":"image/avif","storage":"local"}	\N	\N
454	458	directus_files	b7a6babf-3702-4801-a50b-2115bc3700d9	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favorit E I30","filename_download":"dBFavoritEI30.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"D B Favorit E I30","filename_download":"dBFavoritEI30.avif","type":"image/avif","storage":"local"}	\N	\N
455	459	directus_files	44d52a91-ab35-41b0-b9b3-00628fb0a516	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Alu Therma","filename_download":"AluTherma.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Alu Therma","filename_download":"AluTherma.avif","type":"image/avif","storage":"local"}	\N	\N
456	460	directus_files	84ffe199-7fce-4e76-8f26-9309c1680fe7	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Strahlenschutz Tuere","filename_download":"StrahlenschutzTuere.avif","type":"image/avif","storage":"local"}	{"folder":"fe38f767-ade3-4362-bc38-c65861fad0c2","title":"Strahlenschutz Tuere","filename_download":"StrahlenschutzTuere.avif","type":"image/avif","storage":"local"}	\N	\N
457	461	directus_files	bf51d748-34ed-48a9-9309-e523c4c05083	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"14 Endfertigung Buersten Altholz","filename_download":"14-Endfertigung-Buersten-Altholz.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"14 Endfertigung Buersten Altholz","filename_download":"14-Endfertigung-Buersten-Altholz.avif","type":"image/avif","storage":"local"}	\N	\N
458	462	directus_files	0186c02c-3da7-4925-acc1-c5d36929dc52	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"01 Aussenaufnahme","filename_download":"01-Aussenaufnahme.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"01 Aussenaufnahme","filename_download":"01-Aussenaufnahme.avif","type":"image/avif","storage":"local"}	\N	\N
461	466	directus_files	9dd4a36b-3715-458c-b8b4-712d61b5a9a5	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"15 Oberflaechenbehandlung Spritzkabine","filename_download":"15-Oberflaechenbehandlung-Spritzkabine.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"15 Oberflaechenbehandlung Spritzkabine","filename_download":"15-Oberflaechenbehandlung-Spritzkabine.avif","type":"image/avif","storage":"local"}	\N	\N
472	476	directus_files	5cb8c50b-7efa-481c-9534-4ff5db080ac5	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"20 Schulungsraum","filename_download":"20-Schulungsraum.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"20 Schulungsraum","filename_download":"20-Schulungsraum.avif","type":"image/avif","storage":"local"}	\N	\N
459	463	directus_files	7c15ecc4-f4b1-4184-a52f-42eb23b313ec	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"03 Buero Cad","filename_download":"03-Buero-CAD.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"03 Buero Cad","filename_download":"03-Buero-CAD.avif","type":"image/avif","storage":"local"}	\N	\N
460	465	directus_files	7214caf5-1b4a-437f-8ee9-56efe5b5d545	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"02 Buero","filename_download":"02-Buero.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"02 Buero","filename_download":"02-Buero.avif","type":"image/avif","storage":"local"}	\N	\N
463	467	directus_files	d73e2efc-d9b3-4382-9f57-77a2dbc6e1ab	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"10 Cnc Steuerpult Sinumerik","filename_download":"10-CNC-Steuerpult-Sinumerik.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"10 Cnc Steuerpult Sinumerik","filename_download":"10-CNC-Steuerpult-Sinumerik.avif","type":"image/avif","storage":"local"}	\N	\N
462	464	directus_files	02483b5a-3d2a-47e0-963c-fcf6cc65cf97	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"13 Halle Endfertigung","filename_download":"13-Halle-Endfertigung.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"13 Halle Endfertigung","filename_download":"13-Halle-Endfertigung.avif","type":"image/avif","storage":"local"}	\N	\N
464	468	directus_files	44af479d-e290-45a9-a725-52e4f62cdd36	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"16 Grundieren","filename_download":"16-Grundieren.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"16 Grundieren","filename_download":"16-Grundieren.avif","type":"image/avif","storage":"local"}	\N	\N
465	469	directus_files	e4eb0c20-cb36-489d-a5d9-2599f969574e	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"06 Ablaengen Kippfraese","filename_download":"06-Ablaengen-Kippfraese.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"06 Ablaengen Kippfraese","filename_download":"06-Ablaengen-Kippfraese.avif","type":"image/avif","storage":"local"}	\N	\N
466	471	directus_files	8a7ac3ac-d582-4cbe-be27-332f23069039	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"11 Cnc Reichenbacher","filename_download":"11-CNC-Reichenbacher.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"11 Cnc Reichenbacher","filename_download":"11-CNC-Reichenbacher.avif","type":"image/avif","storage":"local"}	\N	\N
467	470	directus_files	0c0ca496-0aaa-4391-8ce5-f0512996ce71	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"17 Spedition","filename_download":"17-Spedition.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"17 Spedition","filename_download":"17-Spedition.avif","type":"image/avif","storage":"local"}	\N	\N
468	472	directus_files	c754daf5-dfd3-457d-b9ed-79863a911f96	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"08 Doppelender Scm","filename_download":"08-Doppelender-SCM.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"08 Doppelender Scm","filename_download":"08-Doppelender-SCM.avif","type":"image/avif","storage":"local"}	\N	\N
469	473	directus_files	3aed12af-3205-4750-9ec4-ba4d2a043934	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"18 Fuhrpark","filename_download":"18-Fuhrpark.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"18 Fuhrpark","filename_download":"18-Fuhrpark.avif","type":"image/avif","storage":"local"}	\N	\N
470	475	directus_files	89ea3a33-5676-40bf-bfa9-946c34efe4ca	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"05 Halle Massivholzzuschnitt","filename_download":"05-Halle-Massivholzzuschnitt.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"05 Halle Massivholzzuschnitt","filename_download":"05-Halle-Massivholzzuschnitt.avif","type":"image/avif","storage":"local"}	\N	\N
471	474	directus_files	a3ab8a3e-1faa-48d4-87a7-3ba911ff847c	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"04 Holzlager Massivholz","filename_download":"04-Holzlager-Massivholz.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"04 Holzlager Massivholz","filename_download":"04-Holzlager-Massivholz.avif","type":"image/avif","storage":"local"}	\N	\N
473	477	directus_files	2c388d29-7e1d-4a46-a357-628d08696c29	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"19 Gruppenraum","filename_download":"19-Gruppenraum.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"19 Gruppenraum","filename_download":"19-Gruppenraum.avif","type":"image/avif","storage":"local"}	\N	\N
474	478	directus_files	060ab3e5-330d-4f4f-8a20-778394929f32	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"12 Cnc Anderson","filename_download":"12-CNC-Anderson.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"12 Cnc Anderson","filename_download":"12-CNC-Anderson.avif","type":"image/avif","storage":"local"}	\N	\N
475	479	directus_files	3cabaf72-d1b8-4660-acb1-7ac7c4bc1fd4	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"09 Maschinenhalle","filename_download":"09-Maschinenhalle.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"09 Maschinenhalle","filename_download":"09-Maschinenhalle.avif","type":"image/avif","storage":"local"}	\N	\N
476	480	directus_files	b530c2cd-49be-43da-8f7e-9b144a07280e	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"07 Presse Sergiani","filename_download":"07-Presse-Sergiani.avif","type":"image/avif","storage":"local"}	{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af","title":"07 Presse Sergiani","filename_download":"07-Presse-Sergiani.avif","type":"image/avif","storage":"local"}	\N	\N
477	481	directus_roles	75ffdb49-44e0-4cbc-8da5-e523bf74192c	{"name":"API","admin_access":false,"app_access":true}	{"name":"API","admin_access":false,"app_access":true}	\N	\N
478	482	directus_permissions	1	{"collection":"directus_files","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_files","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
479	483	directus_permissions	2	{"collection":"directus_files","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_files","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
480	484	directus_permissions	3	{"collection":"directus_files","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_files","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
487	491	directus_permissions	10	{"collection":"directus_panels","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_panels","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
488	492	directus_permissions	11	{"collection":"directus_panels","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_panels","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
489	493	directus_permissions	12	{"collection":"directus_panels","action":"delete","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_panels","action":"delete","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
490	494	directus_permissions	13	{"collection":"directus_folders","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_folders","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
491	495	directus_permissions	14	{"collection":"directus_folders","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_folders","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
492	496	directus_permissions	15	{"collection":"directus_folders","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_folders","action":"update","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
493	497	directus_permissions	16	{"collection":"directus_folders","action":"delete","permissions":{},"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_folders","action":"delete","permissions":{},"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
494	498	directus_permissions	17	{"collection":"directus_users","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_users","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
495	499	directus_permissions	18	{"collection":"directus_users","action":"update","permissions":{"id":{"_eq":"$CURRENT_USER"}},"fields":["first_name","last_name","email","password","location","title","description","avatar","language","appearance","theme_light","theme_dark","theme_light_overrides","theme_dark_overrides","tfa_secret"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_users","action":"update","permissions":{"id":{"_eq":"$CURRENT_USER"}},"fields":["first_name","last_name","email","password","location","title","description","avatar","language","appearance","theme_light","theme_dark","theme_light_overrides","theme_dark_overrides","tfa_secret"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
496	500	directus_permissions	19	{"collection":"directus_roles","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_roles","action":"read","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
497	501	directus_permissions	20	{"collection":"directus_shares","action":"read","permissions":{"_or":[{"role":{"_eq":"$CURRENT_ROLE"}},{"role":{"_null":true}}]},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_shares","action":"read","permissions":{"_or":[{"role":{"_eq":"$CURRENT_ROLE"}},{"role":{"_null":true}}]},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
498	502	directus_permissions	21	{"collection":"directus_shares","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_shares","action":"create","permissions":{},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
499	503	directus_permissions	22	{"collection":"directus_shares","action":"update","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_shares","action":"update","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
500	504	directus_permissions	23	{"collection":"directus_shares","action":"delete","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_shares","action":"delete","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
501	505	directus_permissions	24	{"collection":"directus_flows","action":"read","permissions":{"trigger":{"_eq":"manual"}},"fields":["id","status","name","icon","color","options","trigger"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"collection":"directus_flows","action":"read","permissions":{"trigger":{"_eq":"manual"}},"fields":["id","status","name","icon","color","options","trigger"],"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
502	506	directus_permissions	25	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Application","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Application","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
503	507	directus_permissions	26	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
504	508	directus_permissions	27	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"cat_modifications","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"cat_modifications","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
505	509	directus_permissions	28	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"cat_surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"cat_surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
506	510	directus_permissions	29	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"homepage","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"homepage","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
507	511	directus_permissions	30	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"DoorType","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"DoorType","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
508	512	directus_permissions	31	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
509	513	directus_permissions	32	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"pages","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"pages","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
510	514	directus_permissions	33	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"ClimateClass","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"ClimateClass","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
511	515	directus_permissions	34	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Modifications","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Modifications","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
512	516	directus_permissions	35	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"posts","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"posts","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
513	517	directus_permissions	36	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"HeatProtection","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"HeatProtection","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
514	518	directus_permissions	37	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"jobs","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"jobs","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
515	519	directus_permissions	38	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"team","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"team","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
516	520	directus_permissions	39	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"SoundProofing","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"SoundProofing","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
517	521	directus_permissions	40	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"DoorCategory","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"DoorCategory","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
518	522	directus_permissions	41	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"quotes","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"quotes","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
519	523	directus_permissions	42	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_ClimateClass","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_ClimateClass","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
520	524	directus_permissions	43	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_ClimateClass_1","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_ClimateClass_1","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
521	525	directus_permissions	44	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_HeatProtection","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_HeatProtection","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
522	526	directus_permissions	45	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_SoundProofing","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_SoundProofing","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
523	527	directus_permissions	46	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
524	528	directus_permissions	47	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks_Decks","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks_Decks","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
525	529	directus_permissions	48	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks_asdfghj","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks_asdfghj","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
526	530	directus_permissions	49	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks_many","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Decks_many","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
527	531	directus_permissions	50	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Modifications_cat_surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Modifications_cat_surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
528	532	directus_permissions	51	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"pages_files","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"pages_files","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
529	533	directus_permissions	52	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_Surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"Product_Surface","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
530	534	directus_permissions	53	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"redirects","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"redirects","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
531	535	directus_permissions	54	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"seo","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"seo","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
532	536	directus_permissions	55	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"DoorCategory_Product","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"DoorCategory_Product","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
533	537	directus_permissions	56	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"settings","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c","collection":"settings","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
534	538	directus_users	cf1d30d7-7d7e-4c8c-83ab-fd807d1c9f19	{"first_name":"API","last_name":"Access","token":"**********","role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	{"first_name":"API","last_name":"Access","token":"**********","role":"75ffdb49-44e0-4cbc-8da5-e523bf74192c"}	\N	\N
535	540	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"status":"published","title":"Geschichte"},"event":"pages.items.create","collection":"pages"},"$last":{"status":"published","title":"Geschichte","slug":"geschichte"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"status":"published","title":"Geschichte","slug":"geschichte"}}}	\N	\N	\N
536	541	pages	1	{"status":"published","title":"Geschichte"}	{"status":"published","title":"Geschichte"}	\N	\N
537	542	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"body":"<p>Die ENTLA AG besch&auml;ftigt heute rund 40 Mitarbeitende und ist ein wichtiger regionaler Arbeitgeber</p>"},"event":"pages.items.update","keys":["1"],"collection":"pages"},"$last":{"body":"<p>Die ENTLA AG besch&auml;ftigt heute rund 40 Mitarbeitende und ist ein wichtiger regionaler Arbeitgeber</p>"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"body":"<p>Die ENTLA AG besch&auml;ftigt heute rund 40 Mitarbeitende und ist ein wichtiger regionaler Arbeitgeber</p>"}}}	\N	\N	\N
538	543	pages	1	{"id":1,"status":"published","sort":null,"user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_created":"2024-04-20T09:40:00.494Z","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T09:40:22.067Z","title":"Geschichte","slug":null,"image":null,"body":"<p>Die ENTLA AG besch&auml;ftigt heute rund 40 Mitarbeitende und ist ein wichtiger regionaler Arbeitgeber</p>","seo":null,"gallery":[]}	{"body":"<p>Die ENTLA AG besch&auml;ftigt heute rund 40 Mitarbeitende und ist ein wichtiger regionaler Arbeitgeber</p>","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T09:40:22.067Z"}	\N	\N
555	560	directus_fields	6	{"id":6,"collection":"homepage","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"date_updated","sort":6,"group":null}	\N	\N
539	544	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"id":"3571d371-f654-4bb0-a44d-e73b2ceddcbf","name":"slugify","icon":"conversion_path","color":"#2ECDA7","description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"],"return":"$last"},"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","date_created":"2024-04-19T19:08:37.940Z","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","operations":["9d4c5262-c441-4e43-afaf-c613226b11cb"]}	{"name":"slugify","icon":"conversion_path","color":"#2ECDA7","description":null,"status":"active","trigger":"event","accountability":"all","options":{"type":"filter","scope":["items.create","items.update"],"collections":["posts","pages","redirects","seo","Product","team","jobs"],"return":"$last"}}	\N	\N
540	545	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"title":"Geschichte "},"event":"pages.items.update","keys":["1"],"collection":"pages"},"$last":{"title":"Geschichte ","slug":"geschichte"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"title":"Geschichte ","slug":"geschichte"}}}	\N	\N	\N
541	546	pages	1	{"id":1,"status":"published","sort":null,"user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_created":"2024-04-20T09:40:00.494Z","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T09:40:42.644Z","title":"Geschichte ","slug":"geschichte","image":null,"body":"<p>Die ENTLA AG besch&auml;ftigt heute rund 40 Mitarbeitende und ist ein wichtiger regionaler Arbeitgeber</p>","seo":null,"gallery":[]}	{"title":"Geschichte ","slug":"geschichte","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T09:40:42.644Z"}	\N	\N
542	547	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"status":"published","title":"Philosophie","body":"<p>Wir sind ein Team aus Holzfachleuten und streben gemeinsam Erfolg an. In unserem Denken und Handeln richten wir uns ganz nach unseren Kunden. Wir kennen die W&uuml;nsche und Bed&uuml;rfnisse unserer Kunden und erf&uuml;llen sie mit unseren Produkten. Unser Ziel ist ein gutes Preis-Leistungsverh&auml;ltnis und eine gute Kunden &ndash; und Lieferanten-Beziehungen. Wir sorgen f&uuml;r st&auml;ndige Verbesserungen unserer Prozesse, Produkte und Dienstleistungen.</p>\\n<p>Die Basis f&uuml;r unseren Gesch&auml;ftserfolg ist unsere Verpflichtung f&uuml;r Qualit&auml;t, Umwelt, Arbeitssicherheit und Ordnung. Mit den dazugeh&ouml;renden Einrichtungen sorgen wir daf&uuml;r, dass alle Mitarbeitenden wirtschaftliche Leistungen erbringen k&ouml;nnen. Sie sind jederzeit in der Lage durch Eigenverantwortung ihren Beitrag zur fehlerfreien Produktion und einem angemessenen Unternehmensgewinn zu leisten.</p>\\n<p>Qualit&auml;t in allen Leistungen und &uuml;ber alle Stufen unseres Unternehmens gew&auml;hrleisten wir durch beherrschte Prozesse, der konsequenten Planung, Umsetzung und st&auml;ndigen Verbesserungen.</p>\\n<p>Unsere Verantwortung zur Umwelt nehmen wir bewusst wahr und f&ouml;rdern sie durch Umsetzung und &Uuml;berwachung. Konkrete Ziele erarbeiten wir in unseren Abl&auml;ufen und verpflichten uns zur Verh&uuml;tung von Umweltbelastungen. Die F&ouml;rderung der Umweltleistung basiert auf wirtschaftlichen und vertretbaren Verbesserungsmassnahmen und der Unterst&uuml;tzung der nachhaltigen Holznutzung durch den Einsatz von zertifiziertem Holz.</p>\\n<p>Wir halten uns an die Gesetze, Normen und &uuml;brigen beh&ouml;rdlichen und kundenspezifischen Auflagen. Gleichbedeutend ist f&uuml;r und die Durchsetzung einer konsequenten Arbeitssicherheit nach EKAS RL6508. Wir bieten sichere Arbeitspl&auml;tze an und sorgen f&uuml;r einen umfassenden Gesundheitsschutz.</p>\\n<p>Unsere Firma praktiziert eine Vertrauenskultur durch Zuverl&auml;ssigkeit, Fairness, Berechenbarkeit und Erreichbarkeit f&uuml;r unsere Partner und Kunden.</p>"},"event":"pages.items.create","collection":"pages"},"$last":{"status":"published","title":"Philosophie","body":"<p>Wir sind ein Team aus Holzfachleuten und streben gemeinsam Erfolg an. In unserem Denken und Handeln richten wir uns ganz nach unseren Kunden. Wir kennen die W&uuml;nsche und Bed&uuml;rfnisse unserer Kunden und erf&uuml;llen sie mit unseren Produkten. Unser Ziel ist ein gutes Preis-Leistungsverh&auml;ltnis und eine gute Kunden &ndash; und Lieferanten-Beziehungen. Wir sorgen f&uuml;r st&auml;ndige Verbesserungen unserer Prozesse, Produkte und Dienstleistungen.</p>\\n<p>Die Basis f&uuml;r unseren Gesch&auml;ftserfolg ist unsere Verpflichtung f&uuml;r Qualit&auml;t, Umwelt, Arbeitssicherheit und Ordnung. Mit den dazugeh&ouml;renden Einrichtungen sorgen wir daf&uuml;r, dass alle Mitarbeitenden wirtschaftliche Leistungen erbringen k&ouml;nnen. Sie sind jederzeit in der Lage durch Eigenverantwortung ihren Beitrag zur fehlerfreien Produktion und einem angemessenen Unternehmensgewinn zu leisten.</p>\\n<p>Qualit&auml;t in allen Leistungen und &uuml;ber alle Stufen unseres Unternehmens gew&auml;hrleisten wir durch beherrschte Prozesse, der konsequenten Planung, Umsetzung und st&auml;ndigen Verbesserungen.</p>\\n<p>Unsere Verantwortung zur Umwelt nehmen wir bewusst wahr und f&ouml;rdern sie durch Umsetzung und &Uuml;berwachung. Konkrete Ziele erarbeiten wir in unseren Abl&auml;ufen und verpflichten uns zur Verh&uuml;tung von Umweltbelastungen. Die F&ouml;rderung der Umweltleistung basiert auf wirtschaftlichen und vertretbaren Verbesserungsmassnahmen und der Unterst&uuml;tzung der nachhaltigen Holznutzung durch den Einsatz von zertifiziertem Holz.</p>\\n<p>Wir halten uns an die Gesetze, Normen und &uuml;brigen beh&ouml;rdlichen und kundenspezifischen Auflagen. Gleichbedeutend ist f&uuml;r und die Durchsetzung einer konsequenten Arbeitssicherheit nach EKAS RL6508. Wir bieten sichere Arbeitspl&auml;tze an und sorgen f&uuml;r einen umfassenden Gesundheitsschutz.</p>\\n<p>Unsere Firma praktiziert eine Vertrauenskultur durch Zuverl&auml;ssigkeit, Fairness, Berechenbarkeit und Erreichbarkeit f&uuml;r unsere Partner und Kunden.</p>","slug":"philosophie"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"status":"published","title":"Philosophie","body":"<p>Wir sind ein Team aus Holzfachleuten und streben gemeinsam Erfolg an. In unserem Denken und Handeln richten wir uns ganz nach unseren Kunden. Wir kennen die W&uuml;nsche und Bed&uuml;rfnisse unserer Kunden und erf&uuml;llen sie mit unseren Produkten. Unser Ziel ist ein gutes Preis-Leistungsverh&auml;ltnis und eine gute Kunden &ndash; und Lieferanten-Beziehungen. Wir sorgen f&uuml;r st&auml;ndige Verbesserungen unserer Prozesse, Produkte und Dienstleistungen.</p>\\n<p>Die Basis f&uuml;r unseren Gesch&auml;ftserfolg ist unsere Verpflichtung f&uuml;r Qualit&auml;t, Umwelt, Arbeitssicherheit und Ordnung. Mit den dazugeh&ouml;renden Einrichtungen sorgen wir daf&uuml;r, dass alle Mitarbeitenden wirtschaftliche Leistungen erbringen k&ouml;nnen. Sie sind jederzeit in der Lage durch Eigenverantwortung ihren Beitrag zur fehlerfreien Produktion und einem angemessenen Unternehmensgewinn zu leisten.</p>\\n<p>Qualit&auml;t in allen Leistungen und &uuml;ber alle Stufen unseres Unternehmens gew&auml;hrleisten wir durch beherrschte Prozesse, der konsequenten Planung, Umsetzung und st&auml;ndigen Verbesserungen.</p>\\n<p>Unsere Verantwortung zur Umwelt nehmen wir bewusst wahr und f&ouml;rdern sie durch Umsetzung und &Uuml;berwachung. Konkrete Ziele erarbeiten wir in unseren Abl&auml;ufen und verpflichten uns zur Verh&uuml;tung von Umweltbelastungen. Die F&ouml;rderung der Umweltleistung basiert auf wirtschaftlichen und vertretbaren Verbesserungsmassnahmen und der Unterst&uuml;tzung der nachhaltigen Holznutzung durch den Einsatz von zertifiziertem Holz.</p>\\n<p>Wir halten uns an die Gesetze, Normen und &uuml;brigen beh&ouml;rdlichen und kundenspezifischen Auflagen. Gleichbedeutend ist f&uuml;r und die Durchsetzung einer konsequenten Arbeitssicherheit nach EKAS RL6508. Wir bieten sichere Arbeitspl&auml;tze an und sorgen f&uuml;r einen umfassenden Gesundheitsschutz.</p>\\n<p>Unsere Firma praktiziert eine Vertrauenskultur durch Zuverl&auml;ssigkeit, Fairness, Berechenbarkeit und Erreichbarkeit f&uuml;r unsere Partner und Kunden.</p>","slug":"philosophie"}}}	\N	\N	\N
543	548	pages	2	{"status":"published","title":"Philosophie","body":"<p>Wir sind ein Team aus Holzfachleuten und streben gemeinsam Erfolg an. In unserem Denken und Handeln richten wir uns ganz nach unseren Kunden. Wir kennen die W&uuml;nsche und Bed&uuml;rfnisse unserer Kunden und erf&uuml;llen sie mit unseren Produkten. Unser Ziel ist ein gutes Preis-Leistungsverh&auml;ltnis und eine gute Kunden &ndash; und Lieferanten-Beziehungen. Wir sorgen f&uuml;r st&auml;ndige Verbesserungen unserer Prozesse, Produkte und Dienstleistungen.</p>\\n<p>Die Basis f&uuml;r unseren Gesch&auml;ftserfolg ist unsere Verpflichtung f&uuml;r Qualit&auml;t, Umwelt, Arbeitssicherheit und Ordnung. Mit den dazugeh&ouml;renden Einrichtungen sorgen wir daf&uuml;r, dass alle Mitarbeitenden wirtschaftliche Leistungen erbringen k&ouml;nnen. Sie sind jederzeit in der Lage durch Eigenverantwortung ihren Beitrag zur fehlerfreien Produktion und einem angemessenen Unternehmensgewinn zu leisten.</p>\\n<p>Qualit&auml;t in allen Leistungen und &uuml;ber alle Stufen unseres Unternehmens gew&auml;hrleisten wir durch beherrschte Prozesse, der konsequenten Planung, Umsetzung und st&auml;ndigen Verbesserungen.</p>\\n<p>Unsere Verantwortung zur Umwelt nehmen wir bewusst wahr und f&ouml;rdern sie durch Umsetzung und &Uuml;berwachung. Konkrete Ziele erarbeiten wir in unseren Abl&auml;ufen und verpflichten uns zur Verh&uuml;tung von Umweltbelastungen. Die F&ouml;rderung der Umweltleistung basiert auf wirtschaftlichen und vertretbaren Verbesserungsmassnahmen und der Unterst&uuml;tzung der nachhaltigen Holznutzung durch den Einsatz von zertifiziertem Holz.</p>\\n<p>Wir halten uns an die Gesetze, Normen und &uuml;brigen beh&ouml;rdlichen und kundenspezifischen Auflagen. Gleichbedeutend ist f&uuml;r und die Durchsetzung einer konsequenten Arbeitssicherheit nach EKAS RL6508. Wir bieten sichere Arbeitspl&auml;tze an und sorgen f&uuml;r einen umfassenden Gesundheitsschutz.</p>\\n<p>Unsere Firma praktiziert eine Vertrauenskultur durch Zuverl&auml;ssigkeit, Fairness, Berechenbarkeit und Erreichbarkeit f&uuml;r unsere Partner und Kunden.</p>","slug":"philosophie"}	{"status":"published","title":"Philosophie","body":"<p>Wir sind ein Team aus Holzfachleuten und streben gemeinsam Erfolg an. In unserem Denken und Handeln richten wir uns ganz nach unseren Kunden. Wir kennen die W&uuml;nsche und Bed&uuml;rfnisse unserer Kunden und erf&uuml;llen sie mit unseren Produkten. Unser Ziel ist ein gutes Preis-Leistungsverh&auml;ltnis und eine gute Kunden &ndash; und Lieferanten-Beziehungen. Wir sorgen f&uuml;r st&auml;ndige Verbesserungen unserer Prozesse, Produkte und Dienstleistungen.</p>\\n<p>Die Basis f&uuml;r unseren Gesch&auml;ftserfolg ist unsere Verpflichtung f&uuml;r Qualit&auml;t, Umwelt, Arbeitssicherheit und Ordnung. Mit den dazugeh&ouml;renden Einrichtungen sorgen wir daf&uuml;r, dass alle Mitarbeitenden wirtschaftliche Leistungen erbringen k&ouml;nnen. Sie sind jederzeit in der Lage durch Eigenverantwortung ihren Beitrag zur fehlerfreien Produktion und einem angemessenen Unternehmensgewinn zu leisten.</p>\\n<p>Qualit&auml;t in allen Leistungen und &uuml;ber alle Stufen unseres Unternehmens gew&auml;hrleisten wir durch beherrschte Prozesse, der konsequenten Planung, Umsetzung und st&auml;ndigen Verbesserungen.</p>\\n<p>Unsere Verantwortung zur Umwelt nehmen wir bewusst wahr und f&ouml;rdern sie durch Umsetzung und &Uuml;berwachung. Konkrete Ziele erarbeiten wir in unseren Abl&auml;ufen und verpflichten uns zur Verh&uuml;tung von Umweltbelastungen. Die F&ouml;rderung der Umweltleistung basiert auf wirtschaftlichen und vertretbaren Verbesserungsmassnahmen und der Unterst&uuml;tzung der nachhaltigen Holznutzung durch den Einsatz von zertifiziertem Holz.</p>\\n<p>Wir halten uns an die Gesetze, Normen und &uuml;brigen beh&ouml;rdlichen und kundenspezifischen Auflagen. Gleichbedeutend ist f&uuml;r und die Durchsetzung einer konsequenten Arbeitssicherheit nach EKAS RL6508. Wir bieten sichere Arbeitspl&auml;tze an und sorgen f&uuml;r einen umfassenden Gesundheitsschutz.</p>\\n<p>Unsere Firma praktiziert eine Vertrauenskultur durch Zuverl&auml;ssigkeit, Fairness, Berechenbarkeit und Erreichbarkeit f&uuml;r unsere Partner und Kunden.</p>","slug":"philosophie"}	\N	\N
544	549	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"status":"published","title":"Team","image":"b9376cc6-2c96-4c17-91f4-0b699a67bdaf","body":"<h3>Wir ziehen alle am gleichen Strick.</h3>\\n<p>Unsere langj&auml;hrigen Mitarbeitenden sind unser wertvollstes Kapital.</p>\\n<p>Sie geben f&uuml;r ihre Kunden ihr Bestes und sind tagt&auml;glich bestrebt, durch Professionalit&auml;t, pers&ouml;nliches Engagement und maximalen Kundenservice zu &uuml;berzeugen.</p>"},"event":"pages.items.create","collection":"pages"},"$last":{"status":"published","title":"Team","image":"b9376cc6-2c96-4c17-91f4-0b699a67bdaf","body":"<h3>Wir ziehen alle am gleichen Strick.</h3>\\n<p>Unsere langj&auml;hrigen Mitarbeitenden sind unser wertvollstes Kapital.</p>\\n<p>Sie geben f&uuml;r ihre Kunden ihr Bestes und sind tagt&auml;glich bestrebt, durch Professionalit&auml;t, pers&ouml;nliches Engagement und maximalen Kundenservice zu &uuml;berzeugen.</p>","slug":"team"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"status":"published","title":"Team","image":"b9376cc6-2c96-4c17-91f4-0b699a67bdaf","body":"<h3>Wir ziehen alle am gleichen Strick.</h3>\\n<p>Unsere langj&auml;hrigen Mitarbeitenden sind unser wertvollstes Kapital.</p>\\n<p>Sie geben f&uuml;r ihre Kunden ihr Bestes und sind tagt&auml;glich bestrebt, durch Professionalit&auml;t, pers&ouml;nliches Engagement und maximalen Kundenservice zu &uuml;berzeugen.</p>","slug":"team"}}}	\N	\N	\N
545	550	pages	3	{"status":"published","title":"Team","image":"b9376cc6-2c96-4c17-91f4-0b699a67bdaf","body":"<h3>Wir ziehen alle am gleichen Strick.</h3>\\n<p>Unsere langj&auml;hrigen Mitarbeitenden sind unser wertvollstes Kapital.</p>\\n<p>Sie geben f&uuml;r ihre Kunden ihr Bestes und sind tagt&auml;glich bestrebt, durch Professionalit&auml;t, pers&ouml;nliches Engagement und maximalen Kundenservice zu &uuml;berzeugen.</p>","slug":"team"}	{"status":"published","title":"Team","image":"b9376cc6-2c96-4c17-91f4-0b699a67bdaf","body":"<h3>Wir ziehen alle am gleichen Strick.</h3>\\n<p>Unsere langj&auml;hrigen Mitarbeitenden sind unser wertvollstes Kapital.</p>\\n<p>Sie geben f&uuml;r ihre Kunden ihr Bestes und sind tagt&auml;glich bestrebt, durch Professionalit&auml;t, pers&ouml;nliches Engagement und maximalen Kundenservice zu &uuml;berzeugen.</p>","slug":"team"}	\N	\N
546	551	directus_flows	3571d371-f654-4bb0-a44d-e73b2ceddcbf	{"steps":[{"operation":"9d4c5262-c441-4e43-afaf-c613226b11cb","key":"exec_scfro","status":"resolve","options":{"code":"const slugify = text =>\\n  text\\n    .toString()\\n    .normalize('NFD')\\n    .replace(/[\\\\u0300-\\\\u036f]/g, '')\\n    .toLowerCase()\\n    .trim()\\n    .replace(/\\\\s+/g, '-')\\n    .replace(/[^\\\\w-]+/g, '')\\n    .replace(/--+/g, '-');\\n\\nmodule.exports = async function(data) {\\n    // if title not passed\\n    if (data.$trigger.payload.title === undefined) return data.$trigger.payload;\\n    // if user entered slug themselves...\\n    if (data.$trigger.payload.slug !== undefined) return data.$trigger.payload;\\n    /// generate slug\\n    const slug = slugify(data.$trigger.payload.title);\\n    return {...data.$trigger.payload, slug};\\n}"}}],"data":{"$trigger":{"payload":{"title":"Rundgang","status":"published","image":"5cb8c50b-7efa-481c-9534-4ff5db080ac5"},"event":"pages.items.create","collection":"pages"},"$last":{"title":"Rundgang","status":"published","image":"5cb8c50b-7efa-481c-9534-4ff5db080ac5","slug":"rundgang"},"$accountability":{"user":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","role":"83d77b64-7af2-4f07-867c-0f12d61ef1a3","admin":true,"app":true,"ip":"10.183.233.241","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36","origin":"https://directus.entla-postgres.orb.local"},"$env":{},"exec_scfro":{"title":"Rundgang","status":"published","image":"5cb8c50b-7efa-481c-9534-4ff5db080ac5","slug":"rundgang"}}}	\N	\N	\N
547	552	pages	4	{"title":"Rundgang","status":"published","image":"5cb8c50b-7efa-481c-9534-4ff5db080ac5","slug":"rundgang"}	{"title":"Rundgang","status":"published","image":"5cb8c50b-7efa-481c-9534-4ff5db080ac5","slug":"rundgang"}	\N	\N
548	553	homepage	1	{"status":"published","title":"Entla und so weiter","image":"0186c02c-3da7-4925-acc1-c5d36929dc52"}	{"status":"published","title":"Entla und so weiter","image":"0186c02c-3da7-4925-acc1-c5d36929dc52"}	\N	\N
549	554	directus_fields	247	{"sort":10,"interface":"input","special":null,"options":{"iconLeft":"text_fields"},"collection":"homepage","field":"subTitle"}	{"sort":10,"interface":"input","special":null,"options":{"iconLeft":"text_fields"},"collection":"homepage","field":"subTitle"}	\N	\N
550	555	directus_fields	1	{"id":1,"collection":"homepage","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"id","sort":1,"group":null}	\N	\N
551	556	directus_fields	2	{"id":2,"collection":"homepage","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"status","sort":2,"group":null}	\N	\N
552	557	directus_fields	3	{"id":3,"collection":"homepage","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":3,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"user_created","sort":3,"group":null}	\N	\N
553	558	directus_fields	4	{"id":4,"collection":"homepage","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"date_created","sort":4,"group":null}	\N	\N
554	559	directus_fields	5	{"id":5,"collection":"homepage","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"user_updated","sort":5,"group":null}	\N	\N
556	561	directus_fields	7	{"id":7,"collection":"homepage","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"title","sort":7,"group":null}	\N	\N
557	562	directus_fields	247	{"id":247,"collection":"homepage","field":"subTitle","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"subTitle","sort":8,"group":null}	\N	\N
558	563	directus_fields	8	{"id":8,"collection":"homepage","field":"image","special":["file"],"interface":"file-image","options":{},"display":"image","display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"image","sort":9,"group":null}	\N	\N
559	564	directus_fields	9	{"id":9,"collection":"homepage","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"seo","sort":10,"group":null}	\N	\N
560	565	directus_fields	248	{"sort":14,"interface":"input","special":null,"options":{"iconLeft":"text_fields"},"collection":"pages","field":"subTitle"}	{"sort":14,"interface":"input","special":null,"options":{"iconLeft":"text_fields"},"collection":"pages","field":"subTitle"}	\N	\N
561	566	directus_fields	10	{"id":10,"collection":"pages","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"id","sort":1,"group":null}	\N	\N
562	567	directus_fields	11	{"id":11,"collection":"pages","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"status","sort":2,"group":null}	\N	\N
563	568	directus_fields	12	{"id":12,"collection":"pages","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"sort","sort":3,"group":null}	\N	\N
564	569	directus_fields	13	{"id":13,"collection":"pages","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"user_created","sort":4,"group":null}	\N	\N
565	570	directus_fields	14	{"id":14,"collection":"pages","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"date_created","sort":5,"group":null}	\N	\N
566	571	directus_fields	15	{"id":15,"collection":"pages","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"user_updated","sort":6,"group":null}	\N	\N
567	572	directus_fields	16	{"id":16,"collection":"pages","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":7,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"date_updated","sort":7,"group":null}	\N	\N
568	573	directus_fields	17	{"id":17,"collection":"pages","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"title","sort":8,"group":null}	\N	\N
569	574	directus_fields	248	{"id":248,"collection":"pages","field":"subTitle","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"subTitle","sort":9,"group":null}	\N	\N
570	575	directus_fields	18	{"id":18,"collection":"pages","field":"slug","special":null,"interface":"input","options":{"iconLeft":"conversion_path"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"slug","sort":10,"group":null}	\N	\N
571	576	directus_fields	19	{"id":19,"collection":"pages","field":"image","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":[{"language":"de-DE","translation":"Hauptbild"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"image","sort":11,"group":null}	\N	\N
572	577	directus_fields	20	{"id":20,"collection":"pages","field":"gallery","special":["files"],"interface":"files","options":{"limit":5},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":12,"width":"full","translations":[{"language":"de-DE","translation":"Bildergalerie"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"gallery","sort":12,"group":null}	\N	\N
573	578	directus_fields	21	{"id":21,"collection":"pages","field":"body","special":null,"interface":"input-rich-text-html","options":{"toolbar":["bold","italic","underline","h2","h3","numlist","bullist","removeformat","blockquote","customLink","customImage","customMedia","hr","code","fullscreen"]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":13,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"body","sort":13,"group":null}	\N	\N
574	579	directus_fields	22	{"id":22,"collection":"pages","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":{"enableSelect":false},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":14,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"pages","field":"seo","sort":14,"group":null}	\N	\N
575	580	homepage	1	{"id":1,"status":"published","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_created":"2024-04-20T14:24:32.507Z","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T14:58:16.778Z","title":"Unsere Proukte","image":"0186c02c-3da7-4925-acc1-c5d36929dc52","seo":null,"subTitle":"Die Entla-Türenwelt"}	{"title":"Unsere Proukte","subTitle":"Die Entla-Türenwelt","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T14:58:16.778Z"}	\N	\N
576	581	homepage	1	{"id":1,"status":"published","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_created":"2024-04-20T14:24:32.507Z","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T14:58:41.150Z","title":"Das Türenwerk","image":"0186c02c-3da7-4925-acc1-c5d36929dc52","seo":null,"subTitle":"Im Entlebuch"}	{"title":"Das Türenwerk","subTitle":"Im Entlebuch","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T14:58:41.150Z"}	\N	\N
577	582	directus_fields	249	{"sort":11,"interface":"files","special":["files"],"options":{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af"},"collection":"homepage","field":"slider"}	{"sort":11,"interface":"files","special":["files"],"options":{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af"},"collection":"homepage","field":"slider"}	\N	\N
578	583	directus_fields	250	{"sort":1,"hidden":true,"field":"id","collection":"homepage_files"}	{"sort":1,"hidden":true,"field":"id","collection":"homepage_files"}	\N	\N
579	584	directus_collections	homepage_files	{"hidden":true,"icon":"import_export","collection":"homepage_files"}	{"hidden":true,"icon":"import_export","collection":"homepage_files"}	\N	\N
580	585	directus_fields	251	{"sort":2,"hidden":true,"collection":"homepage_files","field":"homepage_id"}	{"sort":2,"hidden":true,"collection":"homepage_files","field":"homepage_id"}	\N	\N
581	586	directus_fields	252	{"sort":3,"hidden":true,"collection":"homepage_files","field":"directus_files_id"}	{"sort":3,"hidden":true,"collection":"homepage_files","field":"directus_files_id"}	\N	\N
582	587	directus_fields	1	{"id":1,"collection":"homepage","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"id","sort":1,"group":null}	\N	\N
583	588	directus_fields	2	{"id":2,"collection":"homepage","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Published","value":"published"},{"text":"Draft","value":"draft"},{"text":"Archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"Published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"Draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"Archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"status","sort":2,"group":null}	\N	\N
584	589	directus_fields	3	{"id":3,"collection":"homepage","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":3,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"user_created","sort":3,"group":null}	\N	\N
585	590	directus_fields	4	{"id":4,"collection":"homepage","field":"date_created","special":["date-created","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"date_created","sort":4,"group":null}	\N	\N
586	591	directus_fields	5	{"id":5,"collection":"homepage","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"user_updated","sort":5,"group":null}	\N	\N
587	592	directus_fields	6	{"id":6,"collection":"homepage","field":"date_updated","special":["date-updated","cast-timestamp"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"date_updated","sort":6,"group":null}	\N	\N
588	593	directus_fields	7	{"id":7,"collection":"homepage","field":"title","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"title","sort":7,"group":null}	\N	\N
589	594	directus_fields	247	{"id":247,"collection":"homepage","field":"subTitle","special":null,"interface":"input","options":{"iconLeft":"text_fields"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"subTitle","sort":8,"group":null}	\N	\N
590	595	directus_fields	8	{"id":8,"collection":"homepage","field":"image","special":["file"],"interface":"file-image","options":{},"display":"image","display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"image","sort":9,"group":null}	\N	\N
591	596	directus_fields	249	{"id":249,"collection":"homepage","field":"slider","special":["files"],"interface":"files","options":{"folder":"24e6a80b-6441-4963-a4fc-cac2978773af"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"slider","sort":10,"group":null}	\N	\N
592	597	directus_fields	9	{"id":9,"collection":"homepage","field":"seo","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"homepage","field":"seo","sort":11,"group":null}	\N	\N
597	602	homepage	1	{"id":1,"status":"published","user_created":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_created":"2024-04-20T14:24:32.507Z","user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T15:01:39.985Z","title":"Das Türenwerk","seo":null,"subTitle":"Im Entlebuch","slider":[1,2,3,4]}	{"user_updated":"ae1bc7d0-6a76-4d13-81cf-c90c7b17707b","date_updated":"2024-04-20T15:01:39.985Z"}	\N	\N
593	598	homepage_files	1	{"homepage_id":1,"directus_files_id":{"id":"0186c02c-3da7-4925-acc1-c5d36929dc52"}}	{"homepage_id":1,"directus_files_id":{"id":"0186c02c-3da7-4925-acc1-c5d36929dc52"}}	597	\N
594	599	homepage_files	2	{"homepage_id":1,"directus_files_id":{"id":"89ea3a33-5676-40bf-bfa9-946c34efe4ca"}}	{"homepage_id":1,"directus_files_id":{"id":"89ea3a33-5676-40bf-bfa9-946c34efe4ca"}}	597	\N
595	600	homepage_files	3	{"homepage_id":1,"directus_files_id":{"id":"c754daf5-dfd3-457d-b9ed-79863a911f96"}}	{"homepage_id":1,"directus_files_id":{"id":"c754daf5-dfd3-457d-b9ed-79863a911f96"}}	597	\N
596	601	homepage_files	4	{"homepage_id":1,"directus_files_id":{"id":"02483b5a-3d2a-47e0-963c-fcf6cc65cf97"}}	{"homepage_id":1,"directus_files_id":{"id":"02483b5a-3d2a-47e0-963c-fcf6cc65cf97"}}	597	\N
\.


--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
83d77b64-7af2-4f07-867c-0f12d61ef1a3	Administrator	verified	$t:admin_description	\N	f	t	t
75ffdb49-44e0-4cbc-8da5-e523bf74192c	API	supervised_user_circle	\N	\N	f	f	t
\.


--
-- Data for Name: directus_sessions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin) FROM stdin;
D8FEYVmoKt6WEOOBEznd__d9OcV10bzmXuh1sd0WbmIQ6ibPFl_Mxa3iXrKYq6xP	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-27 14:59:35.149+00	10.183.233.241	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	\N	https://directus.entla-postgres.orb.local
\.


--
-- Data for Name: directus_settings; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_feature_url, report_bug_url, report_error_url) FROM stdin;
1	entla.ch	https://entla.ch	#3399FF	\N	\N	\N	\N	25	\N	all	\N	\N	\N	\N	\N	[{"type":"module","id":"content","enabled":true},{"type":"module","id":"users","enabled":true},{"type":"module","id":"files","enabled":true},{"type":"module","id":"insights","enabled":true},{"type":"module","id":"settings","enabled":true,"locked":true},{"type":"module","id":"schema-management-module","enabled":false}]	Entla.ch Website & Kalkulator	en-US	\N	\N	auto	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: directus_shares; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
\.


--
-- Data for Name: directus_translations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_translations (id, language, key, value) FROM stdin;
\.


--
-- Data for Name: directus_users; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides, entla_user) FROM stdin;
cf1d30d7-7d7e-4c8c-83ab-fd807d1c9f19	API	Access	\N	\N	\N	\N	\N	\N	\N	\N	\N	active	75ffdb49-44e0-4cbc-8da5-e523bf74192c	HVtW9y03FzvBImzWREz3dZVY7ZvJhIxK	\N	\N	default	\N	\N	t	\N	\N	\N	\N	\N	\N
ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	Admin	User	kontakt@abteilung.ch	$argon2id$v=19$m=65536,t=3,p=4$NU9YdqcXuUSSxC23RX9chw$rvhNoYGC53BbkiOmU/U76yemBs9/bqTYErwOcOKa4/o	\N	\N	\N	\N	\N	\N	\N	active	83d77b64-7af2-4f07-867c-0f12d61ef1a3	\N	2024-04-20 14:59:35.152+00	/content/homepage	default	\N	\N	t	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: directus_versions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated) FROM stdin;
\.


--
-- Data for Name: directus_webhooks; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers, was_active_before_deprecation, migrated_flow) FROM stdin;
\.


--
-- Data for Name: homepage; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.homepage (id, status, user_created, date_created, user_updated, date_updated, title, seo, "subTitle") FROM stdin;
1	published	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 14:24:32.507+00	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 15:01:39.985+00	Das Türenwerk	\N	Im Entlebuch
\.


--
-- Data for Name: homepage_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.homepage_files (id, homepage_id, directus_files_id) FROM stdin;
1	1	0186c02c-3da7-4925-acc1-c5d36929dc52
2	1	89ea3a33-5676-40bf-bfa9-946c34efe4ca
3	1	c754daf5-dfd3-457d-b9ed-79863a911f96
4	1	02483b5a-3d2a-47e0-963c-fcf6cc65cf97
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.jobs (id, status, sort, date_created, user_updated, date_updated, title, body, contact) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.pages (id, status, sort, user_created, date_created, user_updated, date_updated, title, slug, image, body, seo, "subTitle") FROM stdin;
1	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:00.494+00	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:40:42.644+00	Geschichte 	geschichte	\N	<p>Die ENTLA AG besch&auml;ftigt heute rund 40 Mitarbeitende und ist ein wichtiger regionaler Arbeitgeber</p>	\N	\N
2	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:41:13.159+00	\N	\N	Philosophie	philosophie	\N	<p>Wir sind ein Team aus Holzfachleuten und streben gemeinsam Erfolg an. In unserem Denken und Handeln richten wir uns ganz nach unseren Kunden. Wir kennen die W&uuml;nsche und Bed&uuml;rfnisse unserer Kunden und erf&uuml;llen sie mit unseren Produkten. Unser Ziel ist ein gutes Preis-Leistungsverh&auml;ltnis und eine gute Kunden &ndash; und Lieferanten-Beziehungen. Wir sorgen f&uuml;r st&auml;ndige Verbesserungen unserer Prozesse, Produkte und Dienstleistungen.</p>\n<p>Die Basis f&uuml;r unseren Gesch&auml;ftserfolg ist unsere Verpflichtung f&uuml;r Qualit&auml;t, Umwelt, Arbeitssicherheit und Ordnung. Mit den dazugeh&ouml;renden Einrichtungen sorgen wir daf&uuml;r, dass alle Mitarbeitenden wirtschaftliche Leistungen erbringen k&ouml;nnen. Sie sind jederzeit in der Lage durch Eigenverantwortung ihren Beitrag zur fehlerfreien Produktion und einem angemessenen Unternehmensgewinn zu leisten.</p>\n<p>Qualit&auml;t in allen Leistungen und &uuml;ber alle Stufen unseres Unternehmens gew&auml;hrleisten wir durch beherrschte Prozesse, der konsequenten Planung, Umsetzung und st&auml;ndigen Verbesserungen.</p>\n<p>Unsere Verantwortung zur Umwelt nehmen wir bewusst wahr und f&ouml;rdern sie durch Umsetzung und &Uuml;berwachung. Konkrete Ziele erarbeiten wir in unseren Abl&auml;ufen und verpflichten uns zur Verh&uuml;tung von Umweltbelastungen. Die F&ouml;rderung der Umweltleistung basiert auf wirtschaftlichen und vertretbaren Verbesserungsmassnahmen und der Unterst&uuml;tzung der nachhaltigen Holznutzung durch den Einsatz von zertifiziertem Holz.</p>\n<p>Wir halten uns an die Gesetze, Normen und &uuml;brigen beh&ouml;rdlichen und kundenspezifischen Auflagen. Gleichbedeutend ist f&uuml;r und die Durchsetzung einer konsequenten Arbeitssicherheit nach EKAS RL6508. Wir bieten sichere Arbeitspl&auml;tze an und sorgen f&uuml;r einen umfassenden Gesundheitsschutz.</p>\n<p>Unsere Firma praktiziert eine Vertrauenskultur durch Zuverl&auml;ssigkeit, Fairness, Berechenbarkeit und Erreichbarkeit f&uuml;r unsere Partner und Kunden.</p>	\N	\N
3	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:41:47.523+00	\N	\N	Team	team	b9376cc6-2c96-4c17-91f4-0b699a67bdaf	<h3>Wir ziehen alle am gleichen Strick.</h3>\n<p>Unsere langj&auml;hrigen Mitarbeitenden sind unser wertvollstes Kapital.</p>\n<p>Sie geben f&uuml;r ihre Kunden ihr Bestes und sind tagt&auml;glich bestrebt, durch Professionalit&auml;t, pers&ouml;nliches Engagement und maximalen Kundenservice zu &uuml;berzeugen.</p>	\N	\N
4	published	\N	ae1bc7d0-6a76-4d13-81cf-c90c7b17707b	2024-04-20 09:42:06.357+00	\N	\N	Rundgang	rundgang	5cb8c50b-7efa-481c-9534-4ff5db080ac5	\N	\N	\N
\.


--
-- Data for Name: pages_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.pages_files (id, pages_id, directus_files_id) FROM stdin;
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.posts (id, status, sort, user_created, date_created, user_updated, date_updated, title, slug, image, body, seo) FROM stdin;
\.


--
-- Data for Name: quotes; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.quotes (id, status, sort, user_created, date_created, user_updated, date_updated, title, reference, quote_data) FROM stdin;
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.redirects (id, status, user_created, date_created, user_updated, date_updated, url_old, url_new, response_code) FROM stdin;
\.


--
-- Data for Name: seo; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.seo (id, title, meta_description, cononical_url, no_follow, no_index, sitemap_change_frequency, sitemap_priority, og_image) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.settings (id, status, sort, user_created, date_created, user_updated, date_updated, url, og_image, lageplan) FROM stdin;
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.team (id, status, sort, first_name, last_name, email, title, avatar) FROM stdin;
1	published	\N	Felix	Renggli	frenggli@entla.ch	Geschäftsführer / Inhaber	\N
2	published	\N	Martin	Läng	mlaeng@entla.ch	Betriebsleiter, Mitglied der Geschäftsführung	\N
3	published	\N	Urs	Wespi	uwespi@entla.ch	Kundenberatung, Auftragserfassung	\N
4	published	\N	Martin	brun	mbrun@entla.ch	Kundenberatung, Auftragserfassung	\N
5	published	\N	Clemens	Van den Wynenbergh	cvandenwyenbergh@entla.ch	Kundenberatung, Auftragserfassung	\N
6	published	\N	Marco Antonio	Müller	mmueller@entla.ch	Kundenberatung, Auftragserfassung	\N
7	published	\N	Lucy	Renggli-Mahler	lrenggli@entla.ch	Administration, Kundenberatung, Auftragserfassung	\N
8	published	\N	Cornelia	Stadler-Rüssli	cstadler@entla.ch	Buchhaltung / Personal	\N
9	published	\N	Lee	Huwiler	lhuwiler@entla.ch	Administration, Buchhaltung	\N
10	published	\N	Daniel	Schilter	dschilter@entla.ch	Teamleiter CNC	\N
11	published	\N	Peter	Bucheli	pbucheli@entla.ch	Teamleiter Endfertigung	\N
12	published	\N	Daniel	Portmann	produktion@entla.ch	Co-Teamleiter Rohlingsproduktion	\N
13	published	\N	Dominik	Brun	produktion@entla.ch	Co-Teamleiter Rohlingsproduktion	\N
14	published	\N	David	Wicki	massivholz@entla.ch	Teamleiter Massivholz	\N
15	published	\N	Markus	Brun	unterhalt@entla.ch	Instandhaltung Anlagen und Gebäude	\N
\.


--
-- Data for Name: geocode_settings; Type: TABLE DATA; Schema: tiger; Owner: directus
--

COPY tiger.geocode_settings (name, setting, unit, category, short_desc) FROM stdin;
\.


--
-- Data for Name: pagc_gaz; Type: TABLE DATA; Schema: tiger; Owner: directus
--

COPY tiger.pagc_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_lex; Type: TABLE DATA; Schema: tiger; Owner: directus
--

COPY tiger.pagc_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_rules; Type: TABLE DATA; Schema: tiger; Owner: directus
--

COPY tiger.pagc_rules (id, rule, is_custom) FROM stdin;
\.


--
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: directus
--

COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
\.


--
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: directus
--

COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.


--
-- Name: Application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Application_id_seq"', 3, true);


--
-- Name: ClimateClass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."ClimateClass_id_seq"', 7, true);


--
-- Name: Decks_Decks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Decks_Decks_id_seq"', 1, false);


--
-- Name: Decks_asdfghj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Decks_asdfghj_id_seq"', 1, false);


--
-- Name: Decks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Decks_id_seq"', 1, false);


--
-- Name: Decks_many_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Decks_many_id_seq"', 1, false);


--
-- Name: DoorCategory_Product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."DoorCategory_Product_id_seq"', 1, false);


--
-- Name: DoorCategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."DoorCategory_id_seq"', 5, true);


--
-- Name: DoorType_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."DoorType_id_seq"', 17, true);


--
-- Name: HeatProtection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."HeatProtection_id_seq"', 11, true);


--
-- Name: Modifications_cat_surface_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Modifications_cat_surface_id_seq"', 2, true);


--
-- Name: Modifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Modifications_id_seq"', 1, true);


--
-- Name: Product_ClimateClass_1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Product_ClimateClass_1_id_seq"', 2, true);


--
-- Name: Product_ClimateClass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Product_ClimateClass_id_seq"', 1, false);


--
-- Name: Product_HeatProtection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Product_HeatProtection_id_seq"', 1, false);


--
-- Name: Product_SoundProofing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Product_SoundProofing_id_seq"', 1, false);


--
-- Name: Product_Surface_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Product_Surface_id_seq"', 1, true);


--
-- Name: Product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Product_id_seq"', 8, true);


--
-- Name: SoundProofing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."SoundProofing_id_seq"', 12, true);


--
-- Name: Surface_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public."Surface_id_seq"', 14, true);


--
-- Name: cat_modifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.cat_modifications_id_seq', 1, true);


--
-- Name: cat_surface_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.cat_surface_id_seq', 4, true);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_activity_id_seq', 602, true);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 252, true);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 56, true);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 5, true);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 39, true);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_revisions_id_seq', 597, true);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, true);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);


--
-- Name: homepage_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.homepage_files_id_seq', 4, true);


--
-- Name: homepage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.homepage_id_seq', 1, true);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: pages_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.pages_files_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.pages_id_seq', 4, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.quotes_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, false);


--
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.team_id_seq', 15, true);


--
-- Name: Application Application_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Application"
    ADD CONSTRAINT "Application_pkey" PRIMARY KEY (id);


--
-- Name: ClimateClass ClimateClass_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."ClimateClass"
    ADD CONSTRAINT "ClimateClass_pkey" PRIMARY KEY (id);


--
-- Name: Decks_Decks Decks_Decks_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_Decks"
    ADD CONSTRAINT "Decks_Decks_pkey" PRIMARY KEY (id);


--
-- Name: Decks_asdfghj Decks_asdfghj_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_asdfghj"
    ADD CONSTRAINT "Decks_asdfghj_pkey" PRIMARY KEY (id);


--
-- Name: Decks_many Decks_many_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_many"
    ADD CONSTRAINT "Decks_many_pkey" PRIMARY KEY (id);


--
-- Name: Decks Decks_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks"
    ADD CONSTRAINT "Decks_pkey" PRIMARY KEY (id);


--
-- Name: DoorCategory_Product DoorCategory_Product_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorCategory_Product"
    ADD CONSTRAINT "DoorCategory_Product_pkey" PRIMARY KEY (id);


--
-- Name: DoorCategory DoorCategory_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorCategory"
    ADD CONSTRAINT "DoorCategory_pkey" PRIMARY KEY (id);


--
-- Name: DoorType DoorType_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorType"
    ADD CONSTRAINT "DoorType_pkey" PRIMARY KEY (id);


--
-- Name: HeatProtection HeatProtection_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."HeatProtection"
    ADD CONSTRAINT "HeatProtection_pkey" PRIMARY KEY (id);


--
-- Name: Modifications_cat_surface Modifications_cat_surface_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Modifications_cat_surface"
    ADD CONSTRAINT "Modifications_cat_surface_pkey" PRIMARY KEY (id);


--
-- Name: Modifications Modifications_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Modifications"
    ADD CONSTRAINT "Modifications_pkey" PRIMARY KEY (id);


--
-- Name: Product_ClimateClass_1 Product_ClimateClass_1_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass_1"
    ADD CONSTRAINT "Product_ClimateClass_1_pkey" PRIMARY KEY (id);


--
-- Name: Product_ClimateClass Product_ClimateClass_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass"
    ADD CONSTRAINT "Product_ClimateClass_pkey" PRIMARY KEY (id);


--
-- Name: Product_HeatProtection Product_HeatProtection_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_HeatProtection"
    ADD CONSTRAINT "Product_HeatProtection_pkey" PRIMARY KEY (id);


--
-- Name: Product_SoundProofing Product_SoundProofing_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_SoundProofing"
    ADD CONSTRAINT "Product_SoundProofing_pkey" PRIMARY KEY (id);


--
-- Name: Product_Surface Product_Surface_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_Surface"
    ADD CONSTRAINT "Product_Surface_pkey" PRIMARY KEY (id);


--
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- Name: SoundProofing SoundProofing_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."SoundProofing"
    ADD CONSTRAINT "SoundProofing_pkey" PRIMARY KEY (id);


--
-- Name: Surface Surface_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Surface"
    ADD CONSTRAINT "Surface_pkey" PRIMARY KEY (id);


--
-- Name: cat_modifications cat_modifications_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.cat_modifications
    ADD CONSTRAINT cat_modifications_pkey PRIMARY KEY (id);


--
-- Name: cat_surface cat_surface_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.cat_surface
    ADD CONSTRAINT cat_surface_pkey PRIMARY KEY (id);


--
-- Name: directus_activity directus_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);


--
-- Name: directus_collections directus_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);


--
-- Name: directus_dashboards directus_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);


--
-- Name: directus_extensions directus_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);


--
-- Name: directus_fields directus_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);


--
-- Name: directus_files directus_files_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);


--
-- Name: directus_flows directus_flows_operation_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);


--
-- Name: directus_flows directus_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);


--
-- Name: directus_folders directus_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);


--
-- Name: directus_migrations directus_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);


--
-- Name: directus_notifications directus_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_reject_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);


--
-- Name: directus_operations directus_operations_resolve_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);


--
-- Name: directus_panels directus_panels_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);


--
-- Name: directus_permissions directus_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);


--
-- Name: directus_presets directus_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);


--
-- Name: directus_relations directus_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);


--
-- Name: directus_revisions directus_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);


--
-- Name: directus_roles directus_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);


--
-- Name: directus_sessions directus_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);


--
-- Name: directus_settings directus_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);


--
-- Name: directus_shares directus_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);


--
-- Name: directus_translations directus_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_email_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);


--
-- Name: directus_users directus_users_external_identifier_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);


--
-- Name: directus_users directus_users_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_token_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);


--
-- Name: directus_versions directus_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);


--
-- Name: directus_webhooks directus_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);


--
-- Name: homepage_files homepage_files_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.homepage_files
    ADD CONSTRAINT homepage_files_pkey PRIMARY KEY (id);


--
-- Name: homepage homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.homepage
    ADD CONSTRAINT homepage_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: pages_files pages_files_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.pages_files
    ADD CONSTRAINT pages_files_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: quotes quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.quotes
    ADD CONSTRAINT quotes_pkey PRIMARY KEY (id);


--
-- Name: redirects redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.redirects
    ADD CONSTRAINT redirects_pkey PRIMARY KEY (id);


--
-- Name: seo seo_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.seo
    ADD CONSTRAINT seo_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);


--
-- Name: ClimateClass climateclass_cc_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."ClimateClass"
    ADD CONSTRAINT climateclass_cc_foreign FOREIGN KEY (cc) REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: ClimateClass climateclass_clicla_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."ClimateClass"
    ADD CONSTRAINT climateclass_clicla_foreign FOREIGN KEY (clicla) REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: Decks_asdfghj decks_asdfghj_decks_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_asdfghj"
    ADD CONSTRAINT decks_asdfghj_decks_id_foreign FOREIGN KEY ("Decks_id") REFERENCES public."Decks"(id) ON DELETE SET NULL;


--
-- Name: Decks_Decks decks_decks_decks_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_Decks"
    ADD CONSTRAINT decks_decks_decks_id_foreign FOREIGN KEY ("Decks_id") REFERENCES public."Decks"(id) ON DELETE SET NULL;


--
-- Name: Decks_Decks decks_decks_related_decks_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Decks_Decks"
    ADD CONSTRAINT decks_decks_related_decks_id_foreign FOREIGN KEY ("related_Decks_id") REFERENCES public."Decks"(id) ON DELETE SET NULL;


--
-- Name: directus_collections directus_collections_group_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);


--
-- Name: directus_dashboards directus_dashboards_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_modified_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);


--
-- Name: directus_files directus_files_uploaded_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);


--
-- Name: directus_flows directus_flows_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_folders directus_folders_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);


--
-- Name: directus_notifications directus_notifications_recipient_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_notifications directus_notifications_sender_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);


--
-- Name: directus_operations directus_operations_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;


--
-- Name: directus_operations directus_operations_reject_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_resolve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_panels directus_panels_dashboard_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;


--
-- Name: directus_panels directus_panels_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_permissions directus_permissions_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_activity_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);


--
-- Name: directus_revisions directus_revisions_version_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_share_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_settings directus_settings_project_logo_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_background_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_favicon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_foreground_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_storage_default_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_shares directus_shares_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_entla_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_entla_user_foreign FOREIGN KEY (entla_user) REFERENCES public.quotes(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_versions directus_versions_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: DoorCategory_Product doorcategory_product_doorcategory_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorCategory_Product"
    ADD CONSTRAINT doorcategory_product_doorcategory_id_foreign FOREIGN KEY ("DoorCategory_id") REFERENCES public."DoorCategory"(id) ON DELETE SET NULL;


--
-- Name: DoorCategory_Product doorcategory_product_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorCategory_Product"
    ADD CONSTRAINT doorcategory_product_product_id_foreign FOREIGN KEY ("Product_id") REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: DoorType doortype_application_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorType"
    ADD CONSTRAINT doortype_application_foreign FOREIGN KEY (application) REFERENCES public."Application"(id) ON DELETE SET NULL;


--
-- Name: DoorType doortype_image_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."DoorType"
    ADD CONSTRAINT doortype_image_foreign FOREIGN KEY (image) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: homepage_files homepage_files_directus_files_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.homepage_files
    ADD CONSTRAINT homepage_files_directus_files_id_foreign FOREIGN KEY (directus_files_id) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: homepage_files homepage_files_homepage_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.homepage_files
    ADD CONSTRAINT homepage_files_homepage_id_foreign FOREIGN KEY (homepage_id) REFERENCES public.homepage(id) ON DELETE SET NULL;


--
-- Name: jobs jobs_contact_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_contact_foreign FOREIGN KEY (contact) REFERENCES public.team(id) ON DELETE SET NULL;


--
-- Name: Modifications_cat_surface modifications_cat_surface_cat_surface_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Modifications_cat_surface"
    ADD CONSTRAINT modifications_cat_surface_cat_surface_id_foreign FOREIGN KEY (cat_surface_id) REFERENCES public.cat_surface(id) ON DELETE SET NULL;


--
-- Name: Modifications_cat_surface modifications_cat_surface_modifications_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Modifications_cat_surface"
    ADD CONSTRAINT modifications_cat_surface_modifications_id_foreign FOREIGN KEY ("Modifications_id") REFERENCES public."Modifications"(id) ON DELETE SET NULL;


--
-- Name: Modifications modifications_category_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Modifications"
    ADD CONSTRAINT modifications_category_foreign FOREIGN KEY (category) REFERENCES public.cat_modifications(id) ON DELETE SET NULL;


--
-- Name: pages_files pages_files_pages_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.pages_files
    ADD CONSTRAINT pages_files_pages_id_foreign FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: pages pages_image_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_image_foreign FOREIGN KEY (image) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: posts posts_image_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_image_foreign FOREIGN KEY (image) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: Product product_application_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT product_application_foreign FOREIGN KEY (application) REFERENCES public."Application"(id) ON DELETE SET NULL;


--
-- Name: Product_ClimateClass_1 product_climateclass_1_climateclass_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass_1"
    ADD CONSTRAINT product_climateclass_1_climateclass_id_foreign FOREIGN KEY ("ClimateClass_id") REFERENCES public."ClimateClass"(id) ON DELETE SET NULL;


--
-- Name: Product_ClimateClass_1 product_climateclass_1_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass_1"
    ADD CONSTRAINT product_climateclass_1_product_id_foreign FOREIGN KEY ("Product_id") REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: Product_ClimateClass product_climateclass_climateclass_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass"
    ADD CONSTRAINT product_climateclass_climateclass_id_foreign FOREIGN KEY ("ClimateClass_id") REFERENCES public."ClimateClass"(id) ON DELETE SET NULL;


--
-- Name: Product_ClimateClass product_climateclass_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_ClimateClass"
    ADD CONSTRAINT product_climateclass_product_id_foreign FOREIGN KEY ("Product_id") REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: Product product_doortype_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT product_doortype_foreign FOREIGN KEY ("DoorType") REFERENCES public."DoorType"(id) ON DELETE SET NULL;


--
-- Name: Product product_heatprotection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT product_heatprotection_foreign FOREIGN KEY ("HeatProtection") REFERENCES public."HeatProtection"(id) ON DELETE SET NULL;


--
-- Name: Product_HeatProtection product_heatprotection_heatprotection_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_HeatProtection"
    ADD CONSTRAINT product_heatprotection_heatprotection_id_foreign FOREIGN KEY ("HeatProtection_id") REFERENCES public."HeatProtection"(id) ON DELETE SET NULL;


--
-- Name: Product_HeatProtection product_heatprotection_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_HeatProtection"
    ADD CONSTRAINT product_heatprotection_product_id_foreign FOREIGN KEY ("Product_id") REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: Product product_soundproofing_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT product_soundproofing_foreign FOREIGN KEY ("SoundProofing") REFERENCES public."SoundProofing"(id) ON DELETE SET NULL;


--
-- Name: Product_SoundProofing product_soundproofing_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_SoundProofing"
    ADD CONSTRAINT product_soundproofing_product_id_foreign FOREIGN KEY ("Product_id") REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: Product_SoundProofing product_soundproofing_soundproofing_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_SoundProofing"
    ADD CONSTRAINT product_soundproofing_soundproofing_id_foreign FOREIGN KEY ("SoundProofing_id") REFERENCES public."SoundProofing"(id) ON DELETE SET NULL;


--
-- Name: Product_Surface product_surface_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_Surface"
    ADD CONSTRAINT product_surface_product_id_foreign FOREIGN KEY ("Product_id") REFERENCES public."Product"(id) ON DELETE SET NULL;


--
-- Name: Product_Surface product_surface_surface_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Product_Surface"
    ADD CONSTRAINT product_surface_surface_id_foreign FOREIGN KEY ("Surface_id") REFERENCES public."Surface"(id) ON DELETE SET NULL;


--
-- Name: seo seo_og_image_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.seo
    ADD CONSTRAINT seo_og_image_foreign FOREIGN KEY (og_image) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: settings settings_og_image_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_og_image_foreign FOREIGN KEY (og_image) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: Surface surface_cat_surface_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public."Surface"
    ADD CONSTRAINT surface_cat_surface_foreign FOREIGN KEY (cat_surface) REFERENCES public.cat_surface(id) ON DELETE SET NULL;


--
-- Name: team team_avatar_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_avatar_foreign FOREIGN KEY (avatar) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

