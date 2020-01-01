import './skills.dart';
import './experience.dart';
import './favorite.dart';
import './jobs.dart';

class Users {
  final int id;
  final String name;
  final String facebookUrl;
  final String instagramUrl;
  final String linkedinUrl;
  final String info;
  final String email;
  final String password;
  final List<Skills> skills;
  final List<Experience> experience;
  final List<Favorite> favorites;

  Users(
      {this.id,
      this.name,
      this.facebookUrl = '',
      this.instagramUrl = '',
      this.linkedinUrl = '',
      this.info,
      this.email,
      this.password,
      this.skills,
      this.experience,
      this.favorites});
}

var user = Users(
    id: 1,
    name: "Nicolas Marqui",
    info:'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI.',
    email: 'nicolas.marqui@fatec.sp.gov.br',
    password: 'hallo',
    skills: [
      Skills(id: 1, title: 'Web Developer', hasWorked: true),
      Skills(id: 1, title: 'Full Stack Developer', hasWorked: false),
    ],
    experience: [
      Experience(
          id: 1,
          title: 'Web Developer',
          company: 'Jgwebcom',
          stillWorking: true,
          howLong: 8,
          description: 'Noice!'),
          Experience(
          id: 2,
          title: 'Web Design',
          company: 'Jgwebcom',
          stillWorking: true,
          howLong: 5,
          description: 'Noice!'),
    ],
    favorites: [
      Favorite(id: 1, job: jobs[0]),
      Favorite(id: 1, job: jobs[1]),
      Favorite(id: 1, job: jobs[3]),
    ]);
