# Ultimate Yomitan Audio Source

Tired of this sound?

<audio controls>
    <source src="../video/no_audio_button.mp3" type="audio/mp3">
    Your browser does not support the audio element.
</audio>

<insert video of clicking yomitan with no audio>

I have created the biggest audio source that not only has the biggest collection of human pronunciations but also uses several techniques to ensure you **always** get high quality audio for your Yomitan cards. Here is what it can do:

## Match alternative forms

A lot of words have several alternative forms. Other audio sources might not provide valid audio for these alternative forms. Take these forms of the verb "to hit" for example:

```
打つ　拍つ　搏つ　擣つ　撲つ
```
<div style="text-align: center;">
    <video width="50%" controls>
        <source src="../video/word_types.mp4" type="video/mp4">
        Your browser does not support the video element.
    </video>
</div>

All of these verbs share the same reading うつ (utsu) and have the same pitch accent pattern. Using the **Ultimate Yomitan Audio Source** you'll get the correct audio regardless of which kanji form is used.

## Cascading match priority

Let's assume you're searching for a really rare word. Existing audio sources might not have an entry for it and not give you any audio. The **Ultimate Yomitan Audio Source** will cascade through the following match priorities instead:

1.  It prioritizes matching the expression and the reading
2.  Subsequently, it will match the expression only
3.  Finally it will match the reading only
4.  Additionally you can get TTS audio (see below for more information)

<figure>
  <img src="../images/cascading_priority.png" width="600">
</figure>

This ensures you get the best possible audio for your card. The only thing you have to do is ensure the pitch accent matches, which you can do by examining the available results:

```
耆旧    
```

In this example we can observe that we have a 平板 (heiban) pitch accent pattern. This matches with the result we get:

<figure>
  <img src="../images/check_pitch.png" width="600">
</figure>

We can thus confidently use this audio for our card.

## TTS fallback with nice sounding AI voice

Often, we want to mine vocabulary in highly specific areas, such as names of celebrities, which might not have readily available audio but are relevant to us. We use a high quality AI voice TTS fallback for these cases. You can be confident you will ALWAYS get audio. Take these names for example:

```
坪内逍遥  平兼盛
```

<div style="text-align: center;">
    <video width="50%" controls>
        <source src="../video/names_tts.mp4" type="video/mp4">
        Your browser does not support the video element.
    </video>
</div>

These names are pronounced perfectly by the TTS engine.

## TTS pitch accent awareness

The TTS references known pitch accent patterns for words with multiple pitch accents. You can individually request the pitch accent pattern you want if it's available. For example:

```
毎日  標示
```

<div style="text-align: center;">
    <video width="50%" controls>
        <source src="../video/pitch_accent_tts.mp4" type="video/mp4">
        Your browser does not support the video element.
    </video>
</div>

If no pitch accent pattern is available the TTS will take a best guess.

## TTS pitch accent override (**NEW**)

Mining a word without an entry in the pitch accent database and the TTS guesses the wrong pitch accent? You can now generate every possible pitch accent variation there is including vowel variations. Let's look at a few example:

Theoretically a word read as こう could be read in 4 ways: ```コウ、コー、コ'ウ、コ'ー```

The **Ultimate Yomitan Audio Source** will now allow you to generate all of these variations letting you ensure you get correct pitch and pronunciation no matter how obscure the word is!

<figure>
  <img src="../images/kou_pitch.png" width="300">
</figure>

Let's look at one more example: 平成 (へいせい). In addition to giving you the TTS with the pitch from the database (平板 in this case), it will also let you generate every possible variation of the word.

<figure>
  <img src="../images/heisei_pitch.png" width="300">
</figure>

## Pick your sources (**NEW**)

Only want human audio and no TTS? No problem. You can now pick and choose what sources you want to include.

<figure>
  <img src="../images/query_builder.png" width="400">
</figure>


## No reading - No problem

Some dictionaries have entries without any reading at all. The **Ultimate Yomitan Audio Source** can handle these entries by making an educated guess at the reading. For example:

```
一方的に
```

This exists as an entry in 新和英 without a reading.

<figure>
  <img src="../images/ippoutekini.png" width="300">
</figure>

<div style="text-align: center;">
    <video width="50%" controls>
        <source src="../video/ippoutekini.mp4" type="video/mp4">
        Your browser does not support the video element.
    </video>
</div>


## 📦 Installation
You have two options:

1. Run it yourself following the instructions here: <https://github.com/friedrich-de/yomitan-ultimate-audio>

2. Sign up for the **1$ tier** on my [Patreon](https://www.patreon.com/c/quizmaster/membership) and get access to the hosted version of the **Ultimate Yomitan Audio Source**. This is the easiest way to get started and you don't have to worry about setting anything up.

<figure>
    <img src="../images/patreon_tier.png" width="600">
</figure>

1. Subscribe on [Patreon](https://www.patreon.com/c/quizmaster/membership) → Get your personal API key by authenticating [here](https://audiov2.animecards.site/auth/patreon).

2. Open Yomitan settings → Navigate to Audio sources → Add a new audio source with the following details:

    ```
    Type: Custom URL (JSON)
    ```

    ```
    URL: The link you were provided with after authentication
    ```

3. **Test It Out**:
    - Try looking up a word to confirm audio is working properly
    - Enjoy high-quality audio for all your cards!

[**→ SIGN UP ON PATREON NOW ←**](https://www.patreon.com/c/quizmaster/membership)

### A note on batch generation

The **Ultimate Yomitan Audio Source** can be used in batch generation scripts and does some clean-up of the input parameters that might break other audio sources -- However, if you intend to perform batch generation, it remains your responsibility to ensure the correctness of the input parameters and the resulting audio.

When using the [Generate Batch Audio Add-on for Anki](https://github.com/DillonWall/generate-batch-audio-anki-addon) add-on, set it up as follows:

<figure>
    <img src="../images/batchsetup.png" width="600">
    <figcaption>Batch Processing Setup</figcaption>
</figure>

⚠️ **Important**:

- Ensure you're putting in the correct field values:
    - `?term=` should match your word field (without any extras like fancy HTML)
    - `?reading=` should match your reading field (without any extras like fancy HTML)
- Put in a delay of `0,2` to avoid getting rate limited.
- **Warning:** As getting high fidelity AI TTS is expensive you may run into your API limit when generating a very large number of cards.


### Size Comparison

This is currently the biggest word audio database in existence. Here is an overview:

| Audio Source                                                                                                | Entries             |
| ----------------------------------------------------------------------------------------------------------- | ------------------- |
| [Yomitan Ultimate Audio Source](https://animecards.site/yomitan_audio/)                                     | 877464 + TTS Fallback |
| [Yomichan Audio Server Entries (Rust Server)](https://github.com/aramrw/yomichan_audio_server)               | 732607 (without Chinese)    |
| [Local Audio Yomichan (Anki Add-on)](https://github.com/yomidevs/local-audio-yomichan)                       | 590410              |
