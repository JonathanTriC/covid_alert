class HospitalModel {
  String? imageUrl;
  String? title;

  HospitalModel(
    this.imageUrl,
    this.title,
  );
}

List<HospitalModel> hospitals = hospitalData
    .map(
      (item) => HospitalModel(
        item['imageUrl'],
        item['title'],
      ),
    )
    .toList();

var hospitalData = [
  {
    "imageUrl": "asset/hospital_pic1.png",
    "title": "RS Jaya Abadi",
  },
  {
    "imageUrl": "asset/hospital_pic2.png",
    "title": "RS Lawan Covid",
  },
  {
    "imageUrl": "asset/hospital_pic3.png",
    "title": "RS Lekas Sembuh",
  },
  {
    "imageUrl": "asset/hospital_pic4.png",
    "title": "RS Ir.Soekarno",
  },
  {
    "imageUrl": "asset/hospital_pic3.png",
    "title": "RS Sumber Waras",
  }
];
