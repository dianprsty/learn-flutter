void main() {
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"],
  ];

  dataHandling(input);
}

void dataHandling(List<List<String>> data) {
  data.forEach((row) {
    print("""
Nomor ID: ${row[0]}
Nama Lengkap: ${row[1]}
TTL: ${row[2]} ${row[3]}
Hobi: ${row[4]}
    """);
  });
}
