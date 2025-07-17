/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- All INSERT statements should be in this file.

INSERT INTO categories (name) VALUES 
('Dystopian'), -- 1
('Literary Fiction'), -- 2
('Coming-of-age'),-- 3
('Psychological'), -- 4
('Satirical'), -- 5
('Adventure'), -- 6
('Magical Realism'), -- 7
('Southern Gothic'), -- 8
('Romance'), -- 9
('Historical Fiction'), -- 10
('Modernist Fiction'), -- 11
('Epic Poetry'), -- 12
('Gothic Fiction'), -- 13
('Philisophical Fiction'), -- 14
('Realist Fiction'), -- 15
('Social Protest Fiction'), -- 16
('Gothic Science Fiction'), -- 17
('Gothic Horror'), -- 18
('Bildungsroman'), -- 19
('Science Fiction'), -- 20
('Existential Fiction'), -- 21
('Absurdist Fiction'), -- 22
('Historical Romance'), -- 23
('Fantasy'), -- 24
('Allegorical Fiction'), -- 25
('Semi-Autobiographical'), -- 26
('African-American Fiction'), -- 27
('Social Realism'), -- 28
('Victorian Fiction'), -- 29
('Narrative Poetry'), -- 30
('Postmodern Fiction'), -- 31
('Beat Literature'), -- 32
('Postcolonial Fiction'), -- 33
('Post-apartheid'), -- 34
('Post-apacalyptic'), -- 35
('Historical Mystery'), -- 36
('Comic'), -- 37
('Psychological Thriller'), -- 38
('Multigenerational Fiction'), -- 39
('Graphic Memoir'), -- 40
('Contemporary Fiction'), -- 41
('Feminist'), -- 42
('Postmodern Horror'), -- 43
('Childrens Fantasy'), -- 44
('Philisophical Novella'), -- 45
('Animal Fantasy'), -- 46
('Political Fiction'), -- 47
('Courtly Romance'), -- 48
('Philisophical Poetry'); -- 49

GO

INSERT INTO authors (name, birth_year) VALUES 
('George Orwell', 1903), --1
('F.Scott Fitzgerald', 1896), --2
('J.D. Salinger', 1919),--3
('Fyoder Dostoevsky', 1821),--4
('Joseph Heller', 1923),--5
('Herman Melville', 1819),--6
('Gabriel Garcia Marquez', 1927),--7
('Harper Lee', 1926),--8
('Vladimir Nabokov', 1899),--9
('Jane Austen', 1775),--10
('Leo Tolstoy', 1828),--11
('James Joyce', 1882),--12
('Homer', NULL),--13
('Aldous Huxley', 1894),--14
('Miguel de Cervantes', 1547),--15
('Dante Alighieri', 1265),--16
('Charlotte Bronte', 1816),--17
('Gustave Flaubert', 1821),--18
('Emily Bronte', 1818),--19
('John Steinbeck', 1902),--20
('Mary Shelley', 1797),--21
('Joseph Conrad', 1857),--22
('Victor Hugo', 1802),--23
('Bram Stoker', 1847),--24
('Charles Dickens', 1812),--25
('William Faulkner', 1897),--26
('Kurt Vonnegut', 1922),--27
('Ray Bradbury', 1920),--28
('Albert Camus', 1913),--29
('Alexandre Dumas', 1802),--30
('Ralph Ellison', 1914),--31
('Toni Morrison', 1931),--32
('Franz Kafka', 1883),--33
('Robert Louis Stevenson', 1850),--34
('Margaret Mitchell', 1900),--35
('J.R.R. Tolkien', 1892),--36
('William Golding', 1911),--37
('Lord Byron', 1788),--38
('Jack London', 1876),--39
('Nathaniel Hawthorne', 1804),--40
('Upton Sinclair', 1878),--41
('Oscar Wilde', 1854),--42
('Ernest Hemingway', 1899),--43
('Sylvia Plath', 1932),--44
('Ayn Rand', 1905),--45
('Anthony Burgess', 1917),--46
('Mikhail Bulgakov', 1891),--47
('Zora Neale Hurston', 1891),--48
('Richard Wright', 1908),--49
('George Eliot', 1819),--50
('Virginia Woolf', 1882),--51
('Hermann Hesse', 1877),--52
('Thomas Mann', 1875),--53
('Geoffrey Chaucer', 1343),--54
('Barbara Kingsolver', 1955),--55
('Don DeLillo', 1936),--56
('Jack Kerouac', 1922),--57
('Chinua Achebe', 1930),--58
('Italo Calvino', 1923),--59
('Kazuo Ishiguro', 1954),--60
('Margaret Atwood', 1939),--61
('Daphne du Maurier', 1907),--62
('Paulo Coelho', 1947),--63
('Haruki Murakami', 1949),--64
('Yann Martel', 1963),--65
('J.M. Coetzee', 1940),--66
('Cormac McCarthy', 1933),--67
('Umberto Eco', 1932),--68
('John Kennedy Toole', 1937),--69
('Jose Saramago', 1922),--70
('Donna Tartt', 1963),--71
('Salman Rushdie', 1947),--72
('Junot Diaz', 1968),--73
('Marjane Satrapi', 1969),--74
('Khaled Hosseini', 1965),--75
('Arundhati Roy', 1961),--76
('Chima Manda Ngozi Adichie', 1977),--77
('Yevgeny Zamyatin', 1884),--78
('Ursula K. Le Guin', 1929),--79
('Milan Kundera', 1929),--80
('Markus Zusak', 1975),--81
('Doris Lessing', 1919),--82
('Alice Walker', 1944),--83
('Mark Z. Danielewski', 1966),--84
('Astrid Lindgren', 1907),--85
('Antoine de Saint-Exupery', 1900),--86
('Richard Adams', 1920),--87
('Aleksandr Solzhenitsyn', 1918),--88
('Murasaki Shikibu', 973),--89
('Kahlil Gibran', 1883);--90

GO

INSERT INTO books (title, publi_year, cat_id) VALUES 
('1984',1949, 1),--1
('The Great Gatsby',1925, 2),--2
('The Catcher in the Rye',1951, 3),--3
('Crime and Punishment',1866, 4),--4
('Catch-22',1961, 5),--5
('Moby-Dick',1851, 6),--6
('One Hundred Years of Solitude',1967, 7),--7
('To Kill a Mockingbird',1960, 8),--8
('Lolita',1955, 2),--9
('Pride and Prejudice',1813, 9),--10
('War and Peace',1869, 10),--11
('Ulysses',1922, 11),--12
('The Odyssey',NULL, 12),--13
('Brave New World',1932, 1),--14
('Don Quixote',1605, 5),--15
('The Divine Comedy',1320, 12),--16
('Jane Eyre',1847, 13),--17
('The Brothers Karamazov',1880, 14),--18
('Madame Bovary',1856, 15),--19
('Wuthering Heights',1847, 13),--20
('Anna Karenina', 1877, 15),--21
('The Grapes of Wrath',1939, 16),--22
('Frankenstein',1818, 17),--23
('Heart of Darkness',1899, 4),--24
('The Iliad',NULL, 12),--25
('Les Misérables',1862, 10),--26
('Dracula',1897, 18),--27
('Great Expectations',1861, 19),--28
('The Sound and the Fury',1929, 11),--29
('Slaughterhouse-Five',1969, 20),--30
('Fahrenheit 451',1953, 1),--31
('The Stranger',1942, 21),--32
('The Count of Monte Cristo',1844, 6),--33
('A Tale of Two Cities',1859, 10),--34
('Invisible Man',1952, 16),--35
('Beloved',1987, 10),--36
('The Metamorphosis',1925, 22),--37
('Dr. Jekyll and Mr. Hyde',1886, 13),--38
('Gone with the Wind',1936, 23),--39
('The Hobbit',1937, 24),--40
('Lord of the Flies',1954, 25),--41
('Don Juan',1819, 12),--42
('The Call of the Wild',1903, 6),--43
('The Scarlet Letter',1850, 10),--44
('The Jungle',1906, 16),--45
('The Picture of Dorian Gray',1890, 13),--46
('The Old Man and the Sea',1952, 2),--47
('The Bell Jar',1963, 26),--48
('Atlas Shrugged',1957, 14),--49
('The Trail',1925, 21),--50
('A Clockwork Orange',1962, 1),--51
('The Sun Also Rises',1926, 11),--52
('The Master and Margarita',1967, 7),--53
('Their Eyes Were Watching God',1937, 27),--54
('Native Son',1940, 28),--55
('Middlemarch',1871, 29),--56
('Mrs. Dalloway',1925, 11),--57
('Siddhartha',1922, 14),--58
('The Magic Mountain',1924, 14),--59
('A Portrait of the Artist as a Young Man',1916, 11),--60
('The Canterbury Tales',1400, 30),--61
('The Poisonwood Bible',1998, 10),--62
('White Noise',1985, 31),--63
('On the Road',1957, 32),--64
('Things Fall Apart',1958, 33),--65
('If on a Winters Night a Traveler',1979, 31),--66
('The Remains of the Day',1989, 2),--67
('The Handmaids Tale',1985, 1),--68
('Rebecca',1938, 13),--69
('The Alchemist',1988, 14),--70
('The Wind-Up Bird Chronicle',1994, 7),--71
('Life of Pi',2001, 6),--72
('Disgrace',1999, 34),--73
('The Road',2006, 35),--74
('The Name of the Rose',1980, 36),--75
('Never Let Me Go',2005, 1),--76
('A Confederacy of Dunces',1980, 37),--77
('Blindness',1995, 25),--78
('The Secret History',1992, 4),--79
('Norwegian Wood',1987, 3),--80
('Midnights Children',1981, 10),--81
('The Brief Wonderous Life of Oscar Wao',2007, 39),--82
('Persepolis',2000, 40),--83
('The Kite Runner',2003, 10),--84
('The God of Small Things',1997, 33),--85
('Americanah',2013, 41),--86
('We',1924, 1),--87
('The Left Hand of Darkness',1969, 20),--88
('The Unbearable Lightness of Being',1984, 14),--89
('The Book Thief',2005, 10),--90
('The Golden Notebook',1962, 42),--91
('The Color Purple',1982, 27),--92
('House of Leaves',2000, 31),--93
('The Brothers Lionheart',1973, 44),--94
('The Little Prince',1943, 14),--95
('Watership Down',1972, 46),--96
('One Day in the Life of Ivan Denisovich',1962, 47),--97
('The Tale of Genji',1010, 48),--98
('The Prophet',1923, 49);--99

GO

INSERT INTO book_authors (book_id, auth_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 4),
(19, 18),
(20, 19),
(21, 11),
(22, 20),
(23, 21),
(24, 22),
(25, 13),
(26, 23),
(27, 24),
(28, 25),
(29, 26),
(30, 27),
(31, 28),
(32, 29),
(33, 30),
(34, 25),
(35, 31),
(36, 32),
(37, 33),
(38, 34),
(39, 35),
(40, 36),
(41, 37),
(42, 38),
(43, 39),
(44, 40),
(45, 41),
(46, 42),
(47, 43),
(48, 44),
(49, 45),
(50, 33),
(51, 46),
(52, 43),
(53, 47),
(54, 48),
(55, 49),
(56, 50),
(57, 51),
(58, 52),
(59, 53),
(60, 12),
(61, 54),
(62, 55),
(63, 56),
(64, 57),
(65, 58),
(66, 59),
(67, 60),
(68, 61),
(69, 62),
(70, 63),
(71, 64),
(72, 65),
(73, 66),
(74, 67),
(75, 68),
(76, 60),
(77, 69),
(78, 70),
(79, 71),
(80, 64),
(81, 72),
(82, 73),
(83, 74),
(84, 75),
(85, 76),
(86, 77),
(87, 78),
(88, 79),
(89, 80),
(90, 81),
(91, 82),
(92, 83),
(93, 84),
(94, 85),
(95, 86),
(96, 87),
(97, 88),
(98, 89),
(99, 90);

GO

INSERT INTO members (name, email, join_date) VALUES 
('Alice Smith', 'alice@exmaple.com', '2023-01-15'), -- 1
('Bob Johnson', 'bob@example.com', '2023-02-20'), -- 2
('Charlie Brown', 'charlie@example.com', '2023-03-10'), -- 3
('Diana Prince', 'diana@example.com', '2023-04-05'), -- 4
('Ethan Hunt', 'ethan@example.com', '2023-05-12'), -- 5
('Fiona Gallagher', 'fiona@example.com', '2023-06-18'), -- 6
('George Costanza', 'george@example.com', '2023-07-22'), -- 7
('Hannah Baker', 'hannah@example.com', '2023-08-30'), -- 8
('Ian Malcolm', 'ian@example.com', '2023-09-15'), -- 9
('Julia Child', 'julia@example.com', '2023-10-01'), -- 10
('Kevin Hart', 'kevin@example.com', '2023-11-10'), -- 11
('Laura Croft', 'laura@example.com', '2023-12-05'), -- 12
('Mike Wazowski', 'mike@example.com', '2023-12-20'), -- 13
('Nina Simone', 'nina@example.com', '2023-12-25'), -- 14
('Oscar Wilde', 'oscar@example.com', '2023-12-30'), -- 15
('Paula Abdul', 'paula@example.com', '2023-12-31'), -- 16
('Quentin Tarantino', 'quentin@example.com', '2023-12-31'), -- 17
('Rachel Green', 'rachel@example.com', '2023-12-31'), -- 18
('Sam Winchester', 'sam@example.com', '2023-12-31'), -- 19
('Tina Fey', 'tina@example.com', '2023-12-31'), -- 20
('Ursula K. Le Guin', 'ursula@example.com', '2023-12-31'), -- 21
('Victor Frankenstein', 'victor@example.com', '2023-12-31'), -- 22
('Winston Churchill', 'winston@example.com', '2023-12-31'), -- 23
('Xena Warrior Princess', 'xena@example.com', '2023-12-31'), -- 24
('Yara Greyjoy', 'yara@example.com', '2023-12-31'), -- 25
('Zach Galifianakis', 'zach@example.com', '2023-12-31'); -- 26

GO

INSERT INTO loans (book_id, member_id, loan_date, due_date, return_date) VALUES 
(34, 1, '2023-01-20', '2023-02-20', '2023-02-20'), -- 1
(22, 2, '2023-02-25', '2023-03-25', '2023-02-26'), -- 2
(67, 3, '2023-03-15', '2023-04-15', '2023-05-17'), -- 3
(82, 4, '2023-04-10', '2023-05-10', '2023-05-10'), -- 4
(1, 5, '2023-05-05', '2023-06-05', '2023-06-04'), -- 5
(6, 6, '2023-06-20', '2023-07-20', '2023-07-01'), -- 6
(7, 7, '2023-07-25', '2023-08-25', '2023-08-25'), -- 7
(77, 8, '2023-08-15', '2023-09-15', '2023-08-15'), -- 8
(29, 9, '2023-09-10', '2023-10-10', '2023-10-15'), -- 9
(35, 10, '2023-10-05', '2023-11-05', '2023-11-06'), -- 10
(67, 11, '2023-11-20', '2023-12-20', '2023-11-28'), -- 11
(88, 12, '2023-12-01', '2024-01-01', NULL), -- 12
(10, 13, '2024-01-05', '2024-02-05', NULL), -- 13
(18, 14, '2024-02-10', '2024-03-10', NULL), -- 14
(15, 15, '2024-03-15', '2024-04-15', NULL); -- 15