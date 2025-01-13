Use Turismodbfirst
CREATE TABLE Transporte (
    Id INT PRIMARY KEY IDENTITY,
    Tipo NVARCHAR(100) NOT NULL,
    Marca NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(500) NOT NULL,
    Capacidad NVARCHAR(100) NOT NULL,
    Comodidad NVARCHAR(100) NOT NULL,
    Imagen NVARCHAR(255) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL
);

SET IDENTITY_INSERT Transporte ON;

INSERT INTO Transporte (Id, Tipo, Marca, Descripcion, Capacidad, Comodidad, Imagen, Precio)
VALUES
(1, 'terrestre', 'Vehículo chevrolet', 'El Chevrolet doble cabina es un 4x4 amplio que te permite viajar a donde sea sin preocuparte de cómo estará la ruta. Es el vehículo ideal para las salidas de campo y las aventuras en todo el Ecuador. Además, dispone de un amplio maletero para llevar todo tu material.', '5 pasajeros', 'para pasar en familia', 'https://gurudeautos.com/wp-content/uploads/2021/05/image-Test-Drive-Pick-Up-Chevrolet-S10-LS-Doble-Cabina-MT-4x2-01-1.jpg', 70),
(2, 'terrestre', 'Vehículo Toyota', 'Toyota Corolla 2023, un sedán versátil con excelente rendimiento de combustible, ideal para viajes urbanos y carretera. Su diseño elegante combina estilo y funcionalidad.', '5 pasajeros', 'A/C dual, sistema de navegación integrado, puertos USB y control crucero adaptativo', 'https://www.automoblog.com/wp-content/uploads/2022/11/2023-Toyota-Corolla-9-1400x934.jpg', 50),
(3, 'terrestre', 'Vehículo Honda', 'El Honda CR-V es un SUV espacioso, perfecto para viajes largos y familias. Su interior moderno incluye tecnología avanzada y una conducción cómoda.', '5 pasajeros', 'A/C, pantalla de infoentretenimiento 10”, integración con Android Auto y Apple CarPlay', 'https://upload.wikimedia.org/wikipedia/commons/2/28/2017_Honda_CR-V_front_4.11.18.jpg', 65),
(4, 'aéreo', 'Globo Aerostático', 'Un globo aerostático para disfrutar vistas panorámicas y experiencias únicas desde las alturas. Ideal para eventos especiales y recorridos turísticos.', '6 personas', 'Vista 360°, comunicación por radio y canasta cómoda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Foto_globo_Boreal_1_y_2._Vuelo_pasajeros.jpg/800px-Foto_globo_Boreal_1_y_2._Vuelo_pasajeros.jpg', 200),
(5, 'aéreo', 'Avión Cessna', 'Avioneta ultraligera perfecta para recorridos cortos y exploraciones aéreas. Ofrece una experiencia personal y cercana a la aviación.', '2 pasajeros', 'Cabina climatizada, asientos ergonómicos y ventanas panorámicas', 'https://img.aeroexpo.online/es/images_ar/photo-mg/174531-17794789.jpg', 150),
(6, 'aéreo', 'Helicóptero Bell', 'Un helicóptero diseñado para recorridos turísticos y traslados rápidos. Disfruta de una experiencia de lujo y vistas incomparables.', '4 pasajeros', 'Cabina insonorizada, asientos de cuero y aire acondicionado', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/11-09-fotofluege-cux-allg-04.jpg/1100px-11-09-fotofluege-cux-allg-04.jpg', 300),
(7, 'terrestre', 'Bus Turístico Volvo', 'Bus turístico con techo descubierto, ideal para recorridos urbanos y turísticos. Con guía en vivo para explorar la ciudad.', '50 pasajeros', 'Asientos cómodos, Wi-Fi a bordo y sistema de audio multilingüe', 'https://thumbs.dreamstime.com/b/autob%C3%BAs-blanco-de-la-ciudad-de-volvo-35716783.jpg', 20),
(8, 'terrestre', 'Bus Turístico Mercedes-Benz', 'Autobús moderno para excursiones de larga distancia. Ideal para grupos grandes que buscan comodidad y seguridad.', '60 pasajeros', 'Asientos reclinables, baño a bordo, A/C y pantallas de entretenimiento', 'https://motoradiesel.com/dev/wp-content/uploads/2020/08/MB1-870x489.jpg', 25),
(9, 'terrestre', 'Bus Turístico Scania', 'Un autobús turístico con tecnología avanzada, diseñado para recorridos seguros y eficientes en cualquier terreno.', '55 pasajeros', 'Wi-Fi, cargadores USB en cada asiento, y sistema de aire purificado', 'https://i.pinimg.com/736x/e5/2f/0d/e52f0dd914309ad8023bb2ca3b0d5218.jpg', 30);

select * from Transporte

SET IDENTITY_INSERT Transporte OFF;

CREATE TABLE Restaurante (
    Id INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(255) NOT NULL,
    Tipo NVARCHAR(100) NOT NULL,
    Direccion NVARCHAR(400) NOT NULL,
    Calificacion DECIMAL(2,1) NOT NULL,
    Especialidad NVARCHAR(400) NOT NULL,
    Foto NVARCHAR(300) NOT NULL
);

SET IDENTITY_INSERT Restaurante ON;

INSERT INTO Restaurante (id, Nombre, Tipo, Direccion, Calificacion, Especialidad, Foto) VALUES
(1, 'El Patio', 'Multicultural', 'Av. 9 de Octubre 414 Garcia Moreno, Guayaquil', 5.0, 'Desayuno, Comidas, Cenas, Brunch, Bebidas', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/5e/d4/7d/caption.jpg?w=900&h=500&s=1'),
(2, 'LA CARNICERÍA DE CHAVELA', 'Latina', 'Urdesa Central Urdesa, Ceibos, Samborondón, Quito, Guayaquil', 4.5, 'Comidas, Cenas, Bebidas', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/f2/91/3c/la-carniceria-de-chavela.jpg?w=800&h=500&s=1'),
(3, 'Restaurante Río Grande', 'Internacional', 'Calle Numa Pompilio Llona SN, Guayaquil', 4.5, 'Desayuno, Comidas, Cenas, Brunch', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/03/1b/a7/restaurante-rio-grande.jpg?w=900&h=500&s=1'),
(4, 'Riviera Restaurant', 'Internacional', 'Av. Victor Emilio Estrada 707, Guayaquil', 4.5, 'Comidas, Cenas, Bebidas', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/cc/f6/1d/sala-la-pergola.jpg?w=900&h=500&s=1'),
(5, 'Embarcadero 41', 'Latina', 'Local 6, Avenida La Puntilla Centro Comercial Plaza Lagos, Guayaquil', 4.5, 'Comidas, Cenas', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/b2/0a/be/iembarcadero-41.jpg?w=900&h=500&s=1');

SET IDENTITY_INSERT Restaurante OFF;

CREATE TABLE Actividad (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    Category NVARCHAR(100) NOT NULL,
    Rating BIT NOT NULL,
    Image NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

SET IDENTITY_INSERT Actividad ON;

INSERT INTO Actividad (Id, Name, Description, Category, Rating, Image, Price)
VALUES
(1, 'Caminata al Quilotoa', 'Disfruta de una caminata por los alrededores de la laguna del Quilotoa, famosa por sus aguas turquesas y paisajes impresionantes.', 'Naturaleza', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnHCojf_32m_KRvtPcQK7aMtw4jt33gZGvbTNVosXkzXMMPm_ixc74xhtSnmEqcIs5gtM&usqp=CAU', 30),
(2, 'Descenso en bicicleta desde el Cotopaxi', 'Atrévete a descender en bicicleta desde las faldas del volcán Cotopaxi, pasando por paisajes únicos.', 'Aventura', 0, 'https://media.istockphoto.com/id/528163251/es/foto/ciclista-y-volc%C3%A1n-cotopaxi.webp?a=1&b=1&s=612x612&w=0&k=20&c=c7RgZOkujRJkLZSrA0ETN288Ig4nhRkKwFQn7opY-K8=', 50),
(3, 'Recorrido por el centro histórico de Quito', 'Explora iglesias coloniales, plazas y monumentos en el centro histórico mejor preservado de América Latina.', 'Cultural', 1, 'https://vistahermosa.ec/wp-content/uploads/2015/07/blog1_vista_hermosa_centro_quito_historico.jpg', 20),
(4, 'Clase de elaboración de sombreros de paja toquilla', 'Aprende de artesanos locales cómo se elaboran los famosos sombreros de Montecristi, patrimonio cultural de Ecuador.', 'Cultural', 1, 'https://lodijeron.wordpress.com/wp-content/uploads/2010/12/foto-2-los-conocimientos-del-tejido-son-transferidos-a-los-hijos.jpg', 25),
(5, 'Avistamiento de ballenas en Puerto López', 'Vive una experiencia única al observar ballenas jorobadas en su hábitat natural durante la temporada migratoria.', 'Aventura', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR20DqVN4o6Y30_vCEh8wn0eLclj3CYvRBQsHGciCcbEwHmz_qAdurt_-1qSrIiWmjJG2s&usqp=CAU', 35),
(6, 'Taller de danza folklórica ecuatoriana', 'Sumérgete en la tradición cultural aprendiendo pasos básicos de los bailes típicos de las diferentes regiones del país.', 'Cultural', 1, 'https://www.ecuadorcenter.org/wp-content/uploads/2021/04/dancer_ayazamana17_opt.jpg', 15);

SET IDENTITY_INSERT Actividad OFF;

CREATE TABLE Alojamiento (
    Id INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(255) NOT NULL,
    Tipo NVARCHAR(50) NOT NULL,
    Capacidad NVARCHAR(50) NOT NULL,
    Direccion NVARCHAR(MAX) NOT NULL,
    Calificacion DECIMAL(2, 1) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Foto NVARCHAR(255) NOT NULL
);

SET IDENTITY_INSERT Alojamiento ON;

INSERT INTO Alojamiento (Id, Nombre, Tipo, Capacidad, Direccion, Calificacion, Precio, Foto)
VALUES
(1, 'Hotel La Basílica', 'Hotel', '13 Habitaciones', 'Venezuela N8-26 y Manabi, Quito 170401 Ecuador', 5.0, 50, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/46/1d/07/hotel-la-basilica-quito.jpg?w=1200&h=-1&s=1'),
(2, 'Friends Hotel & Rooftop', 'Hotel', '10 Habitaciones', 'Junin St Oe1-61 y Flores, Quito', 4.7, 45, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/1a/42/93/calle-en-frente-del-hotel.jpg?w=1200&h=-1&s=1'),
(3, 'Wyndham Garden Quito', 'Hotel', '15 Habitaciones', 'Alemania E5 103 Av. La Republica, Quito', 4.7, 68, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/70/af/74/ubicacion-privilegiada.jpg?w=1200&h=-1&s=1'),
(4, 'La Quinta by Wyndham Quito', 'Hotel', '16 Habitaciones', 'Av. de los Shyris 37-53 Naciones Unidas, Quito', 4.7, 60, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/c2/f8/a6/exterior.jpg?w=1100&h=-1&s=1'),
(5, 'Eb Hotel by Eurobuilding Quito', 'Hotel', '18 Habitaciones', 'Calle 24 de Septiembre S 2-389 Conector Alpachaca, Quito', 4.5, 50, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/00/34/22/getlstd-property-photo.jpg?w=1200&h=-1&s=1'),
(6, 'Wyndham Quito Airport', 'Hotel', '10 Habitaciones', 'Parroquia Tababela SN Via A Yaruqui, Quito', 4.5, 50, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/f4/c2/93/exterior.jpg?w=1200&h=-1&s=1');

SET IDENTITY_INSERT Alojamiento OFF;

CREATE TABLE Excursion (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    Duration INT NOT NULL,
    GuideLanguage NVARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Image NVARCHAR(255) NOT NULL
);

SET IDENTITY_INSERT Excursion ON;

INSERT INTO Excursion (Id, Name, Description, Duration, GuideLanguage, Price, Image)
VALUES
(1, 'Excursión a Los Túneles', 'Descubre los tesoros ocultos de la Isla Isabela y bucea a través de los impresionantes túneles de lava junto a la preciosa fauna. ¡No te lo puedes perder!', 7, 'Español', 155, 'https://happygringo.com/wp-content/uploads/2021/08/los-tuneles-galapagos-landscape.jpg'),
(2, 'Excursión a Ingapirca, Gualaceo y Chordeleg', 'Únete a esta excursión y combina las principales atracciones del Azuay. Descubriendo ruinas incas, artesanías y mucha tradición. ¡Qué esperas!', 11, 'Español', 170, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAgwM6SaOTbnVkihwcEfbYX8oD7qZMM6URBA&s'),
(3, 'Excursión a Montañita + vuelo en parapente', 'Escapa a la magia de Montañita y vive una aventura única en las alturas. Ven y haz de este viaje una experiencia que recordarás para siempre.', 12, 'Portugués', 205, 'https://ecuadors.live/wp-content/uploads/2024/04/montanita-ecuadorlife.webp'),
(4, 'Excursión a la reserva Manglares Churute', 'Descubre la fauna y flora de Ecuador con esta excursión a la reserva Manglares de Churute, uno de los ecosistemas más asombrosos del golfo de Guayaquil.', 7, 'Español', 65, 'https://www.turisec.com/wp-content/uploads/2022/12/paisajes-manglares-churute-1.jpg'),
(5, 'Excursión a la Casa del Árbol', 'Vive una experiencia única en Baños de Agua Santa, explorando la cabaña de madera más típica del Ecuador y disfruta del paisaje en su Columpio del Fin del Mundo. ¡Ven ya!', 4, 'Inglés', 15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuDZQmdh3WXX4P6eLhqZbjMAM9mnCCqjxldg&s'),
(6, 'Excursión a la playa de Los Frailes', 'Dejate llevar de playas de arena blanca, aguas cristalinas y calmadas, paisajes paradisíacos, e, incluso ¡una comunidad indígena y disfruta de esta excursión', 5, 'Inglés', 65, 'https://beachlifeecuador.com/wp-content/uploads/2020/05/Playa-Los-Frailes-Ecuador.jpg'),
(7, 'Excursión a Cotopaxi y Quilotoa', 'Explora uno de los volcanes activos más altos del mundo, y la impresionante laguna del Quilotoa, cuyas aguas turquesas yacen sobre el cráter de un volcán.', 8, 'Inglés', 135, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrBPSbmtl57uHJEWZmnLVEvBJ0MgSSEGQPyA&s');

SET IDENTITY_INSERT Excursion OFF;

CREATE TABLE Guia (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(255) NOT NULL,
    Age INT NOT NULL,
    Vehicle BIT NOT NULL,
    Years_of_Experience NVARCHAR(50) NOT NULL,
    Excursion NVARCHAR(255) NOT NULL,
    Image NVARCHAR(255) NOT NULL
);

SET IDENTITY_INSERT Guia ON;

INSERT INTO Guia (Id, Name, Age, Vehicle, Years_of_Experience, Excursion, Image)
VALUES
(1, 'Juan Pérez', 32, 0, '0-1 año', 'Excursión a la montaña', 'https://plus.unsplash.com/premium_photo-1661761608748-f9cfdea20173?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjF8fGhvbWJyZXxlbnwwfDF8MHx8fDA%3D'),
(2, 'María González', 28, 1, '3 años', 'Tour cultural por la ciudad', 'https://images.unsplash.com/photo-1491349174775-aaafddd81942?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fG11amVyfGVufDB8MXwwfHx8MA%3D%3D'),
(3, 'Luis Rodríguez', 40, 1, 'Más de 5 años', 'Excursión a las ruinas arqueológicas', 'https://plus.unsplash.com/premium_photo-1669627111428-a524797d9b97?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGhvbWJyZXxlbnwwfDF8MHx8fDA%3D'),
(4, 'Ana Martínez', 35, 1, 'Más de 5 años', 'Tour gastronómico', 'https://images.unsplash.com/photo-1517256742927-ccff23d76be8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ3fHxtdWplcnxlbnwwfDF8MHx8fDA%3D'),
(5, 'Pedro Sánchez', 29, 0, '4 años', 'Excursión por la costa', 'https://images.unsplash.com/photo-1505632958218-4f23394784a6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhvbWJyZXxlbnwwfDF8MHx8fDA%3D'),
(6, 'Carla López', 38, 1, 'Más de 5 años', 'Tour de senderismo', 'https://images.unsplash.com/photo-1513097847644-f00cfe868607?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fG11amVyfGVufDB8MXwwfHx8fDA%3D');

SET IDENTITY_INSERT Guia OFF;

select * from Guia
select * from Actividad
select * from Alojamiento
select * from Excursion
select * from Restaurante
select * from Transporte

