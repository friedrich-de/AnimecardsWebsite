# Setting up Yomichan

Yomichan is a web browser extension with a pop-up dictionary function that also lets you create Anki flashcards.
Creating your own flashcards using Japanese content you are consuming is what people refer to as 'mining'. The
remarkable thing about Yomichan is the amount of customizability it offers as well as the support for a variety of
Japanese dictionary.

If you haven't done, so already you should verify you are using
a [Japanese font and not a Chinese one](https://learnjapanese.moe/font/).

<figure>
  <img src="/images/kokugo.png" width="200"/>
</figure>

---

## Install Yomichan

Chrome: <https://chrome.google.com/webstore/detail/yomichan/ogmnaimimemjmbakcfefmnahgdfhfami>

Firefox: <https://addons.mozilla.org/en-US/firefox/addon/yomichan/>

After reading the usage guide and getting familiar with basic functionality you can deactivate the 'Show usage guide on
startup'.

---

## Install AnkiConnect

AnkiConnect: <https://ankiweb.net/shared/info/2055492159>

In order to let Yomichan interact with Anki you need the AnkiConnect plugin.

Tools → Add-ons → Get Add-ons → Code: 2055492159 → OK → Restart Anki after installation

---

## Install dictionaries for Yomichan

Yomichan supports a number of different dictionaries a couple of which you can
find [here](https://foosoft.net/projects/yomichan/index.html#dictionaries). I recommend you start by installing the
following:

- jmdict_english.zip
- kanjidic_english.zip
- kanjium_pitch_accents.zip

<figure>
  <img src="/images/installdictionary.gif" width="300"/>
  <figcaption>Importing a dictionary into Yomichan.</figcaption>
</figure>

If you want to import your own dictionaries you can
use [Yomichan Import](https://foosoft.net/projects/yomichan-import/). This tool makes it easy to get an updated version
of JMdict for example.

---

### Additional dictionaries (J-J)

JMDict is a community driven project and the entries only consist of simple translations. For someone who is trying to
learn Japanese that is simply too limited. Monolingual dictionaries on the other hand are written by professionals and
provide detailed explanations and usage examples, so it is worth trying to use them as soon as you are capable of doing
so.

You can find a number of Japanese dictionaries, including all the ones mentioned here,
[here](https://anacreondjt.gitlab.io/docs/dicts/). For more dictionaries and other resources also check out the [TMW resources
page](https://learnjapanese.moe/resources/).

Dictionaries I have been using and I recommend using:

J-E:

- Kenkyusha's New Japanese-English Dictionary

J-J:

- 大辞林 Daijirin
- 大辞泉 Daijisen
- 明鏡 Meikyou
- 新明解 Shinmeikai

Daijirin and Daijisen contain the most and the most detailed entries, so it is worth importing them. They are especially
useful for place names or the names of famous people as you are saving yourself a Google search.

Meikyou and Shinmeikai are written a bit simpler which makes them useful to people relatively early in their Japanese
learning journey as well. You can essentially import all of them as it will not interfere with your mining.

---

### Ordering your dictionaries

You can change the ordering of dictionaries in the pop-up window by changing the number assigned to them in the settings
page. The dictionary at the top will also be the one your Anki cards use when creating cards.

Press `Configure installed and enabled dictionaries…` and move the dictionaries
in the correct oder with the menu buttons.

If you are at a more advanced point in your Japanese studies I recommend putting Meikyou on the top. I found it to have
the best entries for importing into flashcards. Otherwise, simply use JMdict.

If you imported all dictionaries and ordered them it should look something like this:

<figure>
  <img src="/images/dictionary_order.png" width="500"/>
  <figcaption>One possible ordering of dictionaries.</figcaption>
</figure>

The final popup might look something like this:

<figure>
  <img src="/images/yomichanentry.jpg" width="500"/>
  <figcaption>Yomichan scan.</figcaption>
</figure>

---

## Additional settings

You should change the `Maximum number of child popups` to something other than zero. This enables you scan
words inside the Yomichan popup. Very useful when combined with J-J dictionaries. You have to tick 
`Allow scanning popup content` first to see this option.

![Additional results in Yomichan](images/additionalresults.jpg)

---

## Connect Yomichan and Anki

Tick 'Enable Anki integration'.

Scroll down and select the deck and model for your mining deck. Remember that if you don't have a proper deck, yet you
can use the [template mining deck](https://ankiweb.net/shared/info/151553357).

If you are using the template, press `Configure Anki card format...` and fill the fields according to the 
[GitHub page](https://github.com/friedrich-de/Basic-Mining-Deck).

--- 

### Handlebars

Handlebars no longer have to be edited with the new card format.

---

### Card Configuration

See [GitHub page](https://github.com/friedrich-de/Basic-Mining-Deck) for the recommended Yomichan fields/templates.

---

## Result

You can now very easily create basic word cards by hovering over a word with Yomichan and pressing the + button. If
pitch accent information is available it will also be present.



<img src="/images/miningacard.gif" style="width:60%">

Results in:

<img src="/images/wordcard.jpg" style="width:40%">