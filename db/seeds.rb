# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = [

[ "Mark Twain", "United States",
%{
Samuel Langhorne Clemens, better known by his pen name Mark Twain, was an American author and humorist.

Grew up in Hannibal, Missouri, later the setting for Huckleberry Finn and Tom Sawyer. Apprenticed with a printer. Worked as a typesetter and contributed articles to his older brother Orion's newspaper.  Became a master riverboat pilot on the Mississippi River, before heading west to join Orion.  Was a failure at gold mining, so turned to journalism.
  
}],

[ "Ernest Hemmingway" , "United States",
%{
Ernest Miller Hemingway was an American author and journalist. His economical and understated style had a strong influence on 20th-century fiction, while his life of adventure and his public image influenced later generations. Hemingway produced most of his work between the mid-1920s and the mid-1950s, and won the Nobel Prize in Literature in 1954.

}]

]


authors.each do | name, country, bio |
   Author.create( name: name, country: country, bio: bio )
end

author_novels = {}

author_novels["Mark Twain"] = [

   [ "The Adventures of Tom Sawyer",
     1876, "http://csmt.cde.ca.gov/images/0030544610.jpg",
     "Adventures of a young boy and his friends growing up in a small Missouri town on the banks of the Mississippi River in the nineteenth century."
   ],

   [ "A Connecticut Yankee in King Arthur's Court",
     1889, "https://img1.etsystatic.com/000/0/6648867/il_fullxfull.333586431.jpg",
     "A nineteenth-century American travels back in time to sixth-century England"
   ]
]


author_novels["Ernest Hemmingway"] = [

   [ "The Old Man and the Sea",
     1952, "http://7summitsproject.com/wp-content/uploads/2015/06/old-man-and-the-sea-review.jpg",
     "Old Cuban fisherman sails further out to sea than usual in attempt to better his luck."
   ],

   [ "A Farewell to Arms",
     1929, "https://kuwwi.files.wordpress.com/2015/07/farewell-to-arms-people.jpg",
     "Young American WW1 soldier in Italy is injured and cared for by English nurse's aide."
   ],

   [ "For Whom the Bell Tolls",
     1940, "http://1.bp.blogspot.com/-hgJGEoU-cuw/Tz6t7RmvjqI/AAAAAAAACug/NFuuUzkTJc4/s1600/forwhom.jpg",
     "American joins guerrillas in the Spanish Civil war."
   ]
]

author_novels.each do | author_name, novels |
   author = Author.find_by( name: author_name )

   novels.each do | title, year, cover, plot |
      Novel.create( title:title, author_id: author.id, year: year, cover: cover, plot: plot )
   end
end
