class Product {
  int id;
  String nama;
  double price;
  String kategori;
  int stock;
  String? deskripsi;
  String? gambar;

  Product({
    required this.id,
    required this.nama,
    required this.price,
    required this.kategori,
    required this.stock,
    this.deskripsi,
    this.gambar,
  });
  String get productInfo {
    return 'ID: $id, Nama: $nama, Harga: $price, Kategori: $kategori, Stok: $stock';
  }
}
String formatHarga(double value) => 'Rp ${value.toStringAsFixed(0)}';

class DiscountedProduct extends Product {
  double discount;

  DiscountedProduct({
    required super.id,
    required super.nama,
    required super.price,
    required super.kategori,
    required super.stock,
    super.deskripsi,
    super.gambar,
    required this.discount,
  });
  double get finalprice => price - (price * discount / 100);
}
double hitungTotalBelanja(List<Product> keranjang) {
  double total = 0;
  for (var product in keranjang) {
    total += product.price;
  }
  return total;
}
void main() {
  const String namaToko = "Linda store";
  final DateTime WaktuAkses = DateTime.now();
  var statusToko = 'Buka';

  statusToko = 'Tutup';
  print('Penggunaan var, final, dan const:');
  print('Nama Toko(const): $namaToko');
  print('Waktu Akses(final): $WaktuAkses');

  int stok = 50;
  double harga = 100000.00;
  String namaProduk = 'Baju';

  print('\nPenggunaan tipe data:');
  print('Stok(int): $stok');
  print('Harga(double): $harga');
  print('Nama Produk(String): $namaProduk');

  List<String> kategoryProduk = ['aksesoris', 'fashion', 'alas kaki'];
  Map<String, dynamic> produkmentah = {
    'id': 008,
    'nama': 'Sepatu Nike',
    'harga': 200000.00,
    'stok': 20,
    'kategori': 'Alas Kaki',
    'isReady': true,
  };

  print('\nPenggunaan List dan Map:');
  print('Kategori Produk(List): $kategoryProduk');
  print('Kategori Pertama: ${kategoryProduk[0]}');
  print('Produk Mentah(Map): $produkmentah');
  print('Nama Produk(Map): ${produkmentah['nama']}');
  print('Is Ready(bool): ${produkmentah['isReady']}');

  int jumlahBeli = 7;
  double totalHarga = jumlahBeli * harga;
  int sisaStok = stok - jumlahBeli;
  double rataRata = totalHarga / jumlahBeli;
  int sisaBagi = stok % jumlahBeli;

  print('\nPenggunaan Operasi Aritmatika:');
  print('Total Harga: $totalHarga');
  print('Sisa Stok: $sisaStok');
  print('Rata-Rata: $rataRata');
  print('Sisa Bagi: $sisaBagi');

  double hargaLain = 150000.00;
  print('\nPenggunaan Operasi Perbandingan:');
  print('Apakah harga > hargaLain? ${harga > hargaLain}');
  print('Apakah stok cukup (>= 5)? ${stok >= 5}');

  bool layakTampil = (stok > 0) && (harga > 0);
  print('\nPenggunaan Operasi Logika:');
  print('Apakah layak untuk ditampilkan? $layakTampil');

  String getStatusStok(int s) {
    if (s > 10) {
      return 'Tersedia';
    } else if (s > 0) {
      return 'Stok Terbatas';
    } else {
      return 'Habis';
    }
  }

  print('Status Stok ($stok pcs): ${getStatusStok(stok)}');

  List<double> hargaBelanja = [100000.00, 150000.00, 200000.00];
  double totalBelanja = 0;
  for (int i = 0; i < hargaBelanja.length; i++) {
    totalBelanja += hargaBelanja[i];
  }
  print('Total Belanja: $totalBelanja');

  int tempStok = 5;
  while (tempStok > 0) {
    print('Mengurangi stok, Stok saat ini: $tempStok');
    tempStok--;
  }
  String kategoriPilihan = 'fashion';
  double diskonKategori;

  switch (kategoriPilihan) {
    case 'aksesoris':
      diskonKategori = 0.1;
      break;
    case 'fashion':
      diskonKategori = 0.2;
      break;
    case 'alas kaki':
      diskonKategori = 0.15;
      break;
    default:
      diskonKategori = 0.0;
  }
  print('\nPenggunaan Switch Case:');
  print('Kategori Pilihan: $kategoriPilihan');
  print('Diskon Kategori: ${diskonKategori * 100}%');

  double hitungDiskon(double harga, double diskon) {
    return harga - (harga * (diskon / 100));
  }

  String formatHarga(double value) => 'Rp ${value.toStringAsFixed(0)}';
  print('\nPenggunaan Function:');
  print(
    'Positional Function (Harga 100rb, Diskon 10%): ${formatHarga(hitungDiskon(100000.00, 10))}',
  );
  print(
    'Named Function(Tanpa Diskon): ${formatHarga(hitungDiskon(100000.00, 0))}',
  );
  print(
    'Named Function(Diskon 20%): ${formatHarga(hitungDiskon(100000.00, 20))}',
  );
  print('\nPenggunaan Class product & Null Safety:');
  Product product1 = Product(
    id: 004,
    nama: 'Baju Kemeja',
    price: 150000.00,
    kategori: 'fashion',
    stock: 10,
    deskripsi: 'Baju kemeja lengan panjang, cocok untuk acara formal.',
  );
  Product product2 = Product(
    id: 005,
    nama: 'Gelang manik',
    price: 300000.00,
    kategori: 'Aksesoris',
    stock: 5,
    deskripsi: 'Gelang manik dengan desain unik dan menarik.',
  );
  DiscountedProduct produkDiskon = DiscountedProduct(
    id: 006,
    nama: 'Sepatu Sneakers',
    price: 300000.00,
    kategori: 'Alas Kaki',
    stock: 8,
    deskripsi: 'Sepatu sneakers nyaman untuk aktivitas sehari-hari.',
    discount: 15.0,
  );
  print(product1.productInfo);
  print('Deskripsi: ${product1.deskripsi}');
  print(product2.productInfo);
  print('Deskripsi: ${product2.deskripsi}');
  print('\n${produkDiskon.productInfo}');
  print('Harga Final Setelah Diskon: ${formatHarga(produkDiskon.finalprice)}');
  
  print('Tugas Mandiri');
  List<Product> dummyProduk = [
    Product(
      id: 006,
      nama: 'Rok polka',
      stock: 10,
      price: 50000.00,
      kategori: 'fashion',
    ),
    Product(
      id: 007,
      nama: 'Tas ransel',
      stock: 5,
      price: 150000.00,
      kategori: 'aksesoris',
    ),
    Product(
      id: 008,
      nama: 'Sepatu boots',
      stock: 3,
      price: 250000.00,
      kategori: 'alas kaki',
    ),
    Product(
      id: 009,
      nama: 'Kemeja flanel',
      stock: 7,
      price: 100000.00,
      kategori: 'fashion',
    ),
    Product(
      id: 010,
      nama: 'Topi baseball',
      stock: 12,
      price: 75000.00,
      kategori: 'aksesoris',
    ),
    Product(
      id: 011,
      nama: 'Sepatu lari',
      stock: 4,
      price: 200000.00,
      kategori: 'alas kaki',
    ),
    Product(
      id: 012,
      nama: 'Jaket kulit',
      stock: 2,
      price: 300000.00,
      kategori: 'fashion',
    ),
    Product(
      id: 013,
      nama: 'Gelang emas',
      stock: 6,
      price: 500000.00,
      kategori: 'aksesoris',
    ),
    Product(
      id: 014,
      nama: 'Sepatu formal',
      stock: 8,
      price: 400000.00,
      kategori: 'alas kaki',
    ),
    DiscountedProduct(
      id: 015,
      nama: 'Celana jeans',
      stock: 5,
      price: 120000.00,
      kategori: 'fashion',
      discount: 10.0,
    ),
  ];
  print('Datar Produk Dummy:');
  for (var product in dummyProduk) {
    print(product.productInfo);
  }
  List<Product> Keranjang = [
    dummyProduk[0],
    dummyProduk[1],
    dummyProduk[2],
    dummyProduk[3],
  ];
  double totalHasilBelanja=hitungTotalBelanja(Keranjang);

  print('\nKeranjang Belanja:');
  print('Jumlah Produk: ${Keranjang.length}');
  print('Total Belanja: ${formatHarga(totalHasilBelanja)}');





}
