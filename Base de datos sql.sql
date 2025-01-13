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