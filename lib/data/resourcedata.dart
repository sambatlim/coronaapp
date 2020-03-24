class Symptomdata {
  String title;
  String description;
  String color;
  Symptomdata(this.title, this.description, this.color);
}

List<Symptomdata> symptomDatas = [
  Symptomdata(
      "វេបសាយអង្គការសុខភាពពិភពលោក",
      "https://www.who.int/emergencies/diseases/novel-coronavirus-2019",
      "Colors.blue"),
  Symptomdata("វេបសាយពិនិត្រមើលទិន្នន័យនៃការឆ្លង",
      "https://www.worldometers.info/coronavirus/", "Colors.blue"),
  Symptomdata("វេបសាយរបស់ក្រសួងសុខភិបាលកម្ពុជា", "http://www.cdcmoh.gov.kh/",
      "Colors.blue"),
  Symptomdata("facebook របស់ក្រសួងសុខភិបាលកម្ពុជា",
      "https://www.facebook.com/MinistryofHealthofCambodia/", "Colors.blue"),
];
