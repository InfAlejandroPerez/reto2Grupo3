-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2021 a las 11:04:30
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `euskalmet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `CodEstacion` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Precipitaciones` varchar(50) DEFAULT NULL,
  `Temperatura` int(11) DEFAULT NULL,
  `Velocidad viento` int(11) DEFAULT NULL,
  `COmgm3` float DEFAULT NULL,
  `CO8hmgm3` float DEFAULT NULL,
  `NOgm3` float DEFAULT NULL,
  `NOXgm3` float DEFAULT NULL,
  `PM10gm3` float DEFAULT NULL,
  `PM25gm3` float DEFAULT NULL,
  `SO2gm3` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacios_naturales`
--

CREATE TABLE `espacios_naturales` (
  `CodEspacio` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estaciones`
--

CREATE TABLE `estaciones` (
  `CodEstacion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `CodMunicipio` int(11) NOT NULL,
  `CoordenadaX` double NOT NULL,
  `CoordenadaY` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estaciones`
--

INSERT INTO `estaciones` (`CodEstacion`, `Nombre`, `Direccion`, `CodMunicipio`, `CoordenadaX`, `CoordenadaY`) VALUES
(1, '3 DE MARZO', 'Plaza Tres de Marzo, s/n', 59, 42.85604797053618, -2.667784994714487),
(2, 'ABANTO', 'Avda. del Minero, 2. Ayuntamiento', 2, 43.32047399433485, -3.0741559961978044),
(3, 'AGURAIN', 'C/ Fueros, 11. Subcomisaría de la Ertzaintza.', 51, 42.84901250588428, -2.3937033896081683),
(4, 'ALGORTA (BBIZI2)', 'Carretera de Galea, s/n ', 44, 43.362055748944286, -3.0227822073211765),
(5, 'ALONSOTEGI', 'C/ Baztieta, s/n. Bº Irauregi', 912, 43.247567997964374, -2.988024000380936),
(6, 'ANDOAIN', 'Ikastola Aita larramendi', 9, 43.22137866586519, -2.02332524753123),
(7, 'ARRAIZ (Monte)', 'Camino de Arraiz, s/n', 20, 43.245553729819484, -2.960475856567045),
(8, 'ATEGORRIETA', 'Avda. Ategorrieta, 71', 69, 43.32199194732484, -1.960650618338729),
(9, 'AV. GASTEIZ', 'Avda. Gasteiz, 97', 59, 42.85478118366939, -2.6807098224581067),
(10, 'AVDA. TOLOSA', 'C/ Andrestegi, 2 ', 69, 43.30941344063433, -2.010938423674493),
(11, 'AZPEITIA', 'C/ Perdillegi, s/n', 18, 43.180370053194196, -2.2682104189344456),
(12, 'AÑORGA', 'Avda. de Añorga, 12 (Añorga Txiki)', 69, 43.29053138556358, -1.9957411467011474),
(13, 'BANDERAS (meteo)', 'Monte Banderas, s/n', 20, 43.28099012364825, -2.953278416670214),
(14, 'BARAKALDO', 'C/ Hogar propio, 7. CIFP Nicolás Larburu', 13, 43.298378997955, -2.987132999827669),
(15, 'BASAURI', 'C/ Uribarri, 5. CEIP Bizkotxalde.', 15, 43.24113129588412, -2.8837610228035238),
(16, 'BEASAIN', 'Plaza Gipuzkoa, 1', 19, 43.04809432240711, -2.191380269702985),
(17, 'BOROA METEO', 'Parque Empresarial Boroa, s/n', 3, 43.23590459584916, -2.7506874305174405),
(18, 'CASTREJANA', 'C/ Larrazabal, 1. Bº Castrejana', 13, 43.25807942736176, -2.973456590856772),
(19, 'DURANGO', 'C/ San Roque, 20 bajo. E.S. Roque', 27, 43.168285997690994, -2.6379580009450136),
(20, 'EASO', 'Plaza del Centenario, s/n', 69, 43.31215280742268, -1.9809008637096939),
(21, 'ELCIEGO', 'C/ Gabriel Celaya, 8', 22, 42.51824807424149, -2.61947521199466),
(22, 'ERANDIO', 'Avda. José Luis Goyoaga, s/n (Pasaje de Altzaga)', 902, 43.3026526345891, -2.9772399863752486),
(23, 'EUROPA', 'Parque Europa. Bº Txurdinaga', 20, 43.25491056506432, -2.902376115931137),
(24, 'FARMACIA', 'Paseo Universidad, 7. Fac. Farmacia UPV', 59, 42.840099615592926, -2.672563184280286),
(25, 'FERIA (meteo)', 'C/ Rafael Moreno Pitxitxi, s/n', 20, 43.26522199716327, -2.9475439999557134),
(26, 'HERNANI', 'C/ Aristizabal, s/n. Centro de salud Hernani.', 40, 43.26743142273141, -1.977715640356133),
(27, 'JAIZKIBEL', 'Monte Jaizkibel, s/n', 36, 43.342775184321106, -1.8594129027945114),
(28, 'LARRABETZU', 'Barrio Berrezoaga, 3', 52, 43.261226121618066, -2.799399084312731),
(29, 'LAS CARRERAS', 'Plaza Trinidad, s/n. Bº Las Carreras', 2, 43.31960312849335, -3.0973975060209376),
(30, 'LASARTE-ORIA', 'Parque Tximistarreta', 902, 43.26870022418793, -2.0191293415933154),
(31, 'LEZO', 'Plaza Polantzarene, s/n', 53, 43.32152243586307, -1.900131049811533),
(32, 'LLODIO', 'C/ Lamuza, s/n', 36, 43.1440289422417, -2.9633852821260223),
(33, 'LOS HERRAN', 'Parque Judizmendi. Bº Judizmendi', 59, 42.84370295644861, -2.661230556636825),
(34, 'MAZARREDO', 'C/ Alameda Mazarredo, s/n (Guggenheim)', 20, 43.26750551179745, -2.935188110338201),
(35, 'MONDRAGON', 'Plaza Jose María Arizmendiarrieta, s/n', 55, 43.06412079434686, -2.4903966831445423),
(36, 'MONTORRA', 'Barrio Montorra fte. nº5', 3, 43.209014222504145, -2.7165885073623226),
(37, 'MUNDAKA', 'Camino Goitiz, s/n. Depósito de Agua', 68, 43.40588884294258, -2.7031593675211343),
(38, 'MUNOA', 'C/ Llano, 55. CEP Munoa. Bº Lutxana', 13, 43.28558799716144, -2.978696000976749),
(39, 'MUSKIZ', 'C/ Giba Fregenal, s/n. Estación de Renfe', 71, 43.32071311956527, -3.1127162723783197),
(40, 'Mª DIAZ HARO', 'C/ Mª Díaz de Haro, 60', 20, 43.25880286639215, -2.945656664175787),
(41, 'NAUTICA', 'C/ Mª Díaz de Haro, 68 (Esc. Náutica)', 78, 43.32694444265417, -3.023333333735672),
(42, 'PAGOETA', 'Jardín Botánico de Iturraran. Parque Natural de Pagoeta. ', 16, 43.25060521979407, -2.1548873966664503),
(43, 'PUYO', 'Camino de Puyo, 14', 69, 43.302777170621106, -1.9840112864449164),
(44, 'SAN JULIAN', 'Camino a Valles, s/n. Bº San Julian', 71, 43.33265015831669, -3.112994770178107),
(45, 'SAN MIGUEL', 'Parque pinceles. Bº San Miguel', 15, 43.2212234317361, -2.886508983250916),
(46, 'SANGRONIZ', 'C/ Iturrikosolo, s/n', 904, 43.29842135635236, -2.93038581833024),
(47, 'SANTURCE', 'C/ Vista Alegre, 29 ', 82, 43.33301199742545, -3.042560000349237),
(48, 'SERANTES', 'Camino Serantes igoera, s/n', 82, 43.3344367083824, -3.0629905698856272),
(49, 'SESTAO', 'Parque Portopin', 84, 43.307726099387494, -2.9959496198447484),
(50, 'TOLOSA', 'Avda. Martin Jose Iraola, 23', 71, 43.13078067861342, -2.078002156707588),
(51, 'URKIOLA', 'Urkiola auzoa, 8', 1, 43.100442429429606, -2.6508700717196243),
(52, 'USURBIL', 'San Inazio', 73, 43.27378032307657, -2.0505110667115676),
(53, 'VALDEREJO', 'Ctro. de Interpretación. Parque Natural de Valderejo', 55, 42.87516709375477, -3.231732505322038),
(54, 'ZALLA', 'Avda. Kosme Bibanko Etxebarria, 2', 96, 43.2128572411877, -3.134461258966499),
(55, 'ZELAIETA PARQUE', 'Parque Zelaieta ', 3, 43.21890568490462, -2.7344969803118295),
(56, 'ZIERBENA (Puerto)', 'Puerto de Zierbena, s/n. Bº El Puerto', 913, 43.35305543364201, -3.080988277376953),
(57, 'ZUBIETA', 'URIBITARTE IBILBIDEA', 69, 43.272061873363164, -2.0313507420960284),
(58, 'ZUBIETA METEO', 'ZUBIETA', 69, 43.25597376352475, -2.0317166856330036),
(59, 'ZUMARRAGA', 'Grupo Izazpi 3, 6 ', 80, 43.08507598449891, -2.316228856182885);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esta_en`
--

CREATE TABLE `esta_en` (
  `CodEspacio` int(11) NOT NULL,
  `CodMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_espacios`
--

CREATE TABLE `favoritos_espacios` (
  `CodUsuario` int(11) NOT NULL,
  `CodEspacio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_municipios`
--

CREATE TABLE `favoritos_municipios` (
  `CodUsuario` int(11) NOT NULL,
  `CodMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashes`
--

CREATE TABLE `hashes` (
  `CodHash` int(11) NOT NULL,
  `Url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `CodMunicipio` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `CodProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`CodMunicipio`, `Nombre`, `Descripcion`, `CodProvincia`) VALUES
(1, 'Abadiño', 'Montes y árboles tiñen de verde los parajes de esta localidad perteneciente a la comarca del Duranguesado y por los que circulan los ríos Ibaizabal y Urkiola. Una buena opción para admirar estos parajes es a través de diversas rutas que ofrece Abadiño y que se pueden realizar a pie, en bicicleta incluso a caballo. Al llegar a esta bella localidad, quedaremos impresionados por sus edificios, con una larga historia en sus cimientos. La Torre de Muntsaratz, por ejemplo, data del siglo IX y se trata de una de las edificaciones renacentistas más importantes de su género. Otro de los monumentos más destacables es la Casa de Astola, que fue centro de actividades políticas y administrativas. Hoy en día, funciona como sede de varias asociaciones de la comarca. Asimismo, fuera del núcleo urbano, llama la atención el Santuario de San Antonio, situado en el corazón del Parque Natural de Urkiola, rodeado de impresionantes montes y de robledales, hayedos y fresnos.Ferias de gran tradición: San Blas y San AntonioLas fiestas patronales comienzan el 12 de mayo (Santo Domingo), por lo que todo el que quiera podrádisfrutar del inmejorable ambiente que se respira estos días. La música y el baile se apoderan de las calles de este pueblo vizcaíno. En el calendario festivo destacan otras dos ferias: la de San Blas (3 de febrero), con su feria de ganado, y la de San Antonio (13 de junio), que se celebra en las inmediaciones del Santuario de Urkiola. En esta última romería, según manda la tradición, las casaderas que buscan encontrar pronto un marido dan vueltas a la piedra que se encuentra enfrente del Santuario.', 48),
(2, 'Abanto y Ciérvana-Abanto Zierbena', 'Esta pequeña localidad de Bizkaia disfruta de un enclave natural único, a tan solo 20 minutos de Bilbao. Sin necesidad de elegir mar o montaña, Abanto y Zierbena lo tiene todo, siendo un lugar idóneo para disfrutar y descansar.Pasado mineroLos viajeros que elijan Abanto y Ciérvana como destino se darán cuenta del especial paisaje que rodea el municipio. El visitante podrácontemplar los restos de infraestructuras mineras entre los que destacan los hornos de calcinación de la mina Joséy mina Lorenza, cerca del barrio de Las Carreras, o el lago Gerente, antiguo pozo minero. También llama la atención el paisaje singular de La Barga, con sus agujas calizas emergiendo de la tierra en la mina Cristina, o el castillete del pozo Ezequiela, creado para la ventilación de la mina de Agruminsa, el único castillete minero que se conserva en Bizkaia. Todo aquel que quiera conocer de primera mano los entresijos de esta actividad, sólo tiene que visitar el Museo de la Minería del País Vasco, situado en Gallarta, en la cabecera del municipio. La protección del patrimonio industrial de la minería es uno de los objetivos de este museo. Allí, encontraremos todas las curiosidades y características sobre los restos industriales que se distribuyen por toda la zona minera. Asimismo, podremos observar muchos de los tesoros que se conservan únicamente en este lugar.', 48),
(3, 'Amorebieta-Etxano', NULL, 48),
(9, 'Andoain', 'Rodeado de bellos y verdes montes nos sumergimos en el municipio de Andoain, localidad perteneciente al territorio histórico de Gipuzkoa y por la que circulan las aguas del rio Oria. Andoain destaca tanto por su extenso entorno natural como por la oferta cultural que ofrece. Los montes Belkoain, Buruntza y Adarra rodean el pueblo, dotándolo de un paraje realmente admirable. Además, se emplaza en el valle de Leizaran, donde antiguamente pasaba el tren de Plazaola que cubría el recorrido entre Navarra y Gipuzkoa. Este excepcional valle dispone, a su vez, de numerosos parques, entre los que se encuentran Etxarri y Otita. Todos ellos son lugares apropiados para descansar y tomar un refrescante baño.Descubriendo el casco urbanoTras esta ruta por los alrededores, nos adentramos en el casco urbano para conocer los rincones más interesantes. En la plaza del pueblo, por ejemplo, podemos contemplar el edificio del ayuntamiento y la iglesia San Martín de Tours, dos bonitas construcciones que han sido testigo del paso de los años en Andoain. Asimismo, en el centro de la plaza, nos toparemos con la estatua de Aita Manuel Larramendi, ilustre personaje de la localidad. Como colofón final a nuestra visita, es importante ir al centro cultural Bastero, situado en el casco urbano. Estamos ante el edificio cultural por excelencia del municipio, ya que allíse concentran las mayores actividades de esta índole, como conciertos y obras de teatro. Cuenta además, con salas de cine en las que se proyectan las últimas películas de la cartelera. Gracias a todas estas características, Andoain dispone de una oferta turística muy variada.', 20),
(13, 'Barakaldo', 'Barakaldo se encuentra dentro de la comarca del Gran Bilbao, en la margen izquierda de la ría del Ibaizabal. Cuenta con montañas de pequeña altura, como Argalario y Arroletza, y limita al norte con los municipios de Sestao y Trapagaran al sur con Gü eñes y Alonsotegi al este con Bilbao y Erandio, y al oeste con Galdames y Gü eñes. Es el segundo municipio más poblado de Bizkaia, por detrás de su capital, Bilbao. Además, al estar ubicado en un enclave privilegiado, con una excelente comunicación vial, es un punto de referencia importante dentro del Gran Bilbao. Por ejemplo, el Bilbao Exhibition Centre (BEC), la feria de muestras de Bilbao que acoge importantes ferias, congresos, conciertos y acontecimientos deportivos, se sitúa en las campas de Ansio, y desde su inauguración en 2004 ha dado a la ciudad una imagen nueva y moderna.Variedad de paisajesBarakaldo une diferentes paisajes dentro del municipio desde la ría hasta la montaña, el visitante encontraráplazas, avenidas, zonas ajardinadas y un parque Botánico, espacios apropiados para realizar rutas y paseos. Merece la pena visitar el barrio del Regato, algo alejado del centro urbano, con su pantano rodeado de un bidegorri con bancos y fuentes. Por otro lado, el municipio es todo un referente cultural, gracias en gran medida al Teatro Barakaldo, que acoge numerosos eventos y actividades durante todo el año. Barakaldo celebra sus fiestas patronales del Carmen a mediados del mes de julio, donde predomina el ambiente festivo lleno de espectáculos y actuaciones de todo tipo.', 48),
(15, 'Basauri', 'Basauri se halla en el territorio histórico de Bizkaia, más concretamente, en la comarca de Uribe Nervión. El municipio se alza a ambos lados del río Nervión, en el punto donde éste se une con el Ibaizabal. Pueblo eminentemente industrial, Basauri se desanexionóde Arrigorriaga en 1510 como Anteiglesia de San Miguel de Basauri. En este barrio estuvo el Ayuntamiento de la localidad, hasta inicios del siglo XX, cuando se decidiótrasladar al barrio de Dos Caminos. El nombre de Dos Caminos (Bidebieta) fue tomado por la confluencia del camino que une Bilbao con Castilla y el segundo camino que partiendo de Bilbao se dirige a Gipuzkoa y Francia. Esta situación de privilegio contribuyóa la mejora de la economía del municipio, reflejada en el auge de sus tabernas, situadas todas ellas al borde del camino. Para recordar esa confluencia de caminos, la emblemática figura de un carro tirado por dos burros todavía hoy adorna el cruce.Bizkotxalde, el parque más grande de BizkaiaEn lo referente al conjunto de patrimonio artístico que alberga el municipio, la Torre de Ariz y la ermita de San Fausto de Ariz, ligada a la torre históricamente, son los principales símbolos de Basauri. La hermosa parroquia de San Miguel, del siglo XVI, y la ermita de San Martín de Fínaga son otros edificios característicos. Otro de los enclaves destacables de Basauri es el parque de Soloarte, que alberga obras al aire libre de uno de los hijos ilustres del pueblo: el escultor Agustín Ibarrola. Otro parque, Bizkotxalde, es el parque urbano más grande de Bizkaia. Basauri celebra sus fiestas patronales en San Fausto, a mediados del mes de octubre, fecha en la que más de 10.000 personas toman las calles ataviadas con trajes tradicionales.', 48),
(16, 'Aia', 'El entorno natural de esta pequeña localidad rural es espectacular y elParque Natural de Pagoetaes la mejor prueba de ello. Estáubicado en el monte Pagoeta (714 m) y es realmente apropiado para disfrutar de la naturaleza no en vano, tenemos la oportunidad de realizar preciosas rutas por los verdes bosques y prados de la zona. Además, existen diversas áreas recreativas habilitadas para el disfrute de pequeños y mayores. Un total de once barrios conforman el municipio de Aia, que cuenta con un rico patrimonio artístico e histórico. En el centro urbano, por ejemplo, destacan laiglesia de San Estebandel año 1350 y la casa consistorial, y, en el barrio Andatza, podemos admirar laermita San Pedro, cuyo retablo fue realizado por Andrés de Araoz. Las principales fiestas de Aia se celebran a principios de agosto, en honor a San Donato y San Lorenzo. Por otra parte, las fiestas de San Martín son muy conocidas, ya que se organizan pruebas de bueyes que atraen a mucha gente de los municipios de alrededor.', 20),
(18, 'Azpeitia', 'Bajo el abrigo del macizo de Izarraitz en la comarca de Urola Medio, se encuentra el municipio guipuzcoano deAzpeitia.\n \nLa localidad es muy conocida por el santuario de Loiola. Se encuentra a un kilómetro del casco urbano y es, sin duda, el conjunto más emblemático del municipio. Esta construcción barroca posee planta circular y estárematada por una espectacular cúpula. Asimismo, admiraremos la casa-torre medieval de los Loiola, en el que nació San Ignacio de Loiola, el vasco más universal. Todos estos elementos conforman un lugar realmente asombroso de renombre internacional.\n \nDesde este municipio, contemplaremos la belleza del macizo de Izarraitz, donde llaman la atención las abundantes formaciones rocosas de su crestería. A través de sus senderos, llegaremos a rincones mágicos, cimas de espectacular belleza como Erlo, Xoxote y Kakueta, esta última perteneciente a la vecina localidad de Azkoitia.\n \nEl Municipio cuenta con tres interesantes museos que merecen una visita. El Museo Vasco del Ferrocarril, El Museo Ingurugiro Etxea y La Santa Casa y la Casa Torre de los Loiola. Destacamos elMuseo Vasco del Ferrocarril, el cual ofrece una visión de la historia ferroviaria de Euskadi mediante la exhibición de más de sesenta vehículos totalmente restaurados y en funcionamiento, tratándose de uno de los museos más importantes de su género en Europa.', 20),
(19, 'Beasain', 'Beasain, situada en elcorazón del Goierri, se encuentra en un paraje idílico, en medio de montes como Murumendi, Usurbe y Pagokabar y acompañado del río Oria.\nLos primeros moradores de Beasain poblaron estas tierras muchos siglos atrás, tal y como lo atestiguan los túmulos de Basagain, Trikuazti l y Trikuazti ll e Illaun, descubiertos en 1927, 1978 y 1989, respectivamente.\nEl conjunto monumental de Igartza es otro de los lugares a destacar, este yacimiento medieval consta de un palacio construido en el siglo XIII, un puente, una presa de madera, una ferrería y un molino, entre otros elementos. A poca distancia, el casco urbano del municipio alberga diferentes puntos de interés turístico, como son la parroquia de Santa María de la Asunción, la basílica de San Martín de Loinatz y la ermita de Nuestra Señora de Loinatz.\nNaturaleza, gastronomía y fiestas\nAsimismo, el municipio ofrece varios espacios verdes para disfrutar del tiempo de ocio, como el parque de Sagastigutia, que cuenta con más de cincuenta especies arbóreas distintas, y el monte Murumendi, paraje considerado como la morada deMari, personaje de la mitología vasca.\nPor otro lado, Beasain es la población de mayor actividad comercial de toda la comarca del Goierri. En sus calles, repletas de tiendas y bares, se respira un inmejorable ambiente. Además, el turista no puede marcharse de la localidad sin probar sus exquisitas morcillas, que podrádegustarlas en cualquier bar o restaurante de la zona.\nBeasain celebra sus principales fiestas a mediados del mes de mayo, las fiestas de Loinatz, donde se organizan multitud de actos para pequeños y mayores, tales como la bajada deMari, la tamborrada infantil y la de las sociedades, el día de las cuadrillas, un desfile de disfraces, etc.', 20),
(20, 'Bilbao', 'Bilbaoes entre las ciudades vascas la más cosmopolita, poblada e inquieta. Se trata de una ciudad camaleónica, que durante las últimas dos décadas ha sabido reinventarse a símisma, transformando por completo tanto su carácter como su fisonomía ello no le ha impedido conservar el encanto y carisma de sus viejos rincones. Su nombre estáy estaráindiscutiblemente ligado al del espectacularMuseo Guggenheim Bilbao, diseñado por Frank O. Gehry y que tanta fama internacional le ha reportado. Pero elBotxo(asíes como se le conoce popularmente) es mucho más que eso: con el transcurso de los años, se ha convertido en un atractivo destino turístico, provisto de una amplia oferta cultural, comercial y gastronómica. Estructuras tan modernas como elPalacio Euskalduna(sede de congresos internacionales e importantes eventos culturales), lasTorres Isozaki Atea, elBilbao Exhibition Centrede Barakaldo o elAeropuerto de La Paloma, en Loiu, han ayudado a vertebrar un nuevo Bilbao, que compite con las grandes ciudades en calidad y modernidad. En la villa no hay cabida para el tedio. Así, los amantes de los paseos tienen a su disposición una amplia gama de interesantes recorridos a realizar, siendo de obligada visita el singularCasco Viejo(también conocido con el nombre deSiete Calles), cuyas callejuelas están salpicadas de bares, restaurantes y comercios clásicos e innovadores, laGran Vía, arteria comercial y bancaria de la ciudad, en la que convergen firmas internacionales y comercios autóctonos, y el área deAbandoibarra, junto a la Ría. Asimismo, elpuente colgante de Bizkaia, declarado Patrimonio de la Humanidad por la UNESCO y que une ambos márgenes de la ría a su paso por Portugalete y Las Arenas, es uno de los emblemas del Gran Bilbao. La diversidad museística es otra de las señas de identidad de la villa. Además del Guggenheim, destacan el deBellas Artes, eletnográfico, el dereproducciones, el detoros, el dearqueologíay elmarítimo. Incluso cuenta con un museo dedicado alAthletic de Bilbao. Durante la época estival, la música cobra un especial protagonismo, gracias a festivales como elBBKLive, en los que se dan cita artistas de primer orden. Sin olvidar el ambiente festivo que se respira en todos y cada uno de los rincones de la ciudad durante laAste Nagusiao Semana Grande. Bilbao es, en resumidas cuentas, una metrópoli con personalidad propia, que apuesta por la modernidad sin renunciar a sus tradiciones más arraigadas.', 48),
(22, 'Elciego', 'El ciego  se sitúa al sur de la Rioja Alavesa, en el territorio histórico de Álava. Hacia el Norte, divisaremos la Sierra de Toloño, y al Sur, veremos pasar el río Ebro. Al Este, limita con Lapuebla de Labarca y al Oeste, con Baños de Ebro.\n \nAl igual que en todos los municipios de la zona, el vino  y todo lo relacionado con este producto es el centro de todas las actividades de la localidad. Por lo tanto, es un destino paradisíaco para los amantes de  la vitivinicultura y el enoturismo. De hecho, cuenta con muchas bodegas de gran calidad, y la oferta es inmejorable.\n \nPintorescas callejuelas\nA su vez, los aficionados al arte también tienen la oportunidad de disfrutar con diversas obras arquitectónicas como la parroquia de San Andrés y la ermita de la Virgen de la Plaza, un capricho de la arquitectura del siglo XVII. Perderse por sus calles bien trazadas, unidas entre sípor pintorescas callejuelas repletas de palacios y casas de piedra blasonadas, es una auténtica delicia.\n \nSi visitamos Elciego  a principios de septiembre, pondremos el broche final a nuestra visita con las fiestas de la Virgen de la Plaza, las más importantes de la localidad, que se celebran el 8 de septiembre. El buen ambiente, el bullicio y la música inundan las calles durante estas fechas. Además, presenciaremos sus danzas autóctonas, conservadas a través de los siglos, al son de la música de los Gaiteros y Tamboril, de gran tradición en el pueblo.', 1),
(27, 'Durango', 'Durangoes un bello municipio del Duranguesado, atravesado por el río Ibaizabal. Se sitúa en las proximidades delParque Natural de Urkiola, espacio natural de excepción donde es posible realizar agradables recorridos o ascender cimas como Anboto (1.331 m), Alluitz (1.040 m) y Mugarra (964 m).\n \nDurango cuenta además, con un interesante patrimonio arquitectónico. Su casco antiguo alberga numerosos monumentos de valor histórico. En la arquitectura religiosa, entre otros edificios, hay que resaltar las dos iglesias situadas en los dos extremos de la parte vieja: la parroquia de Santa Ana, templo barroco ubicado junto alarcoque lleva el mismo nombre, y la iglesia de Santa María de Uribarri, que destaca por su amplio interior gótico y por suinmenso pórtico con cubierta de madera.\n \nOtros monumentos de interés son lacruz de Kurutziaga, la Torre de Lariz y el propio ayuntamiento, que presenta una fachada interesante. El edificio consta de un portal de siete arcos de medio punto, un gran balcón en su primera planta y unas pinturas muy llamativas que decoran las dos últimas.\n \nCultura y fiestas\n \nEn el ámbito cultural, cabe mencionar el centro cultural de San Agustín, espacio que acoge espectáculos de teatro, danza y música. Por otro lado, el Museo de Arte e Historia de Durango, situado en el Palacio Etxezarreta, nos permitiráconocer a fondo el origen y la historia del municipio.\n \nDurango celebra sus fiestas patronales de San Fausto a mediados del mes de octubre. Por su parte, la popular Feria del Libro y Disco Vasco de Durango, referencia obligada en la cultura vasca, tiene lugar a principios de diciembre en Landako Gunea, moderno recinto de reciente construcción que acoge todo tipo de acontecimientos. ', 48),
(36, 'Hondarribia', 'Bañado por las aguas del mar Cantábrico,Hondarribiase halla al nordeste del territorio histórico de Gipuzkoa, en la comarca de Bidasoa-Txingudi, a los pies del monte Jaizkibel (545 m).\n \nPodemos iniciar la visita a Hondarribia contemplando las vistas que ofrece la maravillosa bahía de Txingudi, con la vecina Hendaia al fondo. Después, nos acercaremos hasta la inmensa playa para dar un agradable paseo.\n \n¿ Quéver en Hondarribia?\nHondarribia alberga tesoros históricos que dotan a la localidad de un encanto especial. Si nos adentramos en elcasco antiguo amurallado, podremos caminar por sus calles empedradas repletas de casas blasonadas y edificios singulares como elCastillo del Emperador Carlos V, convertido hoy en día en parador.  Muy cerca se sitúa elbarrio de La Marina, con sus coloristas casas de pescadores,restaurantes y típicos bares de pintxoscon terrazas.\n \nTodas estas características hacen de Hondarribia un destino idóneo para pasar las vacaciones. Este municipio costero cuenta con una amplia y variada oferta hotelera y gastronómica que la hace atractiva en cualquier época del año.\n \nSi decidimos visitar Hondarribia a principios de septiembre, conoceremos de primera mano una de sus tradiciones más arraigadas. El día 8 de ese mes, festividad de la Virgen de Guadalupe, se celebra elAlarde, un desfile en el cual se dan cita las compañías que representan los antiguos barrios o gremios de la ciudad.', 20),
(40, 'Hernani', 'A tan solo 10 km de la capital donostiarra y a los pies del monte Santa Bárbara, Hernani, permite divisar una amplia zona de la Vega del Urumea. El río Urumea recorre la villa de norte a sur y recoge las aguas de todos los arroyos de los alrededores. El término municipal de Hernani, compuesto por 10 barrios, estárodeado de diversos montes (Akora, Urdaburu, Oindi, Azketa), donde encontraremos numerosos caseríos, ermitas, iglesias y restos megalíticos como dólmenes, túmulos y crómlechs, catalogados todos ellos como bienes culturales.Casco antiguo, conjunto monumentalA partir del siglo XX, Hernani conocióel desarrollo industrial que caracteriza a la localidad actualmente. A pesar de ello, ha sabido conservar muchos elementos de interés histórico. El casco antiguo del municipio, asentado en una pequeña colina sobre el río Urumea y calificado como conjunto monumental, mantiene una forma ovalada y cerrada. Antiguamente, estuvo amurallado y, hoy en día, esconde algunos tesoros que merecen ser visitados: la Parroquia de San Juan Bautista del siglo XVI, la Casa Consistorial y Gudarien Enparantza o la antigua Plaza Mayor de la villa, entre otros. Hernani es, además, un punto importante dentro del Camino de Santiago en su trazado interior a su paso por tierras guipuzcoanas. El Puente de Fagollaga y el Humilladero de Santa Cruz son algunos de los monumentos más significativos que se pueden encontrar en el camino. Asimismo, merece la pena visitar la Ermita de Santa Bárbara, desde donde podremos disfrutar de una magnífica vista de los valles del Urumea y del Oria.Museo Chillida-LekuUbicado en la finca de Zabalaga, en el barrio Jáuregi, ofrece al visitante la posibilidad de contemplar la trayectoria profesional del genial escultor Eduardo Chillida. El recinto estádividido en tres zonas: un jardín de 12 hectáreas con más de 40 esculturas al aire libre, una zona de servicios, equipada con un auditorio, área de descanso y tienda, y, finalmente, el caserío Zabalaga, que conserva las obras de menor tamaño elaboradas con diversos materiales. Hernani celebra sus fiestas patronales entre el 23 y 27 de junio, en honor a San Juan Bautista. Además de las numerosas actividades que completan el programa festivo, todos aquellos que visiten el municipio durante estos días podrán contemplar la popular danza denominada \"Azeridantza\", que como manda la tradición, también se escenifica en las fiestas de Carnaval. Además este municipio es conocido por la tradicional elaboración de sidra, que atrae numerosos visitantes.', 20),
(44, 'Getxo', 'Bañado por las aguas del Cantábrico, Getxo se halla en el territorio histórico de Bizkaia, dentro de la comarca de Uribe Costa, y estáformado por cinco núcleos: Andra Mari, Algorta, Las Arenas, Neguri y Romo. Además, rodeado por la bahía del Abra, Getxo se caracteriza por susplayas y acantilados, ya que ofrece un bello paisaje con 10 kilómetros de acantilados, costa y playas.\n \nEn ese sentido, destaca el hermosopaseo Punta Galea, que va desde Getxo a Sopelana, y que guarda interesantes elementos como el Molino de Aixerrota y el Fuerte de la Galea, fortificación del siglo XVIII.\n \nEste entorno facilita la práctica de deportes náuticos y para eso, se organizan cursos de buceo, piragü ismo y también salidas en barco que recorren la costa de los alrededores.  Además, los más aventureros tendrán la oportunidad de probar deportes como la escalada, el descenso de cañones y muchos más.\n \nEdificios históricos y espacios naturales\n \nPara conocer más a fondo las obras monumentales que guarda este encantador municipio, podemos realizar diversas rutas. Una de ellas comienza en la ermita Santa Ana, uno de los ejemplos neogóticos más antiguos de Bizkaia.\n \nContinuamos la visita por la iglesia Nuestra Señora de las Mercedes, edificio que alberga en su interior un llamativo órgano de cuatro teclados. La iglesia Andra Mari, por su parte, nos presenta elementos barrocos típicos del siglo XVIII. Por último, descubriremos el hermoso paseo Zugazarte, en el que se encuentran el palacio de Churruca y la mansión Bake-Eder, dos edificios emblemáticos de Getxo.\n \nOtro de los atractivos inconfundibles de este municipio lo constituye elPuente Bizkaia, monumento Histórico-Artístico que une este enclave con el municipio de Portugalete, y que nos ofrece una extraordinaria vista panorámica. El entrañable Puerto Viejo, con sus estrechas callejuelas y típicas casas de pescadores, revela la importancia que tuvo la actividad pesquera en el municipio.\n \nPor otro lado, el Puerto Deportivo de Getxo, presenta una extensa oferta de ocio. Asímismo, debemos destacar que los espacios naturales, parques y amplias zonas de esparcimiento del municipio se convierten a lo largo del año en escenario ideal para la celebración de acontecimientos culturales y deportivos de gran relevancia. Dichas zonas recogen, entre otros, los Festivales internacionales de Folklore, Jazz, Blues, Folk asícomo la feria de artesanía.', 48),
(51, 'Salvatierra/Agurain', 'Esta localidad estásituada entre las sierras de Entzia e Iturrieta, en las que se esconden impresionantes hayedos. Sus primeros siglos de vida estuvieron marcados por su carácter fronterizo y las disputas de las Coronas de Navarra y Castilla sobre su control. De esta época heredóun bello casco medieval amurallado, que fue declarado conjunto histórico en 1975. La parte vieja estádividida en tres calles principales: Zapatari, Carnicería y Mayor. Esta última es la que alberga los edificios de mayor interés artístico, como las iglesias de San Juan Bautista y Santa María, ambas con retablos del siglo XVI en su interior. Asimismo, como dato de interés, cabe destacar que el Camino de Santiago atraviesa el municipio.Naturaleza y restos prehistóricosEl entorno natural ofrece la posibilidad de realizar múltiples rutas, tanto en bicicleta como a pie. Conoceremos asítodos los bellos rincones que esconden sus alrededores. Merece la pena visitar algunos monumentos megalíticos encontrados en la zona: el dolmen de Sorginetxe (en Arrizala), el crómlech de Mendiluze y el menhir de Itaida (estos dos últimos hallados en la sierra de Entzia). Estos restos se sitúan cerca del puerto de Opakua y se encuentran en muy buen estado de conservación, prueba del interés histórico que suscitan.', 1),
(52, 'Larrabetzu', 'Este municipio del valle del Txorierri, cuenta con un hermoso casco histórico, declarado Conjunto Monumental, que fue construido basándose en patrones de estilo neoclásico. Entre las edificaciones de la zona destacamos la Iglesia de Santa María de la Asunción, formando parte del mismo núcleo histórico de Larrabetzu. Adentrándonos en el barrio Goikolexea, uno de los edificios que merece especial mención es la iglesia San Emeterio y San Celedonio, templo destacable que posee uno de los retablos más notables del territorio histórico.Conjunto monumentalLos edificios que definen la plaza forman un bello conjunto arquitectónico entre ellos, destaca el palacio de Ikaza, edificio del siglo XV y ubicado junto al ayuntamiento del municipio. A escasos metros se encuentra el palacio Anguleri, edificio cúbico de gran interés artístico y etnográfico por mezclar características del caserío y del palacio. Por otro lado, Larrabetzu estáubicado en un entorno privilegiado, y forma parte del denominado Camino de la Costa dentro del Camino de Santiago, por lo que recibe a numerosos peregrinos. Además, este municipio vizcaíno acoge varias festividades a lo largo del año, aunque celebra sus fiestas patronales de San Isidro a mediados del mes de mayo.', 48),
(53, 'Lezo', 'Lezoes un municipio que cuenta con elmonte Jaizkibelcomo su cota más alta. Asimismo elarteque nos ofrece suCasco Históricohace hincapiéen el alto valor arquitectónico-artístico que nos podemos encontrar si observamos los elementos colindantes de la plaza cuadrada.\n \nUna de las visitas imprescindibles en el municipio de Lezo es labasílica gótica del Santo Cristo, ubicada en la ruta del Camino de Santiago por la costa. El templo es conocido por la imagen de Cristo en su altar, pues se trata de una de las tres únicas representaciones de Jesucristo crucificado existentes en Europa que carecen de barba.\n \nCasco histórico y magnífico entorno natural\nAsímismo, cabe destacar la casa consistorial de Lezo, del siglo XVIII y de estilo renacentista. Por otro lado, el casco antiguo del municipio, que deja ver la vocación marinera de la villay que estáconfigurado en torno al templo del Santo Cristo, contrasta con el cercano monte Jaizkibel (545 m), hermoso enclave montañoso donde se pueden realizar diversos recorridos que nos permitirán contemplar las magníficas panorámicas delParque Natural de Aiako Harria, la Bahía de Txingudi y el mar Cantábrico.\n \nPor otra parte, el municipio de Lezo ofrece un amplio programa festivo dentro de sus principales fiestas de Pentecostés, que se celebran a mediados del mes de mayo y las fiestas de la Santa Cruz, cuyo día festivo es el 14 de septiembre. También caben destacar los carnavales en este municipio, son especialmente singulares, ya que participa el personaje mitológico local llamado Trapujale.', 20),
(55, 'Valdegovía', 'Valdegovía es un lugar situado en Álava próximo a Burgos, donde la naturaleza se impone y sorprende en cada momento del año, vistiéndose de colores intensos. En este valle te esperan sus pueblos, sus bosques, sus ríos, arroyos y fuentes, su silencio, etc. donde podrás descubrir la naturaleza en su estado más puro. Valdegovía ofrece la posibilidad de disfrutar de este entorno privilegiado, rico en patrimonio histórico-artístico y natural. Por un lado, son reseñables las ermitas e iglesias, como la iglesia románica de Nuestra Señora de la Asunción en Tuesta. Por otra parte, existen diversas torres y casas solariegas en el municipio. Destaca entre ellas la torre-palacio de los Varona construida a finales del siglo XIV y ubicada en la localidad de Villanañe. Además, este hermoso conjunto fortificado mantiene numerosos elementos defensivos. Por otra parte, sobresale en el mismo núcleo el Santuario de Nuestra Señora de Angosto, templo del siglo XIV que alberga un retablo renacentista.Cuevas artificiales y Parque Natural de ValderejoAsímismo, en este municipio alavés se conservan vestigios de gran interés como las cuevas artificiales de Corro y Pinedo y la necrópolis de Santa Lucía-Santa Olalla. Por último, el Parque Natural de Valderejo compone un paraje insólito, un lugar ideal para estar en contacto con la naturaleza. Este hermoso enclave fue declarado Parque Natural en 1992 y atesora una rica fauna y flora. Lalastra, ubicado en el corazón del valle de Valderejo, es el punto de partida para realizar las diferentes rutas e itinerarios que ofrece el parque natural.', 1),
(59, 'Vitoria-Gasteiz', 'Además de ser el centro político y administrativo de Euskadi,Vitoria-Gasteizes un innegable ejemplo de buen vivir. Y es que, la capital alavesa es una de esas ciudades que cuentan con un rico patrimonio histórico-artístico, un sinfín de zonas ajardinadas, espacios peatonales ideales para el ocio y equipamientos cívicos. Una ciudad accesible, especial, con personalidad. Uno de sus tesoros más preciados y mejor guardados es elcasco antiguo, nacido en la Edad Media y único en Euskadi, en el que abundan palacetes renacentistas y edificios románicos. La \"Almendra Medieval\" (sobrenombre por el que es conocido el casco antiguo) acoge construcciones religiosas muy interesantes como las iglesias de San Pedro y San Vicente o la parroquia de San Miguel pero, sin resquicio de duda, la joya más conocida es laCatedral de Santa MaríaoCatedral Vieja. Dicho templo sirvióde inspiración para la novelaUn mundo sin findeKen Follett, y ha dado a conocer Vitoria en el panorama internacional. La iniciativa denominada \"Abierto por obras\" permite a los turistas visitar las obras de restauración del edificio. El ensanche del siglo XIX, es un cómodo espacio peatonal, principal zona comercial y llena de bellos miradores. Parques naturales de gran valor ecológico y paisajístico conforman el\"Anillo Verde\"que rodea la capital alavesa. Humedales (que hacen el papel de playas durante la época estival), bosques, praderas, ríos y campos ofrecen al visitante la oportunidad de realizar excursiones, practicar deportes de naturaleza y observar numerosas especies de aves. Vitoria-Gasteiz ostenta el título deCapital Verde Europea de 2012. El calendario festivo y cultural de la ciudad es muy amplio y diverso. Así, el veteranoFestival Internacional de Jazz, elAzkena Rock Festivaly elFestival Internacional de Teatroson los tres certámenes de más renombre que se celebran en Vitoria-Gasteiz. La fiesta también es otro de los grandes atractivos de la ciudad, tal y como demuestran las multitudinarias fiestas en honor a laVirgen Blanca, la festividad deSan Prudencioy la romería aOlarizu. Asimismo, Vitoria-Gasteiz acoge varios museos: elArtiumo Centro Museo Vasco de Arte Contemporáneo, el Museo deBellas Arteso elBibat, fusión de los museos de Naipes y Arqueología. Los amantes de los mejores dulces tienen otro buen motivo para visitar Vitoria-Gasteiz. No en vano,pasteleríasyconfiteríasde prestigio comercializan exquisitos productos propios, como la Confitería Goya, artífice de los famosos bombones \"Vasquitos\" y \"Nesquitas\". Desde Vitoria-Gasteiz podemos visitar la comarca de laRioja Alavesa, conocida en todo el mundo gracias a sus excelentes vinos y bodegas.', 1),
(68, 'Mundaka', 'Famosa por su ola izquierda que atrae cada año a numerosos surfistas, este pintoresco pueblo marinero estásituado en la margen izquierda de la desembocadura de la ría de Mundaka, en plenaReserva de la Biosfera de Urdaibai, espacio natural formado por amplias marismas y 12 km de extensos arenales que sirven de cobijo a miles de aves migratorias.\n \nSu privilegiada ubicación convierte a Mundaka en uno de losdestinos turísticos preferidosdel litoral vizcaíno. El puerto, con su inconfundible olor a salitre, es el centro de la villa y en sus alrededores encontraremos algunos edificios de interés, como la biblioteca municipal (antiguo hospital del Camino de Santiago), la hermosa Casa Consistorial, la parroquia de Santa María, de estilo renacentista, el palacio Larrinaga...\n \nAlgo alejado del centro, merece la pena visitar la ermita de Santa Catalina, que se halla sobre un pequeño promontorio junto al mar. Desde aquí, se puede observar el espectacular paisaje (el cabo de Ogoño, la isla de Izaro...) que ofrece la desembocadura de la ría de Urdaibai.\n \nLa ola izquierda\n \nMundaka es, sin duda, muy conocida por su ola izquierda. Surfistas de todo el mundo acuden a sus playas para comprobar de primera mano la calidad de su ola. Elsurfse ha convertido en una practica habitual en esta localidad costera, y, de hecho, Mundaka acoge anualmente en sus aguas competiciones a nivel internacional.\n \nFiestas y tradiciones\n \nEste municipio celebra sus principales fiestas a finales de junio en honor a San Pedro y cuentan con un variado programa repleto de actos, como conciertos, procesiones, cabezudos... El último fin de semana de agosto, tiene lugar la Fiesta Vasca o Euskal Jaia, una espléndida muestra de folklore local.\n \nAunque, sin duda, es su carnaval, uno de los más antiguos de Euskadi, la fiesta que mayor número de visitantes atrae. El domingo de carnaval, los lugareños se disfrazan de Atorrak (hombres) y Lamiak (mujeres), y las comparsas desfilan por las calles de Mundaka al son de la música hasta bien entrada la madrugada.', 48),
(69, 'San Sebastián', 'Hermosa, elegante, exquisita, coqueta, señorial. AsíesDonostia / San Sebastián, una ciudad en plena costa vasca, abierta al mar y considerada por muchos la capital turística de Euskadi. Es una de las ciudades que posee  una de las bahías más bellas del mundo, la deLa Concha, y tres playas urbanas (La Concha,ZurriolayOndarreta). Donostia / San Sebastián estárodeada de montes y miradores (Igeldo, Urgull, Ulia y la Isla de Santa Clara) y vertebrada por el río Urumea. El centro de la ciudad, que alberga edificios tan característicos como el Teatro Victoria Eugenia, el Hotel María Cristina, la Casa Consistorial, Tabakalera, o la catedral del Buen Pastor, ha mantenido, a lo largo de los años, suaura romántica. No en vano, Donostia / San Sebastián fue un lugar muy frecuentado por la aristocracia europea durante la Belle Epoque. Los edificios antiguos conviven con nuevas y modernas propuestas arquitectónicas, como el centroKursaal, diseñado por Rafael Moneo o el célebrePeine del Vientode Chillida, icono muy ligado a Donostia / San Sebastián. LaParte Viejaes el corazón de la ciudad, reúne numerosos edificios emblemáticos (la basílica de Santa María del Coro, por ejemplo) y es ideal para degustar la prestigiosa gastronomía y los deliciosos pintxos donostiarras. No podemos olvidar que ésta es la urbe con más estrellas Michelín por metro cuadrado. Las mejores materias primas pueblan los mercados tradicionales. Los amantes delcaminarpueden recorrer tanto a pie como a bicicleta los parques y jardines de Donostia / San Sebastián, además de disfrutar de paseos marítimos (del Peine del Viento al Kursaal) en contacto con la naturaleza. La ciudad cuenta con una importante oferta comercial y de ocio, siendo la intensa vida cultural una de sus principales bazas. Rutilantes estrellas acuden cada año alFestival Internacional de Cine, para deleite de los avispados caza-autógrafos. También los museos (San Telmo, el Naval, el Aquarium, el Kutxaespacio de la Ciencia) constituyen otros de los atractivos de Donostia / San Sebastián. A lo largo de los siglos los donostiarras han mantenido vivas sus más multitudinarias tradiciones (desde fiestas como laTamborraday Santo Tomás hasta las regatas de traineras). Donostia / San Sebastián es una ciudad cosmopolita, que se caracteriza por su elegancia de cuento y su continua interacción con el mar. ', 20),
(71, 'Muskiz', 'Bañado por las aguas del mar Cantábrico, Muskiz se ubica en el extremo más occidental del territorio histórico de Bizkaia, asentado sobre elvalle del río Barbadún. Este enclave costero permite disfrutar de un paisaje encantador.\n \nCon susextensos kilómetros de costa, donde destacan laplaya de La Arenay losabruptos acantilados, Muskiz nos brinda verdaderos caprichos naturales como elparque Itsaslur,hermoso paseo que recorre el acantilado y que une las zonas costeras de Kobarón y Pobeña. Muskiz alberga, asímismo, numerosos encantos y rincones realmente interesantes.\n \nNo en vano, posee unamplio y rico patrimonio cultural, por lo que encontraremos diversos edificios de aspecto señorial. El castillo de Muñatones es una espléndida construcción de la Edad Media que nos trasladarápor un instante a aquella época. Se trata de un conjunto formado por un castillo, un palacio y una ermita, que fue declarado Monumento Histórico-Artístico en 1944.\n \nFerrería El Pobal, interesante conjunto monumental\nPodemos seguir nuestro recorrido por laferrería de El Pobal, puesto que cuenta con una extensa historia en su estructura. Data del siglo XVI y guarda complementos típicos relacionados con la ferrería. Justo al lado, visitaremos una casa-torre del mismo nombre. La fachada principal tiene una puerta de medio punto, además de un escudo con las armas del linaje de los Quadra. \n \nMuskiz ofrece unaextensa agenda festivadurante todo el año. Las fiestas patronales son las de San Juan y tienen lugar a finales de junio. Pero los Carnavales, que se celebran en febrero, también son conocidos. Para finalizar, merece especial mención la feria agrícola que se organiza en el mes de septiembre, de gran relevancia en la zona.', 48),
(73, 'Usurbil', 'Muy conocido por su tradición sidrera y pesca de angulas, este pequeño municipio guipuzcoano se halla a poca distancia de la costa y protegido por los montes Andatza (562 m) y Mendizorrotz (415 m). Usurbil alberga numerosos edificios históricos que atraen la mirada de los visitantes que llegan al municipio. El núcleo histórico se organiza en torno a la iglesia de San Salvador, de una única nave y con bóvedas de crucería. Destacan su torre barroca y el retablo mayor realizado en el siglo XVII. Muy cerca, en la misma calle, encontraremos la casa Saroe, con su fachada barroca rica en ornamentos y presidida por un gran escudo. Sin embargo, entre todos estos edificios, sobresale el palacio barroco de Atxega (s. XVIII), declarado Monumento Histórico-Artístico. Fuera del centro urbano, visitaremos los barrios de San Esteban y Aginaga. En el primero, merece la pena ver la ermita de San Esteban, que ofrece excelentes vistas del entorno. Según cuentan los lugareños, la gente acude hasta esta ermita para aliviar los dolores de cabeza. Siguiendo la carretera de acceso a la ermita, se llega al alto de Andatza, un lugar dotado de bellas explanadas. Por su parte, Aguinaga, de gran tradición pesquera, es famosa por sus preciadísimas angulas.La cultura de la sidraUsurbil es muy conocida por su gran tradición sidrera. Junto con Astigarraga y Hernani, cuenta con la mayor concentración de sidrerías de Euskadi. En estos establecimientos se elabora la sidra y, entre enero y mayo, es costumbre acudir a estos lugares a probar este caldo que mana de las barricas, además de degustar un suculento menú. Por lo demás, este municipio celebra sus fiestas patronales de Santa Isabel a principios de julio. En el calendario festivo, también hay que hacer mención a las fiestas de San Esteban (3 de agosto) y San Francisco de Aguinaga (4 de octubre). Además de ello, Usurbil celebra a mediados de mayo el Sagardo Eguna, fiesta popular que gira en torno a la sidra y que acoge cada año a miles y miles de visitantes.', 20),
(78, 'Portugalete', 'Portugalete, elegante villa marinera, es uno de los principales núcleos urbanos de la margen izquierda de la Ría de Bilbao. Situado en su desembocadura, el Puente Colgante oPuente  Bizkaia, declaradoPatrimonio de la Humanidad por la UNESCO, representa la cara más conocida del municipio.\n \nInaugurado el 28 de julio de 1893 y construido totalmente en hierro, conecta Portugalete con Getxo en la margen derecha de la Ría. Este alarde de ingeniería civil, obra de Alberto de Palacio, suma a subelleza estéticauna funcionalidad innegable, convirtiéndose en parada obligatoria de todo aquel que visite la villa.\n \nEn las estrechas y empinadas calles de sucasco histórico, de origen medieval, encontraremos algunos monumentos de interés. En lo alto se sitúa laTorre Salazardel siglo XIV, uno de los edificios más emblemáticos de Portugalete, y laBasílica de Santa María, templo de estilo gótico-renacentista, que guarda en su interior un retablo mayor con relieves de madera.\n \nEl Convento de Santa Clara, la Plaza de la Ranchería, el Muelle de Hierro y el Ayuntamiento son algunos de los muchos elementos que podemos visitar. La escultura de Don Lope García Salazar, primer historiador de Bizkaia, y el monumento a Víctor Chávarri (ingeniero civil que tuvo gran influencia en el proceso de industrialización de Bizkaia) junto con elMuseo de la Industria(Rialia, que muestra la importancia del proceso de industrialización de la Ría) completan este recorrido por el casco histórico de la villa.\n \nFestivales y fiestas de Portugalete\nAdemás de museos y monumentos, esta localidad cuenta con una amplia oferta cultural, en la que destaca elFestival Internacional de Folklore, que se celebra desde hace más de 40  años coincidiendo con la festividad de Santiago y que congrega a bailarines procedentes de todas partes del mundo.\n \nPor otro lado, Portugalete celebra sus fiestas patronales, en honor aSan Roque, del 14 al 17 de agosto. Entre los numerosos actos festivos destaca la Diana Portugaluja, que tiene lugar el día 15. Sin embargo, una de las fiestas más entrañables para los lugareños es la de laVirgen de la Guía. Esta festividad de origen marinero se celebra el 1 de julio, en el casco antiguo, concretamente en la calle Coscojales. La fiesta comienza a primera hora de la mañana con el chupinazo y la tradicional izada de Dominguines (dos muñecos de trapo) y, a continuación, se realiza la ofrenda floral a la virgen. También debemos hacer mención a las fiestas de San Nicolás y La Cruz.', 48),
(80, 'Zumarraga', 'Zumarraga nos embelesa con los muchos lugares de interés que ofrece, tantoculturales, como gastronómicos.\n \nSe halla a los pies delParque Natural de Aizkorri, en la comarca del Alto Urola, valle estrechamente ligado a la cultura del hierro, donde encontraremos restos de antiguas ferrerías, molinos, presas...\n \nUno de los principales atractivos de Zumarraga lo constituye el ricopatrimonio artístico y culturalque alberga. En el centro del núcleo urbano, la hermosa plaza porticada de Euskadi es uno de los ejemplos más bellos de la arquitectura civil del municipio. En ella, encontraremos algunos edificios de interés, como elayuntamientoneoclásico del siglo XIX y las casas Itarte y Uzkanga.\n \nLa plaza estápresidida por la estatua de Miguel López de Legazpi, conquistador de Filipinas, una escultura de bronce sobre un pedestal de piedra realizado por Aniceto Marinas. No muy lejos de este lugar, merece la pena visitar la casa natal del conquistador:la casa-torre Legazpi. Se trata de una fortaleza de la época feudal, declarada monumento histórico-artístico nacional en 1945. Por su parte, laiglesia parroquial de Santa María de la Asunción, del denominado gótico-vasco, fue construida en varias fases desde 1576. Tiene planta de salón y tres naves de igual altura, cubiertas con bóvedas de crucería. Su portada principal es barroca y se accede a ella a través de un hermoso pórtico. Conserva en su interior un retablo del siglo XVIII que mezcla elementos góticos y barrocos.\n \nLa catedral de las ermitas\nA dos kilómetros del centro urbano, en las estribaciones delmonte Beloki(641 m), merece la pena visitarla ermita de La Antigua, más conocida como lacatedral de las ermitas. Rodeada de un bello entorno natural, estajoya de la arquitectura popular religiosafue declarada monumento histórico-artístico nacional por su belleza. Presenta un austero exterior románico con una puerta gótica y un sorprendente interior que llama la atención por la perfecta armonía de su estructura mixta de piedra y madera. Esta ermita, junto a laBasílica de Loiola en Azpeitiay elSantuario de ArantzazuenOñati, forma parte de la conocidaRuta de los Tres templos, recorrido que permite conocer las comarcas de Urola y Alto Deba a través de estos tres monumentos emblemáticos enclavados en lugares de gran belleza natural.\n \nTambién podemos realizar diversas excursiones en los montes que rodean la localidad. Desde la propiaermita de La Antigua, parte un recorrido que nos permite ver los monumentos funerarios megalíticos hallados en Zumarraga.\n \nEl municipio celebra sus fiestas patronales de Santa Isabel a principios del mes de julio, donde se baila la ezpata-dantza en la tradicional romería que tiene lugar en la citada ermita de La Antigua. Tampoco podemos olvidarnos de la multitudinar', 20),
(82, 'Santurtzi', 'Santurtzies una localidad de grantradición marinerasituada en el territorio histórico de Bizkaia. Se halla, más concretamente, en la margen izquierda de la ría del Ibaizabal, a los pies del monteSerantes(451 m).\n \nEs conocida por supuerto pesquero, donde es posible degustar las típicassardinas a la parrilla, y cuenta también con unpuerto deportivo. Merece la pena caminar por el extensopaseo marítimo, o bien disfrutar de las vistas que ofrece la localidad desde el mar, ya que se organizan paseos en barco.\n \nMonumentos y esculturas al aire libre\nTras admirar la zona marítima, podemos adentrarnos en la localidad para conocer de primera mano diversos monumentos que conforman elrico patrimoniode la localidad costera. Entre otros, destacan laiglesia de San Jorge, elayuntamiento, edificio de principios del siglo XX con dos curiosas cúpulas cubiertas de pizarra negra y vidrieras en su escalinata interior, elpalacio Oriol, de estilo residencial, y el monumento a lavirgen del Carmen, patrona de Santurtzi.\n \nCada 16 de julio, los pescadores llevan a hombros la figura de la virgen en una emotiva procesión que rinde homenaje a los arrantzales fallecidos.\n \nMás adelante, en el paseo de Iparraguirre, encontraremos el monumento a la Sardinera, \"con la falda remangada, luciendo la pantorrilla...\" tal y como reza la popular canción.\n \nPor último, destacamos el curiosomuseo de esculturas de Santurtzi. No se trata de ningún edificio específico, sino que estamos hablando de un museo al aire libre que cuenta con catorce esculturas expuestas en diversas zonas del pueblo. Artistas estatales e internacionales han donado sus obras para disfrute de todo aquel que las quiera admirar mientras pasea.', 48);
INSERT INTO `municipios` (`CodMunicipio`, `Nombre`, `Descripcion`, `CodProvincia`) VALUES
(84, 'Sestao', 'Encaramado sobre una pequeña meseta paralela a los Montes de Triano y arropado por la cima del Serantes (451 m), la localidad deSestao, situada en la margen izquierda de la Ría de Bilbao, representa un fiel retrato del pasado, presente y futuro de la evolución de la vida en la comarca del Gran Bilbao.\n \nNacida originariamente como asentamiento de pescadores, Sestao comienza a aparecer en los libros de historia como enclave representativo en las luchas banderizas durante el último siglo de la Edad Media. No obstante, es a finales del siglo XIX, de la mano del rápido desarrollo de laindustria siderúrgica y naval, cuando Sestao sufre su mayor evolución demográfica. Este crecimiento se mantuvo hasta la década de los 70 del pasado siglo debido a la implantación de empresas tan representativas del desarrollo industrial de Bizkaia como Altos Hornos de Vizcaya y Astilleros Españoles.\n \nHoy en día, el sector naval y siderúrgico, junto con la metalurgia, la química o el sector eléctrico, siguen siendo las actividades industriales más representativas del municipio. Como vestigio de las desmanteladas instalaciones de Altos Hornos de Vizcaya, podemos ver uno de sushornos altos, declarado monumento histórico por el Gobierno Vasco.\n \nEspacios verdes\nDejando a un lado su industria, Sestao guarda numerosos lugares de interés para el visitante. Es de destacar el Parque de la Iglesia en cuyos jardines encontramos un roble descendiente del propio Árbol de Gernika. Por otra parte, en sus alrededores podemos contemplar la hermosa Iglesia de Santa María, reformada en 1864, la cual redondea uno de los enclaves más bellos del municipio.\n \nEl Parque de Markonzaga, otro de los espacios verdes de Sestao, ubicado cerca del Ayuntamiento, nos ofrece la posibilidad dedisfrutar de largos paseosy de los eventos culturales celebrados en su anfiteatro. El Parque de las Camporras o de Ondéjeda, que dispone de mesas, asadores y zonas de juegos infantiles, y la moderna Plaza de San Pedro, en el centro del municipio, son espacios vivos, áreas de esparcimiento y cultura donde se desarrolla gran parte de la vida social de los vecinos de Sestao. Desde el Parque de la Benedicta, situado junto a la Ría, comienza un precioso paseo que une el municipio con la vecina Portugalete e incluso con el pintoresco puerto de Santurtzi.\n \nEl municipio celebra sus fiestas patronales deSan Pedrolos últimos días del mes de junio. Aunque la festividad de San Pedro tiene lugar el 29 de junio, las verbenas, juegos populares, pasacalles... dan comienzo la noche de San Juan y se mantienen hasta el 30 de junio. Además de las fiestas en honor a ese patrón, los sestaotarras celebran las festividades de San Ignacio, Santiago y Santa Rosa.', 48),
(96, 'Zalla', 'Rodeada de montañas y ocupando una llanura atravesada por el río Cadagua, Zalla recibe al visitante desde el mismo corazón de la comarca de las Encartaciones. Villa de rica historia de litigios fronterizos y antiguas ferrerías, Zalla es paso obligado para aquellos peregrinos que sigan el Camino de Santiago en su vertiente costera, el cual discurre por el mismo centro urbano de la localidad. A pesar de que la mayor parte de las construcciones son modernas, Zalla conserva un valioso legado histórico. Visitaremos algunos edificios singulares como el palacio barroco de los Murga del siglo XVII, actual sede del ayuntamiento que posee un hermoso escudo de armas de los Salcedo y Ayala, y la parroquia San Miguel de Arcángel, fundada en el siglo XII, aunque fue ampliada en el siglo XVIII. La iglesia de una sola nave tiene bóvedas de crucería, dos capillas, siete altares, torre, campanario y pórtico. Entre los edificios religiosos más representativos de la villa también hay que citar la iglesia barroca de Otxaran, la ermita de San Pedro de Zarikete del siglo XVI, junto a la cual se plantóen 1912 un retoño del árbol de Gernika, y la ermita de San Antonio de Mella, que nos aguarda agazapada en un recóndito paraje a la vera del río Cadagua, en el barrio de La Herrera, justo enfrente del palacio Urrutia que conserva una fachada de sillería de finales del siglo XVII. Entre estos dos edificios pasaba el antiguo camino real que desde Bilbao se dirigía a Balmaseda.Torre de TerrerosCerca de esta última ermita, al otro lado del río y rodeada de un entorno rural se sitúa la Torre de Terreros, que se erige en la actualidad como una de las torres mejor conservadas de toda la comarca de las Encartaciones. Ésta, con sus más de 20 metros de altura, es un magnífico ejemplo de construcción defensiva, recordando a quien la contempla la época de las guerras banderizas. En este mismo barrio, cerca del río, encontraremos un área recreativa muy frecuentado por los aficionados a la pesca y que dispone de nueve mesas, bancos y parrillas. No es la única área situada a orillas del Cadagua. En Bolumburu, existe otra zona de esparcimiento equipada con fuentes, mesas, asadores y juegos infantiles. Además, un bidegorri, que recorre el antiguo trazado del ferrocarril de la Robla, ha sido habilitado como paseo para caminantes y cicloturistas. Por otro lado, Zalla celebra sus fiestas patronales en honor a Nuestra Señora del Rosario, a principios de octubre, siendo el 7 el día de la patrona. Tampoco podemos olvidarnos de la popular feria de Gangas que tiene lugar en octubre. Con más de medio siglo de historia, esta fiesta es conocida por los concursos agrícola, ganadero y avícola.', 48),
(902, 'Erandio', 'Con una ubicación estratégica, a las orillas de la Ría y entre los montes San Pablo y San Bernabése situa el municipio vizcaíno Erandio. Este cuenta con numerosos elementos de interés que componen su patrimonio histórico y artístico.Hermosas vistas de la ría de BilbaoUna vez de haber visitado los elementos de carácter histórico, tendremos la oportunidad de pasear por los alrededores del municipio y descubrir asísus apacibles rincones y zonas de descanso ajardinadas, desde las cuales podremos observar hermosas vistas de la ría de Bilbao. Asímismo, el barrio Goiherri de Erandio es un lugar idóneo, debido a su carácter rural, para poder disfrutar de la naturaleza. Este municipio vizcaíno celebra numerosas festividades, debido al gran número de núcleos urbanos con los que cuenta. Las fiestas locales más concurridas se celebran en el mes de agosto en honor a San Lorenzo, Andra Mari y San Agustín.', 48),
(904, 'Sondika', 'Situado en Txorierri, un valle de grandes infraestructuras urbanísticas, Sondika vio transformado su carácter rural por el proceso de industrialización que experimentaron la mayoría de los municipios que rodean la capital vizcaína. De hecho, esta localidad es conocida por albergar durante décadas las instalaciones del aeropuerto de Bilbao, que en la actualidad se ubican en la vecina Loiu. Formada por cuatro barrios, Basozabal, Izarza, Landa (Campa) y Zangroiz, Sondika cuenta con algunos edificios de interés arquitectónico. En el casco urbano, por ejemplo, merece la pena visitar el palacio barroco Goiri Erdikoa, que data del siglo XVIII. El palacio Beike, ubicado cerca del aeropuerto, es de la misma época y fue declarado patrimonio artístico. Destacan, asimismo, el conjunto de ermitas que se halla en los alrededores (las ermitas de Santa Cruz, San Martín y San Roque), el molino de Aixerrota del siglo XVIII y un puente romano.Naturaleza y ocioEste municipio de Txorierri se encuentra rodeado de un bello un entorno natural. Tomando el camino de Izarza, en el mismo centro urbano de Sondika, se alcanza el collado de Artxanda, excelente mirador de la capital vizcaína y sus alrededores. También podemos visitar el hermoso parque de Larrabarrena, un lugar que cuenta con amplias zonas verdes. Por otro lado, Sondika dispone de un aeródromo donde se ofrecen vuelos. En prácticamente una hora, es posible sobrevolar todo el territorio histórico y constituye una de las ofertas turísticas más atractivas de la comarca. En cuanto al apartado festivo, la localidad acoge diversas fiestas a lo largo del año. El 24 de junio se celebra el día de San Juan en la campa del mismo nombre. La fiesta de Santa Cruz, por su parte, tiene lugar en el parque Larrabarrena el 14 de septiembre. Tampoco podemos olvidar la feria agrícola, ganadera y artesana que se organiza en noviembre, que incluye exposición de ganado, venta de productos autóctonos y de artesanía, degustación de txakoli y queso Idiazabal y exhibición de actividades relacionadas con el campo.', 48),
(912, 'Alonsotegi', 'En el pasillo que forma el ríoCadaguaentre los montesSasiburu, Ganekogorta y Pagasarriasoma el municipio de Alonsotegi.\n \nEsta es una de las localidades que no se puede perder ningún amante de la naturaleza y el senderismo, ya que el pueblo se encuentra rodeado de montes. Entre éstos destacan el Ganekogorta y el Pagasarri, en el que hay unas neveras  que datan del siglo XVII. Estas edificaciones subterráneas se utilizaban para almacenar la nieve y usarla más tarde para elaborar bebidas, conservar los alimentos o aliviar la fiebre.\n \nAsí, el municipio nos ofrece laposibilidad de realizar diferentes itinerarios, como el de Zamundi y Azordoiaga, a través de los cuales divisaremos paisajes de gran belleza. También se pueden realizar agradables paseos recorriendo las numerosas ermitas que existen en esta localidad, como la de San Martín, Santa Quiteria o Ntra. Sra. de la Guía, que forman parte del patrimonio artístico de Alonsotegi. En el centro urbano destacan, entre otros edificios, la iglesia parroquial de San Bartoloméy el grupo de viviendas obreras de Barrenkalea, construidas en la primera mitad del siglo XX tras del auge minero e industrial de la zona.\n \nLo más llamativo de este municipio es su pronunciada orografía, ya que posee una fuerte diferencia de cotas, siendo la altura mínima de unos 50 m, donde se encuentra el núcleo urbano, y la máxima de casi 1000 m sobre el nivel del mar en el monte Ganekogorta, lo que convierte a Alonsotegi en uno de los municipios más montañosos  de Bizkaia.\n \nAlonsotegi celebra sus fiestas patronales de San Bartoloméla última semana de agosto asímismo, podremos disfrutar del ambiente festivo a principios de septiembre, puesto que se celebra la festividad de San Antolín.', 48),
(913, 'Zierbena', 'Situada en el extremo occidental del litoral vizcaíno, Zierbena es conocida por elsabor marinerode su puerto pesquero.\n \nA pesar de sufrir una importante transformación por la construcción del Puerto de Bilbao, mantiene elencanto de antaño con sus barcos de pesca y de recreo. Junto con lasdos playasde la localidad, constituye el principal atractivo de la villa costera. Así, el visitante se veráinvadido por el aroma de los pescados cocinados a la brasa en los asadores y restaurantes que hay en el puerto.\n \nEn este mismo lugar, se halla una pequeña playa artificial de 100 metros que únicamente se asoma en bajamar. De aguas tranquilas, esideal para el baño infantil, aunque la playa preferida por lugareños y visitantes es la de La Arena. Con 966 metros de longitud, este hermoso arenal estábien equipado y cuenta en sus alrededores con varias zonas recreativas con mesas, bancos, barbacoas...\n \nEn esta playa comienza el bidegorri más largo de Bizkaia, un paseo acondicionado para cicloturistas y peatones de 11 kilómetros de longitud, de los cuales 4 discurren por Zierbena, para continuar después hacia Portugalete. Otra de las excursiones clásicas es la ascensión a Punta Lucero (307 m), impresionante atalaya desde la cual se divisan espectaculares vistas del mar Cantábrico.\n \nPatrimonio y fiestas\nEn cuanto a su patrimonio histórico, la localidad ofrece al visitante varios puntos de interés, como la parroquia de San Román, situada en el barrio de La Cuesta, que se remonta al siglo XII, aunque fue reconstruida en 1880. Anexa a esta parroquia se encuentra la iglesia de Nuestra Señora Virgen del Puerto. También hemos de destacar otros edificios más modernos la ermita de San Ignacio de Loyola, la única que queda en pie, y la Casa Consistorial, inaugurada en 1997.\n \nEn el apartado festivo, tenemos que citar las numerosas fiestas que se celebran en los barrios del municipio. Las festividades de San Ignacio, Virgen del Puerto y San Roque (el 31 de julio y el 15 y 16 de agosto, respectivamente) son las más importantes, aunque no podemos olvidarnos de la feria del marisco (septiembre-octubre) ni del Día de la Independencia de Zierbena (15 de octubre). Entre las aficiones de los lugareños, hay que mencionar lasregatas de traineras, deporte de gran tradición en la villa, dado que Zierbena cuenta con uno de los clubes de remo más antiguos de Bizkaia.', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `CodProvincia` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`CodProvincia`, `Nombre`) VALUES
(1, 'Araba/Álava'),
(20, 'Gipuzkoa'),
(48, 'Bizkaia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `CodUsuario` int(11) NOT NULL,
  `Nombre` int(50) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`CodEstacion`,`Fecha`,`Hora`);

--
-- Indices de la tabla `espacios_naturales`
--
ALTER TABLE `espacios_naturales`
  ADD PRIMARY KEY (`CodEspacio`);

--
-- Indices de la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD PRIMARY KEY (`CodEstacion`),
  ADD KEY `FKbqk5xdvocjjw6e46ook1diyqf` (`CodMunicipio`);

--
-- Indices de la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD PRIMARY KEY (`CodMunicipio`,`CodEspacio`),
  ADD KEY `FK86oqk96gjmb1g4o8889dd21f5` (`CodEspacio`);

--
-- Indices de la tabla `favoritos_espacios`
--
ALTER TABLE `favoritos_espacios`
  ADD PRIMARY KEY (`CodUsuario`,`CodEspacio`),
  ADD KEY `FKc1xa8aqc0ve7o81t5cidbd4rs` (`CodEspacio`);

--
-- Indices de la tabla `favoritos_municipios`
--
ALTER TABLE `favoritos_municipios`
  ADD PRIMARY KEY (`CodUsuario`,`CodMunicipio`),
  ADD KEY `FKlncs5g8lqg4hgh0c9ojkybc2x` (`CodMunicipio`);

--
-- Indices de la tabla `hashes`
--
ALTER TABLE `hashes`
  ADD PRIMARY KEY (`CodHash`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`CodMunicipio`),
  ADD KEY `Fk_provincia_municipios` (`CodProvincia`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`CodProvincia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CodUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `FKh1q6p36ejtxhtme7v8vem66x4` FOREIGN KEY (`CodEstacion`) REFERENCES `estaciones` (`CodEstacion`);

--
-- Filtros para la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD CONSTRAINT `FKbqk5xdvocjjw6e46ook1diyqf` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`);

--
-- Filtros para la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD CONSTRAINT `FK86oqk96gjmb1g4o8889dd21f5` FOREIGN KEY (`CodEspacio`) REFERENCES `espacios_naturales` (`CodEspacio`),
  ADD CONSTRAINT `FKoqkwfuv4rynap9myvrcunrgbw` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`);

--
-- Filtros para la tabla `favoritos_espacios`
--
ALTER TABLE `favoritos_espacios`
  ADD CONSTRAINT `FKc1xa8aqc0ve7o81t5cidbd4rs` FOREIGN KEY (`CodEspacio`) REFERENCES `espacios_naturales` (`CodEspacio`),
  ADD CONSTRAINT `FKhypoyol94qht21efyqm30oc00` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`);

--
-- Filtros para la tabla `favoritos_municipios`
--
ALTER TABLE `favoritos_municipios`
  ADD CONSTRAINT `FK4oo8cxsa4kecfrb5q9oog8jlg` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`),
  ADD CONSTRAINT `FKlncs5g8lqg4hgh0c9ojkybc2x` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`);

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `FKje5r1km4bp0ixle35q7f5ao1f` FOREIGN KEY (`CodProvincia`) REFERENCES `provincia` (`CodProvincia`),
  ADD CONSTRAINT `Fk_provincia_municipios` FOREIGN KEY (`CodProvincia`) REFERENCES `provincia` (`CodProvincia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
