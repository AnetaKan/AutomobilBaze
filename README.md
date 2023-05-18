# AutomobilBaze

--Pravimo relacionu bazu podataka Automobil
Spajamo tabelu Prodavac sa tabelom Prodaja po zajednickoj osobini i time smo napravili relacionu bazu podataka. Zajednicka osobina je id.

--U tabeli Prodavac imamo podatke: id(int, primarni kljuc(jedinstven za tabelu)), ime(varchar), prezime(varchar), auto(varchar), boja(varchar)
           Prodaja               : id(int, primarni kljuc), datum(DATE), cena(double), kolicina(int), prodavac_id(strani kljuc).
         
-- Unosimo po 5 vrednosti: INSERT INTO 'nazivTabele' (nazivi kolona) VALUES (vrednosti koje zelimo)
<img width="1247" alt="Screenshot 2023-05-18 at 15 59 50" src="https://github.com/AnetaKan/AutomobilBaze/assets/133756722/f06379ed-aa80-404f-8c2f-2c92c7eb6f05">

<img width="1257" alt="Screenshot 2023-05-18 at 16 00 04" src="https://github.com/AnetaKan/AutomobilBaze/assets/133756722/ac632ed7-e74e-4152-821a-4050d1849b63">

         

-- Podesili smo vezu izmedju tabela: Structure -> Relation view . 

 ## UPITI


1. Izlistali smo prodavce koji su kupili automobile cija je cena izmedju 3500 i 10000 i spojili smo tabele po id-ju

SELECT pr.ime, p.kolicina, p.cena, p.datum
FROM Prodaja p, Prodavac pr
WHERE p.id = pr.id AND p.cena BETWEEN '3500' AND '10000';

<img width="1262" alt="Screenshot 2023-05-18 at 15 59 35" src="https://github.com/AnetaKan/AutomobilBaze/assets/133756722/934500a4-68f1-4249-9de8-e4e842279e24">


2. Pronasli smo kada je osoba 'Marko' 'Pavlovic' kupila 'bmw' crvene boje, kolicinu i cenu automobila
SELECT pr.kolicina, pr.datum, pr.cena
FROM Prodavac p, Prodaja pr 
WHERE p.id = pr.id and p.ime = 'Marko' AND p.prezime = 'Pavlovic' AND p.auto = 'Bmw' AND p.boja = 'crvena ' ;
<img width="590" alt="Screenshot 2023-05-18 at 16 02 11" src="https://github.com/AnetaKan/AutomobilBaze/assets/133756722/fd36ed69-74c9-43c2-a881-30306ef4955f">

