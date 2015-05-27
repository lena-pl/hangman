# Ruby Hangman
This is a game of hangman I wrote in Ruby during the Rails Girls Wellington weekend. We were given a challenge (to write a game of Hangman) and were expected to come up with individual solutions. I noticed that my solution was a litle different to the demonstrated version, so I thought I'd share it for others to look at!

###Features of Interest
I tackled the game from the perspective of somebody who learned JavaScript first. My version of Hangman uses arrays and indexing to take apart a random word, replace the characters with underscores, search the array for a user-submitted letter and then re-display the word with that letter showing if it is contained in the word.

The hardest part of this exercise for me, was getting the search and replace pattern just right, so that it replaced and displayed **every** instance of the submitted letter as opposed to just displaying the first one (which made the game impossible to finish).
..eg if the word is "apple", displayed as "_ _ _ _ _" and the user submits the letters "a", "p", "l", e", the first version of my game only displayed "ap_le", no matter how many times the user submitted "p". I fixed this issue by adding a nested loop to keep cycling through the word until all instances were found.

I hope you enjoy my version of this popular game/learn something cool and wish you good luck with your future Ruby adventures!
Thanks for looking!
