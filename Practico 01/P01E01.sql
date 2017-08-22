CREATE TABLE P01E01_Articulo (
    id_articulo numeric(4,0),
    titulo varchar(120) NOT NULL,
    autor varchar(30) NOT NULL,
    fecha_pub DATE NOT NULL,
    CONSTRAINT PK_Articulo
        PRIMARY KEY (id_articulo),
    CONSTRAINT UNIQUE_titulo_Articulo
		UNIQUE (titulo)
);


CREATE TABLE P01E01_Palabra (
	cod_p numeric(4,0),
	idioma char(2),
	descripcion varchar(25) NOT NULL,
	CONSTRAINT PK_Palabra
		PRIMARY KEY (cod_p, idioma)
);

CREATE TABLE P01E01_Contiene (
	id_articulo numeric(4,0),
	cod_p numeric(4,0),
	idioma char(2),
	CONSTRAINT PK_Contiene
		PRIMARY KEY (id_articulo, cod_p, idioma)
);

ALTER TABLE P01E01_Contiene
ADD CONSTRAINT FK_Contiene_Palabra
	FOREIGN KEY (cod_p, idioma)
		REFERENCES P01E01_Palabra(cod_p, idioma)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;
		
ALTER TABLE P01E01_Contiene
ADD CONSTRAINT FK_Contiene_Articulo
	FOREIGN KEY (id_articulo)
		REFERENCES P01E01_Articulo(id_articulo)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;
