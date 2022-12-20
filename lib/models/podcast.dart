import './episode.dart';

class Podcast {
  String? name;
  List<Episode>? episodes;

  Podcast(this.name);

  static List<Podcast> fetchAll() {
    var p1 = Podcast('Tim Sneath Talks Tips & Takeaways');

    p1.episodes = [
      Episode(p1, 'Product Management Tips for the Common Man'),
      Episode(p1, 'My takeaway from Ten Tedious Thanksgivings'),
      Episode(p1, 'Talking Tech Tips with Talktive Techs: Twenty Tips')
    ];

    var p2 = Podcast('Eric Seidel Educates on Effective Entrepreneurial Engineering');

    p2.episodes = [
      Episode(p2, 'Evolving Engeneering Teams Through Evoking Excitment'),
      Episode(p2, 'Impressing External Engeneers with \"en-teresting\" code'),
      Episode(p2, 'An Engineer\'s Evening Entrypoint: Cocktails & Entrees'),
    ];

    var p3 = Podcast('Martin aguinis Masters Marketing Magin Monologues');

    p3.episodes = [
      Episode(p3, 'The Meaning Behind Most monologues: Marketing'),
      Episode(p3, 'Marketing Mumbojambo, Explained'),
      Episode(p3, 'MarketingM= Mockups Matter'),
    ];
    return [p1, p2, p3];
  }

}