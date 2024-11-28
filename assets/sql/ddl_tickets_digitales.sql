/*
-Instituto: "IESTP Jose MarÃ­a Arguedas - Puquio"-
--Unidad DidÃ¡ctica: Herramientas de desarrollo de Software--
--Unidad DidÃ¡ctica: AnÃ¡lisis y DiseÃ±o de Sistemas--
--Docente: Ing Jhon David Ccoyllo Rojas--
--Perido acadÃ©mico: IV--
--Programa de estudio: APSTI--
---Fecha entrega: 14/11/2024---

Base de datos: bd_tickets_digitales // bd_ticketsYa
Descripcion: Esta base de datos realiza la operacion de almacenar y organizar
los datos de la app ticket digitales
Integrantes:
-Garriazo Auccasi, Jose Manuel
-Castillo Huamani, Ruth Marina
-Roman Astoyauri, Ronny
-Roman Pumachahua, Eber Serapio
-Tincopa Ore, Pablo Alex

Subconjunto del lenguaje SQL: DDL
*/


CREATE TABLE module(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT(45) NOT NULL,
icon TEXT(25) NULL,
date_added datetime DEFAULT(DATETIME('now', 'localtime')),
state INTEGER(1) DEFAULT 0
);

insert into module(id, name, icon, date_added, state)
values (2,'PERFIL','person','14/11/2024 10:00:00:59',2);

CREATE TABLE category(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT(45) NOT NULL,
description TEXT NULL
);

insert into category(id, name, description)
--values (1,'PRINCIPAL','icono home de la navegacion')
--values (2,'FAVORITO','icono star de la navegacion')
--values (3,'FEEDBACK','icono feedback de la navegacion')
--values (4,'PERFIL','icono person de la navegacion');

CREATE TABLE organizer(
id INTEGER PRIMARY KEY AUTOINCREMENT,
ruc TEXT(11) NOT NULL UNIQUE,
company_name TEXT(45) NULL,
address TEXT(45) NULL,
reference TEXT(45) NULL,
email TEXT(45) NULL,
brief_description TEXT(45) NULL,
full_description TEXT NULL,
cell_phone_number TEXT(9) NULL,
front_page TEXT(100) NULL,
avatar TEXT(100) NULL,
joined_date datetime DEFAULT(DATETIME('now', 'localtime')),
category_id INTEGER NOT NULL,
place TEXT(45) NULL,

CONSTRAINT fk_category_organizer FOREIGN KEY(category_id)
REFERENCES category on UPDATE CASCADE on DELETE CASCADE
);

insert into organizer(id, ruc, company_name, address, reference, email, brief_description, full_description, cell_phone_number, front_page, avatar, joined_date, category_id, place)
values (1,'3215987400','Machupicchu Terra','jr. cuzco','costado izquierdo de la plaza central','machupicchuterra@gmail.com','Nuestra empresa ve tu comodidad','Empresa de tickets de turismo que gestionar solicitudes e incidentes de clientes de manera eficiente, agil y organizada', '968 531 472', 'Tickets Machupicchu Terra', 'logo verde con el nombre predominante','17/11/2024 10:00:00:59',4,'Ayacucho');

CREATE TABLE favorite(
id INTEGER PRIMARY KEY AUTOINCREMENT,
date_added datetime DEFAULT(DATETIME('now', 'localtime')),
organizer_id INTEGER NOT NULL UNIQUE,

CONSTRAINT fk_favorite_organizer FOREIGN KEY(organizer_id)
REFERENCES organizer on UPDATE CASCADE on DELETE CASCADE
);

insert into favorite(id, date_added, organizer_id)
--values (1,'17/11/2024 10:00:00:59',1)