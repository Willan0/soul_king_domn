

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
  Data(this.imgUrl, this.name, this.rating, this.starCount);
}
List<List<Data>> tabViewItems = [actionMovies,romanceMovies,adventureMovies,actionMovies,actionMovies,romanceMovies];
List<String> tabTitles = ["Action","Romance","Adventure","Comedy","Super Natural","Anime"];

List<Data> popularMovies = [
  Data(
      'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/12/dungeons-dragons-honor-among-thieves-poster-1.jpg',
      'Dungeon and Dragon',
      "3.2",
      3
  ),
  Data(
      'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/2a756c80a936371f07406cc19e19206dc8ec2d3f8bceb46c03a6e5c291be3a2d._RI_V_TTW_.jpg',
      '8 and 10 tasveer',
      "4.5",
    4.5
  ),
  Data(
      'https://image.tmdb.org/t/p/w185/v0giIi4bTILVhNhJajet3WWY3FA.jpg',
      "Run Lola run",
      "5.0",
      5
  ),
  Data(
      'https://channelmyanmar.org/wp-content/uploads/2022/05/insert-3.jpg',
      "Bosch",
    '3.5',
    3.5
  ),
  Data(
      'https://image.tmdb.org/t/p/w185/95DJVfeQh4SUMKaq3Z09Ombtw3X.jpg',
      'Legacy',
    '4.5',
    4.5
  ),
  Data(
      'https://channelmyanmar.org/wp-content/uploads/2022/06/photo_2022-06-01_12-35-20.jpg',
      'Synopsis of Delinquency ',
          "2",
      2
  ),
];
List<Data> actionMovies = [
  Data(
  'https://www.scrolldroll.com/wp-content/uploads/2020/01/Captain-America-Civil-War-2016-Best-Hollywood-Action-Movies.jpg',
   'Civil War',
    "4.5",
    4.5
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_FMjpg_UX1000_.jpg',
      'Uncharted',
    '5.0',
    5
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BOWQ3MDg1MTgtMmI4ZC00YjU3LWIyZGEtNmRkNzI0Y2QyN2ExXkEyXkFqcGdeQXVyNzgzODI1OTE@._V1_.jpg',
      'Contractor',
    '2.5',
    2.5
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BNTA3N2Q0ZTAtODJjNy00MmQzLWJlMmItOGFmNDI0ODgxN2QwXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_.jpg',
      'Mobius',
    '4.5',
    4.5
  ),
  Data(
      'https://wwwimage-us.pplusstatic.com/thumbnails/photos/w370-q80/movie_asset/87/18/37/wom_salone_poster_1400x2100.jpg',
      'Wrath of Man',
    '5.0',
    5
  ),
  Data(
      'https://images.bewakoof.com/utter/content/4863/content_Singham_-_Bollywood_Hindi_Action_Movies_-_Bewakoof_Blog.jpg',
      'Singham',
    '3.5',
    3.5
  ),
];
List<Data> romanceMovies = [
  Data(
      'https://trailers.apple.com/trailers/independent/waiting-for-bojangles/images/poster_2x.jpg',
      'Bojangles',
    '4.5',
    4.5
  ),
  Data(
      'https://www.scrolldroll.com/wp-content/uploads/2022/10/purple-hearts-english-romantic-movies-of-2022.jpg',
      'Purple Hearts',
    "5.0",
    5
  ),
  Data(
      'https://www.brides.com/thmb/19zKSeuyM20LuGSf4RVsicrJgzM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/MV5BNmE5ZmE3OGItNTdlNC00YmMxLWEzNjctYzAwOGQ5ODg0OTI0XkEyXkFqcGdeQXVyMTMxODk2OTU._V1_-4226402667ea4a0994c6d5f9bcd8ee20.jpg',
      'A Star is born',
    "1",
    1
  ),
  Data(
      'https://thedailyaztec.com/wp-content/uploads/2022/02/Paramount-C-2022-ViacomCBS.-All-Rights-Reserved-607x900.jpg',
      'Thin Between',
    "1.5",
    1.5
  ),
  Data(
      'https://trailers.apple.com/trailers/independent/press-play/images/poster_2x.jpg',
      'Press Play',
    "5",
    5
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg',
      'Titanic',
    '5.0',
    5.0
  ),
];
List<Data> adventureMovies = [
  Data(
      'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/adventure-movie-poster-template-design-7b13ea2ab6f64c1ec9e1bb473f345547_screen.jpg',
      "Archer",
    "3.4",
    3.4
  ),
  Data(
      'https://www.listchallenges.com/f/items2020/dabaa020-1327-4136-bcd9-c27e8fc5fef5.jpg',
      "Indiana Jones",
    "3.5",
    3.5
  ),
  Data(
      'https://i0.wp.com/moviesandmania.com/wp-content/uploads/2021/12/The-Lost-City-movie-film-action-adventure-comedy-2022-Sandra-Bullock-Channing-Tatum-poster.jpg',
      "The Lost City",
    "4.5",
    4.5
  ),
  Data(
      'https://www.boredpanda.com/blog/wp-content/uploads/2022/05/adventure_movies_36-62739666c7993__700.jpg',
      "Multiverse of Madness",
    "5.0",
    5.0
  ),
  Data(
      'https://m.media-amazon.com/images/M/MV5BMjI1MDA3OTczMF5BMl5BanBnXkFtZTgwNjM0Mzc4MTI@._V1_.jpg',
      "Amazon Adventure",
    "3.5",
    3.5
  ),
  Data(
      'http://innov8tiv.com/wp-content/uploads/2017/02/best-action-movies-1.jpg',
      "Star War",
    "3.5",
    3.5
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

