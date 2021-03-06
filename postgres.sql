PGDMP     +                    z            postgres    14.2    14.2     n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            q           1262    13754    postgres    DATABASE     h   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE postgres;
                postgres    false            r           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3441                        2615    16394    pgagent    SCHEMA        CREATE SCHEMA pgagent;
    DROP SCHEMA pgagent;
                postgres    false            s           0    0    SCHEMA pgagent    COMMENT     6   COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';
                   postgres    false    8                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            t           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2                        3079    16395    pgagent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;
    DROP EXTENSION pgagent;
                   false    8            u           0    0    EXTENSION pgagent    COMMENT     >   COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';
                        false    3            ?            1259    18530    produk    TABLE     ?   CREATE TABLE public.produk (
    idproduk integer NOT NULL,
    namaproduk character varying NOT NULL,
    hargaproduk integer NOT NULL
);
    DROP TABLE public.produk;
       public         heap    postgres    false            ?            1259    18582 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    idtransaksi integer NOT NULL,
    namapelanggan character varying NOT NULL,
    tanggal date DEFAULT now(),
    idproduk integer NOT NULL,
    jumlahproduk integer NOT NULL
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            ?          0    16396    pga_jobagent 
   TABLE DATA           I   COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
    pgagent          postgres    false    214   ?       ?          0    16405    pga_jobclass 
   TABLE DATA           7   COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
    pgagent          postgres    false    216   	       ?          0    16415    pga_job 
   TABLE DATA           ?   COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
    pgagent          postgres    false    218   &       ?          0    16463    pga_schedule 
   TABLE DATA           ?   COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
    pgagent          postgres    false    222   C       ?          0    16491    pga_exception 
   TABLE DATA           J   COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
    pgagent          postgres    false    224   `       ?          0    16505 
   pga_joblog 
   TABLE DATA           X   COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
    pgagent          postgres    false    226   }       ?          0    16439    pga_jobstep 
   TABLE DATA           ?   COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
    pgagent          postgres    false    220   ?       ?          0    16521    pga_jobsteplog 
   TABLE DATA           |   COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
    pgagent          postgres    false    228   ?       j          0    18530    produk 
   TABLE DATA           C   COPY public.produk (idproduk, namaproduk, hargaproduk) FROM stdin;
    public          postgres    false    229   ?       k          0    18582 	   transaksi 
   TABLE DATA           `   COPY public.transaksi (idtransaksi, namapelanggan, tanggal, idproduk, jumlahproduk) FROM stdin;
    public          postgres    false    230   D       ?           2606    18536    produk produk_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (idproduk);
 <   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_pkey;
       public            postgres    false    229            ?           2606    18589    transaksi transaksi_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (idtransaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    230            ?           2606    18590    transaksi fk_idproduk    FK CONSTRAINT     |   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_idproduk FOREIGN KEY (idproduk) REFERENCES public.produk(idproduk);
 ?   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_idproduk;
       public          postgres    false    3291    230    229            ?   @   x???43?4202?50?54W0??2??2??323604?60??q??ur??0
s?????? AAu      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      j   `   x?3?LN?I?KT(H??J?K??4 .S??????R???????DN#C??9?Sb??)X???;575+??????3;?D! 3/=d?HW? +_      k   [   x?M?;? ???]0??n?lm??=?XI;??'X2?k(R(?7?????6?W???0???1??l?;;???ud?u"??P?     