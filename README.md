# PBP Flutter

## Tugas 9
### Pengambilan data JSON tanpa membuat model
Kita dapat melakukan pengambilan data JSON tanpa membuat model. Notasi object dalam syntax JavaScript ekuivalen dengan Map yang terdiri dari pasangan key dan value. Namun, hal tersebut bukan merupakan best practice. Konversi data JSON ke dalam suatu model dilakukan untuk meminimalisir kesalahan pengambilan atau pengiriman data melalui HTTP request.

### Widget yang digunakan dan fungsinya
- `Text`, digunakan untuk menampilkan tulisan
- `Padding`, digunakan untuk menambahkan _padding_.
- `Center`, digunakan untuk membuat posisi `child` menjadi di tengah terhadap dirinya sendiri.
- `Column`, digunakan untuk menampilkan `children` dalam posisi vertikal.
- `Row`, digunakan untuk menampilkan `children` dalam posisi horizontal.
- `Drawer`, digunakan untuk membuat panel yang dapat dimunculkan dan disembunyikan di samping layar sebagai navigasi.
- `Flexible`, digunakan untuk mecegah terjadinya overflow
- `CheckBox`, digunakan sebagai button checkbox untuk mengubah status watched pada sebuah WatchList

### Mekanisme pengambilan dan ekstraksi data JSON pada Flutter
- Data di-fetch dari sebuah API endpoint.
- Data yang sudah di-fetch kemudian di-decode menjadi bentuk JSON.
- Data dalam bentuk JSON dikonversi menjadi data dalam bentuk sebuah model.
- Data dalam bentuk model tersebut ditampilkan pada aplikasi Flutter.

### Pengimplementasian Checklist
- Membuat tombol navigasi baru pada `Drawer` untuk mengakses page `mywatchlist` dan `watchlist_detail`.
- Membuat sebuah model `WatchList` dengan fields sesuai dengan fields object `WatchList` pada Tugas 3.
- Membuat page `mywatchlist` untuk menampilkan judul-judul `WatchList` yang diperoleh melalui API endpoint dari Tugas 3. Judul-judul tersebut ditampilkan secara vertikal dan dapat diklik untuk mengakses page `watchlist_detail`.
- Membuat page `watchlist_detail` yang dapat diakses dengan mengklik sebuah `WatchList` pada page `mywatchlist`. Pada page ini terdapat detail dari object `WatchList` yang diperoleh dari argumen navigasi dan tombol back untuk kembali ke page `mywatchlist`.

## Tugas 8
### Perbedaan `Navigator.push` dan `Navigator.pushReplacement`
`push` menumpuk route teratas sebelumnya dengan widget baru, sedangkan `pushReplacement` menggantikan route teratas sebelumnya dengan widget baru. `Navigator.push` akan "menumpuk" halaman baru di atas halaman sebelumnya, sedangkan  `Navigator.pushReplacement` akan menggantikan halaman lama dengan halaman baru.

### _widget_ yang dipakai di proyek ini
- `Text`, digunakan untuk menampilkan tulisan
- `FloatingActionButton`, digunakan untuk membuat _button_ yang dapat melakukan _action_ tertentu, pada tugas ini _button_ dapat menambah dan mengurangi `counter`.
- `Visibility`, digunakan untuk mengatur apakah sebuah komponen akan dimunculkan atau tidak.
- `Padding`, digunakan untuk menambahkan _padding_.
- `Center`, digunakan untuk membuat posisi `child` menjadi di tengah terhadap dirinya sendiri.
- `Column`, digunakan untuk menampilkan `children` dalam posisi vertikal.
- `Row`, digunakan untuk menampilkan `children` dalam posisi horizontal.
- `Drawer`, digunakan untuk membuat panel yang dapat dimunculkan dan disembunyikan di samping layar sebagai navigasi.
- `Form`, digunakan sebagai parent widget semua form fields.
 - `TextFormField`, digunakan untuk input text
- `DropdownButton, digunakan untuk membuat button yang ketika diklik memunculkan beberapa pilihan
- `TextButton`, digunakan untuk membuat button yang dapat diberi tulisan

### Jenis-jenis event dalam Flutter
- `onTap`: event yang di-trigger ketika sebuah widget diklik
- `onPressed`: event yang di-trigger ketika sebuah button diklik
- `onChanged`: event yang di-trigger ketika terjadi sebuah perubahan pada widget, misalnya perubahan value input pada sebuah input field.
- `onSaved`: event yang di-trigger ketika sebuah form di-save.

### Cara kerja Navigator
Widget `Navigator` bekerja dengan menampilkan screen teratas pada stack of route dengan memperhatikan method yang digunakan pada object `Navigator`. Dalam melakukan navigasi ke layar baru, `BuildContext` yang menyimpan route widget akan diakses oleh `Navigator` dengan menggunakan method pada class `Navigator` seperti `push()`, `pop()`, `pushReplacement`(), dan lain-lain.

### Cara implementasi
- Membuat sebuah widget `Drawer` yang berisi tombol navigasi ke halaman-halaman counter, form, dan data budget.
- Menambahkan sebuah halaman baru yang berisi form pada sebuah file `budget_form.dart`. Di halaman ini terdapat widget input judul, nominal, dan jenis serta button untuk menyimpan form tersebut. Widget-widget tersebut disusun berjejer secara vertikal.
- Menambahkan sebuah halaman baru yang berisi data budget sebuah file `budget_list.dart`. Di halaman ini memunculkan data budget yang telah disimpan. Data-data tersebut disusun berjejer secara vertikal.
- Membuat sebuah class `Budget`. Class ini digunakan untuk menyimpan data-data yang ditambahkan. Data-data tersebut disimpan di dalam sebuah static list.

## Tugas 7
### _Stateless widget_ dan _stateful widget_
_Stateless widget_ adalah _widget_ yang bersifat statis dan isinya tidak bergantung pada _state_ yang ada. Seluruh konten yang sudah ada di awal tidak dapat diubah. Misalnya, ketika kita membuat _text_, maka _text_ tersebut akan tetap seperti itu setiap kali aplikasi dibuka, terlepas dari aksi yang dilakukan oleh _user_.

_Stateful widget_ adalah _widget_ yang bersifat dinamis dan isinya bergantung pada state yang ada. Konten yang sudah ada di awal sewaktu-waktu dapat berubah, misalnya karena _event_ tertentu.

### _widget_ yang dipakai di proyek ini
- `Text`, digunakan untuk menampilkan tulisan
- `FloatingActionButton`, digunakan untuk membuat _button_ yang dapat melakukan _action_ tertentu, pada tugas ini _button_ dapat menambah dan mengurangi `counter`.
- `Visibility`, digunakan untuk mengatur apakah sebuah komponen akan dimunculkan atau tidak.
- `Padding`, digunakan untuk menambahkan _padding_.
- `Center`, digunakan untuk membuat posisi `child` menjadi di tengah terhadap dirinya sendiri.
- `Column`, digunakan untuk menampilkan `children` dalam posisi vertikal.
- `Row`, digunakan untuk menampilkan `children` dalam posisi horizontal.

### `setState()`
`setState()` berfungsi untuk memberi tahu _stateful widget_ bahwa terdapat state yang mengalami perubahan nilai agar aplikasi dapat dimuat ulang dengan _value_ yang baru. Pada tugas ini, `setState()` berdampak pada tampilan _value_ variabel `_counter` pada layar, menampilkan decrement floating action button jika state `_counter` > 0, serta mengatur warna dari _text_ genap/ganjil.

### `const` dengan `final`
`const` dan `final` merupakan _modifier_ yang digunakan ketika nilai suatu variabel tetap dan tidak dapat diubah lagi. `const` merupakan _modifier_ untuk variabel yang nilainya di-_assign_ variabel sebelum _runtime_. Contohnya `const a = [1,2,3]`. Sedangkan, `final` merupakan _modifier_ yang digunakan untuk untuk variabel yang nilainya di-_assign_ pada saat _runtime_. Contohnya `final date = new DateTime.now()`.

### Cara implementasi
* Membuat proyek flutter baru bernama `counter_7` dengan menjalankan `flutter create counter_7`
* Membuat fungsi `_decrementCounter` untuk _decrement_ `_counter`, yang isinya simetris dengan fungsi `_incrementCounter`.
* Membuat fungsi `_setParity` untuk mengatur perubahan _state_, seperti `_counter`, `_parity`, `_color`, `_isVisible`.
* Membuat _button_ untuk _increment_ dan _decrement_ `_counter`, atribut `onPressed` ke _function_ yang sesuai.
* Menambahkan _padding_ untuk ke _button decrement counter_, serta mengatur _visibility_-nya untuk ketika counter <= 0.