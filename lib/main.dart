import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'img/lake.jpg',
              ),

              TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
              ),
              //ButtonSection(),
                TextSection(
                  description:
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                      'Bernese Alps. Situated 1,578 meters above sea level, it '
                      'is one of the larger Alpine Lakes. A gondola ride from '
                      'Kandersteg, followed by a half-hour walk through pastures '
                      'and pine forest, leads you to the lake, which warms to 20 '
                      'degrees Celsius in the summer. Activities enjoyed here '
                      'include rowing, and riding the summer toboggan run.',
                ),


                ImageSection(
                image: 'img/foto1.jpeg',
              ),

              TitleSection(
                name: 'La Basilica',
                location: 'Ecuador, Quito',
              ),
              //ButtonSection(),
                TextSection(
                  description:
                      'La Basílica del Voto Nacional, en el centro histórico de Quito, es un '
                      'imponente ejemplo del estilo neogótico en América Latina. Construida '
                      'entre finales del siglo XIX y principios del XX, destaca por sus altas '
                      'torres, vitrales y gárgolas —algunas con figuras de fauna local— y ofrece '
                      'vistas panorámicas de la ciudad desde sus miradores. Es un importante '
                      'punto arquitectónico, turístico y religioso de Quito.',
                ),

                ImageSection(
                image: 'img/foto2.jpg',
              ),

              TitleSection(
                name: 'Iglesia de la Compañía de Jesús',
                location: 'Ecuador, Quito',
              ),
              //ButtonSection(),
                TextSection(
                  description:
                      'La Iglesia de la Compañía de Jesús es una joya barroca situada en Quito, conocida '
                      'por su interior ricamente decorado y el extensivo uso de pan de oro. Construida entre '
                      'los siglos XVI y XVIII, destaca por su ornamentación detallada, retablos, tallas y '
                      'pinturas que reflejan el estilo barroco andino. Es un referente del arte religioso '
                      'colonial y un importante sitio histórico y cultural de la ciudad.',
                ),

                ImageSection(
                image: 'img/foto3.jpeg',
              ),

              TitleSection(
                name: 'El panecillo',
                location: 'Ecuador, Quito',
              ),
              //ButtonSection(),
                TextSection(
                  description:
                      'El Panecillo es uno de los miradores más emblemáticos de Quito, ubicado en el corazón de la ciudad. '
                      'Coronado por la majestuosa Virgen de Legarda, esta colina ofrece vistas panorámicas únicas del centro '
                      'histórico y de los valles que rodean la capital. Su monumento, construido en aluminio, destaca por su '
                      'imponente presencia y su diseño inspirado en el arte quiteño. El Panecillo es un punto de referencia '
                      'cultural, histórico y turístico que conecta la tradición religiosa con la identidad arquitectónica de la ciudad.',
                ),

                ImageSection(
                image: 'img/foto4.jpg',
              ),

              TitleSection(
                name: 'Centro Historico de Quito',
                location: 'Ecuador, Quito',
              ),
              //ButtonSection(),
                TextSection(
                  description:
                      'El Centro Histórico de Quito es uno de los conjuntos coloniales mejor conservados de América Latina y '
                      'patrimonio cultural de la humanidad. Sus calles empedradas, plazas tradicionales y edificaciones '
                      'religiosas y civiles reflejan siglos de historia y arquitectura andina y colonial. Entre iglesias, conventos, '
                      'museos y casonas patrimoniales, este espacio vibrante combina cultura, tradición y vida cotidiana. '
                      'Es un lugar emblemático donde la riqueza histórica de la ciudad se encuentra con su identidad moderna.',
                ),


                ImageSection(
                image: 'img/foto5.jpg',
              ),

              TitleSection(
                name: 'El Teleferico',
                location: 'Ecuador, Quito',
              ),
              
                TextSection(
                  description:
                      'El Teleférico de Quito, conocido como el TelefériQo, es una de las atracciones más destacadas de la ciudad. '
                      'Asciende desde las faldas del volcán Pichincha hasta más de 4.000 metros sobre el nivel del mar, ofreciendo '
                      'impresionantes vistas panorámicas de la capital y sus alrededores. Durante el recorrido, los visitantes pueden '
                      'apreciar el contraste entre la ciudad y los paisajes naturales andinos. En la cima, se encuentran senderos, miradores '
                      'y espacios recreativos que convierten al Teleférico en un punto ideal para el turismo, la aventura y la contemplación del paisaje.',
                ),
              ButtonSection(),

            ],
          )
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }

}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}


class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}