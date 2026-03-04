### Struktur Folder

```
lib/
├── main.dart # Entry point aplikasi
│
├── core/ # Utilitas & konfigurasi global
│ ├── routes/ # Routing konfigurasi
│ │ └── app_router.dart
│ ├── constants/ # Konstanta aplikasi
│ │ └── app_constants.dart
│ └── theme/ # Theme & styling
│ └── app_theme.dart
│
├── features/ # Fitur-fitur aplikasi
│ └── cart/ # Fitur: Cart/Keranjang
│ ├── data/ # DATA LAYER
│ │ ├── models/ # Model data (DTO)
│ │ │ └── product_model.dart
│ │ └── repositories/ # Implementasi repository
│ │ └── cart_repository_impl.dart
│ │
│ ├── domain/ # DOMAIN LAYER
│ │ ├── entities/ # Entity / objek bisnis murni
│ │ │ └── product.dart
│ │ └── repositories/ # Kontrak (abstract) repository
│ │ └── cart_repository.dart
│ │
│ └── presentation/ # PRESENTATION LAYER
│ ├── providers/ # Provider / State Notifier
│ │ └── cart_provider.dart
│ ├── pages/ # Halaman aplikasi
│ │ ├── catalog_page.dart
│ │ └── cart_page.dart
│ └── widgets/ # Widget komponen kecil
│ └── add_button_widget.dart
│
└── injection.dart # Dependency Injection setup
```

### Flow Saat User Tekan “TAMBAH”

Behind The Scene:

1. User tekan TAMBAH.
2. Tombol itu manggil provider.addItem().
3. Provider minta repository buat nambahin item ke data.
4. Data berhasil diperbarui.
5. Provider panggil notifyListeners().
6. UI dapat sinyal ada perubahan.
7. UI render ulang.
8. Cart sekarang bertambah satu item.

### Tampilan Aplikasi

<p align="center">
  <img src="https://github.com/user-attachments/assets/1b2ff536-d0ff-45b2-bfd9-b50cad2c47ac" width="300"/>
  <img src="https://github.com/user-attachments/assets/53a546ad-3e26-460a-b255-35d3993e23b2" width="300"/>
</p>
