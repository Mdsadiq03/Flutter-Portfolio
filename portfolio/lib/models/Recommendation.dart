class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Reading Books",
    source: "Non fictional",
    text:
        "Atomic Habits by James Clear\nThe Psychology of Money by Morgan Housel\nCrushing it! by Gary Vaynerchuk\nThe Almanack of Naval Ravikant by Eric Jorgenson and 2 Mark Manson's book",
  ),
  Recommendation(
    name: "Drawing",
    source: "Pencil Sketching",
    text:
        "Drawing has been a passion of mine since school, where I explored various sketches like portraits, landscapes, animals, and abstract designs. I love working with pencil sketches to bring detail and depth. In my free time, I continue refining my skills and using art as a creative outlet to express myself and unwind.",
  ),
  Recommendation(
    name: "Gym",
    source: "Wellness Enthusiast",
    text:
        "Fitness is a key part of my lifestyle, where the gym becomes more than a place—it's a space for self-discipline and balance. I focus not on bodybuilding, but on staying active, strong, and in tune with my body.",
  ),
  Recommendation(
    name: "Handball",
    source: "sport",
    text:
        "As a passionate handball competitor, I’ve embraced the thrill of competition at the zonal level, earning recognition through various accolades. This journey has enriched my skills and instilled a deep appreciation for teamwork, discipline, and perseverance.",
  ),
];
