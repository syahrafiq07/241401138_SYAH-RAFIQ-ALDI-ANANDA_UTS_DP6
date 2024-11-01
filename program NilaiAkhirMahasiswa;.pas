program NilaiAkhirMahasiswa;

var

  tugas: array[1..8] of real;
  uts, uas, total, nilaiAkhir: real;
  nilaiHuruf: string;
  i: integer;

begin
  writeln('Masukkan nilai 8 tugas:');
    for i := 1 to 8 do

begin
    write('Tugas ', i, ': ');
    readln(tugas[i]);
  end;

  write('Masukkan nilai UTS: ');
  readln(uts);
  write('Masukkan nilai UAS: ');
  readln(uas);

total := 0;
  for i := 1 to 8 do
    total := total + tugas[i];

  nilaiAkhir := (total / 8 * 0.25) + (uts * 0.35) + (uas * 0.40);

  if (nilaiAkhir >= 85) then
    nilaiHuruf := 'A'
  else if (nilaiAkhir >= 80) then
    nilaiHuruf := 'B+'
  else if (nilaiAkhir >= 75) then
    nilaiHuruf := 'B'
  else if (nilaiAkhir >= 70) then
    nilaiHuruf := 'B-'
  else if (nilaiAkhir >= 65) then
    nilaiHuruf := 'C+'
  else if (nilaiAkhir >= 60) then
    nilaiHuruf := 'C'
  else if (nilaiAkhir >= 40) then
    nilaiHuruf := 'D'
  else
    nilaiHuruf := 'E';

  writeln('Nilai Angka: ', nilaiAkhir:0:2);
  writeln('Nilai Huruf: ', nilaiHuruf);
end.