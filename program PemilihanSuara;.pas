program PemilihanSuara;

var
  jumlahPemilih, i, suaraA, suaraB: integer;
  pilihan: char;

begin
  suaraA := 0;
  suaraB := 0;

  write('Masukkan jumlah pemilih: ');
  readln(jumlahPemilih);

  for i := 1 to jumlahPemilih do
    begin
        write('Masukkan pilihan pemilih ', i, ' (A/B): ');
        readln(pilihan);
    if pilihan = 'A' then
      Inc(suaraA)
    else if pilihan = 'B' then
      Inc(suaraB);
  end;

  writeln('Jumlah pemilih yang memilih opsi A: ', suaraA);
  writeln('Jumlah pemilih yang memilih opsi B: ', suaraB);
end.