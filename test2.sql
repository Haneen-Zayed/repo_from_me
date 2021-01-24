

create table Books(
  ISBN varchar(13) Primary key,
    Title varchar(70) not null,
      Description varchar(100)
      );
create table BookReviews(
  ReviewId int primary key auto_increment,
    Review varchar(100),
      ISBN varchar(13),
        foreign key(ISBN) References Books(ISBN)
        );
INSERT INTO Books(ISBN,Title,Description) Values
('7573490027361','C# for dummies','Great beginner book to learn c#'),
('3778800772637', 'PHP starter guide', 'Start learning web dev with this book'),
('6940829245318','Advanced MYSQL guide','You have to keep studying MYSQL and sql on your own to get better'),
('9381105609709','Web Apis with Laravel' , 'Laravel is a great web framework to learn to kickstart your career'),
('9869484165850','Backend development in 2020', 'Many changes have happened to web development in 2020, get up to speed here');


 INSERT INTO BookReviews(Review,ISBN) Values
  ('Really improved my c# skills','7573490027361'),
   ('Php is a great language and I learned a lot','3778800772637'),
    ("Yes, I know I shouldn't rely solely on a specific course" ,'6940829245318');

describe Books;
