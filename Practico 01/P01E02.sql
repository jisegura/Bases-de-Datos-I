CREATE TABLE P01E02_Alumno (
	LU numeric(5,0),
	nombre varchar(40) NOT NULL,
	provincia varchar(40) NOT NULL,
	CONSTRAINT PK_Alumno
		PRIMARY KEY (LU)
);

CREATE TABLE P01E02_Curso (
	cod char(4),
	descripsion varchar(40) NOT NULL,
	tipo char(1) NOT NULL,
	cod_referente char(4),
	LU_referente numeric(5,0),
	CONSTRAINT PK_Curso
		PRIMARY KEY (cod)
);

CREATE TABLE P01E02_Inscripsion (
	cod char(4),
	LU numeric(5,0),
	CONSTRAINT PK_Inscripsion
		PRIMARY KEY (cod, LU)
);

ALTER TABLE P01E02_Inscripsion
ADD CONSTRAINT FK_Inscripsion_Curso
	FOREIGN KEY (cod)
		REFERENCES P01E02_Curso(cod)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;

ALTER TABLE P01E02_Inscripsion
ADD CONSTRAINT FK_Inscripsion_Alumno
	FOREIGN KEY (LU)
		REFERENCES P01E02_Alumno(LU)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;

ALTER TABLE P01E02_Curso
ADD CONSTRAINT FK_Curso_Inscripsion
	FOREIGN KEY (cod_referente, LU_referente)
		REFERENCES P01E02_Inscripsion(cod, LU)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;