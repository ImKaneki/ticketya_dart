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
(4,"PERFIL");

INSERT INTO organizer(ruc, company_name, front_page, avatar, category_id)
VALUES
("20564091490", "Machupicchu Terra", "https://www.machupicchuterra.com/es/?gad_source=1&gclid=CjwKCAiA0rW6BhAcEiwAQH28ImvtRE9evxBQI5lcLi2gr-9RU_ZtQGkAd7n48VBcRjyQKvCgklEenxoCoPsQAvD_BwE", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShsUlb3DejLV_19VEn-Pwg5EuMzXSMCHx9RA&s", 1),
("20334461875", "Teleticket", "https://teleticket.com.pe/", "https://cdn.teleticket.com.pe/images/quienes-somos/logo-descargable-teleticket-blanco.png", 2),
("20410071411", "Trasandino", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE3uURkdu4PaVzxa6gEMHoJGG0TsewLufjlQ&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr2TGYnLf9jqRlowfOgcBm99spksQkmZ1B_g&s", 3),
("20547391501", "RedBus", "https://blog.redbus.pe/wp-content/uploads/2020/08/heroes-portada.png", "https://blog.redbus.pe/wp-content/uploads/2017/06/logo-redbus.png", 4),
("20604202141", "Travel ticket Peru E.I.R.L", "https://cdn.www.gob.pe/uploads/document/file/5300350/standard_852664-imagen2.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAppqbsGIW1yIYl25BSY2BLQ8klRlaRW3gEQ&s", 5),
("20607596698", "LaPeruana", "https://scontent.flim2-2.fna.fbcdn.net/v/t39.30808-6/458215529_1073757658090653_5724336979640826544_n.png?_nc_cat=107&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=-5DePQzjFhEQ7kNvgHGMhvZ&_nc_zt=23&_nc_ht=scontent.flim2-2.fna&_nc_gid=A2c6Kve2CTy7ZprpskMlibC&oh=00_AYDIjku582PVwmhbJLb7tPE47U-A2KTMvKhWCUFLAtA2Sw&oe=6754EA56","https://scontent.flim2-2.fna.fbcdn.net/v/t39.30808-6/416121898_890026623130425_423410124006797770_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=v6xi6Cov9ZIQ7kNvgF7uGzI&_nc_zt=23&_nc_ht=scontent.flim2-2.fna&_nc_gid=AgWzaG0BiA5j-rJxbydMPZ1&oh=00_AYAJxIpwsPlbqtMkTCC36SREOUNJxA50mMIUFS8IaoxwPA&oe=6754EE74",6)
("12345678902", "Eventos Peru", "Eventos Peru Tick", "3 tickets convinados de 3 colores", 7),
("20481960127", "TRC", "https://cdn.slidesharecdn.com/ss_thumbnails/trcextresssac-141016144510-conversion-gate01-thumbnail.jpg?width=640&height=640&fit=bounds", "https://www.trcexpress.com/theme/img/logo-small.png", 8),
("201886127120", "Marvisur", "https://www.expresomarvisur.com/assets/images/portadasucursalesnuevo.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4eNw9vgR-Fep5-adyt-BQHQtGBLk-LqQZjA&s", 9);
("10221823198", "radio la caribeña","https://i1.sndcdn.com/artworks-000075328834-zlzp47-t1080x1080.jpg","https://static.wikia.nocookie.net/logopedia/images/6/6b/Radio_Karibe%C3%B1a.svg/revision/latest/scale-to-width-down/300?cb=20220809154135&path-prefix=es",10)
("10221823198", "radio puquio","","https://radiopuquio.pe/images/logo%20radio%20puquio%20ok.png?crc=4271882853",11)
("","ticket master","","",12)
("","LATAM Airlines","","",13)
("","Aerolíneas Argentinas","","",14)
("","Easy Taxi / Cabify / Uber","","",15)
("","Boleterías locales","","",16)
("","Movistar Entradas","","",17)
("","Viajala","","",18)
("","BoletoBank","","",19)
("","Devisa ","","",20)
("","Superciva","","",21)
("","Cinemark ","","",22)
("","Cineplanet ","","",23)
(""," BusPortal","","",24)
("","Ticket Hoy ","","",25)
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