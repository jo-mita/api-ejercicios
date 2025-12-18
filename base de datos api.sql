-- Crear la base de datos
CREATE DATABASE AgendaContactos;
GO

-- Usar la base de datos
USE AgendaContactos;
GO

-- Crear la tabla de Contactos
CREATE TABLE Contactos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Telefono NVARCHAR(20),
    Direccion NVARCHAR(200),
    Instagram NVARCHAR(50),
    Facebook NVARCHAR(50),
    LinkedIn NVARCHAR(50),
    FechaCreacion DATETIME DEFAULT GETDATE()
);
GO

-- Insertar algunos datos de prueba (opcional)
INSERT INTO Contactos (Nombre, Telefono, Direccion, Instagram, Facebook, LinkedIn)
VALUES 
    ('Jeremyh Mota', '809-283-0414', 'Calle Lavapies #147, San Cristobal', '@jeremyhmota', 'Jeremymo', 'Jeremyhmota'),
    ('María Guzman', '829-528-5678', 'Av. livertad #25, san pedro', '@mariaguzman', 'maria.guzman', 'mariaguzman'),
    ('Jose Baez', '809-528-6100', 'Calle Duarte #38, Santiago', '@JoseBaez', 'Jose.Baez', 'Josebaez');
GO

-- Ver los datos insertados
SELECT * FROM Contactos;
GO