//
//  Movies.swift
//  Yicheng_Li_Assignment8
//
//  Created by mac on 2021/3/1.
//

import Foundation

let  movies =
    [
        movie(name: "The Shawshank Redemption",
              poster: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0111161/?ref_=adv_li_tt"),
        
        movie(name: "The Godfather",
              poster: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0068646/?ref_=adv_li_tt"),
        
        movie(name: "The Dark Knight",
              poster: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0468569/?ref_=adv_li_tt"),
        
        movie(name: "The Godfather: Part II",
              poster: "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0071562/?ref_=adv_li_tt"),
        
        movie(name: "12 Angry Men",
              poster: "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0050083/?ref_=adv_li_tt"),
        
        movie(name: "The Lord of the Rings: The Return of the King",
              poster: "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0167260/?ref_=adv_li_tt"),
        
        movie(name: "Pulp Fiction",
              poster: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0110912/?ref_=adv_li_tt"),
        
        movie(name: "Schindler's List",
              poster: "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0108052/?ref_=adv_li_tt"),
        
        movie(name: "Inception",
              poster: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt1375666/?ref_=adv_li_tt"),
        
        movie(name: "Fight Club",
              poster: "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0137523/?ref_=adv_li_tt"),
        
        movie(name: "The Lord of the Rings: The Fellowship of the Ring",
              poster: "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX67_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0120737/?ref_=adv_li_tt"),
        
        movie(name: "Forrest Gump",
              poster: "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR0,0,67,98_AL_.jpg",
              URL: "https://www.imdb.com/title/tt0109830/?ref_=adv_li_tt")
    ];

class movie
{
    var name: String;
    var poster: String;
    var URL: String;
    
    init(name: String, poster: String, URL: String)
    {
        self.name = name;
        self.poster = poster;
        self.URL = URL;
    }
    
}
