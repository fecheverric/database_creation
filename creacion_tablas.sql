CREATE TABLE "clientes" ( 
"NIT" INTEGER NOT NULL UNIQUE, 
"Nombre" TEXT NOT NULL, 
"Direccion" TEXT NOT NULL,
 "Telefono" INTEGER NOT NULL, 
 "Ciudad" TEXT NOT NULL, PRIMARY KEY("NIT") 
 );
 
 CREATE TABLE conductores ( 
 ID Conductor INTEGER PRIMARY KEY NOT NULL UNIQUE, 
 Nombre TEXT NOT NULL 
 );
 
 CREATE TABLE empresa ( 
 ID_Empresa INTEGER PRIMARY KEY NOT NULL UNIQUE, 
 Nombre TEXT NOT NULL, 
 Direccion TEXT NOT NULL, 
 Telefono INTEGER NOT NULL 
 );

 
CREATE TABLE productos ( 
ID_Producto INTEGER PRIMARY KEY NOT NULL UNIQUE, 
Tipo TEXT NOT NULL, 
Color TEXT NOT NULL, 
Precio INTEGER NOT NULL 
);

 

CREATE TABLE despachos ( 
ID_Despacho INTEGER PRIMARY KEY NOT NULL UNIQUE, 
Fecha DATE NOT NULL, 
Peso INTEGER NOT NULL, 
Ciudad destino TEXT NOT NULL, 
NIT_Cliente INTEGER NOT NULL, 
ID_Empresa INTEGER NOT NULL, 
ID_Conductor INTEGER NOT NULL, 
FOREIGN KEY (NIT_Cliente) REFERENCES clientes(NIT)
FOREIGN KEY (ID_Empresa) REFERENCES empresa (ID_Empresa)
FOREIGN KEY (ID_Conductor) REFERENCES conductores (ID_Conductor)
);


