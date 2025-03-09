# Anki Card Types for Japanese Learning

There's much debate about the best Anki card type for learning Japanese. Many options exist, but most are either useless or helpful only in specific situations (audio cards, cloze cards, simple word cards without context). This guide focuses on the card types that should form the bulk of your reviews, especially those created while consuming Japanese media ("mining"): **recognition cards** for building passive vocabulary. The two main formats are sentence cards and word cards ("anime cards"). I'll briefly introduce both and then argue why I believe anime cards are superior.

This section discusses formats, not card creation (which is covered elsewhere).

<figure>
  <img src="../images/anki_card.png" width="300"/>
</figure>

> Note that the screenshots on this page are using an outdated format. I recommend using either 
> [Lapis-modified](https://github.com/friedrich-de/lapis-modified) or [Lapis](https://github.com/donkuri/lapis) based on your preference.
> You can find a direct download [here](https://ankiweb.net/shared/info/151553357) or in the 'Releases' section.

---

## Sentence Cards

A sentence card typically includes:

- A sentence providing context for the target word.
- Reading(s) of the target word.
- Japanese or English definitions of the target word.

Ideally, it also contains:

- Word and sentence audio.
- Visual context.
- Pitch accent information.

<figure>
  <img src="../images/samplesentencecard.jpg"/>
<figcaption>An example sentence card.</figcaption>
</figure>

You read the sentence and assess whether you understood it and could read it correctly. While popular, sentence cards have weaknesses.

---

## Word Cards/Anime Cards

An anime card contains similar information, but arranged differently:

- The target word on the front.
- The reading of the target word on the back.
- Japanese or English definitions on the back.
- Word audio on the back.
- A context sentence on the back.

Ideally, it also contains:

- Sentence audio.
- Visual context (a screenshot).
- Pitch accent information.

Depending on the situation, it may include:

- A hint field on the front (more on this later).

<figure>
  <img src="../images/lapis_modified_2.png"/>
<figcaption>An example anime card (from anime).</figcaption>
</figure>

Review involves looking at the word (and hint, if present) and deciding if you know the meaning and reading. If not, you fail the card and review all the information on the back. A sample deck using this format is available here: <https://ankiweb.net/shared/info/151553357>

---

## Why Anime Cards are Better

Anime cards offer several advantages.

### 1. Faster Review Time

Because you don't need to read an entire sentence for each card, anime cards are much faster to review. This lets you dedicate more time to reviewing more cards or consuming more Japanese content.

Review data suggests anime cards can be reviewed 2 to 4 times faster than sentence cards. This is crucial, as many find Anki time-consuming and mentally draining. Saving time can boost motivation.

### 2. Sentence Cards Can Be Too Easy

Reviewing words in a familiar context doesn't accurately reflect recalling them without that context. You might recall the situation before reaching the target word, making it impossible to fail the card based on meaning due to strong context memory, especially with images on the front.

Anime cards address this by removing the context from the front, using it only as a reminder if you fail the card.

### 3. Sentence Cards Can Be Too Complex

They test too much at once. Instead of focusing on the reading and meaning of a single word, you must read a sentence, assess your reading ability, comprehension, and knowledge of each part. This can lead to decision fatigue.

Anime cards simplify the process by testing less information, making review and decision-making easier. The brain is generally equipped to recognize words out of context, and hints can be added for difficult cases (see below).

### 4. What About Success with Sentence Cards?

Sentence cards can work, but there are better options. As others say about traditional study methods:

**They learned despite it, not because of it.** Successful learners often dedicate significant time to Japanese, with Anki being just one component. We shouldn't overestimate Anki's role. Also, there's no data on how many people failed using sentence cards (see [Survivorship bias](https://en.wikipedia.org/wiki/Survivorship_bias)).

### 5. Sentences for Grammar and Word Usage?

The idea that reviewing sentences builds internal grammar and helps remember word usage is questionable. Flashcards involve recalling information on the back based on the front. **You're not memorizing the sentence itself.**

Therefore, what "input" process occurs during Anki reviews that doesn't happen during regular reading and listening? The answer is none. You're better off doing more of those activities.

If we took the idea of needing Anki to memorize expressions to its extreme, we'd have to create a card for every word usage and collocation. This is impractical and unprecedented, suggesting the initial premise is flawed.

---

## The 'Hint' Field

The hint field is an important addition to anime cards. It can be used in several ways:

### Disambiguating Readings

Use the hint field to clarify the correct reading when context doesn't suffice. Examples:

- 武士 (ぶし - もののふ)
- 海風 (かいふう - うみかぜ)
- 赤子 (せきし - あかご)
- 耳朶 (じだ - みみたぶ)
- 足跡 (そくせき - あしあと)
- 悪口 (あっこう - わるくち)

There are countless more examples.

<figure>
  <img src="../images/onyomi.jpg"/>
<figcaption>Using the hint field to disambiguate reading.</figcaption>
</figure>

### Words in Specific Contexts

Some words appear only in certain expressions. If this context is consistent, include it as a hint.

The reason not to mine the entire expression is that it might lack entries in Japanese-to-Japanese dictionaries or Yomitan audio.

<figure>
  <img src="../images/expressions.jpg"/>
<figcaption>Using the hint field to detail words appearing in certain expressions.</figcaption>
</figure>

### Onomatopoeic or Kana Words

Kanji offer a semantic hint. Without it, remembering the meaning can be harder. Including a context snippet can help:

<figure>
  <img src="../images/kanawords.jpg"/>
<figcaption>Using the hint field to disambiguate kana words.</figcaption>
</figure>

### Making Cards Easier

If kanji don't provide enough of a hint, or you've repeatedly failed a card, use the hint field to simplify the review process as a last resort.