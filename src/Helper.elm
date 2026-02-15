module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 float1 float2 float3 =
    float1 + float2 + float3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



--- Exercise 1.0 Languages


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list



--- Exercise 2.0 Users


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.uType

            else
                ""
        )
        list



--- Exercise 3.0 Videogames


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 1000000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = True
      , downloads = 5000000
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list



--- Homework


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "24GB DDR5"
    , model = "IdeaPad Slim 3"
    , brand = "LENOVO"
    , screenSize = "15.6in"
    }


main : Html msg
main =
    div
        []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li []
                    [ text ("Ram: " ++ .ram myLaptop)
                    ]
                , li []
                    [ text ("Modelo: " ++ .model myLaptop)
                    ]
                , li []
                    [ text ("Marca: " ++ .brand myLaptop)
                    ]
                , li []
                    [ text ("Pulgadas: " ++ .screenSize myLaptop)
                    ]
                ]
            ]
        ]
