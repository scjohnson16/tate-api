CREATE SEQUENCE IF NOT EXISTS users_id_seq;

CREATE TABLE "public"."users" (
    "id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
    "name" varchar(255) NOT NULL,
    "age" int4 NOT NULL,
    "location" varchar(255) NOT NULL,
    PRIMARY KEY ("id")
);

CREATE SEQUENCE IF NOT EXISTS comments_id_seq;

CREATE TABLE "public"."comments" (
    "id" int4 NOT NULL DEFAULT nextval('comments_id_seq'::regclass),
    "artID" int4,
    "content" varchar(255) NOT NULL,
    "name" varchar(255),
    "userID" int4,
    CONSTRAINT "comments_artid_foreign" FOREIGN KEY ("artID") REFERENCES "public"."art"("id"),
    PRIMARY KEY ("id")
);

CREATE SEQUENCE IF NOT EXISTS art_id_seq;

CREATE TABLE "public"."art" (
    "id" int4 NOT NULL DEFAULT nextval('art_id_seq'::regclass),
    "title" varchar(255) NOT NULL,
    "artist" varchar(255) NOT NULL,
    "year" int4,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."art" ("id", "title", "artist", "year") VALUES ('172', 'Human Toilet Revisited', 'Lucas, Sarah', '1998'),
('429', '1st Millbank Print', 'Ackroyd, Norman', '1972'),
('711', 'Abstract', 'Banting, John', '1935'),
('955', 'From the Eurasien Staff', 'Beuys, Joseph', '1973'),
('1043', 'The Serpent Attacking Buoso Donati', 'Blake, William', '1826'),
('1326', '[no title]', 'Borofsky, Jonathan', '1982'),
('1655', '[no title]', 'Buckley, Stephen', '1977'),
('1722', 'Composition Study for ‘The Merciful Knight’', 'Burne-Jones, Sir Edward Coley, Bt', '1863'),
('4154', 'Untitled', 'Estes, Richard', '1973'),
('4293', 'Sea Poppy I [collaboration with Alistair Cant]', 'Hamilton Finlay, Ian', '1966'),
('4295', 'Summer Sails [collaboration with Jim Nicholson]', 'Hamilton Finlay, Ian', '1966'),
('4314', '[no title]', 'Hamilton Finlay, Ian', '1982'),
('4551', 'The Painter’s Mother', 'Freud, Lucian', '1982'),
('4751', 'Slioch Hilltop Cairn/Circling Buzzards', 'Fulton, Hamish', '1980'),
('5816', 'Reaper (i)', 'Hamilton, Richard', '1949'),
('5910', 'Loop', 'Hayter, Stanley William', '1978'),
('5912', 'Ceiling', 'Hayter, Stanley William', '1980'),
('5921', 'Equilibrium', 'Head, Tim', '1975'),
('6573', 'Moonlight', 'Hodgkin, Howard', '1980'),
('7184', '[title not known]', 'Johnstone, William', '1981'),
('8129', 'For Fear', 'Kitaj, R.B.', '1967'),
('8731', '[no title]', 'LeWitt, Sol', '1971'),
('8750', '[no title]', 'LeWitt, Sol', '1975'),
('8824', 'Brown Aquatint', 'Lim, Kim', '1972'),
('8964', '[no title]', 'Lohse, Richard Paul', '1981'),
('8970', 'Turf Circle', 'Long, Richard', '1966'),
('9223', '[title not known]', 'Mangold, Robert', '1973'),
('9582', 'Series II', 'Miró, Joan', '1952'),
('10672', 'Foxy and Frankie (2)', 'Nicholson, Ben, OM', '1933'),
('11767', 'Canto IX: [no title]', 'Phillips, Esq Tom', '1982'),
('11780', 'Canto XVI: [no title]', 'Phillips, Esq Tom', '1982'),
('11806', 'Canto XXVIII: [no title]', 'Phillips, Esq Tom', '1983'),
('12290', 'Cross I', 'Rainer, Arnulf', '1977'),
('12535', 'Peter in Prison', 'Richards, Frances', '1929'),
('12589', 'Fragment 1/7', 'Riley, Bridget', '1965'),
('12915', 'Red Gothic', 'Rothenstein, Michael', '1962'),
('15839', 'Tank IV', 'Walker, John', '1973'),
('15844', '[no title]', 'Walker, John', '1973'),
('15877', 'Conservatory I', 'Walker, John', '1979'),
('15991', '[no title]', 'Watson, Lyall', '1978'),
('16410', '[no title]', 'Wols', '1937'),
('16949', 'iv', 'Bomberg, David', '1914'),
('16965', '9. ‘Making circles on park lagoons’', 'Caulfield, Patrick', '1973'),
('16973', '17. ‘She’ll have forgotten her scarf’', 'Caulfield, Patrick', '1973'),
('16981', 'Monitor', 'Paolini, Giulio', '1974'),
('20400', '[no title]', 'Charlton, Alan', '1991'),
('20618', 'Interior', 'Artschwager, Richard', '1972'),
('20830', '[no title]', 'Marden, Brice', '1971'),
('21086', 'Untitled', 'Francis, Mark', '1994'),
('21153', 'Iron', 'Woodrow, Bill', '1994'),
('21157', '[index page]', 'Woodrow, Bill', '1994'),
('21163', 'Power and Beauty No. 4', 'Self, Colin', '1968'),
('21210', 'Untitled #100', 'Sherman, Cindy', '1982'),
('21271', '[no title]', 'Wilding, Alison', '1994'),
('21285', 'Soviet/American Array III', 'Rauschenberg, Robert', '1989'),
('21286', 'Soviet/American Array IV', 'Rauschenberg, Robert', '1988'),
('21291', '[no title]', 'Murray, Elizabeth', '1988'),
('21292', '[no title]', 'Murray, Elizabeth', '1988'),
('21334', '[no title]', 'Murray, Elizabeth', '1988'),
('21405', 'Vico dei Monti, Naples 1988', 'Struth, Thomas', '1988'),
('21407', 'The Smith Family, Fife, Scotland 1989', 'Struth, Thomas', '1989'),
('21449', '[no title]', 'Schütte, Thomas', '1994'),
('21501', 'A Proposal for the Robert Louis Stevenson Club Spring 1987', 'Hamilton Finlay, Ian', '1987'),
('21503', 'Projet pour un parc républicain', 'Hamilton Finlay, Ian', '1988'),
('21622', '[no title]', 'Therrien, Robert', '1995'),
('21750', 'Kyoto House', 'Milroy, Lisa', '1996'),
('21863', 'Cor! What a Bargain!', 'Landy, Michael', '1992'),
('21864', 'Mausoleum Under Construction', 'Whiteread, Rachel', '1992'),
('21866', 'Gavin Turk Right Hand and Forearm', 'Turk, Gavin', '1992'),
('21874', 'Mist I', 'Rego, Paula', '1996'),
('21955', '[no title]', 'Baselitz, Georg', '1995'),
('21956', '[no title]', 'Baselitz, Georg', '1995'),
('21978', '[no title]', 'Baselitz, Georg', '1995'),
('22095', 'Friday Mosque, Gulbarga, India', 'Langlands and Bell, Ben and Nikki', '1996'),
('26082', 'Print G - Version IV', 'McKeever, Ian', '1997'),
('26318', '[no title]', 'Kirkeby, Per', '1995'),
('26376', '[no title]', 'Kapoor, Anish', '1998'),
('26508', 'Sugar and Spice, All Things Nice, This Is What Little Girls Are Made Of #3', 'Collishaw, Mat', '1998'),
('26846', 'Cornish Pasty', 'Hirst, Damien', '1999'),
('26938', 'The Fall of London: Waterloo', 'Boswell, James', '1933'),
('27210', 'The Judgement of Paris (2)', 'Kossoff, Leon', '1998'),
('27218', 'The Testament of Eudamidas (1)', 'Kossoff, Leon', '1998'),
('27228', 'Dog', 'McCarthy, Paul', '2000'),
('27311', 'Untitled', 'Kuper, Roi', '1999'),
('27319', 'Lost', 'Prendergast, Kathy', '1999'),
('41571', 'View of Piazza Castello, Turin, with Palazzo Madama', 'Turner, Joseph Mallord William', '1819'),
('41587', 'Sketches from the Road between Turin and Bofflora; One with Distant Alps', 'Turner, Joseph Mallord William', '1819'),
('41609', 'View on Lake Como; Torno and Carate Urio from the North', 'Turner, Joseph Mallord William', '1819'),
('41707', 'Interior of Milan Cathedral', 'Turner, Joseph Mallord William', '1819'),
('41722', 'A Row of Buildings', 'Turner, Joseph Mallord William', '1819'),
('41754', 'A Bragozzo', 'Turner, Joseph Mallord William', '1819'),
('41763', 'Various Sketches of Boats and Arches', 'Turner, Joseph Mallord William', '1819'),
('41768', 'The Domes of Santa Maria della Salute', 'Turner, Joseph Mallord William', '1819'),
('41769', 'The Rialto Bridge from the Albergo Leon Bianco', 'Turner, Joseph Mallord William', '1819'),
('41801', 'The Giudecca Canal, with the Dogana and Santa Maria della Salute', 'Turner, Joseph Mallord William', '1819'),
('41812', 'The Grand Canal, with the Ca’Rezzonico, the Palazzo Grassi and the Church of San Samuele', 'Turner, Joseph Mallord William', '1819'),
('41893', 'A House, with Study of Foreground Plants', 'Turner, Joseph Mallord William', '1819'),
('41897', 'Palazzo Publico, Bologna, with Fountain of Neptune in Foreground', 'Turner, Joseph Mallord William', '1819'),
('41908', 'View of Bologna from Montagnola', 'Turner, Joseph Mallord William', '1819'),
('41915', 'Arcades of Madonna di San Luca. Arcades to the Madonna [Turner]', 'Turner, Joseph Mallord William', '1819'),
('41938', 'Triumphal Arch', 'Turner, Joseph Mallord William', '1819'),
('41945', 'The Rocca Malatestiana and the Church of S. Agostino at Cesena', 'Turner, Joseph Mallord William', '1819'),
('41952', 'Town with River; Distant Range of Hills; Two Sketches of St Marino', 'Turner, Joseph Mallord William', '1819'),
('42025', 'Osimo from the Road from Ancona, with the Towers of the Palazzo Comunale and Cathedral', 'Turner, Joseph Mallord William', '1819'),
('42037', 'The Santuario della Santa Casa, Loreto, from the Scala Santa; and a view of Villa Potenza', 'Turner, Joseph Mallord William', '1819'),
('42132', 'View across the Plain to the East of Narni, from near the Porta della Fiera', 'Turner, Joseph Mallord William', '1819'),
('42163', 'Civita Castellana, from the Ponte Clementino', 'Turner, Joseph Mallord William', '1819'),
('42188', 'Studies of Sculptures, ?Nepi', 'Turner, Joseph Mallord William', '1819'),
('42227', 'The Tour de Bandini, near Macerata', 'Turner, Joseph Mallord William', '1828'),
('42271', 'Recumbent Female Figure', 'Turner, Joseph Mallord William', '1828'),
('42277', 'Church - ?St Lorenzo [Turner]', 'Turner, Joseph Mallord William', '1828'),
('42301', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('42325', 'Castel Sant’Angelo, Rome, Seen from the Church of Santi Celsi e Giuliano', 'Turner, Joseph Mallord William', '1819'),
('42354', 'Panoramic View from the Villa d’Este, Tivoli, including the So-Called Tempio della Tosse and the Santuario di Ercole Vincitore', 'Turner, Joseph Mallord William', '1819'),
('42437', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('42481', 'Studies of Sculptural Fragments and Reliefs from the Vatican Museums, Including the Funerary Altar of L. Cornelius Atimetus and L. Cornelius Epaphra', 'Turner, Joseph Mallord William', '1819'),
('42506', 'Sketch of a Sarcophagus, Rome', 'Turner, Joseph Mallord William', '1819'),
('42554', 'Studies of Sculptural Fragments from the Vatican Museums, Including Two Sarcophagi with Cupids', 'Turner, Joseph Mallord William', '1819'),
('43590', 'The Casino di Raffaello, near the Gardens of the Villa Borghese, Rome', 'Turner, Joseph Mallord William', '1819'),
('43660', 'The Aurelian Walls along the Via Pinciana, from the Gardens of the Villa Borghese, Rome', 'Turner, Joseph Mallord William', '1819'),
('43661', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('43672', 'Sketches of the Interior and Exterior of San Lorenzo fuori le mura, Rome', 'Turner, Joseph Mallord William', '1819'),
('43673', 'Four Sketches of the Porta San Lorenzo, Rome', 'Turner, Joseph Mallord William', '1819'),
('43689', 'St Peter’s and the Vatican from the Gardens of the Villa Barberini, Rome', 'Turner, Joseph Mallord William', '1819'),
('43762', 'St Peter’s and the Vatican, Rome, from the Gardens of the Villa Medici', 'Turner, Joseph Mallord William', '1819'),
('43763', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('43800', 'The Tiber and the Ponte Molle, Rome, from the Villa Madama on Monte Mario', 'Turner, Joseph Mallord William', '1819'),
('43817', '?The River Tiber outside Rome', 'Turner, Joseph Mallord William', '1819'),
('43873', '?View of Rome', 'Turner, Joseph Mallord William', '1819'),
('43881', 'The Temple of Aesculapius in the Grounds of Villa Borghese, Rome, with the Greek Inscription from its Façade', 'Turner, Joseph Mallord William', '1819'),
('43885', 'Five Landscape Sketches on the Road from Rome to Florence; Including Two at Narni', 'Turner, Joseph Mallord William', '1819'),
('43891', 'Arezzo, with the Tower of Santa Maria della Pieve; Distant View of Montecchio Vesponi from Castiglion Fiorentino', 'Turner, Joseph Mallord William', '1819'),
('43922', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('43949', 'Florence from near San Salvatore al Monte', 'Turner, Joseph Mallord William', '1819'),
('43953', 'Florence from the West', 'Turner, Joseph Mallord William', '1819'),
('44006', 'The Duomo and Baptistery, Parma', 'Turner, Joseph Mallord William', '1820'),
('44077', 'Distant View of Avallon; and Buildings in the Town', 'Turner, Joseph Mallord William', '1820'),
('44086', 'Palazzo Marino, Milan', 'Turner, Joseph Mallord William', '1820'),
('44108', 'Interior of an Italian Building', 'Turner, Joseph Mallord William', '1820'),
('44136', 'Slight Sketch of a ?Figure', 'Turner, Joseph Mallord William', '1819'),
('44144', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('44151', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('44168', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('44170', 'Blank', 'Turner, Joseph Mallord William', '1819'),
('44229', 'Bridge and Church, ?on the River Yonne, France', 'Turner, Joseph Mallord William', '1820'),
('44232', 'A List of Contemporary Landscape Artists Working in Rome', 'Turner, Joseph Mallord William', '1819'),
('44240', 'Two Sketches of Calais, France, from the Harbour; Also Studies of Figures and Horses', 'Turner, Joseph Mallord William', '1820'),
('44281', 'Mountains, near the Simplon Pass', 'Turner, Joseph Mallord William', '1819'),
('44289', 'Two Views of the Gallery of Gondo', 'Turner, Joseph Mallord William', '1819'),
('44316', '?Val Divedro or Val d’Ossola', 'Turner, Joseph Mallord William', '1819'),
('44336', 'Lecture Diagram: A Cube with One Side Parallel to the Picture', 'Turner, Joseph Mallord William', '1823'),
('44354', 'Lecture Diagram: Three Equilateral Triangles', 'Turner, Joseph Mallord William', '1817'),
('44398', 'Lecture Diagram 28: Perspective Method for a Cube (after Jacques Androuet du Cerceau)', 'Turner, Joseph Mallord William', '1810'),
('44423', 'Lecture Diagram 50: Doric Entablature in Perspective (after Thomas Malton Senior)', 'Turner, Joseph Mallord William', '1810'),
('44509', 'Road Leading over Bridge, with Trees and Another Bridge Beyond', 'Turner, Joseph Mallord William', '1810'),
('44523', 'Scarborough', 'Turner, Joseph Mallord William', '1809'),
('44533', 'Wharfedale, from the Chevin', 'Turner, Joseph Mallord William', '1820'),
('44555', 'Study for ‘Crook of Lune’', 'Turner, Joseph Mallord William', '1820'),
('50672', 'Blois: Outlines of Buildings on the River Front to the East of the Pont Jacques-Gabriel, with a More Detailed Study Above of the Cathedral and Bishop’s Palace', 'Turner, Joseph Mallord William', '1826'),
('50675', 'View on Coast', 'Turner, Joseph Mallord William', '1826'),
('50713', 'Buildings, Etc., on Hill. ?Avranches [Turner]', 'Turner, Joseph Mallord William', '1826'),
('50714', 'View of Houses, with Church Spires Beyond', 'Turner, Joseph Mallord William', '1826'),
('50766', 'Rocks on Coast, with Lighthouse', 'Turner, Joseph Mallord William', '1826'),
('50787', 'Cherbourg: The Fort au Roule', 'Turner, Joseph Mallord William', '1826'),
('50817', 'Church Tower, Etc.', 'Turner, Joseph Mallord William', '1826'),
('51129', 'Tancarville Castle', 'Turner, Joseph Mallord William', '1829'),
('51162', 'River Banks', 'Turner, Joseph Mallord William', '1829'),
('51211', 'Bridge', 'Turner, Joseph Mallord William', '1829'),
('51257', 'Monuments at Père-Lachaise', 'Turner, Joseph Mallord William', '1832'),
('51261', 'Monuments at Père-Lachaise', 'Turner, Joseph Mallord William', '1832'),
('51324', 'Château Gaillard, from Les Anderlys. Man Threshing Corn [Turner]', 'Turner, Joseph Mallord William', '1832'),
('51327', 'Château Gaillard, with Bend of Seine Below', 'Turner, Joseph Mallord William', '1832'),
('51404', 'Street Scene', 'Turner, Joseph Mallord William', '1832'),
('51424', '[blank]', 'Turner, Joseph Mallord William', '1826'),
('51451', 'River and Distant Hills', 'Turner, Joseph Mallord William', '1826'),
('51464', 'Views on Coast', 'Turner, Joseph Mallord William', '1826'),
('51466', 'Views of Coast', 'Turner, Joseph Mallord William', '1826'),
('51467', 'Sailing Boats off Coast', 'Turner, Joseph Mallord William', '1826'),
('51482', '[blank]', 'Turner, Joseph Mallord William', '1826'),
('51496', '[blank]', 'Turner, Joseph Mallord William', '1826'),
('51510', 'Bridge and Buildings', 'Turner, Joseph Mallord William', '1832'),
('51523', 'The Panthéon and Rue ?Mallets [Turner]', 'Turner, Joseph Mallord William', '1832'),
('51588', 'Scenes on the Seine', 'Turner, Joseph Mallord William', '1832'),
('51602', 'A Boulevard', 'Turner, Joseph Mallord William', '1832'),
('51612', 'Paris: Part of a Panoramic View of the Ile de la Cité, from near the Pont des Arts', 'Turner, Joseph Mallord William', '1832'),
('66554', 'Laundromat-Locomotion (Walking in Suit)', 'Pippin, Steven', '1997'),
('66634', 'Oceanic Femme', 'Hobbs, Peter', '1980'),
('66664', 'Untitled', 'Sherman, Cindy', '1976'),
('66690', 'Jason', 'Nicolson, Seamus', '2000'),
('76695', '[no title]', 'Quinn, Marc', '2002'),
('78672', 'One', 'Dunham, Carroll', '2000'),
('78679', 'Eight', 'Dunham, Carroll', '2000'),
('78811', 'Mount Kisco Arabesque', 'Baynard, Ed', '1997'),
('78817', 'Westbourne Grove', 'Baynard, Ed', '1988'),
('79297', 'A Page From A Book II', 'Frankenthaler, Helen', '1997'),
('80010', 'Trestle Trains', 'Crutchfield, William', '1978'),
('80133', 'Airless Black', 'Motherwell, Robert', '1983'),
('80470', 'Head Lock', 'Newman, John', '1992'),
('80486', 'Good-bye Kisco Avenue', 'Posey, Sam', '2001'),
('80530', '[no title]', 'Sorman, Steven', '1999'),
('80673', 'Orofena', 'Stella, Frank', '1998'),
('80962', '[no title]', 'Frankenthaler, Helen', '1997');
