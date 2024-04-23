PGDMP                      |            eco    16.2    16.2 @    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    17165    eco    DATABASE     z   CREATE DATABASE eco WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE eco;
                postgres    false            �            1259    17326    cambio    TABLE     <   CREATE TABLE public.cambio (
    vl_brl double precision
);
    DROP TABLE public.cambio;
       public         heap    postgres    false            �            1259    17175 	   materiais    TABLE     �   CREATE TABLE public.materiais (
    id_material integer NOT NULL,
    nm_material character varying(255),
    vl_eco double precision,
    id_residuo integer,
    sg_medida character varying(255),
    fl_inativo boolean DEFAULT false
);
    DROP TABLE public.materiais;
       public         heap    postgres    false            �            1259    17174    materiais_id_material_seq    SEQUENCE     �   ALTER TABLE public.materiais ALTER COLUMN id_material ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.materiais_id_material_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    17371    produtos    TABLE     �   CREATE TABLE public.produtos (
    id_produto integer NOT NULL,
    nm_produto character varying(255),
    ds_produto character varying(255),
    nm_imagem character varying(255),
    vl_eco double precision,
    qt_produto integer
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    17370    produtos_id_produto_seq    SEQUENCE     �   ALTER TABLE public.produtos ALTER COLUMN id_produto ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.produtos_id_produto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    17306    recebimentos    TABLE       CREATE TABLE public.recebimentos (
    id_recebimento integer NOT NULL,
    id_solicitacao integer,
    id_usuario integer,
    id_funcionario integer,
    vl_ecorecebido double precision,
    vl_realrecebido double precision,
    dt_recebimento timestamp without time zone
);
     DROP TABLE public.recebimentos;
       public         heap    postgres    false            �            1259    17305    recebimentos_id_recebimento_seq    SEQUENCE     �   ALTER TABLE public.recebimentos ALTER COLUMN id_recebimento ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.recebimentos_id_recebimento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            �            1259    17167    residuos    TABLE     �   CREATE TABLE public.residuos (
    id_residuo integer NOT NULL,
    nm_residuo character varying(255),
    fl_inativo boolean DEFAULT false
);
    DROP TABLE public.residuos;
       public         heap    postgres    false            �            1259    17166    residuos_id_residuo_seq    SEQUENCE     �   ALTER TABLE public.residuos ALTER COLUMN id_residuo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.residuos_id_residuo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    17274    sessoes    TABLE     �   CREATE TABLE public.sessoes (
    id_sessao integer NOT NULL,
    id_usuario integer,
    dt_expiracao timestamp without time zone,
    nm_chave character varying(255)
);
    DROP TABLE public.sessoes;
       public         heap    postgres    false            �            1259    17273    sessoes_id_sessao_seq    SEQUENCE     �   ALTER TABLE public.sessoes ALTER COLUMN id_sessao ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sessoes_id_sessao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    17198    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nm_email character varying(255),
    nm_usuario character varying(255),
    nm_senha character varying(255),
    qt_ecosaldo double precision,
    nu_cargo integer
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    17389    usuarios_compras    TABLE     �   CREATE TABLE public.usuarios_compras (
    id_compra integer NOT NULL,
    id_usuario integer,
    id_produto integer,
    qt_ecovalor double precision
);
 $   DROP TABLE public.usuarios_compras;
       public         heap    postgres    false            �            1259    17388    usuarios_compras_id_compra_seq    SEQUENCE     �   ALTER TABLE public.usuarios_compras ALTER COLUMN id_compra ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuarios_compras_id_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    17208    usuarios_enderecos    TABLE     �  CREATE TABLE public.usuarios_enderecos (
    id_endereco integer NOT NULL,
    id_usuario integer,
    nm_rua character varying(255),
    nm_bairro character varying(255),
    nm_cidade character varying(255),
    nm_estado character varying(255),
    nu_casa integer,
    nm_complemento character varying(255),
    nm_cep character varying(255),
    fl_desativado boolean DEFAULT false
);
 &   DROP TABLE public.usuarios_enderecos;
       public         heap    postgres    false            �            1259    17207 "   usuarios_enderecos_id_endereco_seq    SEQUENCE     �   ALTER TABLE public.usuarios_enderecos ALTER COLUMN id_endereco ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuarios_enderecos_id_endereco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    17197    usuarios_id_usuario_seq    SEQUENCE     �   ALTER TABLE public.usuarios ALTER COLUMN id_usuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    17237    usuarios_solicitacoes    TABLE       CREATE TABLE public.usuarios_solicitacoes (
    id_solicitacao integer NOT NULL,
    id_material integer,
    id_usuario integer,
    qt_material double precision,
    vl_status integer,
    dt_solicitacao timestamp without time zone,
    nm_codigo character varying
);
 )   DROP TABLE public.usuarios_solicitacoes;
       public         heap    postgres    false            �            1259    17236 (   usuarios_solicitacoes_id_solicitacao_seq    SEQUENCE     �   ALTER TABLE public.usuarios_solicitacoes ALTER COLUMN id_solicitacao ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuarios_solicitacoes_id_solicitacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            >          0    17326    cambio 
   TABLE DATA           (   COPY public.cambio (vl_brl) FROM stdin;
    public          postgres    false    229   S       3          0    17175 	   materiais 
   TABLE DATA           h   COPY public.materiais (id_material, nm_material, vl_eco, id_residuo, sg_medida, fl_inativo) FROM stdin;
    public          postgres    false    218   7S       @          0    17371    produtos 
   TABLE DATA           e   COPY public.produtos (id_produto, nm_produto, ds_produto, nm_imagem, vl_eco, qt_produto) FROM stdin;
    public          postgres    false    231   �T       =          0    17306    recebimentos 
   TABLE DATA           �   COPY public.recebimentos (id_recebimento, id_solicitacao, id_usuario, id_funcionario, vl_ecorecebido, vl_realrecebido, dt_recebimento) FROM stdin;
    public          postgres    false    228   �U       1          0    17167    residuos 
   TABLE DATA           F   COPY public.residuos (id_residuo, nm_residuo, fl_inativo) FROM stdin;
    public          postgres    false    216   HV       ;          0    17274    sessoes 
   TABLE DATA           P   COPY public.sessoes (id_sessao, id_usuario, dt_expiracao, nm_chave) FROM stdin;
    public          postgres    false    226   W       5          0    17198    usuarios 
   TABLE DATA           e   COPY public.usuarios (id_usuario, nm_email, nm_usuario, nm_senha, qt_ecosaldo, nu_cargo) FROM stdin;
    public          postgres    false    220   �X       B          0    17389    usuarios_compras 
   TABLE DATA           Z   COPY public.usuarios_compras (id_compra, id_usuario, id_produto, qt_ecovalor) FROM stdin;
    public          postgres    false    233   gY       7          0    17208    usuarios_enderecos 
   TABLE DATA           �   COPY public.usuarios_enderecos (id_endereco, id_usuario, nm_rua, nm_bairro, nm_cidade, nm_estado, nu_casa, nm_complemento, nm_cep, fl_desativado) FROM stdin;
    public          postgres    false    222   Z       9          0    17237    usuarios_solicitacoes 
   TABLE DATA           �   COPY public.usuarios_solicitacoes (id_solicitacao, id_material, id_usuario, qt_material, vl_status, dt_solicitacao, nm_codigo) FROM stdin;
    public          postgres    false    224   S[       I           0    0    materiais_id_material_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.materiais_id_material_seq', 23, true);
          public          postgres    false    217            J           0    0    produtos_id_produto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produtos_id_produto_seq', 7, true);
          public          postgres    false    230            K           0    0    recebimentos_id_recebimento_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.recebimentos_id_recebimento_seq', 44, true);
          public          postgres    false    227            L           0    0    residuos_id_residuo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.residuos_id_residuo_seq', 43, true);
          public          postgres    false    215            M           0    0    sessoes_id_sessao_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sessoes_id_sessao_seq', 15, true);
          public          postgres    false    225            N           0    0    usuarios_compras_id_compra_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.usuarios_compras_id_compra_seq', 53, true);
          public          postgres    false    232            O           0    0 "   usuarios_enderecos_id_endereco_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.usuarios_enderecos_id_endereco_seq', 15, true);
          public          postgres    false    221            P           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 11, true);
          public          postgres    false    219            Q           0    0 (   usuarios_solicitacoes_id_solicitacao_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.usuarios_solicitacoes_id_solicitacao_seq', 68, true);
          public          postgres    false    223            �           2606    17183 #   materiais materiais_nm_material_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_nm_material_key UNIQUE (nm_material);
 M   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_nm_material_key;
       public            postgres    false    218            �           2606    17181    materiais materiais_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_pkey PRIMARY KEY (id_material);
 B   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_pkey;
       public            postgres    false    218            �           2606    17377    produtos produtos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id_produto);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    231            �           2606    17310    recebimentos recebimentos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT recebimentos_pkey PRIMARY KEY (id_recebimento);
 H   ALTER TABLE ONLY public.recebimentos DROP CONSTRAINT recebimentos_pkey;
       public            postgres    false    228            �           2606    17173     residuos residuos_nm_residuo_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.residuos
    ADD CONSTRAINT residuos_nm_residuo_key UNIQUE (nm_residuo);
 J   ALTER TABLE ONLY public.residuos DROP CONSTRAINT residuos_nm_residuo_key;
       public            postgres    false    216            �           2606    17171    residuos residuos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.residuos
    ADD CONSTRAINT residuos_pkey PRIMARY KEY (id_residuo);
 @   ALTER TABLE ONLY public.residuos DROP CONSTRAINT residuos_pkey;
       public            postgres    false    216            �           2606    17278    sessoes sessoes_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.sessoes
    ADD CONSTRAINT sessoes_pkey PRIMARY KEY (id_sessao);
 >   ALTER TABLE ONLY public.sessoes DROP CONSTRAINT sessoes_pkey;
       public            postgres    false    226            �           2606    17393 &   usuarios_compras usuarios_compras_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.usuarios_compras
    ADD CONSTRAINT usuarios_compras_pkey PRIMARY KEY (id_compra);
 P   ALTER TABLE ONLY public.usuarios_compras DROP CONSTRAINT usuarios_compras_pkey;
       public            postgres    false    233            �           2606    17214 *   usuarios_enderecos usuarios_enderecos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.usuarios_enderecos
    ADD CONSTRAINT usuarios_enderecos_pkey PRIMARY KEY (id_endereco);
 T   ALTER TABLE ONLY public.usuarios_enderecos DROP CONSTRAINT usuarios_enderecos_pkey;
       public            postgres    false    222            �           2606    17206    usuarios usuarios_nm_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nm_email_key UNIQUE (nm_email);
 H   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_nm_email_key;
       public            postgres    false    220            �           2606    17204    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    220            �           2606    17241 0   usuarios_solicitacoes usuarios_solicitacoes_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.usuarios_solicitacoes
    ADD CONSTRAINT usuarios_solicitacoes_pkey PRIMARY KEY (id_solicitacao);
 Z   ALTER TABLE ONLY public.usuarios_solicitacoes DROP CONSTRAINT usuarios_solicitacoes_pkey;
       public            postgres    false    224            �           2606    17184 #   materiais materiais_id_residuo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_id_residuo_fkey FOREIGN KEY (id_residuo) REFERENCES public.residuos(id_residuo);
 M   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_id_residuo_fkey;
       public          postgres    false    4738    218    216            �           2606    17321 -   recebimentos recebimentos_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT recebimentos_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.usuarios(id_usuario);
 W   ALTER TABLE ONLY public.recebimentos DROP CONSTRAINT recebimentos_id_funcionario_fkey;
       public          postgres    false    220    228    4746            �           2606    17311 -   recebimentos recebimentos_id_solicitacao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT recebimentos_id_solicitacao_fkey FOREIGN KEY (id_solicitacao) REFERENCES public.usuarios_solicitacoes(id_solicitacao);
 W   ALTER TABLE ONLY public.recebimentos DROP CONSTRAINT recebimentos_id_solicitacao_fkey;
       public          postgres    false    224    4750    228            �           2606    17316 )   recebimentos recebimentos_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT recebimentos_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 S   ALTER TABLE ONLY public.recebimentos DROP CONSTRAINT recebimentos_id_usuario_fkey;
       public          postgres    false    220    4746    228            �           2606    17279    sessoes sessoes_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessoes
    ADD CONSTRAINT sessoes_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 I   ALTER TABLE ONLY public.sessoes DROP CONSTRAINT sessoes_id_usuario_fkey;
       public          postgres    false    220    226    4746            �           2606    17399 1   usuarios_compras usuarios_compras_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_compras
    ADD CONSTRAINT usuarios_compras_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES public.produtos(id_produto);
 [   ALTER TABLE ONLY public.usuarios_compras DROP CONSTRAINT usuarios_compras_id_produto_fkey;
       public          postgres    false    233    231    4756            �           2606    17394 1   usuarios_compras usuarios_compras_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_compras
    ADD CONSTRAINT usuarios_compras_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 [   ALTER TABLE ONLY public.usuarios_compras DROP CONSTRAINT usuarios_compras_id_usuario_fkey;
       public          postgres    false    4746    220    233            �           2606    17215 5   usuarios_enderecos usuarios_enderecos_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_enderecos
    ADD CONSTRAINT usuarios_enderecos_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 _   ALTER TABLE ONLY public.usuarios_enderecos DROP CONSTRAINT usuarios_enderecos_id_usuario_fkey;
       public          postgres    false    4746    222    220            �           2606    17242 <   usuarios_solicitacoes usuarios_solicitacoes_id_material_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_solicitacoes
    ADD CONSTRAINT usuarios_solicitacoes_id_material_fkey FOREIGN KEY (id_material) REFERENCES public.materiais(id_material);
 f   ALTER TABLE ONLY public.usuarios_solicitacoes DROP CONSTRAINT usuarios_solicitacoes_id_material_fkey;
       public          postgres    false    218    224    4742            �           2606    17247 ;   usuarios_solicitacoes usuarios_solicitacoes_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_solicitacoes
    ADD CONSTRAINT usuarios_solicitacoes_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 e   ALTER TABLE ONLY public.usuarios_solicitacoes DROP CONSTRAINT usuarios_solicitacoes_id_usuario_fkey;
       public          postgres    false    220    224    4746            >      x�3ѳ������ 
�      3   a  x�m�MN�0��/��	P�$m��_*!@��L�5��8�O��#�bL�(���g��(ܱ��B��-6��#}�*�pT�g!��>���f>Vݱ� �z�<S���D�YJ�@��҄�U��j��)�Q]��8ǈ��,qK��f���RD���b���CT�f�º�>���5��:B�"e�;�-5�C3�xhԄW�)����_�$�b2�X�7�R>Qi��=p����ɓ����'œi<�.yoK��$���I��/Z��m���j���B&�$��V(��˩�1����1h����;�C�j�'������DS:}}㍱�$Î�|Q�9;Y�9�,B6�ѷ� ~ )e�       @   F  x�MQ�n�0<;_�So~ā�*B�=��*ԋ�ݐ4~`_�+��zF3�`����ހO�R>4���lFQVL��|<&{��Ѷ�	�3�ȃ��;�:�� '�d�Э���t�>����#u�*dq�����¸�?��RLF8H�2�z,Hwӡ$@��gt�򠗚��R���U>�P�^+*�J���s��˵�����[緌m6]c�T�.��\7��^����6�ˤ�6Փ4�������q��{~WD���V�f2��'�B����Q6.�E�o�5�J���A����L3�<?�~�����@�|�$I� 6��      =   :   x��Q� ��T��WB��!�ױ;	�0q�D+?�E���z&���t�.�͈���	K      1   '  x�eQ]n�0~6��	��
'�^��a�S_L�������n��(\lvH�i5
����b��=�֭W��?�	{7M�;2R��E%���. �<�i�(��`/�c����6�!��N�J�@�ᙽ����#��2�M�u�U�i���I�8r ��eY2Vp�7Nh8ߌ�|��`�!��e��HƠYH��)|48��ȴ���B�?��*�i�����\?\H�dΩbC�-��~BGt�/��F���~��2`z�zçO���4�u&p������Ѥ55���P`��Z��f���CQ��>�e      ;     x���͍!��PE��{j�0erXes	Y\>=K�v�A@�y�=���'����#c����NU�/�^6�cDl'��x�'� �SgǺ�y0������v9��e�
��3g�ι�=��X����OFp
�+@��8�`�1����Sf8p�{L�z�!}Ώ�6�d��]PY)|�tåFH�ϼ���o;]srW14L��j
i^P������	�Thqm�2Z�P�ڠ�_y�0�}��c��3��L17�5(��~J)�7���      5   �   x���A��0���a$�Ŧ;g3'��lb��T�z�w�����.�|_� G�q|ua[��ՑB�4#N�xB��$�d�@@E���ҕ�B���'�ie�t��l��si[��|H�|�ۿ�e"�B�P����޲��b7�VT�<$uj�Q��qI���r���q�[$F��b�����`:S���R�놃�      B   �   x�M���0C�o{�¤�<v��s4nZ�|�&`�Q���1��M�+eu���������:�*%Z�HH����f4��hF3�ьf4�Z���1#�I�\[��=��r���p>9��u���ʨ�Ɇ��l�;������~O���~��?m�O      7   3  x����N�@��ӧ��уd�Z���b!`8q�*k�]��������S��H0�`�4��a�����}xT�T'~	���=1�0�g�4a�pH��:2��9�U�����:� ���s��hjL��D9.5C��bK��$�M~ACa��4_�
��:�->�`D�6�yl�]m��G"����V^�=^�8��2	E�A�?�\�����u��oIy��X��,	q-d�dī��d�'�@ʖ|ؒ�����3/-��Ṥ~�<]����+ޘLq��k{�oZr�;�N_�&      9   Z  x����R1���S�=ծ^��4��8,��B� �5��
ii,cf�\�`�ߋ�%ή8r��a� ��@:J��΋V��FXJ��A����F�X���q������iB0�@i��t� ��%��{��B��>fr�������؇���a*v��S�� I.ה�<�%�Ȳ�N��F�C��>cjO#�#ں����<���JL���B�}H��_��G���}���E�P�>Nǯ1���x���^Ex��
�ȭX�nls��]�2��|�uxX��u����*�y��c�.���w�&�:�ᴽ���D� �ci��`�n�����i����=���q����Ўl�;C�4 Ղbc�7|�C5ڕs�����k ��<���Uq�|��ly���B�U>���-��ܪ	�x��7	n��V�
�HTt��H�
�0z��D��e&�Gq�vr/�c`������TZ�&�3�)P�V@x+`.�
�)������Ev��)!:.Yʣ4�e�Ű7
I���
��:~o�4p�~���|�����מ:�Bt�#�Nớzb�3��,��O��	�_�\\{	ÉG�?@B{���i��a+^7���]�\g     