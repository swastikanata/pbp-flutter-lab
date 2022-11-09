# counter_7

## _Stateless widget_ dan _stateful widget_
_Stateless widget_ adalah _widget_ yang bersifat statis dan isinya tidak bergantung pada _state_ yang ada. Seluruh konten yang sudah ada di awal tidak dapat diubah. Misalnya, ketika kita membuat _text_, maka _text_ tersebut akan tetap seperti itu setiap kali aplikasi dibuka, terlepas dari aksi yang dilakukan oleh _user_.

_Stateful widget_ adalah _widget_ yang bersifat dinamis dan isinya bergantung pada state yang ada. Konten yang sudah ada di awal sewaktu-waktu dapat berubah, misalnya karena _event_ tertentu.

## _widget_ yang dipakai di proyek ini
- `Text`, digunakan untuk menampilkan tulisan
- `FloatingActionButton`, digunakan untuk membuat _button_ yang dapat melakukan _action_ tertentu, pada tugas ini _button_ dapat menambah dan mengurangi `counter`.
- `Visibility`, digunakan untuk mengatur apakah sebuah komponen akan dimunculkan atau tidak.
- `Padding`, digunakan untuk menambahkan _padding_.
- `Center`, digunakan untuk membuat posisi `child` menjadi di tengah terhadap dirinya sendiri.
- `Column`, digunakan untuk menampilkan `children` dalam posisi vertikal.
- `Row`, digunakan untuk menampilkan `children` dalam posisi horizontal.

## `setState()`
`setState()` berfungsi untuk memberi tahu _stateful widget_ bahwa terdapat state yang mengalami perubahan nilai agar aplikasi dapat dimuat ulang dengan _value_ yang baru. Pada tugas ini, `setState()` berdampak pada tampilan _value_ variabel `_counter` pada layar, menampilkan decrement floating action button jika state `_counter` > 0, serta mengatur warna dari _text_ genap/ganjil.

## `const` dengan `final`
`const` dan `final` merupakan _modifier_ yang digunakan ketika nilai suatu variabel tetap dan tidak dapat diubah lagi. `const` merupakan _modifier_ untuk variabel yang nilainya di-_assign_ variabel sebelum _runtime_. Contohnya `const a = [1,2,3]`. Sedangkan, `final` merupakan _modifier_ yang digunakan untuk untuk variabel yang nilainya di-_assign_ pada saat _runtime_. Contohnya `final date = new DateTime.now()`.

## Cara implementasi
* Membuat proyek flutter baru bernama `counter_7` dengan menjalankan `flutter create counter_7`
* Membuat fungsi `_decrementCounter` untuk _decrement_ `_counter`, yang isinya simetris dengan fungsi `_incrementCounter`.
* Membuat fungsi `_setParity` untuk mengatur perubahan _state_, seperti `_counter`, `_parity`, `_color`, `_isVisible`.
* Membuat _button_ untuk _increment_ dan _decrement_ `_counter`, atribut `onPressed` ke _function_ yang sesuai.
* Menambahkan _padding_ untuk ke _button decrement counter_, serta mengatur _visibility_-nya untuk ketika counter <= 0.