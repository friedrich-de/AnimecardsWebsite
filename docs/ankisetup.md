# Setting up Anki

[Anki](https://apps.ankiweb.net/) is a flashcard application widely used by Japanese learners to enhance their studies. It's particularly effective for memorizing kanji readings, making it feasible to achieve a reading proficiency surpassing that of many native speakers within 2-3 years of consistent use. However, there are correct and incorrect approaches to using Anki, and it's easy to make the experience unpleasant if done improperly. This is why many people avoid Anki altogether. It's recommended to consult the [Anki manual](https://docs.ankiweb.net/#/) whenever you're unsure about something. However, since it's a comprehensive document with more detail than a beginner might need, I'll cover the most essential settings and plugins to get you started. You can still refer to the manual to familiarize yourself with Anki's basic concepts.

I'm assuming you've already imported a pre-made deck or prepared your mining deck. If you need a sample mining deck, you can find one here: <https://ankiweb.net/shared/info/151553357>

---

## Anki Settings

Each Anki deck is assigned an options group. You can adjust the options group for each deck based on the nature of the information it contains. For a recognition-based Japanese deck, I recommend the following settings:

### Preferences

**Learn ahead limit:** The `learn ahead limit` should be greater than your longest step. I set mine to `900` minutes. This ensures that cards due within the next 15 hours will appear in your review session.

<figure>
  <img src="../images/preferences_new.png"/>
</figure>

---

### Daily Limits / New Cards

**New cards/day:** Consistently doing `20` new cards a day is a great target and will lead to significant progress over time. You can certainly do more, but be careful not to get overwhelmed. Remember that consistent input is more important than spending all day using Anki.

**Maximum reviews/day:** This setting limits the total number of reviews you can do in a day. To ensure you can review all due cards without arbitrary limitations, set this to a very high number like `9999`.

Failing to do so may severely interfere with the review process.

**Learning Steps:** This determines the number of successful passes required for a new card to graduate. I prefer three steps for new cards: **1m 5m 1h**.

This means you'll have to pass new cards three times before they move on to the next day. After the first pass, the card reappears after 5 minutes, and after the second pass, it reappears after 60 minutes. If you fail a card, it gets a 1-minute interval. You can adjust the number of steps to your preference. Note that 60 minutes doesn't require you to wait that long; if your learn-ahead limit is set correctly, the cards will simply reappear at the end of the session.

<figure>
  <img src="../images/new_cards_2.png"/>
</figure>

---

### Lapses

**Steps (in minutes):** Similar to the setting for new cards, but for lapsed cards (cards you failed). I prefer fewer steps for lapsed cards, as they require less effort (you're simply reminding yourself of something you already knew). However, I still include a 1-hour step so they reappear for a final review at the end of my session. A suitable setting would be `2m 1h`.

**Leech action:** Leeches are cards that you've failed repeatedly, reaching the leech threshold. With the card types I recommend in the [cards section](ankicards.md), leeches aren't a significant problem. I would set the action to `tag only` and continue reviewing them normally. Leeches can be problematic with cards that take longer to review, such as sentence cards.

<figure>
  <img src="../images/lapses_2.png"/>
</figure>

---

### Display order

**New/review order:** `Select before reviews`. While other settings won't significantly impact your learning, I prefer this one because the 5-minute step on new cards will cause them to reappear during the main reviews, creating a small repetition effect that I find useful.

<figure>
  <img src="../images/display_order.png"/>
</figure>

---

### Advanced & FSRS

**Anki algorithm update (10-2024):** A new SRS algorithm has been integrated into Anki, which is an objective improvement to the previous one. It also addresses the 'ease' problem of the previous algorithm. Therefore, you should enable it.

**Desired retention:** I recommend a target retention of `0.90`.

**Maximum interval:** This should be set as high as possible. Intervals cannot exceed the number of days specified here. Incorrect configuration can disrupt the SRS. A good value is `36500` (100 years).

<figure>
  <img src="../images/advanced_2.png"/>
</figure>

---

## The 'ease' problem

### 'ease' should no longer be a problem with the new FSRS algorithm. You only need this if you are not using it.

After starting with your initial ease factor, the ease factor of your cards will gradually decrease as you fail them or press 'hard'. This causes intervals to shrink and reviews to accumulate more quickly. In the default Anki configuration, the only way to counteract this is to press 'easy'. However, most people aren't accustomed to using this button, and they shouldn't have to decide whether to pass the card normally or press 'easy' every time, as it introduces unnecessary decision-making time and effort.

### The solution: [Straight Rewards](https://ankiweb.net/shared/info/957961234)

In my opinion, this is the best way to address the ease issue. This plugin increases the ease factor of your cards if you consistently pass them, making it the least intrusive option. It preserves the original purpose of ease while providing a way for it to recover once you start remembering the information.

One advantage of this option is that it also works on mobile devices without installing the plugin on them. When you sync on the device with Straight Rewards installed, it will add ease rewards to all cards reviewed before the last sync.

The settings menu is straightforward, and you can calculate your preferred settings using the formula on the AnkiWeb page. There are sensible default settings if you don't want to modify anything, but feel free to copy my settings:

<figure>
  <img src="../images/straight_rewards.png"/>
</figure>

---

## Other useful plugins



---

### [Local Audio Server for Yomichan](https://github.com/themoeway/local-audio-yomichan)

**HIGHLY RECOMMENDED** This plugin enables instant offline card creation and audio fetching from various sources. The Forvo audio in this plugin has a limited number of users, so it's recommended to run it alongside the online version of the Forvo server.

---

### [Yomichan Forvo Server](https://ankiweb.net/shared/info/580654285)

This plugin simplifies adding audio from Forvo to Anki. With this, almost all words in your deck will have audio when you mine with Yomitan/Yomichan. If you find unvoiced words, you can add them to Forvo yourself.

> Broken right now. Check the [GitHub](https://github.com/jamesnicolas/yomichan-forvo-server) for current information.

---

### [Awesome TTS](https://ankiweb.net/shared/info/1436550454)

The best plugin for text-to-speech in Anki. Unfortunately, most free options sound poor. However, the two best options (Microsoft Azure and Google Cloud TTS) are nearly free for individual users with a valid credit card.

> This was written around 2021. There are probably better services by now.

---

### [True Retention](https://ankiweb.net/shared/info/613684242)

By default, the retention rate Anki displays on your statistics screen is calculated as 100% minus the total number of lapsed cards divided by the total number of reviews. This isn't a very meaningful statistic, especially if you have more than one step.

True Retention provides a more meaningful statistics window by calculating the total retention of already due cards, rather than the 'again count'.

<figure>
  <img src="../images/trueretention.jpg"/>
</figure>

> Note that on versions after 2.1, you must hold SHIFT before clicking 'stats' to see the effects of this plugin. This will bring up the old statistics window.

---

### [Kanji Grid Kuuube](https://ankiweb.net/shared/info/1610304449)

[comment]: <> (This version of Kanji Grid is compatible with the newer Anki versions unlike the original and adds more functionality to it. We should probably replace the picture but I do not have the animecards anki deck setup like in the picture.)

Want to know how many kanji you know? This addon scans your cards for kanji and displays them in a visually appealing grid. It also offers several sorting options, such as school grades or JLPT levels. Be sure to limit the options to the deck and field you're learning from, or the results may be skewed.

<figure>
  <img src="../images/kanjigridsettings.jpg"/>
  <figcaption>Correct kanji grid filtering.</figcaption>
</figure>

<figure>
  <img src="../images/kanjigrid.jpg"/>
  <figcaption>Part of the resulting grid.</figcaption>
</figure>

---

### [Advanced Browser](https://ankiweb.net/shared/info/874215009)

This plugin greatly extends the Anki browser, allowing you to search for and display a wide range of additional parameters.

<figure>
  <img src="../images/advancedbrowser.jpg"/>
  <figcaption>A few of the new options.</figcaption>
</figure>

---

### [Kanji Colorizer](https://ankiweb.net/shared/info/1964372878)

This plugin allows you to generate stroke diagrams on your cards. I used it during the creation of the Kanken deck covered in the [writing section](writingjapanese.md).

<figure>
  <img src="../images/colorizer.jpg"/>
</figure>

---

### [AnkiDraw](https://ankiweb.net/shared/info/1868980340)

Lets you draw inside Anki. Useful if you want to write Kanji and have a digital tablet.

<figure>
  <img src="https://github.com/Rytisgit/Anki-StylusDraw/raw/master/docs/kanjiNewUI.gif"/>
</figure>

### [Opening the same window multiple time](https://ankiweb.net/shared/info/354407385)

This allows you to open multiple editing and card browser windows at the same time.
Very good if you want to do some advanced card editing.

## Suspending ("Retire") cards with a big interval

There are some addons for this purpose like the [Migaku Retirement Addon](https://ankiweb.net/shared/info/1666520655) but
I have not made good experiences with these myself. I've also heard negative things from others. These addons are prone
to being broken by updates or having bugs that potentially break your collection. Luckily we do not need to use an addon
to retire cards that have a large enough interval and it is always better to use core Anki features rather than addons
where possible. The only thing we need is the card browser and the correct search parameters!

1. Open the card browser and click on the deck you want to apply the filter on.
2. Add the parameter `-is:suspended` to filter all cards currently suspended.
3. Now add the parameter `prop:ivl>=120`. This will filter all cards with an interval greater or equal to 120 days.
4. Save this search by right-clicking `Saved searches` and clicking `Save current search`.

You can now safely suspend every single card you see in this saved search. Of course you are free to adjust the interval
to something greater than 120 days (like 1 year if you prefer). You just have to remember to go into the card browser
and suspend the cards every few months.

<figure>
  <img src="../images/retire.png"/>
  <figcaption>Retiring cards with the card browser search.</figcaption>
</figure>

---

## A note on over-tuning Anki or your Anki cards

It's very easy to get lost in trying to create the ultimate Anki note with automatically generated furigana and
dictionary look-ups on hover and other amazing features. While those are certainly cool technologically speaking,
they pose a real problem to actually learning Japanese. Not only are they prone to breaking or not working cross-device,
they clearly encourage the wrong mindset. You do not need to insert furigana and hover-dictionaries into Anki, because all
the information you should be aiming to remember is on the flash card already. If you don't know a word inside a sentence,
you simply create another card for that word. The cards should be as simple as possible and the review process as
fast as possible. The sentences should merely serve as a reminder of the context the word was used it, not as a target
of study while you are trying to remember something entirely else.

Feel free to install those things anyway of course, but my opinion is that they are completely redundant. I recommend
using merely [this deck template](https://ankiweb.net/shared/info/151553357) and the settings I propose.