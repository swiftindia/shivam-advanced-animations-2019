//
//  Model.swift
//  CustomTransition
//
//  Created by Shivam on 24/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import Foundation


struct Avengers{
    var name: String
    var imageName: String
    var description: String
    
    static func all() -> [Avengers]{
        return [
            Avengers(name: "Iron Man", imageName: "ironMan", description: """
Iron Man is a fictional superhero appearing in American comic books published by Marvel Comics. The character was co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby. The character made his first appearance in Tales of Suspense #39 (cover dated March 1963), and received his own title in Iron Man #1 (May 1968).

A wealthy American business magnate, playboy, and ingenious scientist, Anthony Edward "Tony" Stark suffers a severe chest injury during a kidnapping. When his captors attempt to force him to build a weapon of mass destruction, he instead creates a powered suit of armor to save his life and escape captivity. Later, Stark develops his suit, adding weapons and other technological devices he designed through his company, Stark Industries. He uses the suit and successive versions to protect the world as Iron Man. Although at first concealing his true identity, Stark eventually declared that he was, in fact, Iron Man in a public announcement.

Initially, Iron Man was a vehicle for Stan Lee to explore Cold War themes, particularly the role of American technology and industry in the fight against communism. Subsequent re-imaginings of Iron Man have transitioned from Cold War motifs to contemporary matters of the time.[1]

Throughout most of the character's publication history, Iron Man has been a founding member of the superhero team the Avengers and has been featured in several incarnations of his own various comic book series. Iron Man has been adapted for several animated TV shows and films. The Marvel Cinematic Universe character was portrayed by Robert Downey Jr. in the Marvel Cinematic Universe films Iron Man (2008), The Incredible Hulk (2008) in a cameo, Iron Man 2 (2010), The Avengers (2012), Iron Man 3 (2013), Avengers: Age of Ultron (2015), Captain America: Civil War (2016), Spider-Man: Homecoming (2017), Avengers: Infinity War (2018), and Avengers: Endgame (2019).

Iron Man was ranked 12th on IGN's "Top 100 Comic Book Heroes" in 2011[2] and third in their list of "The Top 50 Avengers" in 2012.[3]
"""),
            Avengers(name: "Captain America" , imageName: "cptAmerica", description: """
    Captain America: The First Avenger is a 2011 American superhero film based on the Marvel Comics character Captain America. Produced by Marvel Studios and distributed by Paramount Pictures,[N 1] it is the fifth film in the Marvel Cinematic Universe (MCU). The film was directed by Joe Johnston, written by Christopher Markus and Stephen McFeely, and stars Chris Evans as Steve Rogers / Captain America, alongside Tommy Lee Jones, Hugo Weaving, Hayley Atwell, Sebastian Stan, Dominic Cooper, Neal McDonough, Derek Luke, and Stanley Tucci. Set predominantly during World War II, the film tells the story of Steve Rogers, a sickly man from Brooklyn who is transformed into the super-soldier Captain America and must stop the Red Skull, who intends to use an artifact called the "Tesseract" as an energy-source for world domination.

The film began as a concept in 1997 and was scheduled for distribution by Artisan Entertainment. However, a lawsuit not settled until September 2003 disrupted the project. In 2005, Marvel Studios received a loan from Merrill Lynch, and planned to finance and release it through Paramount Pictures. Directors Jon Favreau and Louis Leterrier were interested in directing the project before Johnston was approached in 2008. The principal characters were cast between March and June 2010. Production began in June 2010, and filming took place in London, Manchester, Caerwent, Liverpool, and Los Angeles.

Captain America: The First Avenger premiered at the El Capitan Theatre on July 19, 2011, and was released in the United States on July 22, 2011. The film was commercially successful, grossing over $370 million worldwide. Critics particularly praised Evans' performance, the film's depiction of its 1940s time period, and Johnston's direction. Two sequels titled Captain America: The Winter Soldier and Captain America: Civil War were released in 2014 and 2016 respectively.
"""),
            Avengers(name: "Thor", imageName: "thor", description: """
        Thor (Thor Odinson) is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name, is the Asgardian god of thunder who possesses the enchanted hammer, Mjolnir, which grants him the ability to fly and manipulate weather amongst his other superhuman attributes.

Debuting in the Silver Age of Comic Books, the character first appeared in Journey into Mystery #83 (August 1962) and was created by penciller-plotter Jack Kirby, editor-plotter Stan Lee, and scripter Larry Lieber. He has starred in several ongoing series and limited series, and is a founding member of the superhero team the Avengers, appearing in each volume of that series. The character has also appeared in associated Marvel merchandise including animated television series, movies, video games, clothing, toys and trading cards.

The character was first portrayed in live action by Eric Allan Kramer in the 1988 television movie The Incredible Hulk Returns. Chris Hemsworth portrays Thor Odinson in the Marvel Cinematic Universe films Thor (2011), The Avengers (2012), Thor: The Dark World (2013), Avengers: Age of Ultron (2015), Doctor Strange (2016) in a cameo, Thor: Ragnarok (2017), Avengers: Infinity War (2018), and Avengers: Endgame (2019). Additionally, archival footage of Hemsworth as Thor was used in the 2013 episodes "Pilot" and "The Well" of Marvel's Agents of S.H.I.E.L.D.[1][2]

Thor placed 14th on IGN's list of "Top 100 Comic Book Heroes of All Time" in 2011,[3] and first in their list of "The Top 50 Avengers" in 2012.[4]
"""),
            Avengers(name: "Black Widow", imageName: "blackWidow", description: """
    Natalia Alianovna "Natasha" Romanova[1] (Russian: Наталья Альяновна "Наташа" Романова; alias: Natasha Romanoff; Russian: Наташа Романоф), colloquial: Black Widow (Russian: Чёрная Вдова; transliterated Chyornaya Vdova) is a fictional superhero appearing in American comic books published by Marvel Comics. Created by editor and plotter Stan Lee, scripter Don Rico, and artist Don Heck, the character debuted in Tales of Suspense #52 (April 1964). The character was introduced as a Russian spy, an antagonist of the superhero Iron Man. She later defected to the United States, becoming an agent of the fictional spy agency S.H.I.E.L.D., and a member of the superhero team the Avengers.

Scarlett Johansson portrays the character in the Marvel Cinematic Universe films Iron Man 2 (2010), The Avengers (2012), Captain America: The Winter Soldier (2014), Avengers: Age of Ultron (2015), Captain America: Civil War (2016), Avengers: Infinity War (2018), Captain Marvel (2019), Avengers: Endgame (2019), and Black Widow (2020).
"""),
            Avengers(name: "SpiderMan", imageName: "spiderMan", description: """
    Spider-Man is a fictional superhero created by writer-editor Stan Lee and writer-artist Steve Ditko. He first appeared in the anthology comic book Amazing Fantasy #15 (August 1962) in the Silver Age of Comic Books. He appears in American comic books published by Marvel Comics, as well as in a number of movies, television shows, and video game adaptations set in the Marvel Universe. In the stories, Spider-Man is the alias of Peter Parker, an orphan raised by his Aunt May and Uncle Ben in New York City after his parents Richard and Mary Parker were killed in a plane crash. Lee and Ditko had the character deal with the struggles of adolescence and financial issues, and accompanied him with many supporting characters, such as J. Jonah Jameson, Harry Osborn, Max Modell, romantic interests Gwen Stacy and Mary Jane Watson, and foes such as Doctor Octopus, Green Goblin and Venom. His origin story has him acquiring spider-related abilities after a bite from a radioactive spider; these include clinging to surfaces, shooting spider-webs from wrist-mounted devices, and detecting danger with his "spider-sense".

When Spider-Man first appeared in the early 1960s, teenagers in superhero comic books were usually relegated to the role of sidekick to the protagonist. The Spider-Man series broke ground by featuring Peter Parker, a high school student from Queens behind Spider-Man's secret identity and with whose "self-obsessions with rejection, inadequacy, and loneliness" young readers could relate.[9] While Spider-Man had all the makings of a sidekick, unlike previous teen heroes such as Bucky and Robin, Spider-Man had no superhero mentor like Captain America and Batman; he thus had to learn for himself that "with great power there must also come great responsibility"—a line included in a text box in the final panel of the first Spider-Man story but later retroactively attributed to his guardian, the late Uncle Ben.

Marvel has featured Spider-Man in several comic book series, the first and longest-lasting of which is The Amazing Spider-Man. Over the years, the Peter Parker character developed from a shy, nerdy New York City high school student to troubled but outgoing college student, to married high school teacher to, in the late 2000s, a single freelance photographer. In the 2010s, he joins the Avengers, Marvel's flagship superhero team. Spider-Man's nemesis Doctor Octopus also took on the identity for a story arc spanning 2012–2014, following a body swap plot in which Peter appears to die.[10] Marvel has also published books featuring alternate versions of Spider-Man, including Spider-Man 2099, which features the adventures of Miguel O'Hara, the Spider-Man of the future; Ultimate Spider-Man, which features the adventures of a teenaged Peter Parker in an alternate universe; and Ultimate Comics Spider-Man, which depicts the teenager Miles Morales, who takes up the mantle of Spider-Man after Ultimate Peter Parker's supposed death. Miles is later brought into mainstream continuity, where he works alongside Peter.

Spider-Man is one of the most popular and commercially successful superheroes.[11] As Marvel's flagship character and company mascot, he has appeared in countless forms of media, including several animated and live action television series, syndicated newspaper comic strips, and in a series of films. The character was first portrayed in live action by Danny Seagren in Spidey Super Stories, a The Electric Company skit which ran from 1974 to 1977.[12] In films, Spider-Man has been portrayed by actors Tobey Maguire, Andrew Garfield,[13] and in the Marvel Cinematic Universe by Tom Holland. Reeve Carney starred originally as Spider-Man in the 2010 Broadway musical Spider-Man: Turn Off the Dark.[14] Spider-Man has been well received as a superhero and comic book character, and he is often ranked as one of the most popular and iconic comic book characters of all time and one of the most popular characters in all fiction.
""")
        ]
    }
}
