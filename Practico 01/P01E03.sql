CREATE TABLE P01E03_Producto (
	cod_prod numeric(7,0),
	descripsion varchar(40) NOT NULL,
	tipo char(10) NOT NULL,
	CONSTRAINT PK_Producto
		PRIMARY KEY (cod_prod)
);

CREATE TABLE P01E03_Proveedor (
	cod_prov integer,
	razon_social varchar(40) NOT NULL,
	calle varchar(60) NOT NULL,
	altura numeric(5,0) NOT NULL,
	piso_dpto varchar(10) NOT NULL,
	ciudad varchar(30) NOT NULL,
	fecha_nac date,
	CONSTRAINT PK_Proveedor
		PRIMARY KEY (cod_prov)
);

CREATE TABLE P01E03_Sucursal (
	cod_suc char(6),
	nombre varchar(40) NOT NULL,
	localidad varchar(30) NOT NULL,
	CONSTRAINT PK_Sucursal
		PRIMARY KEY (cod_suc)
);

CREATE TABLE P01E03_Provee (
	cod_prod numeric(7,0),
	cod_prov integer,
	cod_suc char(6),
	CONSTRAINT PK_Provee
		PRIMARY KEY (cod_prod, cod_prov)
);

ALTER TABLE P01E03_Provee
ADD CONSTRAINT FK_Provee_Producto
	FOREIGN KEY (cod_prod)
		REFERENCES P01E03_Producto(cod_prod)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;

ALTER TABLE P01E03_Provee
ADD CONSTRAINT FK_Provee_Proveedor
	FOREIGN KEY (cod_prov)
		REFERENCES P01E03_Proveedor(cod_prov)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;

ALTER TABLE P01E03_Provee
ADD CONSTRAINT FK_Provee_Sucursal
	FOREIGN KEY (cod_suc)
		REFERENCES P01E03_Sucursal(cod_suc)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;