USE primerBD;

CREATE TABLE Usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50)
);
CREATE TABLE Filtros_Aceite (
  id INT PRIMARY KEY,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  tipo_vehiculo VARCHAR(50),
  capacidad_filtrado INT,
  precio_unitario DECIMAL(10, 2)
);
CREATE TABLE Filtros_Diesel (
  id INT PRIMARY KEY,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  tipo_vehiculo VARCHAR(50),
  capacidad_filtrado INT,
  precio_unitario DECIMAL(10, 2)
);
CREATE TABLE Proveedores (
  id INT PRIMARY KEY,
  usuario_id INT,
  nombre_empresa VARCHAR(50),
  direccion VARCHAR(100),
  numero_contacto VARCHAR(20),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);
CREATE TABLE Vehiculos (
  id INT PRIMARY KEY,
  usuario_id INT,
  numero_placa VARCHAR(20),
  marca VARCHAR(50),
  modelo VARCHAR(50),
  anio INT,
  tipo_combustible VARCHAR(50),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);
CREATE TABLE Motocicletas (
  id INT PRIMARY KEY,
  numero_placa VARCHAR(20),
  usuario_id INT,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  anio INT,
  tipo_combustible VARCHAR(50),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);
CREATE TABLE Adquisiciones (
  id INT PRIMARY KEY,
  fecha_adquisicion DATE,
  filtro_aceite_id INT,
  filtro_diesel_id INT,
  cantidad_adquirida INT,
  FOREIGN KEY (filtro_aceite_id) REFERENCES Filtros_Aceite(id),
  FOREIGN KEY (filtro_diesel_id) REFERENCES Filtros_Diesel(id)
);
CREATE TABLE Detalles_Adquisiciones (
  id INT PRIMARY KEY,
  proveedor_id INT,
  adquisicion_id INT,
  estado_adquisicion VARCHAR(50),
  FOREIGN KEY (proveedor_id) REFERENCES Proveedores(id),
  FOREIGN KEY (adquisicion_id) REFERENCES Adquisiciones(id)
);

INSERT INTO Usuarios (id, nombre, apellido) VALUES (1, 'Juan', 'Pérez');

INSERT INTO Filtros_Aceite (id, marca, modelo, tipo_vehiculo, capacidad_filtrado, precio_unitario) VALUES (1, 'Fram', 'PH7317', 'Automóvil', 10, 12.99);

INSERT INTO Filtros_Diesel (id, marca, modelo, tipo_vehiculo, capacidad_filtrado, precio_unitario) VALUES (1, 'Mann', 'WK842/23', 'Camión', 30, 18.99);

INSERT INTO Proveedores (id, usuario_id, nombre_empresa, direccion, numero_contacto) VALUES (1, 1, 'Proveedor A', 'Calle Principal 123', '123456789');

INSERT INTO Vehiculos (id, usuario_id, numero_placa, marca, modelo, anio, tipo_combustible) VALUES (1, 1, 'ABC123', 'Toyota', 'Corolla', 2022, 'Gasolina');

INSERT INTO Motocicletas (id, numero_placa, usuario_id, marca, modelo, anio, tipo_combustible) VALUES (1,'MOTO001', 1, 'Yamaha', 'YZF-R6', 2023, 'Gasolina');

INSERT INTO Adquisiciones (id, fecha_adquisicion, filtro_aceite_id, filtro_diesel_id, cantidad_adquirida) VALUES (1, '2023-01-15', 1, 1, 10);

INSERT INTO Detalles_Adquisiciones (id, proveedor_id, adquisicion_id, estado_adquisicion) VALUES (1, 1, 1, 'Entregado');
