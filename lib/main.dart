import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp  extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'ROTONDA', 
                location: 'Quito'
                ),
                ImageSection(image: 'images/rotonda.jpg'),
                TextSection(description: "La ciudad colonial de Quito está llena de historia, si es tu intención hacer un recorrido histórico, entonces está bien. Es limpio, un poco concurrido como las principales ciudades de los paìses, interesanrte por el caracter histórico. Es una callecita no muy grande"),
                ButtonSection(),

                TitleSection(
                name: 'CAROLINA', 
                location: 'Quito'
                ),
                ImageSection(image: 'images/caro.jpeg'),
                TextSection(description: "TEl parque La Carolina es un espacio verde de carácter público en la ciudad de Quito, capital de la República del Ecuador. Está ubicado en la zona de Iñaquito, en el corazón financiero y empresarial de la urbe y es, a su vez, una de las áreas recreacionales más importantes del área metropolitana"),
                ButtonSection(),

                TitleSection(
                name: 'PANECILLO', 
                location: 'Quito' 
                ),
                ImageSection(image: 'images/pan.jpg'),
                TextSection(description: "El Panecillo es una elevación natural de 3.000 metros sobre el nivel del mar, (200 metros más alto que el promedio de la ciudad de Quito) enclavada en el corazón mismo de la ciudad de Quito (Ecuador). Es el sitio más visitado de la ciudad."),
                 ButtonSection(),

                TitleSection(
                name: 'PLAZA GRANDE', 
                location: 'Quito'
                ),
                ImageSection(image: 'images/pla.jpg'),
                TextSection(description: "La plaza de la Independencia, también conocida como plaza Grande, es la principal plaza de la ciudad de Quito, ubicada en el casco antiguo de la ciudad. Se trata de la plaza mayor de la capital, centro político e histórico del Ecuador, y asiento simbólico del presidente del Ecuador"),
                ButtonSection(),
                
                TitleSection(
                name: 'LA GUARAGUA', 
                location: 'Quito'
                ),
                ImageSection(image: 'images/gua.jpg'),
                 TextSection(description: "TEn el Quito de 1920-1930, hasta el siglo XX, hablar de La Guaragua era referirse a un barrio ideal, porque lo frecuentaban pintores, bohemios y enamorados. La segunda cuadra de la calle Vargas, conocida como La Guaragua, entre Esmeraldas y Oriente, era el lugar de reunión de los artistas "),
                ButtonSection(),
            ],
            )
        ),
      ),
    );
  }
}
class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          
          Icon(
            Icons.macro_off,
            color: Colors.red[500],
          ),
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
    final Color color = Theme.of(context).primaryColorDark;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.access_alarm,
            label: 'alarm',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
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
          padding: const EdgeInsets.only(top: 12),
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
class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}