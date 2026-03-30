drop database ZamaonLibre;

create database ZamaonLibre;
 
use ZamaonLibre;


create table Administradores(
	id int primary key auto_increment,
    usuario character(100),
    correo_electronico char(70),
    contrasenia varchar(60)
);
insert into Administradores (usuario, correo_electronico, contrasenia)  
values("admin", "admin@admin", "admin");


create table Usuarios(
	id int primary key auto_increment,
    usuario character(100),
    correo_electronico char(70),
    contrasenia varchar(60),
    telefono bigint,
    fechaNacimiento date
);

create table Usuario_direcciones(
	id int primary key auto_increment,
    calle char(40),
    numeroCasa char(10),
    usuarioId int,
    foreign key (usuarioId) references Usuarios(id)
);

create table Productos(
	id int primary key auto_increment,
    URLImagen varchar(2083),
    nombre char(100),
    precio bigint,
    descripcion char(200),
    stock int
);

create table Pedidos(
	id int primary key auto_increment,
    usuarioId int,
    precioTotal bigint,
    estado enum("PEDIDO", "ENVIADO", "ENREPARTO", "ENTREGADO"),
    foreign key (usuarioId) references Usuarios(id)
);

create table Pedido_Productos(
    productoId int,
    pedidoId int,
    cantidad int,
    foreign key (pedidoId) references Pedidos(id),
    foreign key (productoId) references Productos(id)
);


create table resenhas(
	id int primary key auto_increment,
    autor varchar(50),
    calificacion int,
    resenhia char(100),
    productoId int,
    foreign key (productoId) references Productos(id)
);

INSERT INTO Usuarios (usuario, correo_electronico, contrasenia, telefono, fechaNacimiento) VALUES
('Carlos Mendoza', 'carlos.mendoza@gmail.com', 'carlos123', 6441234567, '1995-03-15'),
('Ana García', 'ana.garcia@gmail.com', 'ana456', 6449876543, '1998-07-22'),
('Luis Torres', 'luis.torres@hotmail.com', 'luis789', 6442345678, '1990-11-08'),
('María López', 'maria.lopez@gmail.com', 'maria321', 6448765432, '2000-01-30'),
('Pedro Ramírez', 'pedro.ramirez@hotmail.com', 'pedro654', 6443456789, '1993-05-17');

INSERT INTO productos (URLImagen, nombre, precio, stock, descripcion) VALUES
('https://m.media-amazon.com/images/I/71+ichAoOjL._AC_SY300_SX300_QL70_ML2_.jpg', 'Astro A50', 3500, 10, 'Audífonos inalámbricos gaming con sonido surround'),
('https://http2.mlstatic.com/D_Q_NP_670463-MLA95395012399_102025-F.webp', 'Control PS5', 1200, 25, 'Control DualSense para PlayStation 5'),
('https://http2.mlstatic.com/D_Q_NP_851835-MLA99476917042_112025-F.webp', 'Teclado Mecánico Redragon', 900, 15, 'Teclado mecánico RGB para gaming'),
('https://m.media-amazon.com/images/I/61mpMH5TzkL.jpg', 'Mouse Logitech G502', 750, 20, 'Mouse gaming con 11 botones programables'),
('https://m.media-amazon.com/images/I/612qvn+0zTL._AC_SY300_SX300_QL70_ML2_.jpg', 'Monitor LG 24"', 4200, 8, 'Monitor Full HD 144Hz para gaming');


-- Astro A50 (id=1)
INSERT INTO resenhas (autor, calificacion, resenhia, productoId) VALUES
("Pablo estrada", 5, 'Excelente calidad de sonido, muy cómodos', 1),
("Luis Carlos", 5, 'Los mejores audífonos gaming que he tenido', 1);

-- Control PS5 (id=2)
INSERT INTO resenhas (autor, calificacion, resenhia, productoId) VALUES
("Rodriguez tonho", 4, 'Muy buen control, me gusta el diseño', 2),
("Luis Carlos", 3, 'Bueno pero se calienta un poco al cargar', 2);

-- Teclado Redragon (id=3)
INSERT INTO resenhas (autor, calificacion, resenhia, productoId) VALUES
("Pablo estrada", 4, 'Buena respuesta al escribir y el RGB es bonito', 3),
("Luis Carlos", 4, 'Muy buen teclado para gaming y trabajo', 3);

-- Mouse Logitech (id=4)
INSERT INTO resenhas (autor, calificacion, resenhia, productoId) VALUES
("Pablo estrada", 5, 'El mejor mouse que he usado, muy preciso', 4),
("Luis Carlos", 5, 'Perfecto para FPS, muy buena sensación', 4);

-- Monitor LG (id=5)
INSERT INTO resenhas (autor, calificacion, resenhia, productoId) VALUES
("Rodriguez tonho", 4, 'Buena imagen pero los colores necesitan ajuste', 5),
("Luis Carlos", 5, 'Excelente monitor para su precio', 5);


INSERT INTO Pedidos (usuarioId, estado, precioTotal) VALUES
(1, 'ENTREGADO', 4700),   -- Astro A50 + Control PS5
(2, 'ENVIADO', 1650),     -- Mouse + Teclado
(3, 'ENREPARTO', 4200),   -- Monitor
(4, 'PEDIDO', 5150),      -- Monitor + Control PS5
(5, 'PEDIDO', 2550);      -- Teclado + Mouse + Control

-- Pedido 1: Astro A50 (3500) + Control PS5 (1200)
INSERT INTO Pedido_Productos (pedidoId, productoId, cantidad) VALUES
(1, 1, 1),
(1, 2, 1);

-- Pedido 2: Mouse (750) + Teclado (900)
INSERT INTO Pedido_Productos (pedidoId, productoId, cantidad) VALUES
(2, 4, 1),
(2, 3, 1);

-- Pedido 3: Monitor (4200)
INSERT INTO Pedido_Productos (pedidoId, productoId, cantidad) VALUES
(3, 5, 1);

-- Pedido 4: Monitor (4200) + Control PS5 (1200) - descuento aplicado
INSERT INTO Pedido_Productos (pedidoId, productoId, cantidad) VALUES
(4, 5, 1),
(4, 2, 1);

-- Pedido 5: Teclado (900) + Mouse (750) + Control PS5 (1200) - descuento aplicado
INSERT INTO Pedido_Productos (pedidoId, productoId, cantidad) VALUES
(5, 3, 1),
(5, 4, 1),
(5, 2, 1);





