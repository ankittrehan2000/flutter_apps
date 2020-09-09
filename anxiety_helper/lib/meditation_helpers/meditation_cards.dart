class MeditationCardInfo {
  String title;
  List<String> meditationSounds;

  MeditationCardInfo({this.title, this.meditationSounds});
}

class MeditationCards {
  String title;
  MeditationCardInfo info;

  MeditationCards({this.title, this.info});
}

MeditationCardInfo type1 = MeditationCardInfo(
    title: "This is name of this meditation",
    meditationSounds: ["The rona song", "The rona song", "Third Name"]);

List<MeditationCards> meditationCards = [
  MeditationCards(title: "Type 1", info: type1),
  MeditationCards(title: "Type 2"),
  MeditationCards(title: "Type 3"),
  MeditationCards(title: "Type 4"),
];
