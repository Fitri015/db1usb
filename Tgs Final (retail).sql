PGDMP     .    &         
        z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16462    retail    DATABASE     f   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16493    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(20) NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16508 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tgl_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16498    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jk character(1),
    no_telp character(14),
    alamat character varying(50)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16488    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(13),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16503 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16493    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   ?                 0    16508 
   pembayaran 
   TABLE DATA           Y   COPY public.pembayaran (id_pembayaran, tgl_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    213   ?                 0    16498    pembeli 
   TABLE DATA           P   COPY public.pembeli (id_pembeli, nama_pembeli, jk, no_telp, alamat) FROM stdin;
    public          postgres    false    211   V                 0    16488    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    209   ?                 0    16503 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    212   ?       n           2606    16497    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            t           2606    16512    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    213            p           2606    16502    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    211            l           2606    16492    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    209            r           2606    16507    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    212            w           2606    16523    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3182    212    210            v           2606    16518    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3184    212    211            u           2606    16513    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    210    209    3180            x           2606    16528 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    212    3186    213               ?   x?-?K?? D??a"????b?0? ű?A???ۧi???{?\e&?????d???C?0???APL??1o?(??E9???&YA?S??x?yZ??j?UyQ??c??C?Ax?k,?E????#?KN??Xq/x?e?w???у???	?ÂG?l!eZj?c?`&??????Y3????y?????,f?w?I??+?r???8???^???;c?I?J?         ?   x?=?Ar?0?5??:H?عK??·?J?"?M.????~,?#???'?,.?@.pۼ?????'??̂????oH?d?	???dIoÄ/H6??S?Z?????`?./?????am?PXމw?lO??P??.? ??B??Oy?U??O??|~ʳ?????D?>??e??????c????AG         (  x?E?Ir?0?us
N?B??@N?e6???,Q??G??u???????hA????}k?;v????XgJ??1???p?,(?1?
%5???+>J??먘?^'????8??(.?
???????\?xa4[??KV??ZӨ???ᩥ?\??>??}m??D3???????Q8m	?EM1?<?W?kM%+:{C?Gw????(W?R??nx??W)?/yU#?~??y䬌(?y???<W?gJ??i?ֽI~??R?8[S8l?5??????c?~????5??         ,  x?]??n?0E??+?Ul??y(?AXD?f""D?"??~??*?l??Ι????CίGF\?=(??]???k"j???|????y??$?:m?-??a??)Ԥ?_CJ???j????f????aZ`R??)qNx??x.???o?????Z?{?~?-??:?yv??0?
3?R??|¬?@c????vh?(?U?C?>??Bw_T?#,?:EL?1?l?????b????B]XD?[?0!V??MeUe?o?kMsĴ?#?K?p;?|M]?v1?ʴ?:?t?1q??:;o???tZy?         ?   x?m?9?AE??Sp????w!A? M6???3j?b	??'????I?T?DC?.?????|=??np???6??ܮ???a?˱<-?bm????~?<??o)X??5o)??
?𚼋???cK?jX-?&j³&??ޓW?.|?c??X#?":??&??7????v???DNu???ܫ?'	?{5?֫?'	??_,Z%?3oѮ???>I???*>??????d?y?     