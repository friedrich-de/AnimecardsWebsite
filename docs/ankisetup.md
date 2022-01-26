# Setting up Anki

[Anki](<https://apps.ankiweb.net/>) is a flashcard application many Japanese learners use to boost their learning. It is most useful for remembering kanji readings and makes achieving a kanji reading ability that exceeds that of most native speakers feasible in 2-3 years of active usage. There is however correct and wrong ways to use it and it is very easy to make using Anki a living hell for yourself if you do it wrong, which is why so many people swear off doing Anki entirely. It is recommended that you use the [Anki manual](https://docs.ankiweb.net/#/) whenever you are confused by anything, but as it is a huge document and going into way more detail than somebody just starting out may need, I will be going over the most useful settings and plugins that you should know before you start. Nevertheless you can read it to gain familiarity with the basic concepts of Anki.

I'm assuming you already imported a pre-made deck or prepared your mining deck. If you need a sample mining deck you can find one here: <https://ankiweb.net/shared/info/151553357>

---

## Anki settings

Each Anki deck has an options group assigned to it. You can check the options group for each deck based on the nature of the information in it. For a recognition based Japanese deck I recommend changing the follow settings.

> Note that Anki 2.1.49 has introduced a new deck settings screen. A complete screenshot of the new settings screen can be found at the bottom of this page.
> You can still access the old options screen by holding shift before clicking on `options`.

---

### Preferences

**Learn ahead limit:** The learn ahead limit should be larger than your largest step. I simply set mine to **900 minutes**.

**Show new cards before reviews:** Selecting another setting won't make or break anything, but I prefer this one as it means the 5 minute step on new cards will make it come up again during my main reviews. This causes a small repetition effect which I think is useful.

<figure>
  <img src="/images/preferences.jpg"/>
</figure>

---

### New Cards tab

**Steps (in minutes):** This affects the amount of steps (successful passes) a new card has to go through before it graduates. I prefer 3 steps for new cards: **1 5 60** 

> (Update note as of Anki 2.1.49: Steps are now specified with a time unit suffix. The correct string for this step configuration would be: `1m 5m 1h`)

That way you will have to pass new cards three times before they move on to the next day. They get a 5 minute interval after you pass them once, and a 60 minute interval if you pass them again and at the end of the review sessions you pass them a final time. If you fail a card it gets a 1 minute interval. Of course you can set less steps if that is your preference. Note that 60 minutes doesn't mean you have to wait that amount of time if you set up your learn ahead limit correctly, the cards merely appear at the end of the session.

**New cards/day:** If you can do **20** new cards a day consistently that is a great number and will lead to good gains over a long time. Of course you can do more but be careful about not getting overwhelmed by cards and remember that getting input is more important than using Anki all day. 

**Starting ease:** How big of an ease your new cards start with, or in other words with what multiplier the intervals increase. The default value of **250%** is fine, but I prefer that intervals for cards I rarely fail grow faster so I set it to **300%**. See below for more info on ease. 

> (Update note as of Anki 2.1.49: Ease is no longer specified as a percentage. The new setting equal to 300% would be `3.00`)

<figure>
  <img src="/images/newcards.jpg"/>
</figure>

---

### Reviews tab

**Maximum reviews/day:** This affects the amount of total reviews you can do in a day. As you want to do all reviews due without arbitrarily being limited by this number you should set it to something extremely high like **9999**.

Not doing this may severely interfere with the review process.

**Interval modifier:** This is a plain multiplier on the interval length in the spaced repetition system. You can initially leave this at **100%** but if you consistently have high retention and want to do fewer reviews you can increase it as you start feeling comfortable with your reviews.

**Maximum interval**: This should be as big as possible. Intervals can never grow beyond the number of days specified here. This can break the SRS if not correctly configured and I have seen it happen. **36500** or in other words 10 years is a good value.

<figure>
  <img src="/images/reviewstab.jpg"/>
</figure>

---

### Lapses tab

**Steps (in minutes):** Same as the setting for new cards except for lapsed cards (cards that you failed). I prefer fewer steps for those as they are less effort than new cards (you are merely reminding yourself of something you already knew), but I still have a 60 minute step so they end up for a final review at the end of my session so **2 60**.

**New interval:** Determines how big the new interval is after you fail a card. Don't leave this at 0%. That would cause your cards to revert to an interval of 1 day after you fail it once. A more sensible setting is **20%**. If you fail a card with an interval of 100 days it will go back to 20 days. 

**Leech action:** Leeches are cards that you have failed so many times, the amount of lapses has reached the leech threshold. For the type of cards I recommend in the [cards section](ankicards.md) combined with the usage of one of the ease plugins below, leeches are not a real problem. I would simply set it to 'tag only' and keep reviewing them normally. Leeches may be a problem with cards that take longer to review, like sentence cards, and their interval may only grow very slowly if you don't fix the ease function in any way.

<figure>
  <img src="/images/lapsestab.jpg"/>
</figure>

---
## The 'ease' problem
After starting starting at whatever ease factor that you set, the ease factor of your cards will continually decrease as you fail them or press 'hard' causing the intervals to grow smaller and smaller and reviews to pile up more quickly. The only thing you can do about this, in the default configuration of Anki, is to press 'easy'. Most people are however not used to pressing this button and they shouldn't have to think about whether they want to pass the card normally or press 'easy' every time either, as it introduces unnecessary decision thinking time and effort.   

### The solution
There are several solutions to this problem, three of which I will detail now:

#### 1. [Straight Rewards](https://ankiweb.net/shared/info/957961234)

> (Update note as of Anki 2.1.49: You will have to enter the old options menu to access these settings. As of the time of writing (2022-01-26) this plugin is not compatible with the V3 scheduler. The V3 scheduler provides a custom scheduling option, which can also solve the ease problem. Expect an update on this site about it soon.

This is in my opinion the best way to solve this issue. This plugin will increase the ease factor of your cards if you continuously manage to pass them, making it by far the least intrusive option listed here, keeping in tact the original purpose of ease while also providing a way for ease to recover once you start remembering the relevant information.

One of the advantages of this option is that it also works on mobile devices without installing the plugin on them. When you sync on the device that has straight rewards installed, it will add ease rewards to all cards that you reviewed before the last sync.

The setting menu is very easy to understand and you can calculate settings you prefer using the formula on the Ankiweb page. If you are too lazy however you can copy my settings:
<figure>
  <img src="/images/rewards.jpg"/>
</figure>

#### 2. [Auto Ease Factor](https://ankiweb.net/shared/info/1672712021)
Another solution with a lot of people reporting positive results. For me personally this solution is too intrusive and messes with ease and intervals in a way I don't understand. If you feel brave however this is another valid option.

#### 3. Set the ease factor to a constant 250%
The idea for a constant ease factor was created by the Mass Immersion Approach (Now "Refold") founders. You can achieve this without installing plugins by simply setting the starting ease to 131% and the interval modifier to 191%. 

In my opinion this is the least optimal approach because it completely eliminates ease (which is not a bad thing) as a factor in your interval time. Each information has an inherent difficult rating associated with it, so it makes sense to see harder information more often until you remember it consistently. The important thing however is for the ease factor to go back up again so you do not end up in 'ease hell'. Removing ease entirely and ignoring that aspect inherent to every card is in my opinion suboptimal.

---

## Other useful plugins

### [Load Balancer](https://ankiweb.net/shared/info/1417170896)

> This addon is currently (2022-01-26) outdated. Don't bother installing it. I'm keeping it in here in case it gets updated or someone suggests a better alternative. 

Do you hate random review spikes? Especially if you are doing an inconsistent amount of new cards this is something that is likely to happen. Using Load Balancer you can balance cards with longer intervals so that they spread out evenly over a period of time that you set valid for them to spread out over.
If you feel like doing a bit of math you can figure out how those spreads look like but you can also copy my settings if you want:
<figure>
  <img src="/images/loadbalancer.jpg"/>
</figure>

My forecast this month:
<figure>
  <img src="/images/forecast.jpg"/>
</figure>

---
### [Yomichan Forvo Server](https://ankiweb.net/shared/info/580654285)

A plugin that makes getting audio from Forvo into Anki incredibly simple. Using this there will be almost no unvoiced words in your deck when you mine with Yomichan and if you do find unvoiced things you can add them to Forvo yourself.

---

### [Awesome TTS](https://ankiweb.net/shared/info/1436550454)

The best plugin out there if you need TTS in Anki. Sadly most of the free options sound terrible. The two best options however (Microsoft Azure and Google Cloud TTS) are nearly free for individual users as long as you have a valid credit card. 

**Sound samples:**
Excerpt from <https://mainichi.jp/articles/20201226/k00/00m/010/140000c>

安倍晋三前首相の後援会が主催した「桜を見る会」前夜祭について、費用を後援会が補塡（ほてん）していたにもかかわらず、安倍氏は首相在任中、「補塡はない」などと事実に反する国会答弁を少なくとも118回繰り返してきた。

Azure TTS:
<audio controls>
    <source src="/video/azuretts.mp3" type="audio/mpeg">
</audio>

Google Cloud TTS:
<audio controls>
    <source src="/video/googlecloudtts.mp3" type="audio/mpeg">
</audio>


Still not that great but TTS is a field where rapid advancements are constantly made and we will likely see lifelike TTS in the relatively near future.

---

### [Full Screen Toggle](https://ankiweb.net/shared/info/1612375712)
Doesn't get any more simpler than this. Lets you toggle Anki to go into full screen and hide the rest of your screen so you can fully immerse in your reviews.

---

### [True Retention](https://ankiweb.net/shared/info/613684242)
By default the retention rate Anki displays for you on the top of your statistics screen is the total amount of times you lapsed a card divided by the total amount of reviews you did subtracted from 100%. This is not a very meaningful statistic especially if you have more than 1 step.

True retention gives a more meaningful statistics window instead calculating the total retention of already due cards, rather than the 'again count'.

<figure>
  <img src="/images/trueretention.jpg"/>
</figure>

> Note that on versions after 2.1 you have to hold SHIFT before you press on 'stats' to see the effects of this plugin. This brings up the old statistics window.

---

### [Kanji Grid](https://ankiweb.net/shared/info/909972618)
Want to know how many kanji you know? This addons scans your cards for kanji and displays them in a nice looking grid. Also has several sorting options such as school grades or JLPT. Be sure to limit the options to the deck and the field that you are actually learning from or results might be skewed.

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
With this you can generate stroke diagrams on your cards. I used it during the creation of the Kanken deck covered in the [writing section](writingjapanese.md).

<figure>
  <img src="/images/colorizer.jpg"/>
</figure>

---

## Creating a card type

Although specified in a previous version of this guide, this section got removed for being redundant. Please read the manual regarding how manual card creation works. It is incredibly useful far beyond Japanese. Also learn how to use the card browser effectively. The power the card browser gives you over your collection is one of the things that make Anki excel. 

---

## New Options Menu

Version 2.1.49 introduced a new options menu. Here is a screenshot with good settings applied:

<figure>
  <img src="/images/options.png"/>
  <figcaption>The new options menu.</figcaption>
</figure>