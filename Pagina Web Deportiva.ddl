CREATE TABLE administrador (
    identificacion   NUMBER NOT NULL,
    nombre           VARCHAR2(100) NOT NULL,
    correo           VARCHAR2(100) NOT NULL,
    contrasena       VARCHAR2(50) NOT NULL
);

ALTER TABLE administrador ADD CONSTRAINT administrador_pk PRIMARY KEY ( identificacion );

CREATE TABLE entrenamiento (
    numero                   NUMBER NOT NULL,
    usuario_identificacion   NUMBER NOT NULL,
    lugar_codigo             NUMBER NOT NULL,
    descripcion              VARCHAR2(1000) NOT NULL,
    fecha                    DATE NOT NULL
);

ALTER TABLE entrenamiento ADD CONSTRAINT entrenamiento_pk PRIMARY KEY ( numero );

CREATE TABLE evento (
    codigo_evento                  NUMBER NOT NULL,
    fecha_programada               DATE NOT NULL,
    duracion                       NUMBER NOT NULL CHECK (duracion between 1 and 10),
    estado                         VARCHAR2(40) NOT NULL,
    lugar_codigo                   NUMBER NOT NULL,
    usuario_identificacion         NUMBER NOT NULL,
    administrador_identificacion   NUMBER
);

ALTER TABLE evento ADD CONSTRAINT evento_pk PRIMARY KEY ( codigo_evento );

CREATE TABLE lugar (
    codigo        NUMBER NOT NULL,
    nombre        VARCHAR2(100) NOT NULL,
    ciudad        VARCHAR2(100) NOT NULL,
    direccion     VARCHAR2(100),
    descripcion   VARCHAR2(1000)
);

ALTER TABLE lugar ADD CONSTRAINT lugar_pk PRIMARY KEY ( codigo );

CREATE TABLE meta (
    codigo                   NUMBER NOT NULL,
    descripcion              VARCHAR2(1000) NOT NULL,
    usuario_identificacion   NUMBER NOT NULL
);

ALTER TABLE meta ADD CONSTRAINT meta_pk PRIMARY KEY ( codigo );

CREATE TABLE premio (
    evento_codigo            NUMBER NOT NULL,
    descripcion              VARCHAR2(1000) NOT NULL,
    usuario_identificacion   NUMBER NOT NULL,
    titulo_obtenido          VARCHAR2(100) NOT NULL
);

ALTER TABLE premio ADD CONSTRAINT premio_pk PRIMARY KEY ( evento_codigo,
                                                          usuario_identificacion );
CREATE TABLE rutina (
    codigo                   NUMBER NOT NULL,
    descripcion              VARCHAR2(1000) NOT NULL,
    usuario_identificacion   NUMBER NOT NULL,
    cuidados                 VARCHAR2(1000),
    alimentacion             VARCHAR2(500),
    calorias                 NUMBER,
    peso                     NUMBER
);

ALTER TABLE rutina ADD CONSTRAINT rutina_pk PRIMARY KEY ( codigo );

CREATE TABLE usuario (
    identificacion   NUMBER NOT NULL,
    nombre           VARCHAR2(200 CHAR) NOT NULL,
    correo           VARCHAR2(300 CHAR) NOT NULL,
    contrasena       VARCHAR2(350) NOT NULL,
    tipo             VARCHAR2(40) NOT NULL CHECK 
                    (tipo='aficionado' OR tipo='profesional'),
    ciudad           VARCHAR2(200 CHAR) NOT NULL,
    deporte          VARCHAR2(100) NOT NULL,
    gastos           NUMBER,
    equipo           VARCHAR2(100),
    ingresos         NUMBER
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( identificacion );

ALTER TABLE entrenamiento
    ADD CONSTRAINT entrenamiento_lugar_fk FOREIGN KEY ( lugar_codigo )
        REFERENCES lugar ( codigo );

ALTER TABLE entrenamiento
    ADD CONSTRAINT entrenamiento_usuario_fk FOREIGN KEY ( usuario_identificacion )
        REFERENCES usuario ( identificacion );

ALTER TABLE evento
    ADD CONSTRAINT evento_administrador_fk FOREIGN KEY ( administrador_identificacion )
        REFERENCES administrador ( identificacion );

ALTER TABLE evento
    ADD CONSTRAINT evento_lugar_fk FOREIGN KEY ( lugar_codigo )
        REFERENCES lugar ( codigo );

ALTER TABLE evento
    ADD CONSTRAINT evento_usuario_fk FOREIGN KEY ( usuario_identificacion )
        REFERENCES usuario ( identificacion );

ALTER TABLE meta
    ADD CONSTRAINT meta_usuario_fk FOREIGN KEY ( usuario_identificacion )
        REFERENCES usuario ( identificacion );
        
ALTER TABLE premio
    ADD CONSTRAINT premio_evento_fk FOREIGN KEY ( evento_codigo )
        REFERENCES evento ( codigo_evento );

ALTER TABLE premio
    ADD CONSTRAINT premio_usuario_fk FOREIGN KEY ( usuario_identificacion )
        REFERENCES usuario ( identificacion );
        
ALTER TABLE rutina
    ADD CONSTRAINT rutina_usuario_fk FOREIGN KEY ( usuario_identificacion )
        REFERENCES usuario ( identificacion );
