-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2018 a las 03:38:12
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategorias` int(11) NOT NULL,
  `genero` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `genero`) VALUES
(1, 'Acción'),
(2, 'Animación'),
(3, 'Anime'),
(4, 'Aventura'),
(5, 'Ciencia-ficción'),
(6, 'Coches'),
(7, 'Comedia'),
(8, 'Crimen'),
(9, 'Culto'),
(10, 'Destacadas'),
(11, 'Documental'),
(12, 'Drama'),
(13, 'Estrenos'),
(14, 'Familia'),
(15, 'Fantasía'),
(16, 'Foreign'),
(17, 'Guerra'),
(18, 'Hindu'),
(19, 'Historia'),
(20, 'Infantil'),
(21, 'Marvel'),
(22, 'Misterio'),
(23, 'Música'),
(24, 'Navidad'),
(25, 'Próximos-Estrenos'),
(26, 'Romance'),
(27, 'Suspense'),
(28, 'Suspenso'),
(29, 'Terror'),
(30, 'Thriller'),
(31, 'uncategorized'),
(32, 'Western'),
(33, 'Película-de-la-televisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `iddatos` int(10) UNSIGNED NOT NULL,
  `imagen` text,
  `imagenho` text,
  `video` varchar(255) DEFAULT NULL,
  `video2` varchar(255) DEFAULT NULL,
  `video3` varchar(255) DEFAULT NULL,
  `descarga` varchar(250) DEFAULT NULL,
  `trailer` varchar(50) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `titulo2` text NOT NULL,
  `anio` varchar(20) DEFAULT NULL,
  `duracion` int(10) DEFAULT NULL,
  `sinopsis` text,
  `idioma` set('espaniol','subespaniol','espanioles') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`iddatos`, `imagen`, `imagenho`, `video`, `video2`, `video3`, `descarga`, `trailer`, `titulo`, `titulo2`, `anio`, `duracion`, `sinopsis`, `idioma`) VALUES
(1, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ySk5NDh9KjmTLaCbnYlk7vowGuc.jpg', 'https://image.tmdb.org/t/p/original/uXNrC9A4VNFfeKLLLaZKfmhCyxQ.jpg', 'https://openload.co/embed/Z0eahsDkmsI/049-Nivel_13_lat_hd720.mp4', 'https://streamango.com/embed/ameprkdkqndcqmbc/049-Nivel_13_lat_hd720_mp4', '', NULL, 'CMSxmp-LRvw', 'Nivel 13', 'The Thirteenth Floor', '1999', 100, 'Hannon Fuller, un magnate de los negocios y empresario emprendedor, muere en extrañas circunstancias. Su amigo y mano derecha, Douglas Hall, se ve lanzado a un mundo de crímenes y decepciones, llegando a descubrir que Fuller llevaba una peligrosa doble vida que se movía entre dos mundos paralelos: uno en 1937 y otro en el presente...', 'espanioles'),
(2, 'https://image.tmdb.org/t/p/original/j6QP6UTgyTtTVkepboIRSa6u6uL.jpg', 'https://image.tmdb.org/t/p/original/72BXXV7UpSteCnoiltBizPxCXq4.jpg', 'https://openload.co/embed/weRzZv97sX0/2Linterna-verde.mp4', 'https://streamango.com/embed/clrccoklmoofdfns/2linterna-verde_mp4', '', 'https://openload.co/f/weRzZv97sX0/2Linterna-verde.mp4', 'PQ_JNy6lyow', 'Linterna verde', 'Green Lantern', '2011', 114, 'En un universo tan vasto como misterioso, una pequeña pero misteriosa fuerza ha existido por siglos. Protectores de la paz y la justicia se hace llamar el cuerpo de linternas verdes. Una hermandad de guerreros que juraron mantener el orden intergaláctico donde cada linterna verde lleva un anillo que le da superpoderes. Pero cuando un nuevo enemigo llamado Parallax amenaza con destruir el balance y el poder del universo, su destino y el de la tierra cae en manos del nuevo recluta; el primer humano que ha sido elegido: Hal Jordan.', 'espanioles'),
(3, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/6453Ua2jBSngAAE5iu900EoBVci.jpg', 'https://image.tmdb.org/t/p/original/obKkOgdvV7kOFUuIOBd2dZ85p4k.jpg', 'https://openload.co/embed/ESh0m0-DvC0/3Las-aventuras-de-Peabody-y-Sherman.lat.hd1080.mp4', 'https://streamango.com/embed/opalrcsbcelbkbbm/3Las-aventuras-de-Peabody-y-Sherman_lat_hd1080_mp4', '', 'https://openload.co/f/ESh0m0-DvC0/3Las-aventuras-de-Peabody-y-Sherman.lat.hd1080.mp4', '2dcGqIASq9U', 'Las aventuras de Peabody y Sherman', 'Mr. Peabody & Sherman', '2014', 92, 'Los personajes de la serie animada de los 60 The Rocky & Bullwinkle Show, Mr. Peabody y Sherman, se cuelan en la gran pantalla adquiriendo una nueva dimensión 3D. En esta ocasión el perro parlante más inteligente del mundo, Mr. Peabody y su mascota Sherman, un enérgico niño bastante ingenuo, se adentrarán en nueva una aventura determinante en el curso de la historia universal. Cuando Sherman desastrosamente avería la máquina del tiempo, la peculiar pareja se ve obligada a recomponer los hechos y arreglar la máquina antes de que sea demasiado tarde y el continuo espacio-tiempo se destruya afectando irreparablemente a nuestra existencia.', 'espaniol'),
(5, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/lqBQ40GYWqU1wWDWirzp1dbOZdg.jpg', 'https://image.tmdb.org/t/p/original/dbRU41CkCOFji8g4Mp9pMNu7jrC.jpg', 'https://openload.co/embed/UeMlUJcbnrA/5-Encerrado.1989_lat_hd1080.mp4', 'https://streamango.com/embed/dsastmefststrooc/5-Encerrado_1989_lat_hd1080_mp4', '', 'https://openload.co/f/UeMlUJcbnrA/5-Encerrado.1989_lat_hd1080.mp4', 'UMc8bOENgbw', 'Encerrado', 'Lock Up', '1989', 115, 'Frank Leone está a punto de cumplir su condena de reclusión por un delito menor. Sin embargo a punto de ser liberado, Warden Drumgoole se hace cargo de la prisión. Drumgoole fue reasignado a tan infernal presidio después de que su administración fuera públicamente puesta en entredicho por Leone, y ahora él se encargará de que nunca vuelva a ver la luz del día.', 'espaniol'),
(6, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/bmaj1ATO4s0SeRCUMuQ40fm0ulH.jpg', 'https://image.tmdb.org/t/p/original/jNLAdepG0JkCgr7Rw8J2y8gaPyw.jpg', 'https://openload.co/embed/wTkMWbgm65E/6-selena.lat_hd720.mp4', 'https://streamango.com/embed/fndllfstbodcrtod/6-selena_lat_hd720_mp4', '', 'https://openload.co/f/wTkMWbgm65E/6-selena.lat_hd720.mp4', 'V91R8iRwJNQ', 'Selena', 'Selena', '1997', 125, 'Basada en hechos reales, narra la meteórica carrera de la joven cantante hispana Selena Quintanilla-Perez, todo un fenómeno de la música que surge en una localidad de Texas para convertirse en una estrella del universo latino. Descubierta casualmente por su propio padre a la temprana edad de 10 años, su vida será un continuo carrusel de problemas familiares, incluyendo su matrimonio en secreto con su guitarrista Chris Perez. A pesar de su corta y trágica carrera, su popularidad fue extraordinaria tanto en México como entre la población hispana de los Estados Unidos, que vivió su fulgurante ascenso y su trágica muerte, sucedida en 1995 cuando contaba con apenas 23 años de edad, a manos de su mayor admiradora: la presidenta de su club de fans y secretaria personal.', 'espaniol'),
(7, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3P32AujNDVdnbUwAqfWz2i8uTWe.jpg', 'https://image.tmdb.org/t/p/original/eCgIoGvfNXrbSiQGqQHccuHjQHm.jpg', 'https://openload.co/embed/FpjUl1UUAuw/7-Lucy.720p.CAS.mkv.mp4', 'https://streamango.com/embed/qrlpbcsqbdmmbkkl/7-Lucy_720p_CAS_mkv_mp4', '', 'https://openload.co/f/FpjUl1UUAuw/7-Lucy.720p.CAS.mkv.mp4', 'luOcWjmAUuA', 'Lucy', 'Lucy', '2014', 90, 'Lucy es una joven obligada a traficar con droga que un día, inesperadamente, absorbe en su sistema los estupefacientes que transporta. Lo sorprendente es que en lugar de ir directa al hospital, las drogas le otorgan una serie de poderes sobrehumanos tales como telequinesis, la cancelación de dolor, y la habilidad de absorber el conocimiento de forma instantánea; poderes que, inevitablemente, cambiarán su vida para siempre.', 'espanioles'),
(8, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/d5Q9Gi3CY589vfVXGL9mVSwbFKS.jpg', 'https://lh3.googleusercontent.com/NWEIFz2aXG6Q0vp32SuwdPOhVPHpoCShM_3WGdRwN81KIaVz_dFY4f6fOqUit2aVJiOwStsUbSGh', 'https://openload.co/embed/GcUmZnbEKtk/8-R.L.Stines.Monsterville.The_Cabinet_of_Souls.lat.hd1080.mp4', 'https://streamango.com/embed/aotclmfnonorkkle/8-R_L_Stines_Monsterville_The_Cabinet_of_Souls_lat_hd1080_mp4', '', 'https://openload.co/f/GcUmZnbEKtk/8-R.L.Stines.Monsterville.The_Cabinet_of_Souls.lat.hd1080.mp4', 'D6ZSJKnAQXk', 'Bienvenidos a la Casa de la Muerte', 'R.L. Stine\'s Monsterville: The Cabinet of Souls', '2015', 85, 'Un grupo de amigos adolescentes deben resistir el hechizo de un malvado showman que se presenta en una casa de los horrores en su pequeña ciudad.', 'espaniol'),
(9, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/i2Lfpppu6Hbr3iKlgXZX4NFUIKl.jpg', 'https://image.tmdb.org/t/p/original/gqLAwI8kmqoMl1Z8ZDl78tAMUGG.jpg', 'https://openload.co/embed/Jgx1kxO6JG0/9-Rostro.del.angel.7p.CAS.mkv.mp4', 'https://streamango.com/embed/snsktrraststqtkf/9-Rostro_del_angel_7p_CAS_mkv_mp4', '', 'https://openload.co/f/Jgx1kxO6JG0/9-Rostro.del.angel.7p.CAS.mkv.mp4', '_5D4QUzehvo', 'El rostro de un ángel', 'The Face of an Angel', '2014', 108, 'Una periodista y un director de documentales investigan un crimen cometido en Perugia (Italia). La protagonista es Amanda Knox, la estudiante norteamericana que fue acusada de asesinar a una compañera de piso con la complicidad de su novio italiano y un amigo de Costa de marfil.', 'espanioles'),
(10, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/wK8nWEzBjXHpmsYsmoHhS2K9mEb.jpg', 'https://image.tmdb.org/t/p/original/g6WT9zxATzTy9NVu2xwbxDAxvjd.jpg', 'https://openload.co/embed/dr_pxgi990s/10-divergente.1.lathd720.mp4', 'https://streamango.com/embed/mqftadrampbmsaln/10-divergente_1_lathd720_mp4', '', 'https://openload.co/f/dr_pxgi990s/10-divergente.1.lathd720.mp4', '853LDxEaf2k', 'Divergente', 'Divergent', '2014', 139, '\"Divergente\" es la historia de una sociedad que se divide en cinco categorías: Verdad, Abnegación, Osadía, Cordialidad y Erudición. Todos los miembros de esta sociedad tienen que elegir a una edad temprana, los dieciséis años, a qué bando creen pertenecer, atendiendo a sus virtudes personales más destacadas. En este dilema se encuentra la protagonista, Beatrice, que sorprende a todos sus allegados y amigos con la decisión que toma. Beatrice, que pasa a llamarse más tarde Tris, tiene que buscar su lugar adecuado, pero ella no es como el resto. Guarda un secreto que podría ser definitivo para mantener el orden social descrito y también para salvar su propia vida.', 'espaniol'),
(11, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/1hYevti8A2YDs155FEgfvfFxMJg.jpg', 'https://image.tmdb.org/t/p/original/i7wpYzdgoY2zaK3qqkHWCdoTc1w.jpg', 'https://openload.co/embed/xIjBhIxSwxA/11-Riesgo_total_%281993%29_10808p_latino.mp4', 'https://streamango.com/embed/mtobqseobktkelfc/11-Riesgo_total_1993_10808p_latino_mp4', '', 'https://openload.co/f/xIjBhIxSwxA/11-Riesgo_total_%281993%29_10808p_latino.mp4', 'https://www.youtube.com/watch?v=MckRA8OOG1o', 'Al límite del Riesgo', 'Maximum Risk', '1996', 101, 'Un policía francés descubre que ha tenido un gemelo cuando éste aparece asesinado en Niza. A partir de ahí, decide viajar a los Estados Unidos para descubrir más cosas sobre las actividades de su hermano. Con esta intención, decide suplantarle, viéndose involucrado en una trama que le obligará a enfrentarse al FBI y a las mafias rusas.', 'espaniol'),
(12, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/mpZkQKUlcUTwbgcmcGaNALAkr72.jpg', 'https://image.tmdb.org/t/p/original/lqn2pPNzHZYg1KQowGC2yPHvMYk.jpg', 'https://openload.co/embed/uCHWaKH_XBs/12-Las_aventuras_de_Tint%C3%ADn_El_secreto_del_Unicornio.mp4', 'https://streamango.com/embed/kffsnkeadoqkfnsc/12-Las_aventuras_de_Tint_n_El_secreto_del_Unicornio_mp4', '', 'https://openload.co/f/uCHWaKH_XBs/12-Las_aventuras_de_Tint%C3%ADn_El_secreto_del_Unicornio.mp4', 'kB3FUOMrAE8', 'Las aventuras de Tintín: El secreto del unicornio', 'The Adventures of Tintin', '2011', 107, 'Tintín, un joven periodista dotado de una curiosidad insaciable, y su leal perro Milú descubren que la maqueta de un barco contiene un enigmático y secular secreto que deben investigar. A partir de ese momento, Tintín se verá acosado por Ivan Ivanovitch Sakharine, un diabólico villano que cree que el joven ha robado un valioso tesoro vinculado a un cruel pirata llamado Rackham el Rojo. Pero, con la ayuda de Milú, del cascarrabias capitán Haddock y de los torpes detectives Hernández y Fernández, viajará por medio mundo, sirviéndose de su proverbial astucia para burlar a sus perseguidores y encontrar antes que ellos El Unicornio, un navío hundido que puede proporcionar la clave de una fabulosa fortuna y de una antigua maldición.', 'espaniol'),
(13, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/lyprRmrmAn17hgsjiSK89D1jIil.jpg', 'https://image.tmdb.org/t/p/original/pALnP7MdGEK18FQkMH8JkkepRIc.jpg', 'https://openload.co/embed/72TuinROB8o/13-bbdestino.final.1.lat.hd1080.mp4', 'https://streamango.com/embed/taflqqfrfrannbse/13-bbdestino_final_1_lat_hd1080_mp4', '', 'https://openload.co/f/72TuinROB8o/13-bbdestino.final.1.lat.hd1080.mp4', 'pCiWxIHw7bQ', 'Destino final', 'Final Destination', '2000', 98, 'Al subir a un avión con destino a Paris, junto con sus compañeros de clase, Alex tiene una premonición, por lo que desembarca justo antes de despegar junto a seis de sus amigos y una profesora. Poco después el aparato explota en el aire. El grupo de supervivientes se verá perseguido por la dama de la guadaña, la propia muerte, que no se dará por vencida. Acosado por el FBI que considera a Alex responsable del accidente y perseguido por sus propios miedos, el joven deberá descubrir que las coincidencias y los accidentes no son algo casual.', 'espaniol'),
(14, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4KHFGNCQvAa5xjJpAFBgqcF4mC2.jpg', 'https://image.tmdb.org/t/p/original/jIX8LRnNdSlOjYv8Z7z9VfdReNV.jpg', 'https://openload.co/embed/22zG5ynO2rY/14-bbdestino.final.2.lathd1080.mp4', 'https://streamango.com/embed/ckmsflblpfedkmrc/14-bbdestino_final_2_lathd1080_mp4', '', 'https://openload.co/f/22zG5ynO2rY/14-bbdestino.final.2.lathd1080.mp4', '7vZqVooni2o', 'Destino final 2', 'Final Destination 2', '2003', 90, 'Kimberly Corman se va de vacaciones con sus amigos Dano , Shaina y Frankie hacia Daytona Beach. De repente, un camión cargado de troncos pierde el control al reventarse la cadena que los sostiene, cayendo y rodando por la autopista donde se origina un trágico accidente, matando a todos los que se encuentran a su paso. Pero esto solo fue una premonición de Kimberly, que al volver a la realidad se asusta y detiene la camioneta en plena desviación de la autopista, de modo que ocasiona que los autos que van detrás se detengan haciendo un gran atasco. Un policía , se acerca a ver que ocurre, y Kim le cuenta lo que ha visto. El policía no le cree y trata de tranquilizarla haciéndole entender que es solo su imaginación, y le ruega que retire el auto del camino, pero Kim se niega, cuando de repente, el camión de troncos cruza ante sus ojos y se cumple la catástrofe, tal y como ella lo había contado.', 'espaniol'),
(15, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3PEVkIBOii1fxQxaQ0iKODGnBUp.jpg', 'https://image.tmdb.org/t/p/original/ntgZZBA0QoNDcn8Bj78UBoksUVJ.jpg', 'https://openload.co/embed/g608zEgDKys/15-bbdestino.final.3.lat_hd1080.mp4', 'https://streamango.com/embed/pqbfkeocfsccearm/15-bbdestino_final_3_lat_hd1080_mp4', '', 'https://openload.co/f/g608zEgDKys/15-bbdestino.final.3.lat_hd1080.mp4', 'xp8IR9Mh3g0', 'Destino final 3', 'Final Destination 3', '2006', 92, 'Una estudiante del instituto tiene una premonición sobre una tragedia en un parque de atracciones local, por lo que decide no montarse en una montaña rusa que presiente va a descarrilar...', 'espaniol'),
(16, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/wbv0q5aWHhK7L50ihGFnXoS9ALk.jpg', 'https://image.tmdb.org/t/p/original/kGalplb3ORM7aGXkW9UaZrp5AYN.jpg', '', '', '', '', 'azQH42WEoTg', 'Destino final 4', 'The Final Destination', '2009', 82, 'Nick O’Bannon y unos amigos acuden a un circuito de carreras para presenciar una prueba del Nascar. Durante ésta tiene lugar un terrible accidente que conlleva desastrosas consecuencias para el estadio. Pero Nick descubre que se trata de sólo una visión de algo que está a punto de suceder, y junto con otras doce personas consigue salir del recinto y escapar de una tragedia segura. Pensando que han burlado a la muerte, el grupo continúa con su vida, pero desafortunadamente para Nick, Lori y sus amigos sólo es el principio, ya que la muerte no deja cabos sueltos, y regresará para llevarse a los supervivientes de una manera brutal.', 'espaniol'),
(17, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/yU81cJ29FazT39KXTqFQ0OrQo9q.jpg', 'https://image.tmdb.org/t/p/original/kk28Whg2OE7evFpV2DLWEtflP5P.jpg', 'https://openload.co/embed/oSMbHuvXnpQ/16-bbdestino.final.5.lat_hd1080.mp4', 'https://streamango.com/embed/rclaqleblrbpbaqk/16-bbdestino_final_5_lat_hd1080_mp4', '', 'https://openload.co/f/oSMbHuvXnpQ/16-bbdestino.final.5.lat_hd1080.mp4', 'OWVYtZVhg-Q', 'Destino final 5', 'Final Destination 5', '2011', 95, 'Sam Lawton tiene una premonición sobre la destrucción de un puente colgante que causaría su muerte y la de otras personas. La visión se hace realidad, pero Sam se las arregla para salvarse a sí mismo y a algunos otros de la catastrófica tragedia. Sin embargo, Sam y su novia Molly descubren que no están realmente a salvo: la muerte los persigue a ellos y a los que sobrevivieron al horrible accidente... Quinta entrega de la popular serie de terror \"Destino final\".', 'espaniol'),
(18, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4lxMDbQ6jAafG0TLXAyUlmo7mOh.jpg', 'https://image.tmdb.org/t/p/original/7sSOGEtDbQkDpVNkrmmz10AtLh6.jpg', 'https://openload.co/embed/0WOKsofZTQM/17-Abzurdah.7p.LAT.mp4', 'https://streamango.com/embed/qnbaomcccokofddk/17-Abzurdah_7p_LAT_mp4', '', 'https://openload.co/f/0WOKsofZTQM/17-Abzurdah.7p.LAT.mp4', 'SL_e4tdlYN0', 'Abzurdah', 'Abzurdah', '2015', 90, 'Abzurdah cuenta la historia de Cielo, una adolescente de clase media acomodada que conoce por internet a un chico nueve años mayor que ella, con quien inicia una relación y se enamora perdidamente. Sumergida en un ambiente superficial, sin amigas y en un mundo adulto que poco comprende del universo adolescente, la relación se vuelve una obsesión para Cielo, una narradora locuaz, incisiva y vertiginosa, que nos conduce por una historia de amor no correspondido donde la opción de dejar de comer se vuelve la ilusión de una vida perfecta.', 'espaniol'),
(19, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/p9rjqQM9q5tIKs49b0qVIBIUA2e.jpg', 'https://image.tmdb.org/t/p/original/blD4vACWJiW1fpN0j3nQs5B0nSR.jpg', 'https://openload.co/embed/UlEJ-1mW6go/18-La_abeja_Maya.la_pel%C3%ADcula.lat_hd1080.mp4', 'https://streamango.com/embed/afdoqfpcskcptkmr/18-La_abeja_Maya_la_pel_cula_lat_hd1080_mp4', '', 'https://openload.co/f/UlEJ-1mW6go/18-La_abeja_Maya.la_pel%C3%ADcula.lat_hd1080.mp4', 'yNXfOOL8824', 'la abeja maya', 'la abeja maya', '1975', 25, 'Maya the Bee is an anime television series produced by Zuiyo Enterprise in Japan. The series consisted of 52 episodes and was originally telecast across Japan from April 1975 to April 1976 on the TV Asahi network. Based on the classic children\'s book Maya the Bee by Waldemar Bonsels, the anime series has become extremely popular in Europe and has been rebroadcast in countries and languages all around the world since its premiere.', 'espaniol'),
(20, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/p6LiANVEWUQ3gCu7l7RxesPgkbb.jpg', 'https://image.tmdb.org/t/p/original/3gu944cvSn9fY4ON9z7m26v3Rxh.jpg', 'https://openload.co/embed/HhBFg9X9ciU/19-Agua_para_elefantes.lat_hd1080.mp4', 'https://streamango.com/embed/aktmncrtrsplbrnk/19-Agua_para_elefantes_lat_hd1080_mp4', '', 'https://openload.co/f/HhBFg9X9ciU/19-Agua_para_elefantes.lat_hd1080.mp4', 'K60-TLN13H4', 'Agua para elefantes', 'Water for Elephants', '2011', 120, 'En la época de la Gran Depresión, un joven estudiante de veterinaria se ve obligado a dejar sus estudios tras la muerte de sus padres. Empieza entonces a trabajar para el circo de los hermanos Benzini como veterinario y encargado de los animales. El joven se enamora de Marlena, una amazona que está casada con August, el dueño del circo, un hombre tan carismático como retorcido... Adaptación del aclamado best-seller homónimo de Sara Gruen', 'espaniol'),
(21, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/th4zcMSPbdhDMdCglCcZIjDkWLd.jpg', 'https://image.tmdb.org/t/p/original/z4GV6fSihcbMX5ODeWY41Micszm.jpg', 'https://openload.co/embed/xrRG2xtOHLU/21-Pinocchio_%28Pinocho%29_lat.mp4', 'https://streamango.com/embed/knkfflmtftbelesr/21-Pinocchio_Pinocho_lat_mp4', '', 'https://openload.co/f/xrRG2xtOHLU/21-Pinocchio_%28Pinocho%29_lat.mp4', 'notiene', 'Pinocho', 'Pinocchio', '1940', 88, 'Un anciano llamado Geppetto fabrica una marioneta de madera a la que llama Pinocho, con la esperanza de que se convierta en un niño de verdad. El Hada Azul hace realidad su deseo y da vida a Pinocho, pero conserva su cuerpo de madera. Pepito Grillo, la conciencia de Pinocho, tendrá que aconsejarlo para que se aleje de las situaciones difíciles o peligrosas hasta conseguir que el muñeco se convierta en un niño de carne y hueso.', 'espaniol'),
(22, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/e8pmWcArrz6IVDrBNp7yEAtKE3k.jpg', 'https://image.tmdb.org/t/p/original/3zQzN87U8pJgLDvVRZ6zj05jEYw.jpg', 'https://openload.co/embed/mulb-WTjvCs/22-Estado_de_sitio.1998_lat_hd1080.mp4', 'https://openload.co/embed/mulb-WTjvCs/22-Estado_de_sitio.1998_lat_hd1080.mp4', '', 'https://openload.co/f/mulb-WTjvCs/22-Estado_de_sitio.1998_lat_hd1080.mp4', 'Btn9ISwK--M', 'Estado de sitio', 'The Siege', '1998', 116, 'Tras el secuestro de un líder religioso musulmán por tropas norteamericanas, Nueva York se convierte en el objetivo de una serie de atentados terroristas. Anthony Hubbard, el director del equipo antiterrorista del FBI, y la agente de la CIA Elise Kraft serán los encargados de acabar con la organización criminal. Mientras tanto, el gobierno decide declarar la ley marcial en la Gran Manzana.', 'espaniol'),
(23, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/wwEi8IMGfSXSQVXNX6cKy5KUtvC.jpg', 'https://image.tmdb.org/t/p/original/baPvHD25royEtail74wW3r4Mzxc.jpg', 'https://openload.co/embed/oTAF8MC3CVY/23-Sin_Hijos_%5BBrRip_720p%5D_lat.mkv.mp4', 'https://streamango.com/embed/ecnpqqdtsdbttpad/23-Sin_Hijos_BrRip_720p_lat_mkv_mp4', '', 'https://openload.co/f/oTAF8MC3CVY/23-Sin_Hijos_%5BBrRip_720p%5D_lat.mkv.mp4', 'CTE-kk4gJMo', 'Sin hijos', 'Sin hijos', '2015', 100, 'Gabriel está separado hace cuatro años. Desde entonces Sofía, su hija de ocho años, es el centro de su vida. Negado de plano a intentar una nueva relación amorosa, Gabriel vuelca toda su energía en su hija y en su trabajo. El idilio padre-hija se ve conmocionado por la aparición de Vicky, amor platónico de la adolescencia, transformada ahora en una mujer hermosa, independiente y desenfadada. Ante la inminencia del romance, ella pone una condición: no se involucraría por nada del mundo con un hombre con hijos. A partir de ese momento, su vida se transforma en un tormento de maniobras y ocultamientos: ante cada cita con Vicky.', 'espaniol'),
(24, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/7Sq7PuBIDdhaeSEpLDgbikOQ8BB.jpg', 'https://image.tmdb.org/t/p/original/3LkvUFhsZGNhShg1oNsxvScvgQr.jpg', 'https://openload.co/embed/SnYZPPUaAnI/24-Equipo_mortal.1998_lat_hd720.mp4', 'https://streamango.com/embed/cnaleecppqnnndlk/24-Equipo_mortal_1998_lat_hd720_mp4', '', 'https://openload.co/f/SnYZPPUaAnI/24-Equipo_mortal.1998_lat_hd720.mp4', '9F1NnHxGKUY', 'Equipo mortal', 'The Big Hit', '1998', 91, 'Mel, un buscado asesino a sueldo, planea un secuestro rápido con cuatro socios, Cisco, Crunch, Wince y Gump, y así conseguir dinero fácil. Sin embargo, la cosa se complica y el tiro les sale por la culata, y lo que parecía un secuestro fácil se complica enormemente, ya que la chica secuestrada, Keiko, es la hija de un importante hombre de negocios, no es otra que la ahijada de Paris el jefe de Mel. Cuando uno de sus socios le traiciona, Mel se convierte en el principal objetivo de Paris. Mientras tanto, y como si todo esto no fuera suficiente, la amante de Mel, Chantel, se fuga con su dinero al mismo tiempo que los padres de su prometida Pam, reacios a la boda, llegan de visita. Los problemas laborales y caseros de Mel colisionan entre sí cuando este se encuentra a la vez esquivando a los sicarios de Paris e intentando causar una buena impresión a sus futuros suegros, comprobando cómo la lujosa vida que se había ido construyendo se le desmorona como un castillo de naipes.', 'espaniol'),
(25, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/bCv4FiSPV9HyGi8xRmdKvRZXPX6.jpg', 'https://image.tmdb.org/t/p/original/mgGQbf8trfPw7VVI2WmD8svPO7Y.jpg', 'https://openload.co/embed/8JEwN5eznQk/25-La_casa_de_los_muertos_%28Demonic%29_1080p_latino.mkv.mp4', 'https://streamango.com/embed/msbtfflfspfassbq/25-La_casa_de_los_muertos_Demonic_1080p_latino_mkv_mp4', '', 'https://openload.co/f/8JEwN5eznQk/25-La_casa_de_los_muertos_%28Demonic%29_1080p_latino.mkv.mp4', 'QERakFZvhFU', 'Demonic', 'Demonic', '2015', 83, 'La película se centra en un terrible, crimen de cómo cinco jovenes estudiantes son brutalmente asesinados en el interior de una abandonada casa. El detective Mark Lewis y la psicóloga del departamento Elizabeth Klein se centran en John Ascot, el principal sospechoso, quien está siendo interrogado en la estación de policía. Durante el interrogatorio explicará lo que ha sucedido con sus amigos, quienes eran cazadores de fantasmas amateurs que estaban realizando una investigación en el interior de la casa. La película nos mostrará imágenes del material encontrado, cintas del interrogatorio así como película clásica.', 'espaniol'),
(26, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/95awqTWnU41lX2k2GnPKAnFOSy1.jpg', 'https://image.tmdb.org/t/p/original/bA7oh6mDeROcWgaBt5AxOCmavTr.jpg', 'https://openload.co/embed/-XM8JTzg_R0/26-Babel.lat_hd1080.mp4', 'https://streamango.com/embed/nnlslpdmbkkrtntl/26-Babel_lat_hd1080_mp4', '', 'https://openload.co/f/-XM8JTzg_R0/26-Babel.lat_hd1080.mp4', 'i3maaU-Pgf0', 'Babel', 'Babel', '2006', 143, 'Ambientada en Marruecos, Túnez, México y Japón. Armados con un Winchester, dos muchachos marroquíes salen en busca del rebaño de cabras de la familia. En medio del silencio del desierto, deciden probar el rifle, sin conocer el alcance de la bala. En un instante, entran en colisión las vidas de cuatro grupos de personas que viven en tres continentes distintos.', 'espaniol'),
(27, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/coR3rhXIHJQF6DDrtA9EUeqeo0o.jpg', 'https://image.tmdb.org/t/p/original/ni3DtIc0rm7OgxenOPKEktUjgsU.jpg', 'https://openload.co/embed/nAcChApVWKI/27-Caos.2005.lat_hd1080.mp4', 'https://streamango.com/embed/ppsndmmlcbdcqtrp/27-Caos_2005_lat_hd1080_mp4', '', 'https://openload.co/f/nAcChApVWKI/27-Caos.2005.lat_hd1080.mp4', 'JBMH0SCvOIU', 'Caos', 'Chaos', '2005', 106, 'La historia empieza en una tranquila mañana de un día laborable cuando un banco abre sus puertas. Antes de que nadie se dé cuenta de lo que pasa, un grupo de cinco ladrones, encapuchados y vestidos de negro, irrumpen en el banco y toman a todos como rehenes. En breve la policía llega y rodean a los atracadores. El cabecilla de la banda Lorenz (Wesley Snipes) pide un negociador. Exige que sea el detective Quentin Conners (Jason Statham). Conners vuelve a su puesto tras su reciente expulsión causada por un incidente fortuito que terminó con la muerte de un rehén, y la expulsión definitiva del cuerpo de su entonces compañero el detective York.', 'espaniol'),
(28, 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/kmC85ZKOBDyxevm6egBN6Rp0bym.jpg', 'https://image.tmdb.org/t/p/original/zGP9UgLsMUZUlZwR2s6wUk0Qgp5.jpg', 'https://openload.co/embed/UxiY8VMqpvE/4La-sombra-del-reino2007-lat-hd1080.mp4', 'https://streamango.com/embed/etbldbbmnfofrmcd/4La-sombra-del-reino2007-lat-hd1080_mp4', '', 'https://openload.co/f/UxiY8VMqpvE/4La-sombra-del-reino2007-lat-hd1080.mp4', 'DqpT9erQ3Js', 'La sombra del reino', 'The Kingdom', '2007', 110, 'A Ronald Fleury (Jamie Foxx), un inteligente agente especial del Gobierno, le acaban de encargar una importante misión: organizar un equipo de élite (Jennifer Garner, Chris Cooper y Jason Baterman) que deberá desplazarse a Riad para capturar al cerebro de un atentado terrorista que le costó la vida a varios compatriotas. El equipo dispondrá de una semana para infiltrarse y destruir una célula terrorista decidida a emprender la “yihad” (guerra santa) contra Occidente. Fleury encuentra un inesperado aliado: un capitán de la policía local (Ashraf Bahroum) que lo instruye sobre los entresijos de la política saudí y le ayuda a investigar la auténtica razón del atentado, gracias a lo cual acabarán encontrando a los terroristas.', 'espaniol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion`
--

CREATE TABLE `relacion` (
  `idrelacion` int(11) NOT NULL,
  `iddatos` int(11) DEFAULT NULL,
  `idcategorias` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `relacion`
--

INSERT INTO `relacion` (`idrelacion`, `iddatos`, `idcategorias`) VALUES
(1, 1, 5),
(2, 1, 22),
(3, 1, 27),
(4, 2, 1),
(5, 2, 4),
(6, 2, 5),
(7, 2, 27),
(8, 3, 2),
(9, 3, 4),
(10, 3, 14),
(11, 5, 1),
(12, 5, 8),
(13, 5, 12),
(14, 5, 27),
(15, 6, 12),
(16, 6, 23),
(17, 7, 1),
(18, 7, 5),
(19, 8, 7),
(20, 8, 29),
(21, 9, 12),
(22, 9, 27),
(23, 10, 1),
(24, 10, 4),
(25, 10, 5),
(26, 11, 1),
(27, 11, 4),
(28, 11, 27),
(29, 12, 2),
(30, 12, 4),
(31, 12, 22),
(32, 13, 28),
(33, 13, 29),
(34, 14, 22),
(35, 14, 28),
(36, 14, 29),
(37, 15, 22),
(38, 15, 28),
(39, 15, 29),
(40, 16, 22),
(41, 16, 28),
(42, 16, 29),
(43, 17, 22),
(44, 17, 28),
(45, 17, 29),
(46, 18, 12),
(47, 19, 2),
(48, 19, 4),
(49, 20, 12),
(50, 20, 26),
(51, 21, 2),
(52, 21, 14),
(53, 22, 1),
(54, 22, 8),
(55, 22, 12),
(56, 22, 27),
(57, 23, 7),
(58, 23, 26),
(59, 24, 1),
(60, 24, 4),
(61, 24, 7),
(62, 24, 27),
(63, 25, 27),
(64, 25, 29),
(65, 26, 12),
(66, 27, 1),
(67, 27, 8),
(68, 27, 12),
(69, 28, 1),
(70, 28, 12),
(71, 28, 27);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategorias`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`iddatos`);

--
-- Indices de la tabla `relacion`
--
ALTER TABLE `relacion`
  ADD PRIMARY KEY (`idrelacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `iddatos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `relacion`
--
ALTER TABLE `relacion`
  MODIFY `idrelacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
