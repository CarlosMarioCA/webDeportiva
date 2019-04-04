---INSERCI�N DE DATOS MODELO P�GINA WEB DEPORTIVA:

--DATOS USUARIO:

INSERT INTO usuario values (1010, 'Carlos', 'camchavezag2@hotmail.com', 666, 'aficionado', 'Bogot�', 'Tennis', 40000, null, null);
INSERT INTO usuario values (1011, 'Rafael', 'Rafael1280@gmail.com', 789, 'profesional', 'Medellin', 'Futbol', 500000, 'Envigado FC', 2000000);
INSERT INTO usuario values (1012, 'Lucia', 'Lucia1011@outlook.com', 214, 'aficionado', 'Bogot�', 'Natacion', 20000, null, null);
INSERT INTO usuario values (1013, 'Fernando', 'Fer1013@yahoo.com', 365, 'aficionado', 'Cali', 'Futbol', 20000, null, null);
INSERT INTO usuario values (1014, 'Camila', 'Cam14@unal.edu.co', 111, 'aficionado', 'Bucaramanga', 'Voleibol', null, null, null);
INSERT INTO usuario values (1015, 'Sergio', 'sergiofr@gmail.com', 201, 'profesional', 'Barranquilla', 'BasketBall', 300000, 'Barranquilla BC', 1900000);
INSERT INTO usuario values (1016, 'Juan', 'Juani@hotmail.com', 675, 'aficionado', 'Cucuta', 'Futbol', null, null, null);
INSERT INTO usuario values (1017, 'Alejandra', 'almejandra@gmail.com', 721, 'profesional', 'Medellin', 'Lucha', 100000, 'Medellin Lucha', 1200000);
INSERT INTO usuario values (1018, 'Tatiana', 'tatis@hotmail.com', 934, 'aficionado', 'Bogot�', 'Rugby', 50000, null, null);
INSERT INTO usuario values (1019, 'Felipe', 'oruro@unal.edu.com', 656, 'aficionado', 'Bogot�', 'Voleibol', null, null, null);

---DATOS LUGAR:

INSERT INTO LUGAR values(10010,'Coliseo GrecoRomano','Medellin','Avenida 14-07','Para eventos de lucha grecorromana');
INSERT INTO LUGAR values(10011,'Estadio El Camp�n','Bogot�','Calle 53','Estadio de f�tbol.');
INSERT INTO LUGAR values(10012,'Vel�dromo Atanasio Girardot','Medellin','Estadio','Usado por patinadores.');
INSERT INTO LUGAR values(10013,'Estadio Atanasio Girardot','Medellin','Estadio','Estadio de futbol');
INSERT INTO LUGAR values(10014,'Cancha Tennisaria','Cali','Calle 47','Pr�ctica para tennis');
INSERT INTO LUGAR values(10015,'Estadio Castilla','Medellin','','Para practicar nataci�n.');
INSERT INTO LUGAR values(10016,'Piscina la Ci�naga','Barranquilla','Calle 12','Para practicar nataci�n.');
INSERT INTO LUGAR values(10017,'Coliseo','Barranquilla','Calle 12','Para practicar nataci�n.');
INSERT INTO LUGAR values(10018,'UVA La Gloria','Cucuta','Autopista Internacional','Centro Cultural y deportivo UVA La Gloria');
INSERT INTO LUGAR values(10019,'Multiproposito La Grulla','Santa Marta','Calle 12','Sitio de uso de deportes masivo');

---DATOS RUTINA:

INSERT INTO rutina VALUES (101, 'espalda, triceps y muslos', 1018, 'al hacer espalda cuidar el movimiento del hombro para no lesinarse', 'mucha agua, frutas ricas en carboidratos y buena proteina como la carne', 500, 73);
INSERT INTO rutina VALUES (102, 'pecho, biceps, abdomen', 1017, 'precaucion en la flexion de los codos', 'agua, proteina, carboidratos', 400, 70);
INSERT INTO rutina VALUES (103, 'respiracion', 1012, 'no ahogarse', 'agua, carboidrato', 300, 75);
INSERT INTO rutina VALUES (104, 'practicar salidas', 1019, 'precausion con los saltos', 'idratacion, proteina', 350, 78);
INSERT INTO rutina VALUES (105, 'todos los musculos inferiores y abdomen', 1015, 'cuidado con las rodillas', 'proteina, hidratacion', 700, 79);
INSERT INTO rutina VALUES (106, 'abdomen, pierna, gluteo', 1013, 'rodillas', 'hidratacion, carboidraros', 700, 68);
INSERT INTO rutina VALUES (107, 'cardio(correr 10 km)', 1014, 'cuidado con la respiracion', 'mucha agua', 1000, 70);
INSERT INTO rutina VALUES (108, 'levantamiento de peso pesado', 1014, 'cuidado con las articulaciones', 'buena agua ', 800, 70);
INSERT INTO rutina VALUES (109, 'juego con el balon', 1012, 'cuidados', 'alimentacion', 400, 80);

---DATOS META:

INSERT INTO meta VALUES (10001, 'ser el mejor en lo que se hace', 1012);
INSERT INTO meta VALUES (10002, 'ser el mejor en lo que se hace', 1015);
INSERT INTO meta VALUES (10003, 'ser el mejor en lo que se hace', 1019);
INSERT INTO meta VALUES (10004, 'ser el mejor en lo que se hace', 1011);
INSERT INTO meta VALUES (10005, 'ser el mejor en lo que se hace', 1010);
INSERT INTO meta VALUES (10006, 'ser el mejor en lo que se hace', 1017);
INSERT INTO meta VALUES (10007, 'ser el mejor en lo que se hace', 1014);
INSERT INTO meta VALUES (10008, 'ser el mejor en lo que se hace', 1018);
INSERT INTO meta VALUES (10009, 'ser el mejor en lo que se hace', 1016);

---DATOS ADMINISTRADOR:

INSERT INTO administrador VALUES (10, 'luisa maria jaramillo gonzales', 'lmjg@gmail.com', 'lmjg');
INSERT INTO administrador VALUES (11, 'raul rodriguez restrepo', 'rrr@gmail.com', 'rrr');
INSERT INTO administrador VALUES (12, 'maria alejandro tobon jimenez', 'matj@gmail.com', 'matj');
INSERT INTO administrador VALUES (13, 'pedro pablo leon jaramillo', 'pplj@gmail.com', 'pplj');
INSERT INTO administrador VALUES (14, 'pikachu', 'p@gmail.com', 'p');

---DATOS EVENTO:

INSERT INTO evento values (1110, to_date('14-jul-2019','dd-mon-yyyy'), 2, 'por validar', 10011, 1012, 11);
INSERT INTO evento values (1111, to_date('10-may-2019','dd-mon-yyyy'), 2, 'validado', 10018, 1015, 14);
INSERT INTO evento values (1112, to_date('15-jun-2019','dd-mon-yyyy'), 1, 'por validar', 10015, 1017, 13);
INSERT INTO evento values (1113, to_date('20-jul-2019','dd-mon-yyyy'), 4, 'por validar', 10013, 1018, 11);
INSERT INTO evento values (1114, to_date('03-may-2019','dd-mon-yyyy'), 2, 'validado', 10012, 1010, 12);

---DATOS PREMIO:

INSERT INTO premio VALUES (1111, 'Se le otorga al mejor jugador de tenis', 1010, 'mejor jugador de la semana');
INSERT INTO premio VALUES (1111, 'Se le otorga al segundo mejor jugador de tenis', 1011, 'segundo mejor jugador de la semana');
INSERT INTO premio VALUES (1111, 'Se le otorga al tercer mejor jugador de tenis', 1012, 'tercer mejor jugador de la semana');
INSERT INTO premio VALUES (1113, 'Se le otorga al campeon de la liga semestral', 1013, 'medalla de oro');
INSERT INTO premio VALUES (1113, 'Se le otorga al segundo puesto de la liga semstral', 1014, 'medalla de plata');
INSERT INTO premio VALUES (1113, 'Se le otorga al tercer puesto de la liga semestral', 1015, 'mejor jugador de la semana');
INSERT INTO premio VALUES (1110, 'Se otorga a los participantes con mejor actitud deportiva', 1011, 'merito al juego limpio');

---DATOS ENTRENAMIENTO:

INSERT INTO entrenamiento values (5500, 1016, 10018, 'Pr�ctica de futbol nivel principiante', to_date('13-jun-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5501, 1016, 10018, 'Pr�ctica de futbol nivel intermedio', to_date('13-jun-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5502, 1013, 10014, 'Pr�ctica de futbol nivel avanzado', to_date('13-jun-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5503, 1019, 10011, 'Aer�bicos', to_date('01-may-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5504, 1018, 10011, 'Footing', to_date('05-jul-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5505, 1017, 10013, 'Clase de aer�bicos', to_date('11-may-2020','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5506, 1010, 10011, 'Pr�ctica de tenis nivel principiante', to_date('07-may-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5507, 1010, 10011, 'Pr�ctica de tenis nivel intermedio', to_date('09-may-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5508, 1010, 10011, 'Pr�ctica de tenis nivel avanzado', to_date('11-may-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5509, 1015, 10017, 'Pr�ctica de baloncesto nivel principiante', to_date('22-jul-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5510, 1015, 10017, 'Pr�ctica de baloncesto nivel intermedio', to_date('25-jul-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5511, 1015, 10017, 'Pr�ctica de baloncesto nivel avanzado', to_date('27-jul-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5512, 1012, 10016, 'Pr�ctica de natacion nivel principiante', to_date('17-jun-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5513, 1012, 10016, 'Pr�ctica de natacion nivel intermedio', to_date('20-jun-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5514, 1012, 10016, 'Pr�ctica de natacion nivel avanzado', to_date('22-jun-2019','dd-mon-yyyy'));
INSERT INTO entrenamiento values (5515, 1017, 10013, 'Calistenia', to_date('10-jun-2019','dd-mon-yyyy'));
