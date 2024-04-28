PGDMP  1    )                |            db    16.1 (Debian 16.1-1.pgdg120+1)    16.1 V    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    db    DATABASE     m   CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE db;
                postgres    false                        2615    16601    logger    SCHEMA        CREATE SCHEMA logger;
    DROP SCHEMA logger;
                postgres    false                        2615    16702 	   messenger    SCHEMA        CREATE SCHEMA messenger;
    DROP SCHEMA messenger;
                postgres    false            �            1259    16603    407001    TABLE     �   CREATE TABLE logger."407001" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    massflowbegin real,
    massflowend real,
    mass real,
    datetime text NOT NULL,
    collected text
);
    DROP TABLE logger."407001";
       logger         heap    postgres    false    7            �            1259    16602    407001_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407001_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407001_ID_seq";
       logger          postgres    false    219    7            �           0    0    407001_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407001_ID_seq" OWNED BY logger."407001"."ID";
          logger          postgres    false    218            �            1259    16614    407002    TABLE     �   CREATE TABLE logger."407002" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    massflowbegin real,
    massflowend real,
    mass real,
    datetime text NOT NULL,
    collected text
);
    DROP TABLE logger."407002";
       logger         heap    postgres    false    7            �            1259    16613    407002_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407002_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407002_ID_seq";
       logger          postgres    false    7    221            �           0    0    407002_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407002_ID_seq" OWNED BY logger."407002"."ID";
          logger          postgres    false    220            �            1259    16625    407003    TABLE     �   CREATE TABLE logger."407003" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    massflowbegin real,
    massflowend real,
    mass real,
    datetime text NOT NULL,
    collected text
);
    DROP TABLE logger."407003";
       logger         heap    postgres    false    7            �            1259    16624    407003_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407003_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407003_ID_seq";
       logger          postgres    false    7    223            �           0    0    407003_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407003_ID_seq" OWNED BY logger."407003"."ID";
          logger          postgres    false    222            �            1259    16636    407004    TABLE     �   CREATE TABLE logger."407004" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    tanklevel real,
    mass real,
    datetime text,
    collected text
);
    DROP TABLE logger."407004";
       logger         heap    postgres    false    7            �            1259    16635    407004_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407004_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407004_ID_seq";
       logger          postgres    false    7    225            �           0    0    407004_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407004_ID_seq" OWNED BY logger."407004"."ID";
          logger          postgres    false    224            �            1259    16647    407005    TABLE     �   CREATE TABLE logger."407005" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    tanklevel real,
    mass real,
    datetime text,
    collected text
);
    DROP TABLE logger."407005";
       logger         heap    postgres    false    7            �            1259    16646    407005_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407005_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407005_ID_seq";
       logger          postgres    false    227    7            �           0    0    407005_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407005_ID_seq" OWNED BY logger."407005"."ID";
          logger          postgres    false    226            �            1259    16658    407006    TABLE     �   CREATE TABLE logger."407006" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    tanklevel real,
    mass real,
    datetime text,
    collected text
);
    DROP TABLE logger."407006";
       logger         heap    postgres    false    7            �            1259    16657    407006_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407006_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407006_ID_seq";
       logger          postgres    false    229    7            �           0    0    407006_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407006_ID_seq" OWNED BY logger."407006"."ID";
          logger          postgres    false    228            �            1259    16669    407007    TABLE     �   CREATE TABLE logger."407007" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    tanklevel real,
    mass real,
    datetime text,
    collected text
);
    DROP TABLE logger."407007";
       logger         heap    postgres    false    7            �            1259    16668    407007_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407007_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407007_ID_seq";
       logger          postgres    false    7    231            �           0    0    407007_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407007_ID_seq" OWNED BY logger."407007"."ID";
          logger          postgres    false    230            �            1259    16680    407008    TABLE     �   CREATE TABLE logger."407008" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    tanklevel real,
    mass real,
    datetime text,
    collected text
);
    DROP TABLE logger."407008";
       logger         heap    postgres    false    7            �            1259    16679    407008_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407008_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407008_ID_seq";
       logger          postgres    false    233    7            �           0    0    407008_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407008_ID_seq" OWNED BY logger."407008"."ID";
          logger          postgres    false    232            �            1259    16691    407009    TABLE     �   CREATE TABLE logger."407009" (
    "ID" integer NOT NULL,
    temperature real,
    density real,
    volume real,
    tanklevel real,
    mass real,
    datetime text,
    collected text
);
    DROP TABLE logger."407009";
       logger         heap    postgres    false    7            �            1259    16690    407009_ID_seq    SEQUENCE     �   CREATE SEQUENCE logger."407009_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE logger."407009_ID_seq";
       logger          postgres    false    235    7            �           0    0    407009_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE logger."407009_ID_seq" OWNED BY logger."407009"."ID";
          logger          postgres    false    234            �            1259    16704 	   DOCUMENTS    TABLE     �   CREATE TABLE messenger."DOCUMENTS" (
    "ID" integer NOT NULL,
    document text NOT NULL,
    response text,
    datetime text NOT NULL,
    sent text,
    created text,
    state text
);
 "   DROP TABLE messenger."DOCUMENTS";
    	   messenger         heap    postgres    false    8            �            1259    16703    DOCUMENTS_ID_seq    SEQUENCE     �   CREATE SEQUENCE messenger."DOCUMENTS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE messenger."DOCUMENTS_ID_seq";
    	   messenger          postgres    false    8    237            �           0    0    DOCUMENTS_ID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE messenger."DOCUMENTS_ID_seq" OWNED BY messenger."DOCUMENTS"."ID";
       	   messenger          postgres    false    236            �           2604    16606 	   407001 ID    DEFAULT     l   ALTER TABLE ONLY logger."407001" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407001_ID_seq"'::regclass);
 <   ALTER TABLE logger."407001" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    219    218    219            �           2604    16617 	   407002 ID    DEFAULT     l   ALTER TABLE ONLY logger."407002" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407002_ID_seq"'::regclass);
 <   ALTER TABLE logger."407002" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    220    221    221            �           2604    16628 	   407003 ID    DEFAULT     l   ALTER TABLE ONLY logger."407003" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407003_ID_seq"'::regclass);
 <   ALTER TABLE logger."407003" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    222    223    223            �           2604    16639 	   407004 ID    DEFAULT     l   ALTER TABLE ONLY logger."407004" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407004_ID_seq"'::regclass);
 <   ALTER TABLE logger."407004" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    224    225    225            �           2604    16650 	   407005 ID    DEFAULT     l   ALTER TABLE ONLY logger."407005" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407005_ID_seq"'::regclass);
 <   ALTER TABLE logger."407005" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    227    226    227            �           2604    16661 	   407006 ID    DEFAULT     l   ALTER TABLE ONLY logger."407006" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407006_ID_seq"'::regclass);
 <   ALTER TABLE logger."407006" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    229    228    229            �           2604    16672 	   407007 ID    DEFAULT     l   ALTER TABLE ONLY logger."407007" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407007_ID_seq"'::regclass);
 <   ALTER TABLE logger."407007" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    231    230    231            �           2604    16683 	   407008 ID    DEFAULT     l   ALTER TABLE ONLY logger."407008" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407008_ID_seq"'::regclass);
 <   ALTER TABLE logger."407008" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    233    232    233            �           2604    16694 	   407009 ID    DEFAULT     l   ALTER TABLE ONLY logger."407009" ALTER COLUMN "ID" SET DEFAULT nextval('logger."407009_ID_seq"'::regclass);
 <   ALTER TABLE logger."407009" ALTER COLUMN "ID" DROP DEFAULT;
       logger          postgres    false    234    235    235            �           2604    16707    DOCUMENTS ID    DEFAULT     x   ALTER TABLE ONLY messenger."DOCUMENTS" ALTER COLUMN "ID" SET DEFAULT nextval('messenger."DOCUMENTS_ID_seq"'::regclass);
 B   ALTER TABLE messenger."DOCUMENTS" ALTER COLUMN "ID" DROP DEFAULT;
    	   messenger          postgres    false    236    237    237                      0    16603    407001 
   TABLE DATA           }   COPY logger."407001" ("ID", temperature, density, volume, massflowbegin, massflowend, mass, datetime, collected) FROM stdin;
    logger          postgres    false    219   �_       �          0    16614    407002 
   TABLE DATA           }   COPY logger."407002" ("ID", temperature, density, volume, massflowbegin, massflowend, mass, datetime, collected) FROM stdin;
    logger          postgres    false    221   0`       �          0    16625    407003 
   TABLE DATA           }   COPY logger."407003" ("ID", temperature, density, volume, massflowbegin, massflowend, mass, datetime, collected) FROM stdin;
    logger          postgres    false    223   �`       �          0    16636    407004 
   TABLE DATA           l   COPY logger."407004" ("ID", temperature, density, volume, tanklevel, mass, datetime, collected) FROM stdin;
    logger          postgres    false    225   ca       �          0    16647    407005 
   TABLE DATA           l   COPY logger."407005" ("ID", temperature, density, volume, tanklevel, mass, datetime, collected) FROM stdin;
    logger          postgres    false    227   b       �          0    16658    407006 
   TABLE DATA           l   COPY logger."407006" ("ID", temperature, density, volume, tanklevel, mass, datetime, collected) FROM stdin;
    logger          postgres    false    229   �b       �          0    16669    407007 
   TABLE DATA           l   COPY logger."407007" ("ID", temperature, density, volume, tanklevel, mass, datetime, collected) FROM stdin;
    logger          postgres    false    231   9c       �          0    16680    407008 
   TABLE DATA           l   COPY logger."407008" ("ID", temperature, density, volume, tanklevel, mass, datetime, collected) FROM stdin;
    logger          postgres    false    233   �c       �          0    16691    407009 
   TABLE DATA           l   COPY logger."407009" ("ID", temperature, density, volume, tanklevel, mass, datetime, collected) FROM stdin;
    logger          postgres    false    235   Zd       �          0    16704 	   DOCUMENTS 
   TABLE DATA           b   COPY messenger."DOCUMENTS" ("ID", document, response, datetime, sent, created, state) FROM stdin;
 	   messenger          postgres    false    237   �d       �           0    0    407001_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407001_ID_seq"', 3, true);
          logger          postgres    false    218            �           0    0    407002_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407002_ID_seq"', 4, true);
          logger          postgres    false    220            �           0    0    407003_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407003_ID_seq"', 4, true);
          logger          postgres    false    222            �           0    0    407004_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407004_ID_seq"', 4, true);
          logger          postgres    false    224            �           0    0    407005_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407005_ID_seq"', 4, true);
          logger          postgres    false    226            �           0    0    407006_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407006_ID_seq"', 4, true);
          logger          postgres    false    228            �           0    0    407007_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407007_ID_seq"', 4, true);
          logger          postgres    false    230            �           0    0    407008_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407008_ID_seq"', 4, true);
          logger          postgres    false    232            �           0    0    407009_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('logger."407009_ID_seq"', 4, true);
          logger          postgres    false    234            �           0    0    DOCUMENTS_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('messenger."DOCUMENTS_ID_seq"', 1, false);
       	   messenger          postgres    false    236            �           2606    16612    407001 407001_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407001"
    ADD CONSTRAINT "407001_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407001" DROP CONSTRAINT "407001_datetime_key";
       logger            postgres    false    219            �           2606    16610    407001 407001_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407001"
    ADD CONSTRAINT "407001_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407001" DROP CONSTRAINT "407001_pkey";
       logger            postgres    false    219            �           2606    16623    407002 407002_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407002"
    ADD CONSTRAINT "407002_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407002" DROP CONSTRAINT "407002_datetime_key";
       logger            postgres    false    221            �           2606    16621    407002 407002_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407002"
    ADD CONSTRAINT "407002_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407002" DROP CONSTRAINT "407002_pkey";
       logger            postgres    false    221            �           2606    16634    407003 407003_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407003"
    ADD CONSTRAINT "407003_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407003" DROP CONSTRAINT "407003_datetime_key";
       logger            postgres    false    223            �           2606    16632    407003 407003_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407003"
    ADD CONSTRAINT "407003_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407003" DROP CONSTRAINT "407003_pkey";
       logger            postgres    false    223            �           2606    16645    407004 407004_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407004"
    ADD CONSTRAINT "407004_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407004" DROP CONSTRAINT "407004_datetime_key";
       logger            postgres    false    225            �           2606    16643    407004 407004_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407004"
    ADD CONSTRAINT "407004_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407004" DROP CONSTRAINT "407004_pkey";
       logger            postgres    false    225            �           2606    16656    407005 407005_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407005"
    ADD CONSTRAINT "407005_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407005" DROP CONSTRAINT "407005_datetime_key";
       logger            postgres    false    227            �           2606    16654    407005 407005_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407005"
    ADD CONSTRAINT "407005_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407005" DROP CONSTRAINT "407005_pkey";
       logger            postgres    false    227            �           2606    16667    407006 407006_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407006"
    ADD CONSTRAINT "407006_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407006" DROP CONSTRAINT "407006_datetime_key";
       logger            postgres    false    229            �           2606    16665    407006 407006_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407006"
    ADD CONSTRAINT "407006_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407006" DROP CONSTRAINT "407006_pkey";
       logger            postgres    false    229            �           2606    16678    407007 407007_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407007"
    ADD CONSTRAINT "407007_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407007" DROP CONSTRAINT "407007_datetime_key";
       logger            postgres    false    231            �           2606    16676    407007 407007_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407007"
    ADD CONSTRAINT "407007_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407007" DROP CONSTRAINT "407007_pkey";
       logger            postgres    false    231            �           2606    16689    407008 407008_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407008"
    ADD CONSTRAINT "407008_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407008" DROP CONSTRAINT "407008_datetime_key";
       logger            postgres    false    233            �           2606    16687    407008 407008_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407008"
    ADD CONSTRAINT "407008_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407008" DROP CONSTRAINT "407008_pkey";
       logger            postgres    false    233            �           2606    16700    407009 407009_datetime_key 
   CONSTRAINT     ]   ALTER TABLE ONLY logger."407009"
    ADD CONSTRAINT "407009_datetime_key" UNIQUE (datetime);
 H   ALTER TABLE ONLY logger."407009" DROP CONSTRAINT "407009_datetime_key";
       logger            postgres    false    235            �           2606    16698    407009 407009_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY logger."407009"
    ADD CONSTRAINT "407009_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY logger."407009" DROP CONSTRAINT "407009_pkey";
       logger            postgres    false    235            �           2606    16713     DOCUMENTS DOCUMENTS_datetime_key 
   CONSTRAINT     f   ALTER TABLE ONLY messenger."DOCUMENTS"
    ADD CONSTRAINT "DOCUMENTS_datetime_key" UNIQUE (datetime);
 Q   ALTER TABLE ONLY messenger."DOCUMENTS" DROP CONSTRAINT "DOCUMENTS_datetime_key";
    	   messenger            postgres    false    237            �           2606    16711    DOCUMENTS DOCUMENTS_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY messenger."DOCUMENTS"
    ADD CONSTRAINT "DOCUMENTS_pkey" PRIMARY KEY ("ID");
 I   ALTER TABLE ONLY messenger."DOCUMENTS" DROP CONSTRAINT "DOCUMENTS_pkey";
    	   messenger            postgres    false    237               �   x���A�0��W"�l����r̵��B���-B�Z�o�k�\���P�M %#����}�;\F�C+�i��fݨ�ȷ��D��O� �~t�z���I����YE�Ѳ<�x�0'��>��6�      �   �   x���;
�0�:�J��%��U����߆-��z�q�o<�ѣz�%l@� ��it�C=q�6�-h��w�� ���s�-i7��EB�����ϯ}r�:}�E��j�
��10If��N�,�W��Uwp�}f�E      �   �   x���A� ��*��"�!��������n���0�����p�^ш�K�& �H}�"R��YS#˺#_� /��A��G��H����b�*|��J%�|����LAuR�C�ɜJ�/̧�(e]P�I!�?+�C}      �   �   x����� D���
k�ߐ:r���X%�k�e[k���gV���X! >Ww�>�Cq����B�A.���t�\���>���U�ܶV�U	
����xq)�����5I�{S�rm9KNb���5�ɩќ��i��lCߓ�y�Wz�?�lB�      �   �   x���K
�@C��U�Y�L&�Ȳ�?G�!m�.�^d�L���0�0��\���K��h�a�g�Z+j�}�O�m����b���)��C��c���ڦ��
~I�>�8���SjP)V�Y6Sg���Һ]�l�p��y�,O��B      �   �   x���K�0D��*���1��#�����۪��fx!|K�V1+�]@68���z�W�)�Z[�8BD�E�9w�ӱ9Fbܨ{y� �,�[*	���c�����J�&����
v������:sgl�ť��;�      �   ~   x���A
1е����h��9f9�?G�!m�.("(5�7��3�.� f*����S��L\�#b���s���<��ێ�r�XhH���zFP����rۖ�%O�O7�U�jjq_o�̾�~ν5��
�;       �   �   x���A
1е�����������t-�����	�e0V��j6��
ว��+���3b2�3���w�K�cǹJ����	u	u��!ԓ���c>l�.mHwH��AI���hc?���l�;�����<x      �   �   x���M
�@�s�0��G�Y���hҖ�"·j�!���f ۵�S�������)�L��;�%��cT��Ȥ��J�%�d��`����c>?��*M��@��d!-!���5å7|pk�^�=      �      x������ � �     