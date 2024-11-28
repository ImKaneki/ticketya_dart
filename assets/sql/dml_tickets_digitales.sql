/*
-Instituto: "IESTP Jose María Arguedas - Puquio"-
--Unidad Didáctica: Herramientas de desarrollo de Software--
--Unidad Didáctica: Análisis y Diseño de Sistemas--
--Docente: Ing Jhon David Ccoyllo Rojas--
--Perido académico: IV--
--Programa de estudio: APSTI--
---Fecha entrega: 14/11/2024---

Base de datos: bd_tickets_digitales / d_ticketsYa
Descripcion: Esta base de datos almacenara y organizara los nombres de cada icono para nuesta app,
las categorias
Integrantes:
-Garriazo Auccasi, Jose Manuel
-Castillo Huamani, Ruth Marina
-Roman Astoyauri, Ronny
-Roman Pumachahua, Eber Serapio
-Tincopa Ore, Pablo Alex

Subconjunto del lenguaje SQL: DML
*/

INSERT INTO module(name, icon)
VALUES
("Inicio", "home"),
("Atras", "arrow_back"),
("Favorito", "star"),
("Feedback", "feedback"),
("Gmail", "mail"),
("Perfil", "person"),
("Ajustes", "settings"),
("Ubicacion", "location"),
("Informacion", "alert_circle"),
("telefono", "phone"),
("Feedback", "feedback");

INSERT INTO category(id, name)
VALUES
(1,"PRINCIPAL"),
(2,"FAVORITO"),
(3,"FEEDBACK"),
(4,PERFIL");

INSERT INTO organizer(ruc, company_name, front_page, avatar, category_id)
VALUES
("3215987400", "Machupicchu Terra", "Tickets Machupicchu Terra", "logo verde con nombre predominante", 1),
("12345678903", "Teleticket", "Teletickes.com", "acul y rojo con TLK blancos", 2),
("12345678902", "Trasandino", "Ticketrandino", "carro azul", 3),
("12345678904", "Sabre", "Tickets Sabre", "nombre SABRE predominante", 4),
("12345678902", "Ticket Travel", "Tickets travel aviones", "camara con avion en su interios color celeste", 5),
("12345678902", "LaPeruana", "Peruana Tick", "una llamita, nombre y color rojo", 6),
("12345678902", "Eventos Peru", "Eventos Peru Tick", "3 tickets convinados de 3 colores", 7),
("12345678902", "TRC", "TRC tickets", "camion de viaje", 8),
("12345678905", "Marvisur", "Marvisur ticket", "rojo y plomo con M predominante", 9);

INSERT INTO favorite(organizer_id)
VALUES
(6),
(5),
(1),
(8),
(7);

SELECT * FROM module;

SELECT * FROM category;

SELECT *
FROM organizer o
INNER JOIN category c
on o.category_id = c.id;

SELECT *
FROM favorite f
INNER JOIN organizer o
on f.organizer_id = o.id;

DELETE FROM organizer
WHERE id=5;

DELETE FROM favorite
WHERE id=5;