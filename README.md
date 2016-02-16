## Codebreakers

We're going to be writing a program to do some basic text encryption through everyone's friend, the command line.

### Iteration 1 - Initials

We're first going to start with an exercise to figure out how we can get code entered on the command line.

Create a file called `initials.rb`.

When we run `initials.rb` we want to enter in a name afterwards, and we want this program to return the initals of the name afterwards.

The interaction model will look a little something like this:

```
$ ruby initials.rb Taylor Swift

TS

$ ruby initials.rb Carly Rae Jeppsen

CRJ

```

You can feel free to make some assumptions here. For example, you can assume that each person will have a space between each of their names and you won't have to deal with any punctuation. 

Rest assured that Conan O'Brien (Ew.) or Joseph Gordon-Levitt or Julia Louis-Dreyfus will not be using your program.


### Iteration 2 - Hail, Caesar!

The Caesar cipher was named after Julius Caesar, who used it to protect messages.

It's named this because it is the first recorded use in history of this sort of encryption.

If you want to read more about the Caesar Cipher, you can do so [here](https://en.wikipedia.org/wiki/Caesar_cipher).

The Caesar cipher is encrypts messages by rotating each letter by a set number of positions, known as the key,  and wrapping from Z back to A if needed.

For example, this is what we would have if we were to use the key 13:

```
Be sure to drink your Ovaltine!

Or fher gb qevax lbhe Binygvar!
```

Let's look at the first letter of the plaintext, `B`. The cyphertext for `B` is `O`, which is 13 characters away from `B`. Go ahead and count if you don't believe me, I'll wait.

Now, when it comes to your code, we're looking for this sort of interaction model:

```
$ ruby caesar.rb 10 Josh Mejia is secretly one half of Daft Punk.

Tycr Wotsk sc combodvi yxo rkvp yp Nkpd Zexu.

```

We run the program by typing in ruby and the name of your file, then we give it the key, and then our plaintext. 
