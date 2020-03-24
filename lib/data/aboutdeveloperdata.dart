class Symptomdata {
  String title;
  String description;
  String color;
  Symptomdata(this.title, this.description, this.color);
}

List<Symptomdata> symptomDatas = [
  Symptomdata("Develop using", "https://flutter.dev/", "Colors.blue"),
  Symptomdata("Developer info", "https://github.com/sambatlim", "Colors.blue"),
  Symptomdata("Feel free to pull request",
      "https://github.com/sambatlim/coronaapp", "Colors.blue"),
  Symptomdata(
      "Credit icon creator",
      "https://www.iconfinder.com/p/coronavirus-awareness-icons",
      "Colors.blue"),
];
