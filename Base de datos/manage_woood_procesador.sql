PGDMP         *                {         
   ManageWood    15.3    15.2 H    w           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            x           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            z           1262    41173 
   ManageWood    DATABASE     �   CREATE DATABASE "ManageWood" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "ManageWood";
                postgres    false                        2615    41174    schema_managewood    SCHEMA     !   CREATE SCHEMA schema_managewood;
    DROP SCHEMA schema_managewood;
                postgres    false                        2615    41285    schema_procesador    SCHEMA     !   CREATE SCHEMA schema_procesador;
    DROP SCHEMA schema_procesador;
                postgres    false            �            1259    41192    ciudad    TABLE     �   CREATE TABLE schema_managewood.ciudad (
    codigociudad integer NOT NULL,
    nombre character varying(50) NOT NULL,
    codigodepartamento integer NOT NULL
);
 %   DROP TABLE schema_managewood.ciudad;
       schema_managewood         heap    postgres    false    5            �            1259    41241    colaborador    TABLE     y  CREATE TABLE schema_managewood.colaborador (
    codigocolabordor integer NOT NULL,
    nombre character varying(50) NOT NULL,
    identificacion character varying(50),
    codigotipoidentificacion integer,
    codigoestadocolaborador integer,
    codigotipocolaborador integer,
    codigosede integer,
    correo character varying(255),
    password character varying(255)
);
 *   DROP TABLE schema_managewood.colaborador;
       schema_managewood         heap    postgres    false    5            �            1259    41180    departamento    TABLE     �   CREATE TABLE schema_managewood.departamento (
    codigodepartamento integer NOT NULL,
    nombre character varying NOT NULL,
    codigopais integer NOT NULL
);
 +   DROP TABLE schema_managewood.departamento;
       schema_managewood         heap    postgres    false    5            �            1259    41202    empresa    TABLE     �   CREATE TABLE schema_managewood.empresa (
    codigoempresa integer NOT NULL,
    nombre character varying(100) NOT NULL,
    nit character varying(20) NOT NULL
);
 &   DROP TABLE schema_managewood.empresa;
       schema_managewood         heap    postgres    false    5            �            1259    41236    estadocolaborador    TABLE     �   CREATE TABLE schema_managewood.estadocolaborador (
    codigoestadocolaborador integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 0   DROP TABLE schema_managewood.estadocolaborador;
       schema_managewood         heap    postgres    false    5            �            1259    41261 
   inventario    TABLE     �   CREATE TABLE schema_managewood.inventario (
    codigoinventario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    codigosede integer
);
 )   DROP TABLE schema_managewood.inventario;
       schema_managewood         heap    postgres    false    5            �            1259    41175    pais    TABLE     t   CREATE TABLE schema_managewood.pais (
    codigopais integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 #   DROP TABLE schema_managewood.pais;
       schema_managewood         heap    postgres    false    5            �            1259    41207    sede    TABLE     �   CREATE TABLE schema_managewood.sede (
    codigosede integer NOT NULL,
    nombre character varying NOT NULL,
    codigoempresa integer NOT NULL,
    codigociudad integer NOT NULL
);
 #   DROP TABLE schema_managewood.sede;
       schema_managewood         heap    postgres    false    5            �            1259    41224    tipocolaborador    TABLE     �   CREATE TABLE schema_managewood.tipocolaborador (
    codigotipocolaborador integer NOT NULL,
    nombre character varying(50) NOT NULL,
    salario integer,
    funcion character varying(500)
);
 .   DROP TABLE schema_managewood.tipocolaborador;
       schema_managewood         heap    postgres    false    5            �            1259    41231    tipoidentificacion    TABLE     �   CREATE TABLE schema_managewood.tipoidentificacion (
    codigotipoidentificacion integer NOT NULL,
    nombre character varying(50)
);
 1   DROP TABLE schema_managewood.tipoidentificacion;
       schema_managewood         heap    postgres    false    5            �            1259    41308    especificacion    TABLE     X  CREATE TABLE schema_procesador.especificacion (
    codigoespecificacion integer NOT NULL,
    nombre character varying(50) NOT NULL,
    "unidad de medida" character varying,
    formato character varying,
    "calibre o anchura" character varying,
    marca character varying,
    acabado character varying,
    material character varying
);
 -   DROP TABLE schema_procesador.especificacion;
       schema_procesador         heap    postgres    false    6            �            1259    41291    existencias    TABLE     �   CREATE TABLE schema_procesador.existencias (
    codigoexistencia integer NOT NULL,
    nombre character varying(50) NOT NULL,
    unidades integer,
    codigoinventario integer,
    codigomateriaprima integer
);
 *   DROP TABLE schema_procesador.existencias;
       schema_procesador         heap    postgres    false    6            �            1259    41286 
   inventario    TABLE     �   CREATE TABLE schema_procesador.inventario (
    codigoinventario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    codigosede integer NOT NULL
);
 )   DROP TABLE schema_procesador.inventario;
       schema_procesador         heap    postgres    false    6            �            1259    41301    materiaprima    TABLE        CREATE TABLE schema_procesador.materiaprima (
    codigomateriaprima integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying,
    valor integer,
    codigoespecificacion integer,
    codigotipomateriaprima integer
);
 +   DROP TABLE schema_procesador.materiaprima;
       schema_procesador         heap    postgres    false    6            �            1259    41315 	   proovedor    TABLE     �   CREATE TABLE schema_procesador.proovedor (
    codigoproovedor integer NOT NULL,
    nombre character varying(50) NOT NULL,
    nit character varying(50) NOT NULL
);
 (   DROP TABLE schema_procesador.proovedor;
       schema_procesador         heap    postgres    false    6            �            1259    41327    proovedorpormateriaprima    TABLE     �   CREATE TABLE schema_procesador.proovedorpormateriaprima (
    codigoproovedorpormateriaprima integer NOT NULL,
    nombre character varying,
    valorporunidad integer,
    codigoproovedor integer,
    codigomateriaprima integer
);
 7   DROP TABLE schema_procesador.proovedorpormateriaprima;
       schema_procesador         heap    postgres    false    6            �            1259    41320    tipomateriaprima    TABLE     �   CREATE TABLE schema_procesador.tipomateriaprima (
    codigotipomateriaprima integer NOT NULL,
    nombre character varying NOT NULL
);
 /   DROP TABLE schema_procesador.tipomateriaprima;
       schema_procesador         heap    postgres    false    6            f          0    41192    ciudad 
   TABLE DATA           U   COPY schema_managewood.ciudad (codigociudad, nombre, codigodepartamento) FROM stdin;
    schema_managewood          postgres    false    217   mc       l          0    41241    colaborador 
   TABLE DATA           �   COPY schema_managewood.colaborador (codigocolabordor, nombre, identificacion, codigotipoidentificacion, codigoestadocolaborador, codigotipocolaborador, codigosede, correo, password) FROM stdin;
    schema_managewood          postgres    false    223   �c       e          0    41180    departamento 
   TABLE DATA           Y   COPY schema_managewood.departamento (codigodepartamento, nombre, codigopais) FROM stdin;
    schema_managewood          postgres    false    216   d       g          0    41202    empresa 
   TABLE DATA           H   COPY schema_managewood.empresa (codigoempresa, nombre, nit) FROM stdin;
    schema_managewood          postgres    false    218   Pd       k          0    41236    estadocolaborador 
   TABLE DATA           W   COPY schema_managewood.estadocolaborador (codigoestadocolaborador, nombre) FROM stdin;
    schema_managewood          postgres    false    222   �d       m          0    41261 
   inventario 
   TABLE DATA           U   COPY schema_managewood.inventario (codigoinventario, nombre, codigosede) FROM stdin;
    schema_managewood          postgres    false    224   �d       d          0    41175    pais 
   TABLE DATA           =   COPY schema_managewood.pais (codigopais, nombre) FROM stdin;
    schema_managewood          postgres    false    215   e       h          0    41207    sede 
   TABLE DATA           Z   COPY schema_managewood.sede (codigosede, nombre, codigoempresa, codigociudad) FROM stdin;
    schema_managewood          postgres    false    219   Oe       i          0    41224    tipocolaborador 
   TABLE DATA           e   COPY schema_managewood.tipocolaborador (codigotipocolaborador, nombre, salario, funcion) FROM stdin;
    schema_managewood          postgres    false    220   �e       j          0    41231    tipoidentificacion 
   TABLE DATA           Y   COPY schema_managewood.tipoidentificacion (codigotipoidentificacion, nombre) FROM stdin;
    schema_managewood          postgres    false    221   vf       q          0    41308    especificacion 
   TABLE DATA           �   COPY schema_procesador.especificacion (codigoespecificacion, nombre, "unidad de medida", formato, "calibre o anchura", marca, acabado, material) FROM stdin;
    schema_procesador          postgres    false    228   �f       o          0    41291    existencias 
   TABLE DATA           z   COPY schema_procesador.existencias (codigoexistencia, nombre, unidades, codigoinventario, codigomateriaprima) FROM stdin;
    schema_procesador          postgres    false    226   Wg       n          0    41286 
   inventario 
   TABLE DATA           U   COPY schema_procesador.inventario (codigoinventario, nombre, codigosede) FROM stdin;
    schema_procesador          postgres    false    225   �g       p          0    41301    materiaprima 
   TABLE DATA           �   COPY schema_procesador.materiaprima (codigomateriaprima, nombre, descripcion, valor, codigoespecificacion, codigotipomateriaprima) FROM stdin;
    schema_procesador          postgres    false    227   �g       r          0    41315 	   proovedor 
   TABLE DATA           L   COPY schema_procesador.proovedor (codigoproovedor, nombre, nit) FROM stdin;
    schema_procesador          postgres    false    229   h       t          0    41327    proovedorpormateriaprima 
   TABLE DATA           �   COPY schema_procesador.proovedorpormateriaprima (codigoproovedorpormateriaprima, nombre, valorporunidad, codigoproovedor, codigomateriaprima) FROM stdin;
    schema_procesador          postgres    false    231   ch       s          0    41320    tipomateriaprima 
   TABLE DATA           U   COPY schema_procesador.tipomateriaprima (codigotipomateriaprima, nombre) FROM stdin;
    schema_procesador          postgres    false    230   �h       �           2606    41196    ciudad PK_ciudad 
   CONSTRAINT     e   ALTER TABLE ONLY schema_managewood.ciudad
    ADD CONSTRAINT "PK_ciudad" PRIMARY KEY (codigociudad);
 G   ALTER TABLE ONLY schema_managewood.ciudad DROP CONSTRAINT "PK_ciudad";
       schema_managewood            postgres    false    217            �           2606    41245    colaborador PK_colaborador 
   CONSTRAINT     s   ALTER TABLE ONLY schema_managewood.colaborador
    ADD CONSTRAINT "PK_colaborador" PRIMARY KEY (codigocolabordor);
 Q   ALTER TABLE ONLY schema_managewood.colaborador DROP CONSTRAINT "PK_colaborador";
       schema_managewood            postgres    false    223            �           2606    41186    departamento PK_departamento 
   CONSTRAINT     w   ALTER TABLE ONLY schema_managewood.departamento
    ADD CONSTRAINT "PK_departamento" PRIMARY KEY (codigodepartamento);
 S   ALTER TABLE ONLY schema_managewood.departamento DROP CONSTRAINT "PK_departamento";
       schema_managewood            postgres    false    216            �           2606    41206    empresa PK_empresa 
   CONSTRAINT     h   ALTER TABLE ONLY schema_managewood.empresa
    ADD CONSTRAINT "PK_empresa" PRIMARY KEY (codigoempresa);
 I   ALTER TABLE ONLY schema_managewood.empresa DROP CONSTRAINT "PK_empresa";
       schema_managewood            postgres    false    218            �           2606    41240 &   estadocolaborador PK_estadocolaborador 
   CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.estadocolaborador
    ADD CONSTRAINT "PK_estadocolaborador" PRIMARY KEY (codigoestadocolaborador);
 ]   ALTER TABLE ONLY schema_managewood.estadocolaborador DROP CONSTRAINT "PK_estadocolaborador";
       schema_managewood            postgres    false    222            �           2606    41265    inventario PK_inventario 
   CONSTRAINT     q   ALTER TABLE ONLY schema_managewood.inventario
    ADD CONSTRAINT "PK_inventario" PRIMARY KEY (codigoinventario);
 O   ALTER TABLE ONLY schema_managewood.inventario DROP CONSTRAINT "PK_inventario";
       schema_managewood            postgres    false    224            �           2606    41213    sede PK_sede 
   CONSTRAINT     _   ALTER TABLE ONLY schema_managewood.sede
    ADD CONSTRAINT "PK_sede" PRIMARY KEY (codigosede);
 C   ALTER TABLE ONLY schema_managewood.sede DROP CONSTRAINT "PK_sede";
       schema_managewood            postgres    false    219            �           2606    41230 "   tipocolaborador PK_tipocolaborador 
   CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.tipocolaborador
    ADD CONSTRAINT "PK_tipocolaborador" PRIMARY KEY (codigotipocolaborador);
 Y   ALTER TABLE ONLY schema_managewood.tipocolaborador DROP CONSTRAINT "PK_tipocolaborador";
       schema_managewood            postgres    false    220            �           2606    41235 (   tipoidentificacion PK_tipoidentificacion 
   CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.tipoidentificacion
    ADD CONSTRAINT "PK_tipoidentificacion" PRIMARY KEY (codigotipoidentificacion);
 _   ALTER TABLE ONLY schema_managewood.tipoidentificacion DROP CONSTRAINT "PK_tipoidentificacion";
       schema_managewood            postgres    false    221            �           2606    41179    pais pais_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY schema_managewood.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (codigopais);
 C   ALTER TABLE ONLY schema_managewood.pais DROP CONSTRAINT pais_pkey;
       schema_managewood            postgres    false    215            �           2606    41295    existencias PK_existencias 
   CONSTRAINT     s   ALTER TABLE ONLY schema_procesador.existencias
    ADD CONSTRAINT "PK_existencias" PRIMARY KEY (codigoexistencia);
 Q   ALTER TABLE ONLY schema_procesador.existencias DROP CONSTRAINT "PK_existencias";
       schema_procesador            postgres    false    226            �           2606    41290    inventario PK_inventario 
   CONSTRAINT     q   ALTER TABLE ONLY schema_procesador.inventario
    ADD CONSTRAINT "PK_inventario" PRIMARY KEY (codigoinventario);
 O   ALTER TABLE ONLY schema_procesador.inventario DROP CONSTRAINT "PK_inventario";
       schema_procesador            postgres    false    225            �           2606    41333 4   proovedorpormateriaprima PK_proovedorpormateriaprima 
   CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.proovedorpormateriaprima
    ADD CONSTRAINT "PK_proovedorpormateriaprima" PRIMARY KEY (codigoproovedorpormateriaprima);
 k   ALTER TABLE ONLY schema_procesador.proovedorpormateriaprima DROP CONSTRAINT "PK_proovedorpormateriaprima";
       schema_procesador            postgres    false    231            �           2606    41314 "   especificacion especificacion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY schema_procesador.especificacion
    ADD CONSTRAINT especificacion_pkey PRIMARY KEY (codigoespecificacion);
 W   ALTER TABLE ONLY schema_procesador.especificacion DROP CONSTRAINT especificacion_pkey;
       schema_procesador            postgres    false    228            �           2606    41307    materiaprima materiaprima_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY schema_procesador.materiaprima
    ADD CONSTRAINT materiaprima_pkey PRIMARY KEY (codigomateriaprima);
 S   ALTER TABLE ONLY schema_procesador.materiaprima DROP CONSTRAINT materiaprima_pkey;
       schema_procesador            postgres    false    227            �           2606    41319    proovedor proovedor_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY schema_procesador.proovedor
    ADD CONSTRAINT proovedor_pkey PRIMARY KEY (codigoproovedor);
 M   ALTER TABLE ONLY schema_procesador.proovedor DROP CONSTRAINT proovedor_pkey;
       schema_procesador            postgres    false    229            �           2606    41326 &   tipomateriaprima tipomateriaprima_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.tipomateriaprima
    ADD CONSTRAINT tipomateriaprima_pkey PRIMARY KEY (codigotipomateriaprima);
 [   ALTER TABLE ONLY schema_procesador.tipomateriaprima DROP CONSTRAINT tipomateriaprima_pkey;
       schema_procesador            postgres    false    230            �           2606    41219    sede FK_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.sede
    ADD CONSTRAINT "FK_ciudad" FOREIGN KEY (codigociudad) REFERENCES schema_managewood.ciudad(codigociudad);
 E   ALTER TABLE ONLY schema_managewood.sede DROP CONSTRAINT "FK_ciudad";
       schema_managewood          postgres    false    217    219    3242            �           2606    41197    ciudad FK_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.ciudad
    ADD CONSTRAINT "FK_departamento" FOREIGN KEY (codigodepartamento) REFERENCES schema_managewood.departamento(codigodepartamento);
 M   ALTER TABLE ONLY schema_managewood.ciudad DROP CONSTRAINT "FK_departamento";
       schema_managewood          postgres    false    217    3240    216            �           2606    41214    sede FK_empresa    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.sede
    ADD CONSTRAINT "FK_empresa" FOREIGN KEY (codigoempresa) REFERENCES schema_managewood.empresa(codigoempresa);
 F   ALTER TABLE ONLY schema_managewood.sede DROP CONSTRAINT "FK_empresa";
       schema_managewood          postgres    false    218    3244    219            �           2606    41251     colaborador FK_estadocolaborador    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.colaborador
    ADD CONSTRAINT "FK_estadocolaborador" FOREIGN KEY (codigoestadocolaborador) REFERENCES schema_managewood.estadocolaborador(codigoestadocolaborador);
 W   ALTER TABLE ONLY schema_managewood.colaborador DROP CONSTRAINT "FK_estadocolaborador";
       schema_managewood          postgres    false    223    3252    222            �           2606    41187    departamento FK_pais    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.departamento
    ADD CONSTRAINT "FK_pais" FOREIGN KEY (codigopais) REFERENCES schema_managewood.pais(codigopais);
 K   ALTER TABLE ONLY schema_managewood.departamento DROP CONSTRAINT "FK_pais";
       schema_managewood          postgres    false    216    3238    215            �           2606    41266    inventario FK_sede    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.inventario
    ADD CONSTRAINT "FK_sede" FOREIGN KEY (codigosede) REFERENCES schema_managewood.sede(codigosede);
 I   ALTER TABLE ONLY schema_managewood.inventario DROP CONSTRAINT "FK_sede";
       schema_managewood          postgres    false    3246    219    224            �           2606    41271    colaborador FK_sede    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.colaborador
    ADD CONSTRAINT "FK_sede" FOREIGN KEY (codigosede) REFERENCES schema_managewood.sede(codigosede) NOT VALID;
 J   ALTER TABLE ONLY schema_managewood.colaborador DROP CONSTRAINT "FK_sede";
       schema_managewood          postgres    false    3246    219    223            �           2606    41256    colaborador FK_tipocolaborador    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.colaborador
    ADD CONSTRAINT "FK_tipocolaborador" FOREIGN KEY (codigotipocolaborador) REFERENCES schema_managewood.tipocolaborador(codigotipocolaborador);
 U   ALTER TABLE ONLY schema_managewood.colaborador DROP CONSTRAINT "FK_tipocolaborador";
       schema_managewood          postgres    false    3248    220    223            �           2606    41246 !   colaborador FK_tipoidentificacion    FK CONSTRAINT     �   ALTER TABLE ONLY schema_managewood.colaborador
    ADD CONSTRAINT "FK_tipoidentificacion" FOREIGN KEY (codigotipoidentificacion) REFERENCES schema_managewood.tipoidentificacion(codigotipoidentificacion);
 X   ALTER TABLE ONLY schema_managewood.colaborador DROP CONSTRAINT "FK_tipoidentificacion";
       schema_managewood          postgres    false    223    3250    221            �           2606    41344    materiaprima FK_especificacion    FK CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.materiaprima
    ADD CONSTRAINT "FK_especificacion" FOREIGN KEY (codigoespecificacion) REFERENCES schema_procesador.especificacion(codigoespecificacion) NOT VALID;
 U   ALTER TABLE ONLY schema_procesador.materiaprima DROP CONSTRAINT "FK_especificacion";
       schema_procesador          postgres    false    228    227    3264            �           2606    41296    existencias FK_inventario    FK CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.existencias
    ADD CONSTRAINT "FK_inventario" FOREIGN KEY (codigoinventario) REFERENCES schema_procesador.inventario(codigoinventario);
 P   ALTER TABLE ONLY schema_procesador.existencias DROP CONSTRAINT "FK_inventario";
       schema_procesador          postgres    false    225    226    3258            �           2606    41339 (   proovedorpormateriaprima FK_materiaprima    FK CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.proovedorpormateriaprima
    ADD CONSTRAINT "FK_materiaprima" FOREIGN KEY (codigomateriaprima) REFERENCES schema_procesador.materiaprima(codigomateriaprima) NOT VALID;
 _   ALTER TABLE ONLY schema_procesador.proovedorpormateriaprima DROP CONSTRAINT "FK_materiaprima";
       schema_procesador          postgres    false    3262    227    231            �           2606    41354    existencias FK_materiaprima    FK CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.existencias
    ADD CONSTRAINT "FK_materiaprima" FOREIGN KEY (codigomateriaprima) REFERENCES schema_procesador.materiaprima(codigomateriaprima) NOT VALID;
 R   ALTER TABLE ONLY schema_procesador.existencias DROP CONSTRAINT "FK_materiaprima";
       schema_procesador          postgres    false    227    226    3262            �           2606    41334 %   proovedorpormateriaprima FK_proovedor    FK CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.proovedorpormateriaprima
    ADD CONSTRAINT "FK_proovedor" FOREIGN KEY (codigoproovedor) REFERENCES schema_procesador.proovedor(codigoproovedor);
 \   ALTER TABLE ONLY schema_procesador.proovedorpormateriaprima DROP CONSTRAINT "FK_proovedor";
       schema_procesador          postgres    false    231    229    3266            �           2606    41349     materiaprima FK_tipomateriaprima    FK CONSTRAINT     �   ALTER TABLE ONLY schema_procesador.materiaprima
    ADD CONSTRAINT "FK_tipomateriaprima" FOREIGN KEY (codigotipomateriaprima) REFERENCES schema_procesador.tipomateriaprima(codigotipomateriaprima) NOT VALID;
 W   ALTER TABLE ONLY schema_procesador.materiaprima DROP CONSTRAINT "FK_tipomateriaprima";
       schema_procesador          postgres    false    227    230    3268            f   2   x�3����KM/��4�2�t�O�/I�4�2��M,�����IJ��qqq ^a      l   M   x�3��J-������4405�4��? �2��*M�S��/N�465s�4J!Dژ�73�45�����,������ ��      e   4   x�3�t�+��/,�L�4�2�t.�K��K�M,J	s:��d�%�1z\\\ b�f      g   ;   x�3�t�O��K,VPSpIM�/JL���K-VN�S��L��I,�4�411700����� ���      k   $   x�3�t��+)J,IL��2�tI-.HM��c���� ��      m   2   x�3���+K�+I,��W���KM/��4�2B��y�99��F\1z\\\ �
      d   .   x�3�t����M�L�2�K�K�*M�I�2�tM.ML�/����� �M      h   0   x�3�NMIU���KM/��4�4�2���&e�e��$��b���� 7�<      i   �   x�MPAj1<ۯ�B�����'��؂6�����W�O��*�CZ_�g������J5���x��V�V�r�
�.x�_�L
!qU�^h�d]PaL�����puy�+�UÊ�td+���Nb�	������	O�O�(ݿ3KXN%��4����"B�f���ф�[��(��<P�[d�3q�R����(I!`@1Ro���c����|      j   9   x�3�tNM)�I�2�I,�J-ITHIU�LI�+�LIL�2�H,N,�/*I����� ��      q   �   x�=̱�0F���)�C+WY\]~�!7����1>�eq;��g��S�>
c�#(F"�4����$_��I�݇Rt|V��W(Ř�F��)�#J#o2�9���a�45ٶb{��|�����zͅ��y2�� ��1]      o   1   x�3�t�,NL/JT(N��THL�OILI�44�4�4�2�)k������ ~��      n   2   x�3���+K�+I,��W���KM/��4�2B��y�99��F\1z\\\ �
      p   .   x�3�t�,NL/JT(N��THL�OILI��4600�4�4����� �|	�      r   ;   x�3��H-*J�J-V�T�M,�445BCS.#N����"�����NKsS�=... ��      t   6   x�3�t�,NL/JT(N��THL�OILI�4450�4�4�2�!o�7���qqq ���      s   !   x�3��H-*J�J�2��MLIM�/����� ^J�     