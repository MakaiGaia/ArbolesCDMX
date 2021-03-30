CREATE DATABASE IF NOT EXISTS `arbolescdmx` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

use arbolescdmx;


create table if not exists `CLIENTE` (`id` int not null,
										`nombre` varchar(20) not null,
										`apellido` varchar(20) not null,
                                        `pass` varchar(20) not null,
										`edad` int not null,
                                        `telCelular` int(10) not null,
                                        `correo` varchar(30) not null,
                                        `identOficial` int not null,
                                        `rfc` varchar(13) not null,
                                        `curp` varchar(18) not null,
                                        `genero` varchar(20) not null)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;