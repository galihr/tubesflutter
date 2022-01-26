class ListWisata {
  List<Komunitas> komunitas;

  ListWisata({this.komunitas});

  ListWisata.fromJson(Map<String, dynamic> json) {
    if (json['komunitas'] != null) {
      komunitas = <Komunitas>[];
      json['komunitas'].forEach((v) {
        komunitas.add(new Komunitas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.komunitas != null) {
      data['komunitas'] = this.komunitas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Komunitas {
  int id;
  String nama;
  String logoUrl;
  String kategori;
  String deskripsi;

  Komunitas({this.id, this.nama, this.logoUrl, this.kategori, this.deskripsi});

  Komunitas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    logoUrl = json['logo_url'];
    kategori = json['kategori'];
    deskripsi = json['deskripsi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['logo_url'] = this.logoUrl;
    data['kategori'] = this.kategori;
    data['deskripsi'] = this.deskripsi;
    return data;
  }
}
