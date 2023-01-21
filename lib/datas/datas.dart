

class BannerScreen{
  final int index;
  final String imgUrl ;
  final String name;
  final String date;

  BannerScreen(this.index,this.name, this.date,this.imgUrl);
}
List<BannerScreen> movies = [
  BannerScreen(0,"AVENGER: The Avenger End\nGame  ", "24  January","https://hsmse.org/wp-content/uploads/2019/04/avengers-1140x500.png"),
  BannerScreen(1,'Attack on Titan: Final Season ', '2 February 2023', "https://images5.alphacoders.com/508/508247.jpg"),
  BannerScreen(2,'Shazam: Fury of the Gods', '17 March 2023', 'https://static1.srcdn.com/wordpress/wp-content/uploads/2022/12/zachary-levi-shazam-fury-of-the-gods.jpg'),
  BannerScreen(3, 'Barbies', '21 July 2023', 'https://img-s2.onedio.com/id-6384cd45b96cda821aeb1654/rev-0/w-635/f-jpg/s-1077d4dc1e2bda59e8a0a19d57cba5c68e106c65.jpg'),
  BannerScreen(4,' Creed III', ' 3 March 2023 ', 'https://culturedvultures.com/wp-content/uploads/2022/12/Creed-III.jpg'),

];
List<BannerScreen> upcomingMovies = [
  BannerScreen(0,'The Flash', '23 June 2023', 'https://static1.srcdn.com/wordpress/wp-content/uploads/2022/11/Multiple-variants-of-the-Flash-in-The-Flash-movie.jpg'),
  BannerScreen(1,'Blue Bettie', '18 August 2023', 'https://static1.srcdn.com/wordpress/wp-content/uploads/2022/08/blue-beetle-movie-xolo.jpg'),
  BannerScreen(2,'M3 Gan', '20 August 2023', 'https://culturedvultures.com/wp-content/uploads/2022/12/M3GAN.jpg'),
  BannerScreen(3,' Creed III', ' 3 March 2023 ', 'https://culturedvultures.com/wp-content/uploads/2022/12/Creed-III.jpg'),
];



class Data{
  final String imgUrl ;
  final String name;
  final String rating;
  final double starCount;
  final String description;
  final String generic;
  final String releaseDate;
  final String country;
  Data(this.imgUrl, this.name, this.rating, this.starCount,this.description,this.generic, this.releaseDate,this.country);
}
List<List<Data>> tabViewItems = [actionMovies,romanceMovies,adventureMovies,actionMovies,romanceMovies,adventureMovies];
List<String> tabTitles = ["Action","Romance","Adventure","Comedy","Super Natural","Anime"];

List<Data> popularMovies = [
  Data(
      'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/12/dungeons-dragons-honor-among-thieves-poster-1.jpg',
      'Dungeon and Dragon',
      "3.2",
      3,
    "Dungeons & Dragons is a structured yet open-ended role-playing game. It is normally played indoors with the participants seated around a tabletop. Typically, one player takes on the role of Dungeon Master (DM) while the others each control a single character, representing an individual in a fictional setting."
       , "Action,Adventure,Fiction",
    "April 31, 2021",
    "Iceland "
  ),
  Data(
      'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/2a756c80a936371f07406cc19e19206dc8ec2d3f8bceb46c03a6e5c291be3a2d._RI_V_TTW_.jpg',
      '8 and 10 tasveer',
      "4.5",
    4.5,
    "A forest ranger with the ability to visit the past by looking at photographs attempts to solve the mystery behind his father's sudden death. A forest ranger with the ability to visit the past by looking at photographs attempts to solve the mystery behind his father's sudden death."
  ,"Action,",
      "April 3, 2009",
    "India"
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BYWVmY2Y0MWItMWQ5Mi00OGExLTllNjQtMTE3ODViODM5M2E5XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg',
      "Run Lola run",
      "5.0",
      5,
    "Run Lola Run (German: Lola rennt, lit. Lola Runs) is a 1998 German experimental thriller film written and directed by Tom Tykwer"
  ,"Action,Romance",
    "August 20, 1998",
    "Germany"
  ),
  Data(
      'https://channelmyanmar.org/wp-content/uploads/2022/05/insert-3.jpg',
      "Bosch",
    '3.5',
    3.5,
    "Det. Harry Bosch tries to solve a murder case while standing trial for the murder of a serial killer. A routine traffic stop results in a lethal new threat; Bosch and J. Edgar work a promising lead in the bones case."
  ,"Adventure,Fantasy",
    "February 6, 2014",
    "USA"
  ),
  Data(
      'https://flxt.tmsimg.com/assets/p2055_p_v8_ac.jpg',
      'Legacy',
    '4.5',
    4.5,
    "He hires an assassin to take out witnesses, one a teenager in the wilderness with his dad. While on a hunting trip in the isolated wilderness, a father and his adopted teenage son are turned into the prey of unknown assailants."
  ,"Action,Adventure",
    " September 1978,",
    "United Kingdom"
  ),
  Data(
      'https://i.mydramalist.com/Xq58d_4f.jpg',
      'Synopsis of Delinquency ',
          "2.0",
      2,
    "Crime Story (formerly titled The Last Job and Reckoning) is a 2021 American crime drama thriller film written and directed by Adam Lipsius "
  ,"Romance,Action"
      ,"17 April 2020",
    "Korea"
  ),
];
List<Data> actionMovies = [
  Data(
  'https://www.scrolldroll.com/wp-content/uploads/2020/01/Captain-America-Civil-War-2016-Best-Hollywood-Action-Movies.jpg',
   'Civil War',
    "4.5",
    4.5,
    "Political involvement in the Avengers' affairs causes a rift between Captain America and Iron Man. With many people fearing the actions of super heroes, the government decides to push for the Hero Registration "
  ,"Action"
    ,"April 12, 2016 e4",
    "United States"
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_FMjpg_UX1000_.jpg',
      'Uncharted',
    '5.0',
    5,
      "Tom Holland as Nathan 'Nate' Drake: A young bartender who is recruited by Sully to find the fabled treasure of the Magellan expedition and claims to be a descendant of famed English explorer Sir Francis Drake."
  ,"Action"
    ,"February 11, 2022",
    "United Kingdom"
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BOWQ3MDg1MTgtMmI4ZC00YjU3LWIyZGEtNmRkNzI0Y2QyN2ExXkEyXkFqcGdeQXVyNzgzODI1OTE@._V1_.jpg',
      'Contractor',
    '2.5',
    2.5,
    "Berlin action elevates Chris Pine thriller. A former U.S. Special Forces sergeant is recruited into some shady black-ops mercenary work in Berlin in The Contractor, a well-made but disappointingly formulaic action film"
  ,"Action"
    ,"April 1, 2022",
    "United States"
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BNTA3N2Q0ZTAtODJjNy00MmQzLWJlMmItOGFmNDI0ODgxN2QwXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_.jpg',
      'Mobius',
    '4.5',
    4.5,
    "A Russian secret service officer in Monaco keeps an eye on Alice (Cécile de France), an undercover agent. He breaks the rules and contacts Alice during her mission, and an intense passion arises between them."
  ,"Action"
    ,"April 1, 2022",
    "United State"
  ),
  Data(
      'https://wwwimage-us.pplusstatic.com/thumbnails/photos/w370-q80/movie_asset/87/18/37/wom_salone_poster_1400x2100.jpg',
      'Wrath of Man',
    '5.0',
    5,
    "Plot. In Los Angeles, an armored truck robbery leaves two guards and a bystander dead. This sets off a chain reaction of events told in four acts. Five months after the robbery, Patrick Hill joins Fortico Security as an armored truck guard."
  ,"Action"
    ,"10 December 2021",
    "United States"
  ),
  Data(
      'https://images.bewakoof.com/utter/content/4863/content_Singham_-_Bollywood_Hindi_Action_Movies_-_Bewakoof_Blog.jpg',
      'Singham',
    '3.5',
    3.5,
    "A truly honest police officer is transferred to a town controlled by a gangster he has humiliated. The gangster believes he can use good power to bring down this officer who made him look foolish and weak."
  ,"Action"
    ,"July 22,2011",
    "India"
  ),
];
List<Data> romanceMovies = [
  Data(
      'https://trailers.apple.com/trailers/independent/waiting-for-bojangles/images/poster_2x.jpg',
      'Bojangles',
    '4.5',
    4.5,
    "It tells the story of two boundless, irrepressible lovers, Georges (Romain Duris) and Camile (Virginie Efira), and the life they share in Paris in the 1960s with their young son, Gary (Solan Machado-Graner)."
  ,"Romance"
    ,"13 October 2021",
    "France"
  ),
  Data(
      'https://www.scrolldroll.com/wp-content/uploads/2022/10/purple-hearts-english-romantic-movies-of-2022.jpg',
      'Purple Hearts',
    "5.0",
    5,
    "It is based upon the novel of the same name by Tess Wakefield. It stars Sofia Carson and Nicholas Galitzine. Its story follows an aspiring singer-songwriter named Cassie and a marine named Luke"
  ,"Romance"
    ,"July 29, 2022",
    "Korea"
  ),
  Data(
      'https://www.brides.com/thmb/19zKSeuyM20LuGSf4RVsicrJgzM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/MV5BNmE5ZmE3OGItNTdlNC00YmMxLWEzNjctYzAwOGQ5ODg0OTI0XkEyXkFqcGdeQXVyMTMxODk2OTU._V1_-4226402667ea4a0994c6d5f9bcd8ee20.jpg',
      'A Star is born',
    "1.0",
    1,
    "A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral. Seasoned musician Jackson Maine (Bradley Cooper) discovers-and falls in love with-struggling artist Ally"
  ,"Romance"
    ,"October 5, 2018",
    "United States"
  ),
  Data(
      'https://thedailyaztec.com/wp-content/uploads/2022/02/Paramount-C-2022-ViacomCBS.-All-Rights-Reserved-607x900.jpg',
      'Thin Between',
    "1.5",
    1.5,
    "A Thin Line Between Love and Hate is a 1996 American comedy thriller film. It tells the story of Darnell Wright "
  ,"Romance"
    ,"10 July 2022",
    "Canada"
  ),
  Data(
      'https://trailers.apple.com/trailers/independent/press-play/images/poster_2x.jpg',
      'Press Play',
    "5.0",
    5,
    "After a deadly accident, Laura is given the chance to save the love of her life when she discovers that their mixtape can transport her back in time"
  ,"Romance"
    ,"June 24, 2022",
    "United States"
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg',
      'Titanic',
    '5.0',
    5.0,
    "The movie is about the 1912 sinking of the RMS Titanic. It stars Kate Winslet and Leonardo DiCaprio. The two play characters who are of different social classes"
  ,"Romance",
    "December 19, 1997",
    "United States"
  ),
];
List<Data> adventureMovies = [
  Data(
      'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/adventure-movie-poster-template-design-7b13ea2ab6f64c1ec9e1bb473f345547_screen.jpg',
        "Archer",
    "3.4",
    3.4,
    "The Archer (Finnish: Jousiampuja) is a 1982 Finnish film directed by Taavi Kassila. The plot concerns a young drug dealer who is taken in and reformed by an old man who also teaches his archery. "
  ,"Adventure"
    ,"1 December 2022",
    "United States"
  ),
  Data(
      'https://www.listchallenges.com/f/items2020/dabaa020-1327-4136-bcd9-c27e8fc5fef5.jpg',
      "Indiana Jones",
    "3.5",
    3.5,
    "Indiana Jones, is hired by the U.S. Government to find the Ark of the Covenant, which is believed to still hold the ten commandments"
  ,"Adventure"
    ,"May 24,1989",
    "United States"
  ),
  Data(
      'https://i0.wp.com/moviesandmania.com/wp-content/uploads/2021/12/The-Lost-City-movie-film-action-adventure-comedy-2022-Sandra-Bullock-Channing-Tatum-poster.jpg',
      "The Lost City",
    "4.5",
    4.5,
    "It stars Sandra Bullock and Channing Tatum as a romance novelist and her cover model respectively who must escape a billionaire (Daniel Radcliffe) and find the lost ancient city described in one of her books. "
  ,"Adventure"
    ,"March 12, 2022",
    "United States "
  ),
  Data(
      'https://www.boredpanda.com/blog/wp-content/uploads/2022/05/adventure_movies_36-62739666c7993__700.jpg',
      "Multiverse of Madness",
    "5.0",
    5.0,
    "Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which thre... Read al"
  ,"Adventure"
    ,"May 2, 2022",
    "United States"
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BMjI1MDA3OTczMF5BMl5BanBnXkFtZTgwNjM0Mzc4MTI@._V1_.jpg',
      "Amazon Adventure",
    "3.5",
    3.5,
    "Amazon Adventure tells the epic, true story of Henry Bates, the son of a sock maker, who risked his life in the perilous Amazon in the 1850's and discovered the “beautiful proof” for the greatest explanation ever put forward for the development of life on earth.",
    "Adventure"
    ,"22 December 2017",
    "United Kingdom"
  ),
  Data(
      'http://innov8tiv.com/wp-content/uploads/2017/02/best-action-movies-1.jpg',
      "Star War",
    "3.5",
    3.5,
    "Set 'a long time ago' in a fictional universe where the galaxy is ruled by the tyrannical Galactic Empire, the story focuses on a group of freedom fighters known as the Rebel Alliance, who aim to destroy the Empire's newest weapon, the Death Star.",
    "Adventure"
    ,"December 13,2016",
    "United Kingdom"
  ),
];

class Actors {
  final String name;
  final String imgUrl;

  Actors(this.name, this.imgUrl);
}
List<Actors> actorList = [
  Actors('Chris Evans', 'https://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/205550/ChrisEvans-2019_r.jpg'),
  Actors('Robert Downey JR', 'https://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/179480/robert162574544.jpg'),
  Actors('Jenifer Lawrence', 'https://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/381667/JenniferLawrence-2019.jpg'),
  Actors('Scarlet Johansson', 'https://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/328538/ScarlettJohansson-2020_r.jpg'),
  Actors('Anushka Sharma', 'https://www.mrdustbin.com/wp-content/uploads/2020/03/%E0%A4%85%E0%A4%A8%E0%A5%81%E0%A4%B7%E0%A5%8D%E0%A4%95%E0%A4%BE-%E0%A4%B6%E0%A4%B0%E0%A5%8D%E0%A4%AE%E0%A4%BE-819x1024.jpg'),
  Actors('Rimi Sen', 'https://www.mrdustbin.com/wp-content/uploads/2020/05/Rimi-Sen.jpg'),
  Actors(' Hrithik Roshan', 'https://www.top10about.com/wp-content/uploads/2016/12/Hrithik-Roshan.jpg'),
  Actors('Shah Rukh Khan', 'https://www.top10about.com/wp-content/uploads/2016/12/Shah-Rukh-Khan.jpeg')
];
List<Actors> creatorList = [
  Actors('James_Cameron', 'https://static.wikia.nocookie.net/ultimatepopculture/images/7/77/James_Cameron_October_2012.jpg'),
  Actors('Thomas', 'https://media.cnn.com/api/v1/images/stellar/prod/140326204854-network-the-newsroom.jpg'),
  Actors('Steven Spielberg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Steven_Spielberg_by_Gage_Skidmore.jpg/1200px-Steven_Spielberg_by_Gage_Skidmore.jpg'),
  Actors('Michale Moore', 'https://upload.wikimedia.org/wikipedia/commons/0/05/Michael_Moore_66%C3%A8me_Festival_de_Venise_%28Mostra%29_9.jpg'),
  Actors('Hereditary', 'https://images.bauerhosting.com/legacy/empire-images/articles/5cfe66e4133d503e3a4acae6/ari-aster.jpg'),
];

