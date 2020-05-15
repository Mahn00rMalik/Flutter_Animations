import 'package:hogwarts_app/model/school.dart';
import 'package:hogwarts_app/model/course.dart';

class Repository {
  static final School Hogwarts = new School(
    name: 'Learn Magic at Hogwarts',
    about:
        'Hogwarts School of Witchcraft and Wizardry is the Scottish wizarding school, located in the Highlands of Scotland.'
        '.Established around the 10th century, Hogwarts is considered to be one of the finest magical institutions in the wizarding world.'
        'The school\'s motto is Draco Dormiens Nunquam Titillandus, which, translated from Latin, means '
        '\"Never tickle a sleeping dragon\".',
    backdropPhoto: 'assets/hogwarts_background.jpg',
    courses: <Course>[
      new Course(
        title: 'Charms',
        about:
            'Charms is the type of spells concerned with giving an object new and unexpected properties.',
        thumbnail: 'assets/charms.jpg',
      ),
      new Course(
        title: 'Defence Against the Dark Arts',
        about:
            'Defence Against the Dark Arts is the class that teaches students to be protected from Dark creatures.',
        thumbnail: 'assets/defense_dark_arts.png',
      ),
      new Course(
        title: 'Flying',
        about:
            'Flying is the class that teaches the use of broomsticks made for the use of flying and is taught only to Hogwarts first years by Rolanda Hooch.',
        thumbnail: 'assets/flying.jpg',
      ),
      new Course(
        title: 'History of Magic',
        about:
            'History of Magic is the study of magical history. They are only lectures, given without pause, about significant events in wizarding history.',
        thumbnail: 'assets/history_magic.png',
      ),
      new Course(
        title: 'Potions',
        about:
            'Potions is described as the art of creating mixtures with magical effects.',
        thumbnail: 'assets/potions.jpg',
      ),
    ],
    location: 'Scotland, UK',
    logo: 'assets/hogwarts_logo.png',
  );
}
