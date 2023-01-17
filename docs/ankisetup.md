# Setting up Anki

[Anki](<https://apps.ankiweb.net/>) is a flashcard application many Japanese learners use to boost their learning. It is
most useful for remembering kanji readings and makes achieving a kanji reading ability that exceeds that of most native
speakers feasible in 2-3 years of active usage. There is however correct and wrong ways to use it and it is very easy to
make using Anki a living hell for yourself if you do it wrong, which is why so many people swear off doing Anki
entirely. It is recommended that you use the [Anki manual](https://docs.ankiweb.net/#/) whenever you are confused by
anything, but as it is a huge document and going into way more detail than somebody just starting out may need, I will
be going over the most useful settings and plugins that you should know before you start. Nevertheless you can read it
to gain familiarity with the basic concepts of Anki.

I'm assuming you already imported a pre-made deck or prepared your mining deck. If you need a sample mining deck you can
find one here: <https://ankiweb.net/shared/info/151553357>

---

## Anki settings

Each Anki deck has an options group assigned to it. You can check the options group for each deck based on the nature of
the information in it. For a recognition based Japanese deck I recommend changing the follow settings.

### Preferences

**Learn ahead limit:** The `learn ahead limit` should be larger than your largest step. I simply set mine to `900` minutes
.

**Show new cards before reviews:** Selecting another setting won't make or break anything, but I prefer this one as it
means the 5 minute step on new cards will make it come up again during my main reviews. This causes a small repetition
effect which I think is useful.

<figure>
  <img src="/images/preferences.png"/>
</figure>

---

### Daily Limits / New Cards

**New cards/day:** If you can do `20` new cards a day consistently that is a great number and will lead to good gains
over a long time. Of course, you can do more but be careful about not getting overwhelmed by cards and remember that
getting input is more important than using Anki all day.

**Maximum reviews/day:** This affects the amount of total reviews you can do in a day. As you want to do all reviews due
without arbitrarily being limited by this number you should set it to something extremely high like `9999`.

Not doing this may severely interfere with the review process.

**Learning Steps:** This affects the amount of steps (successful passes) a new card has to go through before it
graduates. I prefer 3 steps for new cards: **1m 5m 1h**

That way you will have to pass new cards three times before they move on to the next day. They get a 5 minute interval
after you pass them once, and a 60-minute interval if you pass them again and at the end of the review sessions you pass
them a final time. If you fail a card it gets a 1-minute interval. Of course, you can set fewer steps if that is your
preference. Note that 60 minutes doesn't mean you have to wait that amount of time. If you set up your learn ahead limit
correctly, the cards merely appear at the end of the session.

<figure>
  <img src="/images/new_cards.png"/>
</figure>

---

### Lapses

**Steps (in minutes):** Same as the setting for new cards except for lapsed cards (cards that you failed). I prefer
fewer steps for those as they are less effort than new cards (you are merely reminding yourself of something you already
knew), but I still have put in a 1-hour step, so they end up for a final review at the end of my session so the 
setting would be `2m 1h`.

**Leech action:** Leeches are cards that you have failed so many times, the amount of lapses has reached the leech
threshold. For the type of cards I recommend in the [cards section](ankicards.md) combined with the usage of one of the
ease plugins below, leeches are not a real problem. I would simply set it to `tag only `and keep reviewing them
normally. Leeches may be a problem with cards that take longer to review, like sentence cards, and their interval may
only grow very slowly if you don't fix the ease function in any way.

<figure>
  <img src="/images/lapses.png"/>
</figure>

---

### Advanced

**Maximum interval:** This should be as big as possible. Intervals can never grow beyond the number of days specified
here. This can break the SRS if not correctly configured and I have seen it happen. `36500` or in other words 10 years
is a good value.

**Starting ease:** How big of an ease your new cards start with, or in other words with what multiplier the intervals
increase. The default value of `2.50` is fine, but I prefer that intervals for cards I rarely fail grow faster, so I
set it to `3.00`. See below for more info on ease.

**Interval modifier:** This is a plain multiplier on the interval length in the spaced repetition system. You can
initially leave this at `1.00` but if you consistently have high retention and want to do fewer reviews you can
increase it as you start feeling comfortable with your reviews.

**New interval:** Determines how big the new interval is after you fail a card. The default setting of `0.10` is a bit
low. That would cause your cards to revert to 10% of the interval they had before lapsing them. A more sensible 
setting is at least `0.25`. If you fail a card with an interval of 100 days it will go back to 25 days.

<figure>
  <img src="/images/advanced.png"/>
</figure>

---

## The 'ease' problem

After starting at whatever ease factor that you set, the ease factor of your cards will continually decrease as
you fail them or press 'hard' causing the intervals to grow smaller and smaller and reviews to pile up more quickly. The
only thing you can do about this, in the default configuration of Anki, is to press 'easy'. Most people are however not
used to pressing this button, and they shouldn't have to think about whether they want to pass the card normally or
press 'easy' every time either, as it introduces unnecessary decision thinking time and effort.

### The solution

There are several solutions to this problem, three of which I will detail now:

#### 1. [Straight Rewards](https://ankiweb.net/shared/info/957961234)

This is in my opinion the best way to solve this issue. This plugin will increase the ease factor of your cards if you
continuously manage to pass them, making it by far the least intrusive option listed here, keeping intact the original
purpose of ease while also providing a way for ease to recover once you start remembering the relevant information.

One of the advantages of this option is that it also works on mobile devices without installing the plugin on them. When
you sync on the device that has straight rewards installed, it will add ease rewards to all cards that you reviewed
before the last sync.

The setting menu is very easy to understand, and you can calculate settings you prefer using the formula on the Ankiweb
page. There is already sensible default settings if you don't want to modify anything, but feel free to copy my settings: 

<figure>
  <img src="/images/straight_rewards.png"/>
</figure>
<s>

#### 2. [Auto Ease Factor](https://ankiweb.net/shared/info/1672712021)

Another solution with a lot of people reporting positive results. For me personally this solution is too intrusive and
messes with ease and intervals in a way I don't understand. If you feel brave however this is another valid option.

#### 3. Set the ease factor to a constant 250%

The idea for a constant ease factor was created by the Mass Immersion Approach (Now "Refold") founders. You can achieve
this without installing plugins by simply setting the starting ease to 131% and the interval modifier to 191%.

In my opinion this is the least optimal approach because it completely eliminates ease (which is not a bad thing) as a
factor in your interval time. Each information has an inherent difficult rating associated with it, so it makes sense to
see harder information more often until you remember it consistently. The important thing however is for the ease factor
to go back up again, so you do not end up in 'ease hell'. Removing ease entirely and ignoring that aspect inherent to
every card is in my opinion suboptimal.
</s>

The other solutions are outdated. Use Straight Rewards.

---

## Other useful plugins

### [Yomichan Forvo Server](https://ankiweb.net/shared/info/580654285)

A plugin that makes getting audio from Forvo into Anki incredibly simple. Using this there will be almost no unvoiced
words in your deck when you mine with Yomichan and if you do find unvoiced things you can add them to Forvo yourself.

---

### [Awesome TTS](https://ankiweb.net/shared/info/1436550454)

The best plugin out there if you need TTS in Anki. Sadly most of the free options sound terrible. The two best options
however (Microsoft Azure and Google Cloud TTS) are nearly free for individual users as long as you have a valid credit
card.

> This was written around 2021. There is probably better services by now.

---

### [Full Screen Toggle](https://ankiweb.net/shared/info/1612375712)

Doesn't get any simpler than this. Lets you toggle Anki to go into full screen and hide the rest of your screen so
you can fully immerse in your reviews.

---

### [True Retention](https://ankiweb.net/shared/info/613684242)

By default, the retention rate Anki displays for you on the top of your statistics screen is the total amount of times
you lapsed a card divided by the total amount of reviews you did subtracted from 100%. This is not a very meaningful
statistic especially if you have more than 1 step.

True retention gives a more meaningful statistics window instead calculating the total retention of already due cards,
rather than the 'again count'.

<figure>
  <img src="/images/trueretention.jpg"/>
</figure>

> Note that on versions after 2.1 you have to hold SHIFT before you press on 'stats' to see the effects of this plugin.
> This brings up the old statistics window.

---

### [Kanji Grid](https://ankiweb.net/shared/info/909972618)

Want to know how many kanji you know? This addons scans your cards for kanji and displays them in a nice looking grid.
Also has several sorting options such as school grades or JLPT. Be sure to limit the options to the deck and the field
that you are actually learning from or results might be skewed.

<figure>
  <img src="/images/kanjigridsettings.jpg"/>
  <figcaption>Correct kanji grid filtering.</figcaption>
</figure>

<figure>
  <img src="/images/kanjigrid.jpg"/>
  <figcaption>Part of the resulting grid.</figcaption>
</figure>

---

### [Advanced Browser](https://ankiweb.net/shared/info/874215009)

A plugin that greatly extends the Anki browser, letting you search for and display a ton of additional parameters.

<figure>
  <img src="/images/advancedbrowser.jpg"/>
  <figcaption>A few of the new options.</figcaption>
</figure>

---

### [Kanji Colorizer](https://ankiweb.net/shared/info/1964372878)

With this you can generate stroke diagrams on your cards. I used it during the creation of the Kanken deck covered in
the [writing section](writingjapanese.md).

<figure>
  <img src="/images/colorizer.jpg"/>
</figure>

---

## Suspending ("Retire") cards with a big interval

There is some addons for this purpose like the [Migaku Retirement Addon](https://ankiweb.net/shared/info/1666520655) but
I have not made good experiences with these myself. I've also heard negative things from others. These addons are prone
to being broken by updates or having bugs that potentially break your collection. Luckily we do not need to use an addon
to retire cards that have a large enough interval and it is always better to use core Anki features rather than addons
where possible. The only thing we need is the card browser and the correct search parameters!

1. Open the card browser and click on the deck you want to apply the filter on.
2. Add the parameter `-is:suspended` to filter all cards currently suspended.
3. Now add the parameter `prop:ivl>=120`. This will filter all with an interval shorter than 120 days.
4. Save this search by right-clicking `Saved searches` and clicking `Save current search`.

You can now safely suspend every single card you see in this saved search. Of course you are free to adjust the interval
to something greater than 120 days (like 1 year if you prefer). You just have to remember to go into the card browser
and suspend the cards every few months.

<figure>
  <img src="/images/retire.png"/>
  <figcaption>Retiring cards with the card browser search.</figcaption>
</figure>

---

## A note on over-tuning Anki or your Anki cards

It's very easy to get lost in trying to make the ultimate Anki note with automatically generated furigana and
dictionary look-ups on hover and other amazing features. While those are certainly cool technologically speaking, 
they pose a  real problem to actually learning Japanese. Not only are they prone to breaking or not working cross-device, 
they clearly encourage the wrong mindset. You do not need to insert furigana and hover-dictionaries into Anki, because all
the information you should be aiming to remember is on the flash card already. If you don't know a word inside a sentence,
you simply create another card for that word. The cards should be as simple as possible and the review process as
fast as possible. The sentences should merely serve as a reminder of the context the word was used it, not as a target
of study while you are trying to remember something entirely else.

Feel free to install those things anyway of course, but my opinion is that they are completely redundant. I recommend
using merely [this deck template](https://ankiweb.net/shared/info/151553357) and the settings I propose.