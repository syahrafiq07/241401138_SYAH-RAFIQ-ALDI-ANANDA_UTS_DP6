program DendaTerlambat;

var
  nama: string;
  jabatan: string;
  datang: string;
  jam, menit, menitTerlambat, denda: integer;

begin
  write('Masukkan Nama: ');
  readln(nama);
  write('Masukkan Jabatan: ');
  readln(jabatan);
  write('Masukkan Waktu Datang (HH.MM): ');
  readln(datang);

  // Mengambil jam dan menit dari input
  jam := (ord(datang[1]) - ord('0')) * 10 + (ord(datang[2]) - ord('0'));
  menit := (ord(datang[4]) - ord('0')) * 10 + (ord(datang[5]) - ord('0'));

  // Menghitung total menit datang
  menitTerlambat := (jam * 60 + menit) - 420; // 7:00 = 420 menit
  if menitTerlambat < 0 then
    menitTerlambat := 0;

  // Menghitung denda
  denda := (menitTerlambat div 5);
  if (jabatan = 'BPH') or (jabatan = 'Presidium') then
    denda := denda * 20000
  else
    denda := denda * 10000;
    

  writeln('Total Denda: Rp', denda);
end.