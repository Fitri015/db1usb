PGDMP     0    /            
    z            pnjualan    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16515    pnjualan    DATABASE     h   CREATE DATABASE pnjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE pnjualan;
                postgres    false            ?            1259    16524    baju    TABLE     ?   CREATE TABLE public.baju (
    harga_baju integer NOT NULL,
    nama_pemesan character varying(30),
    nama_barang character varying(30)
);
    DROP TABLE public.baju;
       public         heap    postgres    false            ?            1259    16523    baju_harga_baju_seq    SEQUENCE     ?   CREATE SEQUENCE public.baju_harga_baju_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.baju_harga_baju_seq;
       public          postgres    false    212                       0    0    baju_harga_baju_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.baju_harga_baju_seq OWNED BY public.baju.harga_baju;
          public          postgres    false    211            ?            1259    16517    hp    TABLE     ?   CREATE TABLE public.hp (
    harga_hp integer NOT NULL,
    nama_pelanggan character varying(30),
    merk_barang character varying(30)
);
    DROP TABLE public.hp;
       public         heap    postgres    false            ?            1259    16516    hp_harga_hp_seq    SEQUENCE     ?   CREATE SEQUENCE public.hp_harga_hp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.hp_harga_hp_seq;
       public          postgres    false    210                       0    0    hp_harga_hp_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.hp_harga_hp_seq OWNED BY public.hp.harga_hp;
          public          postgres    false    209            ?            1259    16531    sepatu    TABLE     ?   CREATE TABLE public.sepatu (
    harga_sepatu integer NOT NULL,
    merk_barang character varying(30),
    nama_pemesan character varying(30)
);
    DROP TABLE public.sepatu;
       public         heap    postgres    false            ?            1259    16530    sepatu_harga_sepatu_seq    SEQUENCE     ?   CREATE SEQUENCE public.sepatu_harga_sepatu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sepatu_harga_sepatu_seq;
       public          postgres    false    214                       0    0    sepatu_harga_sepatu_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sepatu_harga_sepatu_seq OWNED BY public.sepatu.harga_sepatu;
          public          postgres    false    213            g           2604    16527    baju harga_baju    DEFAULT     r   ALTER TABLE ONLY public.baju ALTER COLUMN harga_baju SET DEFAULT nextval('public.baju_harga_baju_seq'::regclass);
 >   ALTER TABLE public.baju ALTER COLUMN harga_baju DROP DEFAULT;
       public          postgres    false    212    211    212            f           2604    16520    hp harga_hp    DEFAULT     j   ALTER TABLE ONLY public.hp ALTER COLUMN harga_hp SET DEFAULT nextval('public.hp_harga_hp_seq'::regclass);
 :   ALTER TABLE public.hp ALTER COLUMN harga_hp DROP DEFAULT;
       public          postgres    false    210    209    210            h           2604    16534    sepatu harga_sepatu    DEFAULT     z   ALTER TABLE ONLY public.sepatu ALTER COLUMN harga_sepatu SET DEFAULT nextval('public.sepatu_harga_sepatu_seq'::regclass);
 B   ALTER TABLE public.sepatu ALTER COLUMN harga_sepatu DROP DEFAULT;
       public          postgres    false    213    214    214            ?          0    16524    baju 
   TABLE DATA           E   COPY public.baju (harga_baju, nama_pemesan, nama_barang) FROM stdin;
    public          postgres    false    212   ?       ?          0    16517    hp 
   TABLE DATA           C   COPY public.hp (harga_hp, nama_pelanggan, merk_barang) FROM stdin;
    public          postgres    false    210   ?       ?          0    16531    sepatu 
   TABLE DATA           I   COPY public.sepatu (harga_sepatu, merk_barang, nama_pemesan) FROM stdin;
    public          postgres    false    214   ?       	           0    0    baju_harga_baju_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.baju_harga_baju_seq', 1, false);
          public          postgres    false    211            
           0    0    hp_harga_hp_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hp_harga_hp_seq', 1, false);
          public          postgres    false    209                       0    0    sepatu_harga_sepatu_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sepatu_harga_sepatu_seq', 1, false);
          public          postgres    false    213            l           2606    16529    baju baju_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.baju
    ADD CONSTRAINT baju_pkey PRIMARY KEY (harga_baju);
 8   ALTER TABLE ONLY public.baju DROP CONSTRAINT baju_pkey;
       public            postgres    false    212            j           2606    16522 
   hp hp_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hp
    ADD CONSTRAINT hp_pkey PRIMARY KEY (harga_hp);
 4   ALTER TABLE ONLY public.hp DROP CONSTRAINT hp_pkey;
       public            postgres    false    210            n           2606    16536    sepatu sepatu_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sepatu
    ADD CONSTRAINT sepatu_pkey PRIMARY KEY (harga_sepatu);
 <   ALTER TABLE ONLY public.sepatu DROP CONSTRAINT sepatu_pkey;
       public            postgres    false    214            ?   '   x?344 N?̒??D??ĢLN?0נ`?(W?=... ???      ?   (   x?3?05500?t?,)?LT(N,???,???K?????? ???      ?   &   x?325 ?0W?WGN?̒??D??ĢL?=... ?)     