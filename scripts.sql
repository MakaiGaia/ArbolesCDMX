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

ALTER TABLE `CLIENTE` ADD PRIMARY KEY (`id`);

ALTER TABLE `CLIENTE` MODIFY `id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;

create table if not exists `EMPLEADO` (`id_servPu` int not null,
										`nombre` varchar(20) not null,
										`apellido` varchar(20) not null,
                                        `pass` varchar(20) not null,
										`telCelular` int(10) not null,
                                        `correo` varchar(30) not null,
                                       `puesto` varchar(30) not null)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

ALTER TABLE `EMPLEADO` ADD PRIMARY KEY (`id_servPu`);

ALTER TABLE `EMPLEADO` MODIFY `id_servPu` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;


create table if not exists `ARCHIVOS` (`idIdentificacion` int not null,
										`idCliente` int not null,
										`ine` binary not null,
                                        `domicilio` varchar(20) not null)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

ALTER TABLE `ARCHIVOS` ADD PRIMARY KEY (`idIdentificacion`);

ALTER TABLE `ARCHIVOS` MODIFY `idIdentificacion` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;


create table if not exists `TRAMITEPUBLICO` (`idTramite` int not null,
										`id_folioPu` int not null,
                                        `id_serviP` int not null,
										`idCliente` int not null,
                                        `autorizacion` varchar(20) not null,
										`estatus` VARCHAR(20) not null,
                                        `prioridad` varchar(10) not null)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

ALTER TABLE `TRAMITEPUBLICO` ADD PRIMARY KEY (`idTramite`);

ALTER TABLE `TRAMITEPUBLICO` MODIFY `idTramite` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;

create table if not exists `TRAMITEPRIVADO` (`idTramite` int not null,
										`id_folioPr` int not null,
                                        `id_serviP` int not null,
										`idCliente` int not null,
                                        `autorizacion` varchar(20) not null,
										`estatus` VARCHAR(20) not null,
                                        `prioridad` varchar(10) not null)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

ALTER TABLE `TRAMITEPRIVADO` ADD PRIMARY KEY (`idTramite`);

ALTER TABLE `TRAMITEPRIVADO` MODIFY `idTramite` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;



create table if not exists `PERMISOS` (`idPermiso` int not null,
										`id_folioPrivado` int not null,
                                        `idCliente` int not null,
										`permiso` binary not null,
										`planos` binary not null,
                                        `regManifestacion` binary not null)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

ALTER TABLE `PERMISOS` ADD PRIMARY KEY (`idPermiso`);

ALTER TABLE `PERMISOS` MODIFY `idPermiso` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;

	
ALTER TABLE nombre_tabla MODIFY nombre_columna DATE NOT NULL;