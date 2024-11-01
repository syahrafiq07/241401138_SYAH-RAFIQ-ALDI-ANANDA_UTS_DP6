program HitungKembalian;

var
  kembalian: integer;
  totalKoin: integer;
  pecahan: array[1..11] of integer;
  i: integer;

begin
  // Input kembalian yang diinginkan
  write('Masukkan jumlah kembalian: ');
  readln(kembalian);

  // Daftar pecahan uang
  pecahan[1] := 100000;
  pecahan[2] := 75000;
  pecahan[3] := 50000;
  pecahan[4] := 20000;
  pecahan[5] := 10000;
  pecahan[6] := 5000;
  pecahan[7] := 2000;
  pecahan[8] := 1000;
  pecahan[9] := 500;
  pecahan[10] := 200;
  pecahan[11] := 100;

  totalKoin := 0;

  // Menghitung jumlah minimum pecahan uang
  for i := 1 to 11 do
  begin
    while (kembalian >= pecahan[i]) and (totalKoin < 4) do // Batasi hingga maksimum 4 pecahan
    begin
      kembalian := kembalian - pecahan[i];
      totalKoin := totalKoin + 1;
    end;
  end;

  // Jika masih ada kembalian yang tersisa setelah 4 pecahan
  if kembalian > 0 then
    totalKoin := totalKoin + 1;

  writeln('Jumlah minimum lembaran/koin yang dibutuhkan: ', totalKoin);

end.