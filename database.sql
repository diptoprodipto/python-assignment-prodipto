PGDMP                          z            hotelScraper #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16445    hotelScraper    DATABASE     �   CREATE DATABASE "hotelScraper" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "hotelScraper";
                postgres    false            �            1259    16461 
   hotel_data    TABLE     �   CREATE TABLE public.hotel_data (
    id integer NOT NULL,
    title character varying,
    image character varying,
    rating character varying,
    price character varying,
    location character varying,
    amenities text
);
    DROP TABLE public.hotel_data;
       public         heap    postgres    false            �            1259    16459    hotel_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.hotel_data_id_seq;
       public          postgres    false    203            �           0    0    hotel_data_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.hotel_data_id_seq OWNED BY public.hotel_data.id;
          public          postgres    false    202                       2604    16464    hotel_data id    DEFAULT     n   ALTER TABLE ONLY public.hotel_data ALTER COLUMN id SET DEFAULT nextval('public.hotel_data_id_seq'::regclass);
 <   ALTER TABLE public.hotel_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    16461 
   hotel_data 
   TABLE DATA           Z   COPY public.hotel_data (id, title, image, rating, price, location, amenities) FROM stdin;
    public          postgres    false    203   �       �           0    0    hotel_data_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hotel_data_id_seq', 105, true);
          public          postgres    false    202                       2606    16469    hotel_data hotel_data_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.hotel_data
    ADD CONSTRAINT hotel_data_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hotel_data DROP CONSTRAINT hotel_data_pkey;
       public            postgres    false    203            �   6  x��W�n�F]�_1�"�z4�W��p�6��F��1P��#��D�$UE-���7����KzI*�lŒ�n�5s�9��{hU������;F7�4T���ܗ!���������׽�%i��CM�l:"���22��j2	E�˴��J���2)>�/1�J�qQ�dR%���Z�{��F?,���B��l4�_qm_&e1{U���G'�0���ѿ���_L�>���y�ǋ7e�6�o��ס��2y:Y~:�:�.ү�i��pH,%Y0��1e�ZK���x�-sJ��j�50�w&���9�@�a���Ö
Z�:%A;l�sn�cRJ����iׂWLi���)tZ�
�~`�-���� ������:L����b���Vj�A�a���W̶P�&M|o�\�6k��g�):�&u��S���~�D���߅]x�&ıN|��q�il��ڪ�?����c��y�Ӂ��Y�:I�
����Ό�M��������#�����e��N��$�ϳ:���iM�����j�W��u͍z
�E���`n��>���Pջ�p���IK*��#h.mG(�7T���up�=�Xuǣ�rR��b��]� rHt��\&�Q�����8�:�>+�
˩��N�ȓ,�Kt����w�m��TA���.�d7]�0A�pMs���Ì�=��`Vq���J;��fzf�2�l޵ǗE��z"M��/`�a�M�(T@��R;֬����g�q;p����a��p%��+q�^���3�	���V5�]8�`��iV��^���/�)���RǇ�#�� ���Z��
�Zr�������g����8�>|����H�1���&�9�v�L	!�Vg�XÉx'��H�eQL+�eJ�[�Cl`���ݞ��?�P���ry��ڼ_�{�G_&��Uӄ3���LS��L�ﳣ���xI=S�#>��X�%��ζbt6om�簁
۬�h)���8ؓr�Ka�2k��g���/���/Ί�mƉR$ՏF�&���t��[H`ωͶ���Q�h�5���bJt��a����!��$YS�+n�k>�Ǌ	�a�s���b�,����zXg�dͬ��#�����t�3�4)1��^$hk��V�3\�C���z��I�Q�+�v;�$H�d��	R�3
�(�Tw9�ĺ�{��D����L0�ux�����E��cwHd ֟,e���S(.>��fES��>�VH����I°�k��2�������C�Ͳ9D7~՗Kt\��I�Ar��P{U�ўW�A8���3� Z]�tT�ok+�j����������Ͻ���� ��q     