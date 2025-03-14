# Mining from Anime

I would like to introduce two methods to mine from anime here. You can find subtitles
on [Jimaku](https://jimaku.cc/) and [Kitsunekko](https://kitsunekko.net/dirlist.php?dir=subtitles%2Fjapanese%2F).
If you want to know how to sync them, check out the [resync section](subtitles.md).

---

## Anacreon mpv Script

This is the definitive and best method to mine from anime. Making use of mpv's scripting capabilities, the script (made by
Anacreon from the DJT thread; check out his site [here](https://anacreondjt.gitlab.io/)) captures the entire
context in the form of a sentence, audio, and a screenshot, and automatically adds them to your Anki cards.
It also works everywhere where you can stream video with mpv, for example on a Jellyfin media server with the [jellyfin-mpv-shim](https://github.com/jellyfin/jellyfin-mpv-shim).

Here is a video demonstration:

<iframe width="560" height="315" src="https://www.youtube.com/embed/M4t7HYS73ZQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


---

### Requirements

1. A [mining deck set up with Yomitan](yomichansetup.md) 
   (I recommend either using [Lapis-modified](https://github.com/friedrich-de/lapis-modified) or [Lapis](https://github.com/donkuri/lapis). Downloads in the 'Releases' section.)
2. The mpv video player. <p>mpv ([get it here if you are on Windows](https://mpv.io/)) is a free video player with great scripting capabilities.</p>
3. The script itself. Download [`animecards_v35_modified.lua`](https://github.com/friedrich-de/Anacreon-Script)
    - Anacreon seems to have disappeared from the internet so we're hoping to provide LTS in this repository. 
4. A texthooker page. I recommend [texthooker-ui by Renji-XD](https://github.com/Renji-XD/texthooker-ui). 
   Download a local copy to access webhooks.
5. (RECOMMENDED) The [mpv_websocket plugin](https://github.com/kuroahna/mpv_websocket), which sends subtitle text to the texthooker page.
      - (NOT RECOMMENDED) If you want to use a clipboard inserter instead of a websocket, you need a [clipboard inserter plugin](https://github.com/laplus-sadness/lap-clipboard-inserter).  
6. **(Linux users only)** Make sure xclip and curl are installed. 
   Windows and Mac users also require curl but it should be installed by default.

Ensure Yomitan has access to file URLs otherwise Yomitan can't capture text from the text hooking page.
If you're using the clipboard inserter **(not recommended)** you also need to allow it access to file URLs.

<figure>
  <img src="../images/yomichanaccess.jpg"/>
  <figcaption>Accessible through the 'Manage extensions' options menu.</figcaption>
</figure>


---

### Installation

1. After installing mpv, move the script to the mpv script folder. 
      - On Windows usually at: `C:/Users/Username/AppData/Roaming/mpv/scripts/` (If it doesn't exist create it.) <p>You can reach the appdata
      folder by simply typing `%appdata%` into the address bar or the search.</p> 
      - On Linux and Mac the path is `~/.config/mpv/scripts/`.

2. Open the script in a text editor and adjust the values to fit your mining deck.
      - If you are using Lapis or Lapis-modified you can use the default values. Otherwise adjust FRONT_FIELD, SENTENCE_AUDIO_FIELD, SENTENCE_FIELD, IMAGE_FIELD to match your deck.

**Important:**

**For MacOS users:**
Use png instead of webp in your IMAGE_FORMAT setting and brew install the latest version of MPV.

---

### Usage

1. Open the texthooker page. If you're using the clipboard inserter (NOT RECOMMENDED), activate the plugin and enable clipboard insertion in the texthooker settings.

2. Open your anime with mpv using Japanese subtitles. The websocket should connect automatically; otherwise, make sure it's connected. <p>The subtitles will appear on the html page and you can scan them with Yomitan.
   <video controls>
    <source src="../video/clipboardmpv.mp4" type="video/mp4">
    Your browser does not support the video tag.
   </video>
3. When there is a word you want to mine, [create a card with Yomitan](yomichansetup.md).
4. Select the entire sentence/section you want to have as context on your card and copy it.
5. Go back into the mpv window and press `Ctrl + v `
<p>A notification should appear saying that the card got updated. The card should now be updated. </p>

<figure>
  <img src="../images/confirmmessage.jpg"/>
</figure>

---

### Troubleshooting

If something did not work try these things:

- Ensure the card fields are correctly set in the script.
- Ensure you are using a current version of mpv, Anki and AnkiConnect.
- Cards can't be updated while selected in the card browser. Exit the card browser and try again.
- Anki profile names with names or special symbols MAY cause issues. 
  Try renaming your profile to something simple without spaces like 'User1'.
- If the script is lagging on Windows: This is a powershell issue (
  see [here](https://www.reddit.com/r/PowerShell/comments/6a6gnd/powershell_console_is_slow_to_start/)). To solve this
  run the following in an admin powershell:

```
Set-Alias ngen (Join-Path ([Runtime.InteropServices.RuntimeEnvironment]::GetRuntimeDirectory()) ngen.exe)
ngen update
```

If nothing else works try running mpv from the command line to see if there are any errors and meaningful output.
You can get support on the GitHub or in the Discord.

---

### Video tutorial by Anacreon

<iframe width="560" height="315" src="https://www.youtube.com/embed/wSexzzsJSqA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

## Asbplayer

Mining with Asbplayer is a bit more manual and clunky than with the Anacreon script and it's reliant on web players so it supports less video formats.
However, it's a good alternative if you are having trouble with the script or want to mine from Netflix and Youtube.

[Asbplayer](https://github.com/killergerbah/asbplayer) is a web video player that makes subtitles in video players scannable
with Yomitan and allows you to capture audio and screenshots from the video to create media flashcards.

For detailed guides check out the community guides section on the [Asbplayer Github](https://github.com/killergerbah/asbplayer#community-guides).