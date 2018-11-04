drop database if exists top;
create database top;
use top;

create table Data (
	idData 			int 			primary key 	auto_increment,
	what	 		varchar(99),
	poster 			varchar(99),
	title 			varchar(99),
	genre 			varchar(99),
	protagonist 	varchar(99),
	director 		varchar(99),
	extra	 		varchar(99),
	released        int,
	rating 			double
);

INSERT INTO Data VALUES (null,'Movie','Snow White and the Seven Dwarfs 1937.jpg','Snow White and the Seven Dwarfs','Animation',null,'William Cottrell',null,1937,7.7);
INSERT INTO Data VALUES (null,'Movie','The Lion King 1994.jpg','The Lion King','Animation',null,'Roger Allers e Rob Minkoff',null,1994,8.5);
INSERT INTO Data VALUES (null,'Movie','Pocahontas 1995.jpg','Pocahontas','Animation',null,'Mike Gabriel e Eric Goldberg',null,1995,6.6);
INSERT INTO Data VALUES (null,'Movie','Toy Story 3 2010.jpg','Toy Story 3','Animation',null,'Lee Unkrich',null,2010,8.4);
INSERT INTO Data VALUES (null,'Movie','Hercules 1997.jpg','Hercules','Animation',null,'Ron Clements',null,1997,7.2);
INSERT INTO Data VALUES (null,'Movie','Tarzan 1999.jpg','Tarzan','Animation',null,'Chris Buck',null,1999,7.2);
INSERT INTO Data VALUES (null,'Movie','Finding Nemo 2003.jpg','Finding Nemo','Animation',null,'Andrew Stanton',null,2003,8.2);
INSERT INTO Data VALUES (null,'Movie','WALL·E 2008.jpg','WALL·E','Animation',null,'Andrew Stanton',null,2008,8.4);
INSERT INTO Data VALUES (null,'Movie','How To Train Your Dragon 2010.jpg','How To Train Your Dragon','Animation',null,'Dean DeBlois',null,2010,8.2);
INSERT INTO Data VALUES (null,'Movie','The Croods 2013.jpg','The Croods','Animation',null,'Kirk De Micco',null,2013,7.3);
INSERT INTO Data VALUES (null,'Movie','Frozen 2013.jpg','Frozen','Animation',null,'Chris Buck',null,2013,7.7);
INSERT INTO Data VALUES (null,'Movie','Inside Out 2015.jpg','Inside Out','Animation',null,'Pete Docter',null,2015,8.5);

INSERT INTO Data VALUES (null,'Movie','Grave of the Fireflies 1988.jpg','Grave of the Fireflies','Animation',null,'Isao Takahata','Anime',1988,8.5);
INSERT INTO Data VALUES (null,'Movie','Ghost 1995.jpg','Ghost in the Shell','Animation',null,'Mamoru Oshii','Anime',1995,8.0);
INSERT INTO Data VALUES (null,'Movie','Pokemon 1997.jpg','Pokemon','Animation',null,'Kunihiko Yuyama','Anime',1997,7.4);
INSERT INTO Data VALUES (null,'Movie','Digimon 1999.jpg','Digimon','Animation',null,'Hiroyuki Kakudo','Anime',1999,7.0);
INSERT INTO Data VALUES (null,'Movie','Spirited Away 2001.jpg','Spirited Away','Animation',null,'Hayao Miyazaki','Anime',2001,8.6);
INSERT INTO Data VALUES (null,'Movie','Pokemon O Filme 1998.jpg','Pokemon O Filme','Animation',null,'Kunihiko Yuyama','Anime',1998,5.8);
INSERT INTO Data VALUES (null,'Movie','Dragon Ball Z 1996.jpg','Dragon Ball Z','Animation',null,null,'Anime',1996,8.9);
INSERT INTO Data VALUES (null,'Movie','Naruto Shippuden 2007.jpg','Naruto Shippuden','Animation',null,null,'Anime',2007,8.4);
INSERT INTO Data VALUES (null,'Movie','Wolf Children 2012.jpg','Wolf Children','Animation',null,null,'Anime',2012,8.2);


INSERT INTO Data VALUES (null,'Movie','Back to the Future 1985.jpg','Back to the Future','Comedy','Michael J. Fox','Robert Zemeckis',null,1985,8.5);
INSERT INTO Data VALUES (null,'Movie','Ferris Buellers Day Off 1986.jpg','Ferris Buellers Day Off','Comedy','Matthew Broderick','John Hughes',null,1986,7.9);
INSERT INTO Data VALUES (null,'Movie','Home Alone 1990.jpg','Home Alone','Comedy','Macaulay Culkin','Chris Columbus',null,1990,7.4);
INSERT INTO Data VALUES (null,'Movie','The Big Lebowski 1998.jpg','The Big Lebowski','Comedy','Jeff Bridges','Joel Coen',null,1998,8.2);
INSERT INTO Data VALUES (null,'Movie','Bad Boys 1995.jpg','Bad Boys','Comedy','Will Smith e Martin Lawrence','Michael Bay',null,1995,6.8);
INSERT INTO Data VALUES (null,'Movie','Rush Hour 1998.jpg','Rush Hour','Comedy','Jackie Chan e Chris Tucker','Brett Ratner',null,1998,6.9);
INSERT INTO Data VALUES (null,'Movie','American Pie 1999.jpg','American Pie','Comedy','Jason Biggs','Paul Weitz',null,1999,7);
INSERT INTO Data VALUES (null,'Movie','Scary Movie 2000.jpg','Scary Movie','Comedy','Anna Faris e Jon Abrahams','Keenen Ivory Wayans',null,2000,6.2);
INSERT INTO Data VALUES (null,'Movie','The School of Rock 2003.jpg','The School of Rock','Comedy','Jack Black','Richard Linklater',null,2003,7.1);
INSERT INTO Data VALUES (null,'Movie','White Chicks 2004.jpg','White Chicks','Comedy','Marlon Wayans e Shawn Wayans','Keenen Ivory Wayans',null,2004,5.3);
INSERT INTO Data VALUES (null,'Movie','Mean Girls 2004.jpg','Mean Girls','Comedy','Lindsay Lohan','Mark Waters',null,2004,7);
INSERT INTO Data VALUES (null,'Movie','Mr. & Mrs. Smith 2005.jpg','Mr. & Mrs. Smith','Comedy','Brad Pitt e Angelina Jolie','Doug Liman',null,2005,6.5);
INSERT INTO Data VALUES (null,'Movie','The 40 Year Old Virgin 2005.jpg','The 40 Year Old Virgin','Comedy','Steve Carell','Judd Apatow',null,2005,7.2);
INSERT INTO Data VALUES (null,'Movie','Click 2006.jpg','Click','Comedy','Adam Sandler','Frank Coraci',null,2006,6.4);
INSERT INTO Data VALUES (null,'Movie','Little Miss Sunshine 2006.jpg','Little Miss Sunshine','Comedy','Abigail Breslin','Jonathan Dayton',null,2006,7.9);
INSERT INTO Data VALUES (null,'Movie','Night at the Museum 2006.jpg','Night at the Museum','Comedy','Ben Stiller','Shawn Levy',null,2006,6.4);
INSERT INTO Data VALUES (null,'Movie','Superbad 2007.jpg','Superbad','Comedy','Michael Cera e Jonah Hill','Greg Mottola',null,2007,7.6);
INSERT INTO Data VALUES (null,'Movie','Funny People 2009.jpg','Funny People','Comedy','Adam Sandler','Judd Apatow',null,2009,6.4);
INSERT INTO Data VALUES (null,'Movie','Zombieland 2009.jpg','Zombieland','Comedy','Jesse Eisenberg','Ruben Fleischer',null,2009,7.7);
INSERT INTO Data VALUES (null,'Movie','The Hangover 2009.jpg','The Hangover','Comedy','Zach Galifianakis','Todd Phillips',null,2009,7.8);
INSERT INTO Data VALUES (null,'Movie','Horrible Bosses 2011.jpg','Horrible Bosses','Comedy','Jason Bateman, Charlie Day, Jason Sudeikis','Seth Gordon',null,2011,6.9);
INSERT INTO Data VALUES (null,'Movie','Friends With Benefits 2011.jpg','Friends With Benefits','Comedy','Mila Kunis e Justin Timberlake','Will Gluck',null,2011,6.6);
INSERT INTO Data VALUES (null,'Movie','God Bless America 2011.jpg','God Bless America','Comedy','Joel Murray e Tara Lynne Barr','Bobcat Goldthwait',null,2011,7.3);
INSERT INTO Data VALUES (null,'Movie','Ted 2012.jpg','Ted','Comedy','Mark Wahlberg','Seth MacFarlane',null,2012,7);
INSERT INTO Data VALUES (null,'Movie','This Means War 2012.jpg','This Means War','Comedy','Reese Witherspoon','McG',null,2012,6.4);
INSERT INTO Data VALUES (null,'Movie','Rock of Ages 2012.jpg','Rock of Ages','Comedy','Julianne Hough e Diego Boneta','Adam Shankman',null,2012,5.9);
INSERT INTO Data VALUES (null,'Movie','Were the Millers 2013.jpg','Were the Millers','Comedy','Jason Sudeikis','Rawson Marshall Thurber',null,2013,7.1);
INSERT INTO Data VALUES (null,'Movie','The Internship 2013.jpg','The Internship','Comedy','Vince Vaughn e Owen Wilson','Shawn Levy',null,2013,6.3);
INSERT INTO Data VALUES (null,'Movie','The Wolf of Wall Street 2013.jpg','The Wolf of Wall Street','Comedy','Leonardo DiCaprio','Martin Scorsese',null,2013,8.2);


INSERT INTO Data VALUES (null,'Movie','Blade 1998.jpg','Blade','BasedOnHQ','Wesley Snipes','Stephen Norrington',null,1998,7.1);
INSERT INTO Data VALUES (null,'Movie','Road to Predition 2002.jpg','Road to Predition','BasedOnHQ','Tom Hanks','Sam Mendes',null,2002,7.7);
INSERT INTO Data VALUES (null,'Movie','The Amazing Spider-Man 2012.jpg','The Amazing Spider-Man','BasedOnHQ','Andrew Garfield','Marc Webb',null,2012,7.1);
INSERT INTO Data VALUES (null,'Movie','V For Vendetta 2005.jpg','V For Vendetta','BasedOnHQ','Hugo Weaving e Natalie Portman','James McTeigue',null,2005,8.2);
INSERT INTO Data VALUES (null,'Movie','Constantine 2005.jpg','Constantine','BasedOnHQ','Keanu Reeves','Francis Lawrence',null,2005,6.9);
INSERT INTO Data VALUES (null,'Movie','The Dark Knight 2008.jpg','The Dark Knight','BasedOnHQ','Christian Bale','Christopher Nolan',null,2008,9);
INSERT INTO Data VALUES (null,'Movie','The Fountian 2006.jpg','The Fountian','BasedOnHQ','Hugh Jackman','Darren Aronofsky',null,2006,7.3);
INSERT INTO Data VALUES (null,'Movie','300 2006.jpg','300','BasedOnHQ','Gerard Butler','Zack Snyder',null,2006,7.8);
INSERT INTO Data VALUES (null,'Movie','Watchmen 2009.jpg','Watchmen','BasedOnHQ','Billy Crudup','Zack Snyder',null,2009,7.6);
INSERT INTO Data VALUES (null,'Movie','Kick-Ass 2010.jpg','Kick-Ass','BasedOnHQ','Aaron Taylor-Johnson','Matthew Vaughn',null,2010,7.7);
INSERT INTO Data VALUES (null,'Movie','X-Men Days of Future Past 2014.jpg','X-Men, Days of Future Past','BasedOnHQ','Patrick Stewart e Ian McKellen','Bryan Singer',null,20148.1);
INSERT INTO Data VALUES (null,'Movie','Dredd 2012.jpg','Dredd','BasedOnHQ','Karl Urban','Pete Travis',null,2012,7);
INSERT INTO Data VALUES (null,'Movie','Man of Steel 2013.jpg','Man of Steel','BasedOnHQ','Henry Cavill','Zack Snyder',null,2013,7.2);

INSERT INTO Data VALUES (null,'Movie','The Avengers 2012.jpg','The Avengers','BasedOnHQ','Robert Downey Jr','Joss Whedon','Marvel',2012,8.2);
INSERT INTO Data VALUES (null,'Movie','Iron Man 3 2013.jpg','Iron Man 3 2013','BasedOnHQ','Robert Downey Jr.','Jon Favreau','Marvel',2013,7.9);
INSERT INTO Data VALUES (null,'Movie','Captain America, The Winter Soldier 2014.jpg','Captain America, The Winter Soldier','BasedOnHQ','Chris Evans','Anthony Russo','Marvel',2014,7.8);
INSERT INTO Data VALUES (null,'Movie','Guardians of the Galaxy 2014.jpg','Guardians of the Galaxy','BasedOnHQ','Chris Pratt','James Gunn','Marvel',2014,8.2);


INSERT INTO Data VALUES (null,'Movie','Full Metal Jacket 1987.jpg','Full Metal Jacket','Action','Matthew Modine','Stanley Kubrick',null,1987,8.3);
INSERT INTO Data VALUES (null,'Movie','Die Hard 1988.jpg','Die Hard','Action','Bruce Willis','John McTiernan',null,1988,8.3);
INSERT INTO Data VALUES (null,'Movie','1996 - Mission Impossible.jpg','Mission Impossible','Action','Tom Cruise','Brian De Palma',null,1996,7.1);
INSERT INTO Data VALUES (null,'Movie','Braveheart 1995.jpg','Braveheart','Action','Mel Gibson','Mel Gibson',null,1995,8.4);
INSERT INTO Data VALUES (null,'Movie','Heat 1995.jpg','Heat','Action','Al Pacino e Robert De Niro','Michael Mann',null,1995,8.3);
INSERT INTO Data VALUES (null,'Movie','Se7en 1995.jpg','Se7en','Action','Morgan Freeman e Brad Pitt','David Fincher',null,1995,8.7);
INSERT INTO Data VALUES (null,'Movie','Saving Private Ryan 1998.jpg','Saving Private Ryan','Action','Tom Hanks','Steven Spielberg',null,1998,8.6);
INSERT INTO Data VALUES (null,'Movie','Gladiator 2000.jpg','Gladiator','Action','Russell Crowe','Ridley Scott',null,2000,8.5);
INSERT INTO Data VALUES (null,'Movie','2002 - Identity.jpg','The Bourne Identity ','Action','Matt Damon','Doug Liman',null,2002,7.9);
INSERT INTO Data VALUES (null,'Movie','2002 - The Transporter.jpg','The Transporter','Action','Jason Statham','Louis Leterrier',null,2002,6.8);
INSERT INTO Data VALUES (null,'Movie','Training Day 2001.jpg','Training Day','Action','Denzel Washington','Antoine Fuqua',null,2001,7.7);
INSERT INTO Data VALUES (null,'Movie','Man on Fire 2004.jpg','Man on Fire','Action','Denzel Washington','Tony Scott',null,2004,7.8);
INSERT INTO Data VALUES (null,'Movie','Alexander 2004.jpg','Alexander','Action','Colin Farrell','Oliver Stone',null,2004,5.5);
INSERT INTO Data VALUES (null,'Movie','Troy 2004.jpg','Troy','Action','Brad Pitt','Wolfgang Petersen',null,2004,7.2);
INSERT INTO Data VALUES (null,'Movie','The Departed 2006.jpg','The Departed','Action','Leonardo DiCaprio','Martin Scorsese',null,2006,8.5);
INSERT INTO Data VALUES (null,'Movie','Tropa de Elite 2 2010.jpg','Tropa de Elite 2','Action','Wagner Moura','José Padilha',null,2010,8.1);
INSERT INTO Data VALUES (null,'Movie','IP Man 2008.jpg','IP Man','Action','Donnie Yen','Wilson Yip',null,2008,8.1);
INSERT INTO Data VALUES (null,'Movie','Rambo 2008.jpg','Rambo','Action','Sylvester Stallone','Sylvester Stallone',null,2008,7.1);
INSERT INTO Data VALUES (null,'Movie','24 2008.jpg','24','Action','Kiefer Sutherland','Jon Cassar',null,2008,7.5);
INSERT INTO Data VALUES (null,'Movie','Taken 2008.jpg','Taken','Action','Liam Neeson','Pierre Morel',null,2008,7.9);
INSERT INTO Data VALUES (null,'Movie','The Raid 2011.jpg','The Raid','Action','Iko Uwais','Gareth Evans',null,2011,7.6);
INSERT INTO Data VALUES (null,'Movie','2010 - The Expendables.jpg','The Expendables','Action','Sylvester Stallone','Sylvester Stallone',null,2010,6.5);
INSERT INTO Data VALUES (null,'Movie','Safe House 2012.jpg','Safe House','Action','Denzel Washington','Daniel Espinosa',null,2012,6.8);
INSERT INTO Data VALUES (null,'Movie','RoboCop 2014.jpg','RoboCop','Action','Joel Kinnaman','José Padilha',null,2014,6.3);
INSERT INTO Data VALUES (null,'Movie','Fury 2014.jpg','Fury','Action','Brad Pitt','David Ayer',null,2014,7.7);
INSERT INTO Data VALUES (null,'Movie','2015 - Fast and Furious 7.jpg','Fast and Furious','Action','Vin Diesel e Paul Walker','James Wan',null,2015,7.6);
INSERT INTO Data VALUES (null,'Movie','Mad Max - Fury Road 2015.jpg','Mad Max - Fury Road','Action','Tom Hardy, Charlize Theron','George Miller',null,2015,8.4);


INSERT INTO Data VALUES (null,'Movie','Forrest Gump 1994.jpg','Forrest Gump','FeelGood','Tom Hanks','Robert Zemeckis',null,1994,8.8);
INSERT INTO Data VALUES (null,'Movie','Schindlers List 1993.jpg','Schindlers List','FeelGood','Liam Neeson','Steven Spielberg',null,1993,8.9);
INSERT INTO Data VALUES (null,'Movie','The Shawshank Redemption 1994.jpg','The Shawshank Redemption','FeelGood','Tim Robbins','Frank Darabont',null,1994,9.3);
INSERT INTO Data VALUES (null,'Movie','Its a Wonderful Life 1946.jpg','Its a Wonderful Life','FeelGood','James Stewart','Frank Capra',null,1946,8.7);
INSERT INTO Data VALUES (null,'Movie','Stand by me 1986.jpg','Stand by me','FeelGood','Wil Wheaton','Rob Reiner',null,1986,8.1);
INSERT INTO Data VALUES (null,'Movie','Dead Poets Society 1989.jpg','Dead Poets Society','FeelGood','Robin Williams','Peter Weir',null,1989,8);
INSERT INTO Data VALUES (null,'Movie','Groundhog Day 1993.jpg','Groundhog Day','FeelGood','Bill Murray','Harold Ramis',null,1993,8.1);
INSERT INTO Data VALUES (null,'Movie','Before Sunrise 1995.jpg','Before Sunrise','FeelGood','Ethan Hawke','Richard Linklater',null,1995,8.1);
INSERT INTO Data VALUES (null,'Movie','Good Will Hunting 1997.jpg','Good Will Hunting','FeelGood','Matt Damon','Gus Van Sant',null,1997,8.3);
INSERT INTO Data VALUES (null,'Movie','Titanic 1997.jpg','Titanic','FeelGood','Leonardo DiCaprio','James Cameron',null,1997,7.7);
INSERT INTO Data VALUES (null,'Movie','Jerry Maguire 1996.jpg','Jerry Maguire','FeelGood','Tom Cruise','Cameron Crowe',null,1996,7.3);
INSERT INTO Data VALUES (null,'Movie','A Beautiful Mind 2001.jpg','A Beautiful Mind','FeelGood','Russell Crowe','Ron Howard',null,2001,8.2);
INSERT INTO Data VALUES (null,'Movie','Almost Famous 2000.jpg','Almost Famous','FeelGood','Patrick Fugit','Cameron Crowe',null,2000,7.9);
INSERT INTO Data VALUES (null,'Movie','Men of Honor 2000.jpg','Men of Honor','FeelGood','Cuba Gooding Jr.','George Tillman Jr.',null,2000,7.1);
INSERT INTO Data VALUES (null,'Movie','Vanilla Sky 2001.jpg','Vanilla Sky','FeelGood','Tom Cruise','Cameron Crowe',null,2001,6.9);
INSERT INTO Data VALUES (null,'Movie','I am Sam 2001.jpg','I am Sam','FeelGood','Sean Penn e Dakota Fanning','Jessie Nelson',null,2001,7.6);
INSERT INTO Data VALUES (null,'Movie','John Q 2002.jpg','John Q','FeelGood','Denzel Washington','Nick Cassavetes',null,2002,7);
INSERT INTO Data VALUES (null,'Movie','The Pianist 2002.jpg','The Pianist','FeelGood','Adrien Brody','Roman Polanski',null,2002,8.5);
INSERT INTO Data VALUES (null,'Movie','The Last Samurai 2003.jpg','The Last Samurai','FeelGood','Tom Cruise','Edward Zwick',null,2003,7.7);
INSERT INTO Data VALUES (null,'Movie','The Pursuit of Happyness 2006.jpg','The Pursuit of Happyness','FeelGood','Will Smith','Gabriele Muccino',null,2006,7.9);
INSERT INTO Data VALUES (null,'Movie','Marley & Me 2008.jpg','Marley & Me','FeelGood','Owen Wilson','David Frankel',null,2008,7.1);
INSERT INTO Data VALUES (null,'Movie','Hachi - A Dogs Tale 2009.jpg','Hachi - A Dogs Tale','FeelGood','Richard Gere','Lasse Hallström',null,2009,8.2);
INSERT INTO Data VALUES (null,'Movie','Love & Other Drugs 2010.jpg','Love & Other Drugs','FeelGood','Jake Gyllenhaal','Edward Zwick',null,2010,6.7);
INSERT INTO Data VALUES (null,'Movie','War Horse 2011.jpg','War Horse','FeelGood','Jeremy Irvine','Steven Spielberg',null,2011,7.2);
INSERT INTO Data VALUES (null,'Movie','Les Misérables 2012.jpg','Les Misérables','FeelGood','Hugh Jackman','Tom Hooper',null,2012,7.7);
INSERT INTO Data VALUES (null,'Movie','The Perks of Being a Wallflower 2012.jpg','The Perks of Being a Wallflower','FeelGood','Logan Lerman','Stephen Chbosky',null,2012,8.1);
INSERT INTO Data VALUES (null,'Movie','About Time 2013.jpg','About Time','FeelGood','Domhnall Gleeson','Richard Curtis',null,2013,7.8);
INSERT INTO Data VALUES (null,'Movie','Begin Again 2013.jpg','Begin Again','FeelGood','Keira Knightley e Mark Ruffalo','John Carney',null,2013,7.5);


INSERT INTO Data VALUES (null,'Movie','The Godfather 1972.jpg','The Godfather','Drama','Al Pacino','Francis Ford Coppola',null,1972,9.2);
INSERT INTO Data VALUES (null,'Movie','Goodfellas 1990.jpg','Goodfellas','Drama','Ray Liotta','Martin Scorsese',null,1990,8.7);
INSERT INTO Data VALUES (null,'Movie','Leon The Professional 1994.jpg','Leon The Professional','Drama','Natalie Portman','Luc Besson',null,1994,8.6);
INSERT INTO Data VALUES (null,'Movie','The Silence of the Lambs 1991.jpg','The Silence of the Lambs','Drama','Jodie Foster','Jonathan Demme',null,1991,8.6);
INSERT INTO Data VALUES (null,'Movie','Basic Instinct 1992.jpg','Basic Instinct','Drama','Michael Douglas','Paul Verhoeven',null,1992,6.9);
INSERT INTO Data VALUES (null,'Movie','A Few Good Men 1992.jpg','A Few Good Men','Drama','Tom Cruise','Rob Reiner',null,1992,7.6);
INSERT INTO Data VALUES (null,'Movie','Gone with the Wind 1939.jpg','Gone with the Wind','Drama','Vivien Leigh','Victor Fleming',null,1939,8.2);
INSERT INTO Data VALUES (null,'Movie','The Green Mile 1999.jpg','The Green Mile','Drama','Tom Hanks','Frank Darabont',null,1999,8.5);
INSERT INTO Data VALUES (null,'Movie','American History X 1998.jpg','American History X','Drama','Edward Norton','Tony Kaye',null,1998,8.6);
INSERT INTO Data VALUES (null,'Movie','Fight Club 1999.jpg','Fight Club','Drama','Brad Pitt','David Fincher',null,1999,8.9);
INSERT INTO Data VALUES (null,'Movie','Gangs of New York 2002.jpg','Gangs of New York','Drama','Leonardo DiCaprio','Martin Scorsese',null,2002,7.5);
INSERT INTO Data VALUES (null,'Movie','Million Dollar Baby 2004.jpg','Million Dollar Baby','Drama','Hilary Swank','Clint Eastwood',null,2004,8.1);
INSERT INTO Data VALUES (null,'Movie','The Passion of the Christ 2004.jpg','The Passion of the Christ','Drama','Jim Caviezel','Mel Gibson',null,2004,7.1);
INSERT INTO Data VALUES (null,'Movie','Hotel Rwanda 2004.jpg','Hotel Rwanda','Drama','Don Cheadle','Terry George',null,2004,8.2);
INSERT INTO Data VALUES (null,'Movie','Blood Diamond 2006.jpg','Blood Diamond','Drama','Leonardo DiCaprio','Edward Zwick',null,2006,8);
INSERT INTO Data VALUES (null,'Movie','The Da Vincis Code 2006.jpg','The Da Vincis Code','Drama','Tom Hanks','Ron Howard',null,2006,6.5);
INSERT INTO Data VALUES (null,'Movie','Shutter Island 2010.jpg','Shutter Island','Drama','Leonardo DiCaprio','Martin Scorsese',null,2010,8.1);
INSERT INTO Data VALUES (null,'Movie','Cruel Intentions 1999.jpg','Cruel Intentions','Drama','Ryan Phillippe','Roger Kumble',null,1999,6.9);
INSERT INTO Data VALUES (null,'Movie','Dogville 2003.jpg','Dogville','Drama','Nicole Kidman','Lars von Trier',null,2003,8);
INSERT INTO Data VALUES (null,'Movie','Crash 2004.jpg','Crash','Drama','Don Cheadle','Paul Haggis',null,2004,7.9);
INSERT INTO Data VALUES (null,'Movie','Mystic River 2003.jpg','Mystic River','Drama','Sean Penn','Clint Eastwood',null,2003,8);
INSERT INTO Data VALUES (null,'Movie','Rocky Balboa 2006.jpg','Rocky Balboa','Drama','Sylvester Stallone','Sylvester Stallone',null,2006,7.2);
INSERT INTO Data VALUES (null,'Movie','Blindness 2008.jpg','Blindness','Drama','Julianne Moore','Fernando Meirelles',null,2008,6.6);
INSERT INTO Data VALUES (null,'Movie','Law Abiding Citizen 2009.jpg','Law Abiding Citizen','Drama','Gerard Butler, Jamie Foxx','F. Gary Gray',null,2008,7.4);
INSERT INTO Data VALUES (null,'Movie','The Help 2011.jpg','The Help','Drama','Emma Stone','Tate Taylor',null,2011,8.1);
INSERT INTO Data VALUES (null,'Movie','The Fault in Our Stars 2013.jpg','The Fault in Our Stars','Drama','Shailene Woodley','Josh Boone',null,2013,8);
INSERT INTO Data VALUES (null,'Movie','The Normal Heart 2014.jpg','The Normal Heart','Drama','Mark Ruffalo','Ryan Murphy',null,2014,8);
INSERT INTO Data VALUES (null,'Movie','Birdman 2014.jpg','Birdman','Drama','Michael Keaton','Alejandro González Iñárritu',null,2014,8);
INSERT INTO Data VALUES (null,'Movie','Veronica Mars 2014.jpg','Veronica Mars','Drama','Kristen Bell','Rob Thomas',null,2014,6.9);
INSERT INTO Data VALUES (null,'Movie','Whiplash 2014.jpg','Whiplash','Drama','Miles Teller','Damien Chazelle',null,2014,8.6);
INSERT INTO Data VALUES (null,'Movie','I Origins 2014.jpg','I Origins','Drama','Michael Pitt','Mike Cahill',null,2014,7.3);


INSERT INTO Data VALUES (null,'Movie','Episode I The Phantom Menace.jpg','Episode I - The Phantom Menace','Fantasy','Mark Hamill','George Lucas',null,1999,6.6);
INSERT INTO Data VALUES (null,'Movie','Episode II Attack of the Clones.jpg','Episode II - Attack of the Clones','Fantasy','Mark Hamill','George Lucas',null,2002,6.8);
INSERT INTO Data VALUES (null,'Movie','Episode III Revenge of the Sith.jpg','Episode III - Revenge of the Sith','Fantasy','Mark Hamill','George Lucas',null,2005,7.7);
INSERT INTO Data VALUES (null,'Movie','Episode IV A New Hope.jpg','Episode IV A New Hope','Fantasy','Mark Hamill','George Lucas',null,1977,8.7);
INSERT INTO Data VALUES (null,'Movie','Episode V The Empire Strikes Back.jpg','Episode V - The Empire Strikes Back','Fantasy','Mark Hamill','George Lucas',null,1980,8.8);
INSERT INTO Data VALUES (null,'Movie','Episode VI Return of the Jedi.jpg','Episode VI - Return of the Jedi','Fantasy','Mark Hamill','George Lucas',null,1983,8.4);
INSERT INTO Data VALUES (null,'Movie','Episode VII Star Wars The Force Awakens.jpg','Episode VII Star Wars The Force Awakens','Fantasy','Daisy Ridley, John Boyega','J.J. Abrams',null,2015,8.5);
INSERT INTO Data VALUES (null,'Movie','The Curse of the Black Pearl.jpg','Pirates of the Caribbean The Curse of the Black Pearl','Fantasy','Johnny Depp','Gore Verbinski',null,2003,8.1);
INSERT INTO Data VALUES (null,'Movie','Dead Mans Chest.jpg','Pirates of the Caribbean Dead Mans Chest','Fantasy','Johnny Depp','Gore Verbinski',null,2006,7.3);
INSERT INTO Data VALUES (null,'Movie','At Worlds End.jpg','Pirates of the Caribbean At Worlds End','Fantasy','Johnny Depp','Gore Verbinski',null,2007,7.1);
INSERT INTO Data VALUES (null,'Movie','Avatar 2009.jpg','Avatar','Fantasy','Sam Worthington','James Cameron',null,2009,7.9);
INSERT INTO Data VALUES (null,'Movie','Twilight.jpg','Twilight','Fantasy','Kristen Stewart','Catherine Hardwicke',null,2008,5.2);
INSERT INTO Data VALUES (null,'Movie','New Moon.jpg','The Twilight Saga New Moon','Fantasy','Kristen Stewart','Catherine Hardwicke',null,2009,4.9);
INSERT INTO Data VALUES (null,'Movie','Eclipse.jpg','The Twilight Saga Eclipse','Fantasy','Kristen Stewart','Catherine Hardwicke',null,2010,5.6);
INSERT INTO Data VALUES (null,'Movie','Breaking Dawn - Part 1.jpg','The Twilight Saga Breaking Dawn - Part 1','Fantasy','Kristen Stewart','Catherine Hardwicke',null,2011,5.2);
INSERT INTO Data VALUES (null,'Movie','Breaking Dawn - Part 2.jpg','The Twilight Saga Breaking Dawn - Part 2','Fantasy','Kristen Stewart','Catherine Hardwicke',null,2012,5.2);
INSERT INTO Data VALUES (null,'Movie','and the Sorcerers Stone.jpg','Harry Potter and the Sorcerers Stone','Fantasy','Daniel Radcliffe','Chris Columbus',null,2001,7.5);
INSERT INTO Data VALUES (null,'Movie','and the Chamber of Secrets.jpg','Harry Potter and the Chamber of Secrets','Fantasy','Daniel Radcliffe','Chris Columbus',null,2002,7.3);
INSERT INTO Data VALUES (null,'Movie','and the Prisoner of Azkaban.jpg','Harry Potter and the Prisoner of Azkaban','Fantasy','Daniel Radcliffe','Chris Columbus',null,2004,7.8);
INSERT INTO Data VALUES (null,'Movie','and the Goblet of Fire.jpg','Harry Potter and the Goblet of Fire','Fantasy','Daniel Radcliffe','Chris Columbus',null,2005,7.6);
INSERT INTO Data VALUES (null,'Movie','and the Order of the Phoenix.jpg','Harry Potter and the Order of the Phoenix','Fantasy','Daniel Radcliffe','Chris Columbus',null,2007,7.4);
INSERT INTO Data VALUES (null,'Movie','and the Half-Blood Prince.jpg','Harry Potter and the Half-Blood Prince','Fantasy','Daniel Radcliffe','Chris Columbus',null,2009,7.5);
INSERT INTO Data VALUES (null,'Movie','and the Deathly Hallows - Part 1.jpg','Harry Potter and the Deathly Hallows - Part 1','Fantasy','Daniel Radcliffe','Chris Columbus',null,2010,7.7);
INSERT INTO Data VALUES (null,'Movie','and the Deathly Hallows - Part 2.jpg','Harry Potter and the Deathly Hallows - Part 2','Fantasy','Daniel Radcliffe','Chris Columbus',null,2011,8.1);
INSERT INTO Data VALUES (null,'Movie','The Fellowship of the Ring.jpg','The Lord of the Rings The Fellowship of the Ring','Fantasy','Elijah Wood','Peter Jackson',null,2001,8.8);
INSERT INTO Data VALUES (null,'Movie','The Two Towers.jpg','The Lord of the Rings The Two Towers','Fantasy','Elijah Wood','Peter Jackson',null,2002,8.8);
INSERT INTO Data VALUES (null,'Movie','The Return of the King.jpg','The Lord of the Rings The Return of the King','Fantasy','Elijah Wood','Peter Jackson',null,2003,8.9);
INSERT INTO Data VALUES (null,'Movie','An Unexpected Journey.jpg','The Hobbit An Unexpected Journey','Fantasy','Martin Freeman','Peter Jackson',null,2012,8);
INSERT INTO Data VALUES (null,'Movie','The Desolation of Smaug.jpg','The Hobbit The Desolation of Smaug','Fantasy','Martin Freeman','Peter Jackson',null,2013,8);
INSERT INTO Data VALUES (null,'Movie','The Battle of the Five Armies.jpg','The Hobbit The Battle of the Five Armies','Fantasy','Martin Freeman','Peter Jackson',null,2014,7.6);


INSERT INTO Data VALUES (null,'Movie','2001 - A Space Odyssey 1968.jpg','2001 - A Space Odyssey','Sci-Fi','Keir Dullea','Stanley Kubrick',null,1968,8.3);
INSERT INTO Data VALUES (null,'Movie','Blade Runner 1982.jpg','Blade Runner','Sci-Fi','Harrison Ford','Ridley Scott',null,1982,8.2);
INSERT INTO Data VALUES (null,'Movie','The Terminator 1984.jpg','The Terminator','Sci-Fi','Arnold Schwarzenegger','James Cameron',null,1984,8.1);
INSERT INTO Data VALUES (null,'Movie','Jurassic Park 1993.jpg','Jurassic Park','Sci-Fi','Sam Neill','Steven Spielberg',null,1993,8);
INSERT INTO Data VALUES (null,'Movie','Twelve Monkeys 1995.jpg','Twelve Monkeys','Sci-Fi','Bruce Willis','Terry Gilliam',null,1995,8.1);
INSERT INTO Data VALUES (null,'Movie','Species 1995.jpg','Species','Sci-Fi','Natasha Henstridge','Roger Donaldson',null,1995,5.8);
INSERT INTO Data VALUES (null,'Movie','Contact 1997.jpg','Contact','Sci-Fi','Jodie Foster','Robert Zemeckis',null,1997,7.4);
INSERT INTO Data VALUES (null,'Movie','The Matrix 1999.jpg','The Matrix','Sci-Fi','Keanu Reeves','The Wachowski Brothers',null,1999,8.7);
INSERT INTO Data VALUES (null,'Movie','Donnie Darko 2001.jpg','Donnie Darko','Sci-Fi','Jake Gyllenhaal','Richard Kelly',null,2001,8.1);
INSERT INTO Data VALUES (null,'Movie','Minority Report 2002.jpg','Minority Report','Sci-Fi','Tom Cruise','Steven Spielberg',null,2002,7.7);
INSERT INTO Data VALUES (null,'Movie','Equilibrium 2002.jpg','Equilibrium','Sci-Fi','Christian Bale','Kurt Wimmer',null,2002,7.6);
INSERT INTO Data VALUES (null,'Movie','Resident Evil 2002.jpg','Resident Evil','Sci-Fi','Milla Jovovich','Paul W.S. Anderson',null,2002,6.7);
INSERT INTO Data VALUES (null,'Movie','The Butterfly Effect 2004.jpg','The Butterfly Effect','Sci-Fi','Ashton Kutcher','Eric Bress',null,2004,7.7);
INSERT INTO Data VALUES (null,'Movie','The Island 2005.jpg','The Island','Sci-Fi','Scarlett Johansson','Michael Bay',null,2005,6.9);
INSERT INTO Data VALUES (null,'Movie','Children of Men 2006.jpg','Children of Men','Sci-Fi','Julianne Moore','Alfonso Cuarón',null,2006,7.9);
INSERT INTO Data VALUES (null,'Movie','The Man From Earth 2007.jpg','The Man from Earth','Sci-Fi','David Lee Smith','Richard Schenkman',null,2007,8.0);
INSERT INTO Data VALUES (null,'Movie','Moon 2009.jpg','Moon','Sci-Fi','Sam Rockwell','Duncan Jones',null,2009,8);
INSERT INTO Data VALUES (null,'Movie','Inception 2010.jpg','Inception','Sci-Fi','Leonardo DiCaprio','Christopher Nolan',null,2010,8.8);
INSERT INTO Data VALUES (null,'Movie','Star Trek 2009.jpg','Star Trek','Sci-Fi','Chris Pine','J.J. Abrams',null,2009,8);
INSERT INTO Data VALUES (null,'Movie','Prometheus 2012.jpg','Prometheus','Sci-Fi','Noomi Rapace','Ridley Scott',null,2012,7);
INSERT INTO Data VALUES (null,'Movie','Total Recall 2012.jpg','Total Recall','Sci-Fi','Colin Farrell','Len Wiseman',null,2013,6.3);
INSERT INTO Data VALUES (null,'Movie','World War Z 2013.jpg','World War Z','Sci-Fi','Brad Pitt','Marc Forster',null,2013,7);
INSERT INTO Data VALUES (null,'Movie','Oblivion 2013.jpg','Oblivion','Sci-Fi','Tom Cruise','Joseph Kosinski',null,2013,7);
INSERT INTO Data VALUES (null,'Movie','Elysium 2013.jpg','Elysium','Sci-Fi','Matt Damon','Neill Blomkamp',null,2013,6.7);
INSERT INTO Data VALUES (null,'Movie','Gravity 2013.jpg','Gravity','Sci-Fi','Sandra Bullock','Alfonso Cuarón',null,2013,7.9);
INSERT INTO Data VALUES (null,'Movie','Interstellar 2014.jpg','Interstellar','Sci-Fi','Matthew McConaughey','Christopher Nolan',null,2014,8.8);
INSERT INTO Data VALUES (null,'Movie','Lucy 2014.jpg','Lucy','Sci-Fi','Scarlett Johansson','Luc Besson',null,2014,6.4);
INSERT INTO Data VALUES (null,'Movie','Ex Machina 2015.jpg','Ex Machina','Sci-Fi','Domhnall Gleeson','Alex Garland',null,2015,7.8);
INSERT INTO Data VALUES (null,'Movie','Jurassic World 2015.jpg','Jurassic World','Sci-Fi','Chris Pratt','Colin Trevorrow',null,2015,7.2);
INSERT INTO Data VALUES (null,'Movie','Terminator Genisys 2015.jpg','Terminator Genisys','Sci-Fi','Arnold Schwarzenegger, Jason Clarke, Emilia Clarke','Alan Taylor',null,2015,6.7);

INSERT INTO Data VALUES (null,'Movie','Psycho 1960.jpg','Psycho','Terror','Anthony Perkins e Janet Leigh','Alfred Hitchcock',null,1960,8.6);
INSERT INTO Data VALUES (null,'Movie','The Exorcist 1973.jpg','The Exorcist','Terror','Linda Blair','William Friedkin',null,1973,8);
INSERT INTO Data VALUES (null,'Movie','Alien 1979.jpg','Alien','Terror','Sigourney Weaver','Ridley Scott',null,1979,8.5);
INSERT INTO Data VALUES (null,'Movie','Angel Heart 1987.jpg','Angel Heart','Terror','Mickey Rourke','Alan Parker',null,1987,6.2);
INSERT INTO Data VALUES (null,'Movie','Scream 1996.jpg','Scream','Terror','Neve Campbell','Wes Craven',null,1996,7.2);
INSERT INTO Data VALUES (null,'Movie','Event Horizon 1997.jpg','Event Horizon','Terror','Laurence Fishburne','Paul W.S. Anderson',null,1997,6.7);
INSERT INTO Data VALUES (null,'Movie','The Sixth Sense 1999.jpg','The Sixth Sense','Terror','Bruce Willis','M. Night Shyamalan',null,1999,8.2);
INSERT INTO Data VALUES (null,'Movie','Final Destination 2000.jpg','Final Destination','Terror',' Devon Sawa','James Wong',null,2000,6.7);
INSERT INTO Data VALUES (null,'Movie','Ghost Ship 2002.jpg','Ghost Ship','Terror','Julianna Margulies','Steve Beck',null,2002,5.4);
INSERT INTO Data VALUES (null,'Movie','The Ring 2002.jpg','The Ring','Terror','Naomi Watts','Gore Verbinski',null,2002,7.1);
INSERT INTO Data VALUES (null,'Movie','Saw 2004.jpg','Saw','Terror','Tobin Bell','James Wan',null,2004,7.7);
INSERT INTO Data VALUES (null,'Movie','Shutter 2004.jpg','Shutter','Terror','Ananda Everingham','Banjong Pisanthanakun',null,2004,7.1);
INSERT INTO Data VALUES (null,'Movie','The Grudge 2004.jpg','The Grudge','Terror','Sarah Michelle Gellar','Takashi Shimizu',null,2004,5.9);
INSERT INTO Data VALUES (null,'Movie','The Exorcism of Emily Rose 2005.jpg','The Exorcism of Emily Rose','Terror','Jennifer Carpenter','Scott Derrickson',null,2005,6.7);
INSERT INTO Data VALUES (null,'Movie','Silent Hill 2006.jpg','Silent Hill','Terror','Radha Mitchell','Christophe Gans',null,2006,6.6);
INSERT INTO Data VALUES (null,'Movie','The Mist 2007.jpg','The Mist','Terror','Thomas Jane','Frank Darabont',null,2007,7.2);
INSERT INTO Data VALUES (null,'Movie','Halloween 2007.jpg','Halloween','Terror','Scout Taylor-Compton','Rob Zombie',null,2007,6.1);
INSERT INTO Data VALUES (null,'Movie','Mirrors 2008.jpg','Mirrors','Terror','Kiefer Sutherland','Alexandre Aja',null,2008,6.2);
INSERT INTO Data VALUES (null,'Movie','Insidious 2010.jpg','Insidious','Terror','Patrick Wilson e Rose Byrne','James Wan',null,2010,6.8);
INSERT INTO Data VALUES (null,'Movie','I Spit on Your Grave 2010.jpg','I Spit on Your Grave','Terror','Sarah Butler','Steven R. Monroe',null,2010,6.3);
INSERT INTO Data VALUES (null,'Movie','Sinister 2012.jpg','Sinister','Terror','Ethan Hawke','Scott Derrickson',null,2012,6.8);
INSERT INTO Data VALUES (null,'Movie','The Cabin in the Woods 2012.jpg','The Cabin in the Woods','Terror','Kristen Connolly','Drew Goddard',null,2012,7);
INSERT INTO Data VALUES (null,'Movie','Carrie 2013.jpg','Carrie','Terror','Chloë Grace Moretz','Kimberly Peirce',null,2013,6);
INSERT INTO Data VALUES (null,'Movie','Mama 2013.jpg','Mama','Terror','Jessica Chastain','Andrés Muschietti',null,2013,6.2);
INSERT INTO Data VALUES (null,'Movie','Evil Dead 2013.jpg','Evil Dead','Terror','Jane Levy','Fede Alvarez',null,2013,6.5);
INSERT INTO Data VALUES (null,'Movie','The Conjuring 2013.jpg','The Conjuring','Terror','Patrick Wilson e Vera Farmiga','James Wan',null,2013,7.5);
INSERT INTO Data VALUES (null,'Movie','Last Shift 2014.jpg','Last Shift','Terror','Juliana Harkavy','Anthony DiBlasi',null,2014,5.5);

INSERT INTO Data VALUES (null,'Movie','The Blair Witch Project 1999.jpg','The Blair Witch Project','Terror','Heather Donahue','Daniel Myrick','Found Footage',1999,6.4);
INSERT INTO Data VALUES (null,'Movie','Paranormal Activity 2007.jpg','Paranormal Activity','Terror','Katie Featherston','Oren Peli','Found Footage',2007,6.3);
INSERT INTO Data VALUES (null,'Movie','[Rec] 2007.jpg','[Rec]','Terror','Manuela Velasco','Jaume Balagueró','Found Footage',2007,7.5);
INSERT INTO Data VALUES (null,'Movie','Grave Encounters 2011.jpg','Grave Encounters','Terror','Ben Wilkinson','Colin Minihan','Found Footage',2011,6.1);
INSERT INTO Data VALUES (null,'Movie','As Above, So Below 2014.jpg','As Above, So Below','Terror','Perdita Weeks','John Erick Dowdle','Found Footage',2014,6.1);


INSERT INTO Data VALUES (null,'TvShow','OZ 1997~2003.jpg','OZ','TvShow',null,null,null,1997,8.9);
INSERT INTO Data VALUES (null,'TvShow','Smallville 2001~2011.jpg','Smallville','TvShow',null,null,null,2001,7.5);
INSERT INTO Data VALUES (null,'TvShow','Veronica Mars 2004~2007.jpg','Veronica Mars','TvShow',null,null,null,2004,8.4);
INSERT INTO Data VALUES (null,'TvShow','24 2001~2010.jpg','24','TvShow',null,null,null,2001,8.5);
INSERT INTO Data VALUES (null,'TvShow','Lost 2004~2010.jpg','Lost','TvShow',null,null,null,2004,8.5);
INSERT INTO Data VALUES (null,'TvShow','Supernatural 2005~2015.jpg','Supernatural','TvShow',null,null,null,2005,8.7);
INSERT INTO Data VALUES (null,'TvShow','Friends 1994~2003.jpg','Friends','TvShow',null,null,null,1994,9.0);
INSERT INTO Data VALUES (null,'TvShow','Two and a Half Men 2003~2015.jpg','Two and a Half Men','TvShow',null,null,null,2003,7.2);
INSERT INTO Data VALUES (null,'TvShow','Californication 2007~2014.jpg','Californication','TvShow',null,null,null,2007,8.4);
INSERT INTO Data VALUES (null,'TvShow','Breaking Bad 2008~2013.jpg','Breaking Bad','TvShow',null,null,null,2008,9.5);
INSERT INTO Data VALUES (null,'TvShow','Spartacus 2010~2013.jpg','Spartacus','TvShow',null,null,null,2010,8.7);
INSERT INTO Data VALUES (null,'TvShow','The Walking Dead 2010~2015.jpg','The Walking Dead','TvShow',null,null,null,2010,8.7);
INSERT INTO Data VALUES (null,'TvShow','Homeland 2011~2015.jpg','Homeland','TvShow',null,null,null,2011,8.5);
INSERT INTO Data VALUES (null,'TvShow','True Detective 2014~2015.jpg','True Detective','TvShow',null,null,null,2014,9.3);
INSERT INTO Data VALUES (null,'TvShow','Game of Thrones 2011~2015.jpg','Game of Thrones','TvShow',null,null,null,2011,9.5);
INSERT INTO Data VALUES (null,'TvShow','Daredevil 2015.jpg','Daredevil','TvShow',null,null,null,2015,9.1);

INSERT INTO Data VALUES (null,'Game','Chrono Trigger 1995.jpg','Chrono Trigger','Game',null,null,null,1995,null);
INSERT INTO Data VALUES (null,'Game','The Legend of Zelda Ocarina of Time 1999.jpg','The Legend of Zelda - Ocarina of Time','Game',null,null,null,1999,null);
INSERT INTO Data VALUES (null,'Game','Warcraft III 2002.jpg','Warcraft III','Game',null,null,null,2002,null);
INSERT INTO Data VALUES (null,'Game','F.E.A.R. 2005.jpg','F.E.A.R.','Game',null,null,null,2005,null);
INSERT INTO Data VALUES (null,'Game','Dead Space 2008.jpg','Dead Space','Game',null,null,null,2008,null);
INSERT INTO Data VALUES (null,'Game','Assassins Creed II 2009.jpg','Assassins Creed II','Game',null,null,null,2009,null);
INSERT INTO Data VALUES (null,'Game','Batman Arkham City 2011.jpg','Batman Arkham City','Game',null,null,null,2011,null);
INSERT INTO Data VALUES (null,'Game','Far Cry 3 2012.jpg','Far Cry 3','Game',null,null,null,2012,null);
INSERT INTO Data VALUES (null,'Game','BioShock Infinite 2013.jpg','BioShock Infinite','Game',null,null,null,2013,null);
INSERT INTO Data VALUES (null,'Game','The Last of Us 2013.jpg','The Last of Us','Game',null,null,null,2013,null);
INSERT INTO Data VALUES (null,'Game','Tomb Raider 2013.jpg','Tomb Raider','Game',null,null,null,2013,null);
INSERT INTO Data VALUES (null,'Game','GTA V 2013.jpg','GTA V','Game',null,null,null,2013,null);
INSERT INTO Data VALUES (null,'Game','Alien Isolation 2014.jpg','Alien Isolation','Game',null,null,null,2014,null);
INSERT INTO Data VALUES (null,'Game','Final Fantasy VII 2016.jpg','Final Fantasy VII','Game',null,null,null,2016,null);

