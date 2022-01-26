# Setting up Yomichan

Yomichan is a web browser extension with a pop-up dictionary function that also lets you create Anki flashcards. Creating your own flashcards using Japanese content you are consuming is what people refer to as 'mining'. The remarkable thing about Yomichan is the amount of customizability it offers as well as the support for a variety of Japanese dictionary.

If you haven't done so already you should verify you are using a [Japanese font and not a Chinese one](https://learnjapanese.moe/font/).

<figure>
  <img src="/images/kokugo.png" width="200"/>
</figure>

---

## Install Yomichan

Chrome: <https://chrome.google.com/webstore/detail/yomichan/ogmnaimimemjmbakcfefmnahgdfhfami>

Firefox: <https://addons.mozilla.org/en-US/firefox/addon/yomichan/>

After reading the usage guide and getting familiar with basic functionality you can deactivate the 'Show usage guide on startup'.

---

## Install AnkiConnect

AnkiConnect: <https://ankiweb.net/shared/info/2055492159>

In order to let Yomichan interact with Anki you need the AnkiConnect plugin. 

Tools → Add-ons → Get Add-ons → Code: 2055492159 → OK → Restart Anki after installation

---

## Install dictionaries for Yomichan

Yomichan supports a number of different dictionaries a couple of which you can find [here](https://foosoft.net/projects/yomichan/index.html#dictionaries). I recommend you start by installing the following:

- jmdict_english.zip
- kanjidic_english.zip
- kanjium_pitch_accents.zip

<figure>
  <img src="/images/installdictionary.gif" width="300"/>
  <figcation>Importing a dictionary into Yomichan.</figcaption>
</figure>

If you want to import your own dictionaries you can use [Yomichan Import](https://foosoft.net/projects/yomichan-import/). This tool makes it easy to get an updated version of JMdict for example. 

---

### Additional dictionaries (J-J)

JMDict is a community driven project and the entries only consist of simple translations. For someone who is trying to learn Japanese that is simply too limited. Monolingual dictionaries on the other hand are written by professionals and provide detailed explanations and usage examples so it is worth trying to use them as soon as you are capable of doing so.

You can find a number of Japanese dictionaries, including all the ones mentioned here, [here](https://anacreondjt.gitlab.io/docs/dicts/).

Dictionaries I have been using and I recommend using:

J-E:

- Kenkyusha's New Japanese-English Dictionary

J-J:

- 大辞林 Daijirin
- 大辞泉 Daijisen
- 明鏡 Meikyou
- 新明解 Shinmeikai
  
Daijirin and Daijisen contain the most and the most detailed entries so it is worth importing them. They are especially useful for place names or the names of famous people as you are saving yourself a google search. 

Meikyou and Shinmeikai are written a bit simpler which makes them useful to people relatively early in their Japanese learning journey as well. You can essentially import all of them as it will not interfere with your mining.

---

### Ordering your dictionaries

To do this you need to activated advanced options:

<img src="/images/advancedoptions.jpg">

> On new Yomichan versions this is a toggle in the lower left section of the screen.

You can change the ordering of dictionaries in the pop-up window by changing the number assigned to them in the settings page. The dictionary at the top will also be the one your Anki cards use when creating cards (if you use the handlebars mentioned below). 

> On new Yomichan versions you have to press `Configure installed and enabled dictionaries…` and move the dictionaries in the correct oder with the menu buttons.

If you are at a more advanced point in your Japanese studies I recommend putting Meikyou on the top. I found it to have the best entries for importing into flashcards. Otherwise simply use JMdict. 

If you imported all dictionaries and ordered them it should look something like this:

<figure>
  <img src="/images/orderingdicts.jpg" width="500"/>
  <figcation>One possible ordering of dictionaries.</figcaption>
</figure>

The final popup might look something like this:

<figure>
  <img src="/images/yomichanentry.jpg" width="500"/>
  <figcation>Yomichan scan.</figcaption>
</figure>

---

## Additional settings

You should change the **'Maximum number of additional popups'** to something other than zero. This enables you scan words inside the Yomichan popup. Very useful when combined with J-J dictionaries.

> On new Yomichan versions you have to first tick `Allow scanning popup content`. The option is then called `Maximum number of child popups`.

![Additional results in Yomichan](images/additionalresults.jpg)

---

## Connect Yomichan and Anki

Tick 'Enable Anki integration'.

Scroll down and select the deck and model for your mining deck. Remember that if you don't have a proper deck yet you can use the [template mining deck](https://ankiweb.net/shared/info/151553357).

--- 

### Handlebars

All the default values you can use to import dictionary entries will use all entries from the dictionaries you have imported. This is not desirable and will create a big mess in your mined cards, forcing you to clean it up afterwards or deal with bad Anki cards. By editing the handlebars you can modify it to only use one entry however.

To do this you need to activate advanced options:

<img src="/images/advancedoptions.jpg">

These handlebars add the {test} field and make the pitch accent graph white. You need to use {test} instead of {glossary} or {glossary-brief} in the card format options.

<https://pastebin.com/TeSJc6ij> 


> Last Updated on 26th September 2021; Previous handlebars prevented audio from going on the site. Should another issue pop up please report it to me per email or in the Discord.

Simply replace the handlebars at the bottom with the handlebars in the pastebin.

> In new Yomichan versions you have to access the handlebars through the option `Configure Anki card templates…`.

---

### Card Configuration

Add the following fields to your mining configuration:

- front: {expression} - Target word
- Reading: {reading} - Reading of the word
- Glossary: {pitch-accent-positions} {test} - Pitch accent numerical indicator and dictionary entry
  Of course you are free to give {pitch-accent-positions} it's own field if you are not comfortable with it sharing one with the definition. In that case look into card styling and editing.
- Audio: {audio} - Word Audio
- Graph: {pitch-accent-graphs} - Pitch accent graph

The final configuration with the handlebars will look like this:

<figure>
  <img src="/images/yomichanconfig.jpg" width="800"/>
</figure>

---

## Result

You can now very easily create basic word cards by hovering over a word with Yomichan and pressing the + button. If pitch accent information is available it will also be present.



<img src="/images/miningacard.gif" style="width:60%">

Results in:

<img src="/images/wordcard.jpg" style="width:40%">