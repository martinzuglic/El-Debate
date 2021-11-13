-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 12:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwaprojekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanak`
--

CREATE TABLE `clanak` (
  `id` int(11) NOT NULL,
  `naslov` varchar(64) NOT NULL,
  `autor` varchar(64) NOT NULL,
  `datum` varchar(32) NOT NULL,
  `slika` varchar(32) NOT NULL,
  `opis` text NOT NULL,
  `arhiva` tinyint(1) NOT NULL,
  `kategorija` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clanak`
--

INSERT INTO `clanak` (`id`, `naslov`, `autor`, `datum`, `slika`, `opis`, `arhiva`, `kategorija`) VALUES
(12, 'Po prvi puta u povijesti slikana crna rupa', 'Martin Žuglić', '2020-06-01', 'slika1.jpg', 'Znanstvenici iz cijelog svijeta danas su objavili prvu fotografiju crne rupe koja se nalazi u galaksiji M87. Radi se o povijesnom rezultatu projekta Event Horizon Telescope (EHT) započetog 2012. godine, a riječ je o globalnoj teleskopskoj mreži koja omogućuje izravno promatranje ruba crne rupe.\r\n\r\nNaime, ovaj jedinstveni svemirski fenomen je nemoguće fotografirati jer je crna rupa nevidljiva, njenoj gravitaciji ne može ništa pobjeći, no znanstvenici EHT-a uspjeli su snimiti horizont događaja crne rupe koji može prikazati njenu sjenu ili siluetu. Ovaj događaj bio je i ispit za opću teoriju relativnosti Alberta Einsteina koja omogućuje predviđanje veličine i oblika crne rupe.', 0, 'Svijet'),
(13, 'Mistično jezero', 'Martin Žuglić', '2020-06-02', 'slika2.jpg', 'Nastalo vulkanskom erupcijom prije 2000 godina, jezero Mashu u Japanu smatra se jednim od najbistrijih jezera na svijetu. Nalazi se u sklopu nacionalnog parka Akan Mashu, na otoku Hokaido u sjevernom Japanu, a prastanovnici Japana Ainui smatrali su ga svetim, piše BBC.\r\n\r\nBudući da ga skriva gusta magla i nalazi se u krateru dubokom 200 metara, čije se litice strmoglavo spuštaju u vode jezera, pristup obalama jezera je iz sigurnosnih razloga japansko ministarstvo za okoliš strogo zabranilo. Otežan pristup jezeru samo pridonosi njegovoj tajanstvenosti, ali i čuva čistoću njegovih voda.', 0, 'Svijet'),
(14, 'Polarna svjetlost', 'Martin Žuglić', '2020-06-03', 'slika3.jpg', 'Polarna svjetlost u Zemljinoj atmosferi nastaje kada brze (300 do 1200 km/s), električki nabijene čestice (npr. ioni, elektroni) Sunčeva vjetra uđu u Zemljino magnetsko polje pa se ubrzavajući se prema Zemljinim magnetskim polovima sudaraju s česticama zraka i pobuđuju ih na emisiju svjetlosti, najčešće na visinama između 90 i 150 km. Posebno je sjajna u doba velike Sunčeve aktivnosti (pojava mnogih Sunčevih pjega i baklji).\r\n\r\nPromatrana iz područja bližega Zemljinim polovima, polarna je svjetlost uglavnom žutozelene, a s manjih geografskih širina, crvene boje. Do razlike u boji dolazi zbog različitih gustoća zraka na različitim visinama u atmosferi. Na velikim visinama, gdje je atmosfera rijetka, sudari su među molekulama zraka rijetki i kisik dvije minute nakon pobuđenja emitira crvenu svjetlost. U dubljim slojevima atmosfere (do kojih čestice Sunčeva vjetra dospijevaju putujući prema sjeveru ili jugu) događa se znatno više sudara među molekulama zraka, što dovodi do toga da, potaknut tim sudarima, Sunčevim vjetrom pobuđeni kisik emitira zelenu svjetlost. Pobuđeni dušik neovisno o visini emitira plavu i ljubičastu svjetlost.\r\n\r\nNa sjeveru se naziva aurora borealis (sjeverna zora), prema rimskoj božici svitanja Aurori i grčkom bogu sjevernih ili sjeveroistočnih vjetrova, Boreju. Na jugu se naziva aurora australis (južna zora).', 0, 'Svijet'),
(15, 'OD COVIDA-19 U SVIJETU JE UMRLO VIŠE OD 400.000 LJUDI', 'Martin Žuglić', '2020-06-04', 'slika4.jpg', 'Pandemija koronavirusa usmrtila je više od 400.000 ljudi u svijetu od prosinca kada se pojavila u Kini, prema podacima Sveučilišne bolnice Johns Hopkins u nedjelju poslije podne, a zaraženih je gotovo sedam milijuna.\r\nEpidemija bolesti covid-19 dosad je uzela 400.243, prema podacima dostupnia na stranici te bolnice u nedjleju do 15 sati, a zaraženih je 6.923.836.\r\n\r\nDo danas najmanje je 3.015.900 oporavljeno od te bolesti u svijetu, piše agencija AFP.\r\n\r\nBroj dijagnostiriciranih ipak ne odražava stvaran broj, dodaje francuska agencija uz objašnjenje da mnoge zemlje testiraju samo teže slučajeve oboljenja. ', 0, 'Svijet'),
(16, 'STOTINE PROSVJEDNIKA OPET NA ULICAMA LIBANONA', 'Martin Žuglić', '2020-06-05', 'slika5.jpg', 'U Libanonu je više stotina prosvjednika u subotu opet izašlo na ulicu u središtu Bejruta kritizirajući nemoć vlade da se nosi s gospodarskom krizom, pri čemu su se sukobili s pristašama šijitskog pokreta Hezbollaha.\r\nProsvjede na Trgu mučenika pratili su okršaji prosvjednika i redarstvenih snaga koje su upotrijebile suzavac.\r\n\r\nOzlijeđeno je 48 ljudi, među kojima je 37 pružena pomoć na mjestu događaja, objavio je libanonski Crveni križ.\r\n\r\nSubotnji skup je prvi otkako su vlasti počele popuštati karantenu uvedenu sredinom ožujka radi suzbijanja širenja novog koronavirusa. U Libanonu su u listopadu 2019. održani neviđeni prosvjedi protiv političke klase koju optužuju za korupciju i nesposobnost.\r\n\r\nTijekom večeri u prijestolnici se čula pucnjava između stanovnika sunitske četvrti, uporišta bivšeg premijera Saada Haririja i susjedne šijitske četvrti, uporišta stranke Amal, rekao je izvor u sigurnosnoj službi.\r\n\r\nRaspoređena je vojska koja je uspostavila red, izvijestila je državna agencija ANI, rekavši da su dvije osobe ranjene.', 0, 'Svijet'),
(17, 'Barcelona je pratila sjajnog Vatrenog ove sezone', 'Martin Žuglić', '2020-06-01', 'slika6.jpg', 'Mario Pašalić pred finišem je druge sezone u Atalanti, ali i konačnim transferom iz Chelseaja, no hrvatski reprezentativac zapeo je za oko i skautima Barcelone. Prvak Španjolske ovog ljeta cilja na dva-tri zvučna pojačanja, međutim u projekcijama za budućnost jedan od igrača na njihovu radaru je - Mario Pašalić.\r\n\r\nProteklih dana portali iz Bergama pisali su kako ga je katalonski klub gledao na više utakmica. Nakon toga dobili smo potvrdu iz same Barcelone - njezini ljudi pratili su Atalantu kao hit ekipu, možda i kasnijeg suparnika u Ligi prvaka i podcrtali ime Marija Pašalića.\r\n\r\nIako je već u prvoj sezonu u klubu iz Bergama igrao jako dobro i očekivalo se da će ga otkupiti, lani je Atalanta dala 20 milijuna eura Sevilli za napadača Luisa Muriela, a kako je to za njih velika investicija, Pašalića je ipak uzela na posudbu još godinu dana. Sada u Bergamu ne dvoje da ga žele 100 posto, da mora biti njihov. U ugovoru stoji da su Chelseaju dužni uplatiti 15 milijuna eura i posao će biti gotov. Imaju pravo prvokupa. Talijani pokušavaju smekšati Abramovičev menadžment i uslijed koronavirusa dobiti popust, pa to još nije formalno zgotovljeno, no u svakom slučaju odlučili su Pašalića trajno vezati uz sebe.', 0, 'Sport'),
(18, 'Teško ozlijeđeni igrač Gorice hitno operiran', 'Martin Žuglić', '2020-06-02', 'slika7.jpg', 'Nogometaš Gorice Paulus Golubickas, koji je u subotu teško stradao tijekom utakmice sa Slaven Belupom, hitno je operiran u Klinici za maksilofacijalnu i čeljusnu kirurgiju KBC-a Zagreb.\r\n\r\nKako saznajemo od liječnika radi se o teškom i kompliciranom prijelomu donje čeljusti a dijagnostika je pokazala da je kirurški zahvat neizbježan. \r\n\r\nOperacija je trajala oko dva sata.\r\nVeć u ranoj fazi jučerašnje utakmice u Koprivnici između Slaven Belupa i Gorice (0:0) Golubckas je nastradao u jednom duelu s Božićem na sredini terena. Nije prvotno izgledalo kao da bi se išta ozbiljno moglo dogoditi jer situacija prije duela koja je prethodila nije pokazivala da bi moglo do ičeg doći. \r\n\r\nMeđutim, lopta je odskočila u zrak i Golubickas je malo krivo procijenio let lopte, zaletio se u puno trku misleći da ju ima i zabio se glavom u Božićevo rame.\r\n\r\nProcjena je da će izbivati s travnjaka nekoliko mjeseci.', 0, 'Sport'),
(19, 'Pijan igrao protiv Nadala i pobijedio ga!', 'Martin Žuglić', '2020-06-03', 'slika8.jpg', 'Nick Kyrgios fantastičan je tenisač koji bi već vrlo vjerojatno, da nema ludu glavu, već osvojio Grand Slam turnir. Mediji ga obožavaju jer ih hrani \"naslovima\", a jedan takav lansirao je u razgovoru s Elliotom Loneyjem...\r\n\r\nNaime, u razgovoru s američkim komičarem otkrio je jedan detalj, a koji je potvrdio i sam Elliot jer je bio dio te ekipe...\r\n\r\n\"Izašli smo noć prije i odlično smo se proveli. Prije ulaska na teren znao sam da moram dobro igrati i biti vrlo agresivan ako želim dobiti priliku protiv Rafe\", kazao je Kyrgios, a Loney je dodao kako je i sam bio na toj zabavi prije meča.\"Ne samo što si dominirao protiv jednog od najboljih tenisača svijeta, nego si s nama pio cijelu noć. Ne znam kako si uspio odigrati meč na toj razini i u onakvom stanju\", dodao je Loney.\r\n\r\nPretpostavljamo da riječ o pobjedi 6:2, 7:5 u Cincinnatiju (četvrtfinale), a Australac ga je ukupno tri puta pobjeđivao u osam duela.\r\n\r\nNije niti čudno da ga mediji vole, iako ponekad zna biti i nekorektan u izjavama (posebice prema Nadalu i Đokoviću), u svakom slučaju uz njega tenis nije dosadan..', 0, 'Sport'),
(20, 'Više nema dvojbi tko vodi Hrvatsku na Euro', 'Martin Žuglić', '2020-06-04', 'slika9.jpg', 'Marijan Kustić, izvršni direktor HNS-a, i izbornik Zlatko Dalić obavili su preliminarni razgovor. Nema nikakve dvojbe, Dalić ostaje na čelu Vatrenih, vodit će ih u Ligi nacija, u kvalifikacijama za Svjetsko prvenstvo u Kataru i na Euru 2021. godine.\r\n\r\nIzbornik je ovih dana u Livnu, a najavio je da će ubrzo napraviti konferenciju za medije budući da duže nije odgovarao na pitanja novinara koji su često tražili da se izjasni po pojedinim temama. Hoće li do tada potpisati i novi ugovor ovisi o HNS-u, kad će mu ga predsjednik Davor Šuker staviti na stol. No, to je samo formalnost.\r\n\r\na pretpostaviti je da će mu HNS ponuditi iste financijske uvjete kakve je imao dosad, iako je sam izbornik u razgovorima s ljudima iz Saveza izrazio spremnost da se odrekne dijela primanja za period bez utakmica. No, konačnu riječ ima HNS.\r\n\r\nZanimljivo, i Dalić je, kao i Nenad Bjelica, dobio ponudu Fenerbahčea da preuzme vođenje toga turskog kluba. Očekivano, odbio ju je.', 0, 'Sport'),
(21, 'Sve je u pobjedi Hajduka čisto, osim jedne sporne odluke', 'Martin Žuglić', '2020-06-05', 'slika10.jpg', 'Zdenko Lovrić (38) nikada nije bio u krugu hrvatskih sudaca kojima se predviđala ozbiljna karijera. Napokon, utakmica između Hajduka i Intera mu je bila tek druga prvoligaška utakmica u životu, prva u ovoj sezoni. Priliku je dobio zato što se računalo da će to biti ‘lagana’ utakmica, iako je nakon Rujevice puno toga za suce postalo nezgodno. Stoga je Lovrić na leđima nosio veliki teret.\r\n\r\n\r\nMeđutim, sudac iz Đakova hrabro je odradio susret. A imao je puno teških odluka. Najprije je bilo jako teško vidjeti je li Juranoviću lopta izašla izvan terena u situaciji koja je prethodila 11-ercu za domaće. Uz pomoć VAR-a Lovrić je očito došao do dokaza da je lopta dirala crtu. Koliko god to mnogima sumnjivo izgledalo, ali izgleda da drugačijeg dokaza nije bilo. Potom je ispravno dao crveni mladom Soldi, lopta koju je Jradi pucao išla bi izravno u gol da je on nije rukom zaustavio. I ponavljanje 11-erca bilo je ispravno, točno po pravilima. Matković je s obje noge napustio liniju prije nego što je Caktaš pucao. A to je nedopušteno.\r\n\r\nNa koncu je stao iza odluke da Ismajli nije napravio prekršaj u napadu kod drugog gola Hajduka. Čim ga je Ivan Bebek kao VAR sudac zvao vjerojatno je bio drugačijeg mišljenja, ali Lovrić Ismajlijev kontakt s nogom suparnika očito nije vidio kao dovoljno čvrst da svira prekršaj u napadu.\r\n\r\nI to je sporna odluka, no Lovrić je ostao kod svog stava. Dio njegovih kolega daje mu za pravo, dio ipak - ne.', 0, 'Sport'),
(32, 'Po prvi puta u povijesti slikana crna rupa', 'Martin Žuglić', '2020-06-01', 'slika1.jpg', 'Znanstvenici iz cijelog svijeta danas su objavili prvu fotografiju crne rupe koja se nalazi u galaksiji M87. Radi se o povijesnom rezultatu projekta Event Horizon Telescope (EHT) započetog 2012. godine, a riječ je o globalnoj teleskopskoj mreži koja omogućuje izravno promatranje ruba crne rupe.\r\n\r\nNaime, ovaj jedinstveni svemirski fenomen je nemoguće fotografirati jer je crna rupa nevidljiva, njenoj gravitaciji ne može ništa pobjeći, no znanstvenici EHT-a uspjeli su snimiti horizont događaja crne rupe koji može prikazati njenu sjenu ili siluetu. Ovaj događaj bio je i ispit za opću teoriju relativnosti Alberta Einsteina koja omogućuje predviđanje veličine i oblika crne rupe.', 0, 'Svijet'),
(33, 'Mistično jezero', 'Martin Žuglić', '2020-06-02', 'slika2.jpg', 'Nastalo vulkanskom erupcijom prije 2000 godina, jezero Mashu u Japanu smatra se jednim od najbistrijih jezera na svijetu. Nalazi se u sklopu nacionalnog parka Akan Mashu, na otoku Hokaido u sjevernom Japanu, a prastanovnici Japana Ainui smatrali su ga svetim, piše BBC.\r\n\r\nBudući da ga skriva gusta magla i nalazi se u krateru dubokom 200 metara, čije se litice strmoglavo spuštaju u vode jezera, pristup obalama jezera je iz sigurnosnih razloga japansko ministarstvo za okoliš strogo zabranilo. Otežan pristup jezeru samo pridonosi njegovoj tajanstvenosti, ali i čuva čistoću njegovih voda.', 0, 'Svijet'),
(34, 'Polarna svjetlost', 'Martin Žuglić', '2020-06-03', 'slika3.jpg', 'Polarna svjetlost u Zemljinoj atmosferi nastaje kada brze (300 do 1200 km/s), električki nabijene čestice (npr. ioni, elektroni) Sunčeva vjetra uđu u Zemljino magnetsko polje pa se ubrzavajući se prema Zemljinim magnetskim polovima sudaraju s česticama zraka i pobuđuju ih na emisiju svjetlosti, najčešće na visinama između 90 i 150 km. Posebno je sjajna u doba velike Sunčeve aktivnosti (pojava mnogih Sunčevih pjega i baklji).\r\n\r\nPromatrana iz područja bližega Zemljinim polovima, polarna je svjetlost uglavnom žutozelene, a s manjih geografskih širina, crvene boje. Do razlike u boji dolazi zbog različitih gustoća zraka na različitim visinama u atmosferi. Na velikim visinama, gdje je atmosfera rijetka, sudari su među molekulama zraka rijetki i kisik dvije minute nakon pobuđenja emitira crvenu svjetlost. U dubljim slojevima atmosfere (do kojih čestice Sunčeva vjetra dospijevaju putujući prema sjeveru ili jugu) događa se znatno više sudara među molekulama zraka, što dovodi do toga da, potaknut tim sudarima, Sunčevim vjetrom pobuđeni kisik emitira zelenu svjetlost. Pobuđeni dušik neovisno o visini emitira plavu i ljubičastu svjetlost.\r\n\r\nNa sjeveru se naziva aurora borealis (sjeverna zora), prema rimskoj božici svitanja Aurori i grčkom bogu sjevernih ili sjeveroistočnih vjetrova, Boreju. Na jugu se naziva aurora australis (južna zora).', 0, 'Svijet'),
(35, 'OD COVIDA-19 U SVIJETU JE UMRLO VIŠE OD 400.000 LJUDI', 'Martin Žuglić', '2020-06-04', 'slika4.jpg', 'Pandemija koronavirusa usmrtila je više od 400.000 ljudi u svijetu od prosinca kada se pojavila u Kini, prema podacima Sveučilišne bolnice Johns Hopkins u nedjelju poslije podne, a zaraženih je gotovo sedam milijuna.\r\nEpidemija bolesti covid-19 dosad je uzela 400.243, prema podacima dostupnia na stranici te bolnice u nedjleju do 15 sati, a zaraženih je 6.923.836.\r\n\r\nDo danas najmanje je 3.015.900 oporavljeno od te bolesti u svijetu, piše agencija AFP.\r\n\r\nBroj dijagnostiriciranih ipak ne odražava stvaran broj, dodaje francuska agencija uz objašnjenje da mnoge zemlje testiraju samo teže slučajeve oboljenja. ', 0, 'Svijet'),
(36, 'STOTINE PROSVJEDNIKA OPET NA ULICAMA LIBANONA', 'Martin Žuglić', '2020-06-05', 'slika5.jpg', 'U Libanonu je više stotina prosvjednika u subotu opet izašlo na ulicu u središtu Bejruta kritizirajući nemoć vlade da se nosi s gospodarskom krizom, pri čemu su se sukobili s pristašama šijitskog pokreta Hezbollaha.\r\nProsvjede na Trgu mučenika pratili su okršaji prosvjednika i redarstvenih snaga koje su upotrijebile suzavac.\r\n\r\nOzlijeđeno je 48 ljudi, među kojima je 37 pružena pomoć na mjestu događaja, objavio je libanonski Crveni križ.\r\n\r\nSubotnji skup je prvi otkako su vlasti počele popuštati karantenu uvedenu sredinom ožujka radi suzbijanja širenja novog koronavirusa. U Libanonu su u listopadu 2019. održani neviđeni prosvjedi protiv političke klase koju optužuju za korupciju i nesposobnost.\r\n\r\nTijekom večeri u prijestolnici se čula pucnjava između stanovnika sunitske četvrti, uporišta bivšeg premijera Saada Haririja i susjedne šijitske četvrti, uporišta stranke Amal, rekao je izvor u sigurnosnoj službi.\r\n\r\nRaspoređena je vojska koja je uspostavila red, izvijestila je državna agencija ANI, rekavši da su dvije osobe ranjene.', 0, 'Svijet'),
(37, 'Barcelona je pratila sjajnog Vatrenog ove sezone', 'Martin Žuglić', '2020-06-01', 'slika6.jpg', 'Mario Pašalić pred finišem je druge sezone u Atalanti, ali i konačnim transferom iz Chelseaja, no hrvatski reprezentativac zapeo je za oko i skautima Barcelone. Prvak Španjolske ovog ljeta cilja na dva-tri zvučna pojačanja, međutim u projekcijama za budućnost jedan od igrača na njihovu radaru je - Mario Pašalić.\r\n\r\nProteklih dana portali iz Bergama pisali su kako ga je katalonski klub gledao na više utakmica. Nakon toga dobili smo potvrdu iz same Barcelone - njezini ljudi pratili su Atalantu kao hit ekipu, možda i kasnijeg suparnika u Ligi prvaka i podcrtali ime Marija Pašalića.\r\n\r\nIako je već u prvoj sezonu u klubu iz Bergama igrao jako dobro i očekivalo se da će ga otkupiti, lani je Atalanta dala 20 milijuna eura Sevilli za napadača Luisa Muriela, a kako je to za njih velika investicija, Pašalića je ipak uzela na posudbu još godinu dana. Sada u Bergamu ne dvoje da ga žele 100 posto, da mora biti njihov. U ugovoru stoji da su Chelseaju dužni uplatiti 15 milijuna eura i posao će biti gotov. Imaju pravo prvokupa. Talijani pokušavaju smekšati Abramovičev menadžment i uslijed koronavirusa dobiti popust, pa to još nije formalno zgotovljeno, no u svakom slučaju odlučili su Pašalića trajno vezati uz sebe.', 0, 'Sport'),
(38, 'Teško ozlijeđeni igrač Gorice hitno operiran', 'Martin Žuglić', '2020-06-02', 'slika7.jpg', 'Nogometaš Gorice Paulus Golubickas, koji je u subotu teško stradao tijekom utakmice sa Slaven Belupom, hitno je operiran u Klinici za maksilofacijalnu i čeljusnu kirurgiju KBC-a Zagreb.\r\n\r\nKako saznajemo od liječnika radi se o teškom i kompliciranom prijelomu donje čeljusti a dijagnostika je pokazala da je kirurški zahvat neizbježan. \r\n\r\nOperacija je trajala oko dva sata.\r\nVeć u ranoj fazi jučerašnje utakmice u Koprivnici između Slaven Belupa i Gorice (0:0) Golubckas je nastradao u jednom duelu s Božićem na sredini terena. Nije prvotno izgledalo kao da bi se išta ozbiljno moglo dogoditi jer situacija prije duela koja je prethodila nije pokazivala da bi moglo do ičeg doći. \r\n\r\nMeđutim, lopta je odskočila u zrak i Golubickas je malo krivo procijenio let lopte, zaletio se u puno trku misleći da ju ima i zabio se glavom u Božićevo rame.\r\n\r\nProcjena je da će izbivati s travnjaka nekoliko mjeseci.', 0, 'Sport'),
(39, 'Pijan igrao protiv Nadala i pobijedio ga!', 'Martin Žuglić', '2020-06-03', 'slika8.jpg', 'Nick Kyrgios fantastičan je tenisač koji bi već vrlo vjerojatno, da nema ludu glavu, već osvojio Grand Slam turnir. Mediji ga obožavaju jer ih hrani \"naslovima\", a jedan takav lansirao je u razgovoru s Elliotom Loneyjem...\r\n\r\nNaime, u razgovoru s američkim komičarem otkrio je jedan detalj, a koji je potvrdio i sam Elliot jer je bio dio te ekipe...\r\n\r\n\"Izašli smo noć prije i odlično smo se proveli. Prije ulaska na teren znao sam da moram dobro igrati i biti vrlo agresivan ako želim dobiti priliku protiv Rafe\", kazao je Kyrgios, a Loney je dodao kako je i sam bio na toj zabavi prije meča.\"Ne samo što si dominirao protiv jednog od najboljih tenisača svijeta, nego si s nama pio cijelu noć. Ne znam kako si uspio odigrati meč na toj razini i u onakvom stanju\", dodao je Loney.\r\n\r\nPretpostavljamo da riječ o pobjedi 6:2, 7:5 u Cincinnatiju (četvrtfinale), a Australac ga je ukupno tri puta pobjeđivao u osam duela.\r\n\r\nNije niti čudno da ga mediji vole, iako ponekad zna biti i nekorektan u izjavama (posebice prema Nadalu i Đokoviću), u svakom slučaju uz njega tenis nije dosadan..', 0, 'Sport'),
(40, 'Više nema dvojbi tko vodi Hrvatsku na Euro', 'Martin Žuglić', '2020-06-04', 'slika9.jpg', 'Marijan Kustić, izvršni direktor HNS-a, i izbornik Zlatko Dalić obavili su preliminarni razgovor. Nema nikakve dvojbe, Dalić ostaje na čelu Vatrenih, vodit će ih u Ligi nacija, u kvalifikacijama za Svjetsko prvenstvo u Kataru i na Euru 2021. godine.\r\n\r\nIzbornik je ovih dana u Livnu, a najavio je da će ubrzo napraviti konferenciju za medije budući da duže nije odgovarao na pitanja novinara koji su često tražili da se izjasni po pojedinim temama. Hoće li do tada potpisati i novi ugovor ovisi o HNS-u, kad će mu ga predsjednik Davor Šuker staviti na stol. No, to je samo formalnost.\r\n\r\na pretpostaviti je da će mu HNS ponuditi iste financijske uvjete kakve je imao dosad, iako je sam izbornik u razgovorima s ljudima iz Saveza izrazio spremnost da se odrekne dijela primanja za period bez utakmica. No, konačnu riječ ima HNS.\r\n\r\nZanimljivo, i Dalić je, kao i Nenad Bjelica, dobio ponudu Fenerbahčea da preuzme vođenje toga turskog kluba. Očekivano, odbio ju je.', 0, 'Sport'),
(41, 'Sve je u pobjedi Hajduka čisto, osim jedne sporne odluke', 'Martin Žuglić', '2020-06-05', 'slika10.jpg', 'Zdenko Lovrić (38) nikada nije bio u krugu hrvatskih sudaca kojima se predviđala ozbiljna karijera. Napokon, utakmica između Hajduka i Intera mu je bila tek druga prvoligaška utakmica u životu, prva u ovoj sezoni. Priliku je dobio zato što se računalo da će to biti ‘lagana’ utakmica, iako je nakon Rujevice puno toga za suce postalo nezgodno. Stoga je Lovrić na leđima nosio veliki teret.\r\n\r\n\r\nMeđutim, sudac iz Đakova hrabro je odradio susret. A imao je puno teških odluka. Najprije je bilo jako teško vidjeti je li Juranoviću lopta izašla izvan terena u situaciji koja je prethodila 11-ercu za domaće. Uz pomoć VAR-a Lovrić je očito došao do dokaza da je lopta dirala crtu. Koliko god to mnogima sumnjivo izgledalo, ali izgleda da drugačijeg dokaza nije bilo. Potom je ispravno dao crveni mladom Soldi, lopta koju je Jradi pucao išla bi izravno u gol da je on nije rukom zaustavio. I ponavljanje 11-erca bilo je ispravno, točno po pravilima. Matković je s obje noge napustio liniju prije nego što je Caktaš pucao. A to je nedopušteno.\r\n\r\nNa koncu je stao iza odluke da Ismajli nije napravio prekršaj u napadu kod drugog gola Hajduka. Čim ga je Ivan Bebek kao VAR sudac zvao vjerojatno je bio drugačijeg mišljenja, ali Lovrić Ismajlijev kontakt s nogom suparnika očito nije vidio kao dovoljno čvrst da svira prekršaj u napadu.\r\n\r\nI to je sporna odluka, no Lovrić je ostao kod svog stava. Dio njegovih kolega daje mu za pravo, dio ipak - ne.', 0, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `ime` varchar(32) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`ime`, `lozinka`, `razina`) VALUES
('lio', '$2y$10$DxuLiOhxJupdhJiCufujr.VZai3CG/CE5VMEO0AX4.EZRGYRExBg.', 0),
('Martin', '$2y$10$MIglnQUCfE8v1PuKG4QUb.Xq6rKUE66nSq.lXMrGax0eMJh4a/FR6', 1),
('Mevos', '$2y$10$f3YiYG.I54etjwVMAyKrDeQL59qs3YxhJ.HsMFMD6EZL5XOq./sy.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanak`
--
ALTER TABLE `clanak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD UNIQUE KEY `ime` (`ime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanak`
--
ALTER TABLE `clanak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;