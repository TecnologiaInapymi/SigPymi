ALTER TABLE cantidad_producida DROP CONSTRAINT "cantidad_producida_FK_1";
ALTER TABLE cantidad_producida ADD CONSTRAINT "cantidad_producida_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE cantidad_vendida DROP CONSTRAINT "cantidad_vendida_FK_1";
ALTER TABLE cantidad_vendida ADD CONSTRAINT "cantidad_vendida_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE grado_instruccion_trabajadores DROP CONSTRAINT "grado_instruccion_trabajado_FK_1";
ALTER TABLE grado_instruccion_trabajadores ADD CONSTRAINT "grado_instruccion_trabajado_FK1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE numero_trabajadores DROP CONSTRAINT "numero_trabajadores_FK_1";
ALTER TABLE numero_trabajadores ADD CONSTRAINT "numero_trabajadores_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE organizacion_asistencia_tecnica DROP CONSTRAINT "organizacion_asistencia_tec_FK_2";
ALTER TABLE organizacion_asistencia_tecnica ADD CONSTRAINT "organizacion_asistencia_tec_FK_2" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE organizacion_beneficios DROP CONSTRAINT "organizacion_beneficios_FK_1";
ALTER TABLE organizacion_beneficios ADD CONSTRAINT "organizacion_beneficios_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE organizacion_destino_credito DROP CONSTRAINT "organizacion_destino_credit_FK_1";
ALTER TABLE organizacion_destino_credito ADD CONSTRAINT "organizacion_destino_credit_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE organizacion_destino_productos DROP CONSTRAINT "organizacion_destino_productos_FK_1";
ALTER TABLE organizacion_destino_productos ADD CONSTRAINT "organizacion_destino_productos_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE organizacion_estrategias_mercadeo DROP CONSTRAINT "organizacion_estrategias_me_FK_2";
ALTER TABLE organizacion_estrategias_mercadeo ADD CONSTRAINT "organizacion_estrategias_me_FK_2" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE organizacion_financiamiento DROP CONSTRAINT "organizacion_financiamiento_FK_1";
ALTER TABLE organizacion_financiamiento ADD CONSTRAINT "organizacion_financiamiento_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE organizacion_problemas DROP CONSTRAINT "organizacion_problemas_FK_1";
ALTER TABLE organizacion_problemas ADD CONSTRAINT "organizacion_problemas_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE producto_principal DROP CONSTRAINT "producto_principal_FK_1";
ALTER TABLE producto_principal ADD CONSTRAINT "producto_principal_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE venta_sector_publico DROP CONSTRAINT "venta_sector_publico_FK_1";
ALTER TABLE venta_sector_publico ADD CONSTRAINT "venta_sector_publico_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE maquinarias DROP CONSTRAINT "maquinarias_FK_1";
ALTER TABLE maquinarias ADD CONSTRAINT "maquinarias_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE materia_prima DROP CONSTRAINT "materia_prima_FK_1";
ALTER TABLE materia_prima ADD CONSTRAINT "materia_prima_FK_1" FOREIGN KEY (organizacion_id) REFERENCES organizacion (id)    ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE organizacion
   ALTER COLUMN tipo_documento DROP NOT NULL;


ALTER TABLE persona
   ALTER COLUMN tipo_documento DROP NOT NULL;


ALTER TABLE organizacion ADD COLUMN borrado boolean DEFAULT false;

ALTER TABLE report ADD COLUMN borrado boolean NOT NULL DEFAULT false;


-- Nuevos

CREATE TABLE "audit_action"
(
	"id" serial  NOT NULL,
	"user_id" INTEGER,
	"model" VARCHAR(255)  NOT NULL,
	"model_id" INT8,
	"action" VARCHAR(255)  NOT NULL,
	"operation" TEXT  NOT NULL,
	"remote_address" VARCHAR(255)  NOT NULL,
	"created_at" TIMESTAMP,
	PRIMARY KEY ("id")
);

INSERT INTO sf_guard_permission (name, description) VALUES ('admin', 'admin');

INSERT INTO sf_guard_permission (name, description) VALUES ('consultar_organizacion', 'consultar_organizacion');
INSERT INTO sf_guard_permission (name, description) VALUES ('reporte_organizacion', 'reporte_organizacion');
INSERT INTO sf_guard_permission (name, description) VALUES ('editar_organizacion', 'editar_organizacion');

INSERT INTO sf_guard_permission (name, description) VALUES ('distritocapital', 'distritocapital');
INSERT INTO sf_guard_permission (name, description) VALUES ('amazonas', 'amazonas');
INSERT INTO sf_guard_permission (name, description) VALUES ('anzoategui', 'anzoategui');
INSERT INTO sf_guard_permission (name, description) VALUES ('apure', 'apure');
INSERT INTO sf_guard_permission (name, description) VALUES ('aragua', 'aragua');
INSERT INTO sf_guard_permission (name, description) VALUES ('barinas', 'barinas');
INSERT INTO sf_guard_permission (name, description) VALUES ('bolivar', 'bolivar');
INSERT INTO sf_guard_permission (name, description) VALUES ('carabobo', 'carabobo');
INSERT INTO sf_guard_permission (name, description) VALUES ('cojedes', 'cojedes');
INSERT INTO sf_guard_permission (name, description) VALUES ('deltaamacuro', 'deltaamacuro');
INSERT INTO sf_guard_permission (name, description) VALUES ('falcon', 'falcon');
INSERT INTO sf_guard_permission (name, description) VALUES ('guarico', 'guarico');
INSERT INTO sf_guard_permission (name, description) VALUES ('lara', 'lara');
INSERT INTO sf_guard_permission (name, description) VALUES ('merida', 'merida');
INSERT INTO sf_guard_permission (name, description) VALUES ('miranda', 'miranda');
INSERT INTO sf_guard_permission (name, description) VALUES ('monagas', 'monagas');
INSERT INTO sf_guard_permission (name, description) VALUES ('nuevaesparta', 'nuevaesparta');
INSERT INTO sf_guard_permission (name, description) VALUES ('portuguesa', 'portuguesa');
INSERT INTO sf_guard_permission (name, description) VALUES ('sucre', 'sucre');
INSERT INTO sf_guard_permission (name, description) VALUES ('tachira', 'tachira');
INSERT INTO sf_guard_permission (name, description) VALUES ('trujillo', 'trujillo');
INSERT INTO sf_guard_permission (name, description) VALUES ('yaracuy', 'yaracuy');
INSERT INTO sf_guard_permission (name, description) VALUES ('zulia', 'zulia');
INSERT INTO sf_guard_permission (name, description) VALUES ('vargas', 'vargas');

INSERT INTO sf_guard_permission (name, description) VALUES ('consultar_reporte', 'consultar_reporte');
INSERT INTO sf_guard_permission (name, description) VALUES ('editar_reporte', 'editar_reporte');
INSERT INTO sf_guard_permission (name, description) VALUES ('herramientas', 'herramientas');

INSERT INTO sf_guard_permission (name, description) VALUES ('importar_shapefile', 'importar_shapefile');
INSERT INTO sf_guard_permission (name, description) VALUES ('consultar_capas', 'consultar_capas');
INSERT INTO sf_guard_permission (name, description) VALUES ('editar_capas', 'editar_capas');

INSERT INTO sf_guard_permission (name, description) VALUES ('consultar_categorias', 'consultar_categorias');
INSERT INTO sf_guard_permission (name, description) VALUES ('editar_categorias', 'editar_categorias');

INSERT INTO sf_guard_permission (name, description) VALUES ('consultar_simbolos', 'consultar_simbolos');
INSERT INTO sf_guard_permission (name, description) VALUES ('editar_simbolos', 'editar_simbolos');

INSERT INTO sf_guard_permission (name, description) VALUES ('tematicos', 'tematicos');

INSERT INTO sf_guard_permission (name, description) VALUES ('consultar_bibloteca', 'consultar_bibloteca');
INSERT INTO sf_guard_permission (name, description) VALUES ('editar_bibloteca', 'editar_bibloteca');

INSERT INTO sf_guard_permission (name, description) VALUES ('reporte_socioeconomico', 'reporte_socioeconomico');

INSERT INTO sf_guard_group (name, description)  VALUES ('todas_entidades', 'todas_entidades');
INSERT INTO sf_guard_group (name, description)  VALUES ('organizacion', 'organizacion');

--------------------------------------------------------------------------------

CREATE TABLE "unidades_medidas"
(
	"id" serial  NOT NULL,
	"nombre" VARCHAR(255)  NOT NULL,
	PRIMARY KEY ("id"),
	CONSTRAINT "unidades_medidas_U_1" UNIQUE ("nombre")
);

COMMENT ON TABLE "unidades_medidas" IS 'Catalogo de unidades de medidas';

insert into unidades_medidas (nombre)

select trim(upper(unidad_medida)) from producto_principal
where length(trim(upper(unidad_medida)))>0
 group by trim(upper(unidad_medida));