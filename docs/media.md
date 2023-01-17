# Handling Media

## Windows

### Setting up ShareX

ShareX has a number of functions that are useful to language learners. These include

- Capture screenshots
- Record Audio
- OCR (Optical Character Recognition)

You can paste the result from all these operations directly into Anki. This is important for mining from Youtube videos,
video games or visual novels for example. Of course ShareX has a myriad of functions beyond that and if you are
interested I suggest you take a look at their site: <https://getsharex.com/>

In this section however we will only setup the functions above on hotkeys we can use anytime without touching any global
settings.

---

#### Download and set file folder

After downloading and installing ShareX from the [github page](https://github.com/ShareX/ShareX/releases/) you should
define a directory for it to save all your files.

Application settings → Paths → Browse → Select your folder

This should be somewhere quickly accessible.

<figure>
  <img src="/images/sharexmediafolder.gif" width="600"/>
</figure>

You can set custom settings for each hotkey which is what we will do in the following steps.

---

### Hotkey for screenshots

Set up a hotkey for screenshots.

1. Hotkey settings → Add → Task: Screen capture → Capture region (transparent)
2. Click on 'none' → Define key combination for screenshots

<figure>
  <img src="/images/screenshothotkey.gif" width="600"/>
</figure>

If you have peripherals with additional keys placing it on one of those is good. Afterwards go back into the hotkey
settings:

3. Tick 'override after capture settings'
4. Untick 'upload to image host'
5. Go to image tab → Tick 'override image settings' → JPEG

<figure>
  <img src="/images/screenshothotkeysettings.gif" width="600"/>
</figure>

Changing the image format to JPEG will save space on your hard drive and on Ankiweb. We also stop it from pestering you
with trying to upload it to an online image host.

You can now use your hotkey to capture an image and paste the result into Anki with Ctrl+V. This also works on other
sites like Discord or 4chan:

<figure>
  <img src="/images/pastingimage.gif" width="600"/>
  <figcaption>Pasting an image inside Anki.</figcaption>
</figure>

---

### Hotkey for audio

Set up a hotkey for audio recording.

1. Hotkey settings → Add → Task: Screen record → Start/Stop screen recording using activate window region
2. Override after capture settings: Tick copy file to clipboard
3. Click on 'none' → Define key combination for audio recording

<figure>
  <img src="/images/audiohotkey.gif" width="600"/>
</figure>

Now we need configure ffmpeg inside ShareX to record audio:

1. Go to 'capture' and tick 'override capture settings'
2. Open the 'Screen Recorder' menu
3. Go to 'screen recording options' and click on 'download' to download ffmpeg

After ffmpeg downloaded a message telling you that ffmpeg was successfully installed should appear.

<figure>
  <img src="/images/overwriteaudio.gif" width="600"/>
</figure>

- Now click on 'install record devices' and complete the installation

'screen-capture-recorder' and 'virtual-audio-capturer' should appear as options for video and audio sources:

<figure>
  <img src="/images/screenrecorders.jpg"/>
</figure>

- Set the video source to 'none' and change the audio codec to MP3

<figure>
  <img src="/images/audiofinal.gif"/>
</figure>

You can type ffmpeg settings into the command line window to make various adjustments (for example changing the volume
of recording).

My personal settings that trim silence and reduce the volume a bit:
`-y -rtbufsize 100M -f dshow -i audio="virtual-audio-capturer" -c:a libmp3lame -filter:a "volume=0.9, silenceremove=1:0:-50dB" -qscale:a 4 "$output$"`

You can now use the hotkey to record any audio playing on your computer. Press the hotkey to start recording and press
it again to finish. The result will be copied to your clipboard and can be directly pasted into Anki.

<figure>
  <img src="/images/audioexample.gif"/>
</figure>

You can set up video recording on a separate hotkey if you need that function. If you do that I recommend 'x264 (mp4)'
and 'AAC' (not MP3) for maximum compatibility.

---

### Hotkey for OCR

Although extremely flawed, OCR can be useful if you are need to look something up you don't know how to type and are too
lazy to draw into the Google translate handwriting recognition. Somewhat useful in combination with the text hooking
page introduced in the [visual novel](visualnovels.md) and [anime sections](minefromanime.md).

1. Hotkey settings → Add → Task: Text capture (OCR)
2. Go to 'Capture' → Tick 'Overwrite capture settings'
3. Go to 'OCR' → Default language: Japanese → Tick 'Process OCR silently'
4. Click on 'none' and assign a key combination to it

<figure>
  <img src="/images/setupocr.gif" width="600"/>
</figure>

- The first time you perform an OCR you will asked for permission to upload images to the OCR service. Select yes.

<figure>
  <img src="/images/ocrpermission.jpg"/>
</figure>

You can now use the OCR hotkey to capture Japanese text, which then gets copied to your clipboard. However it should be
said that for Anki cards it is generally preferable to simply screenshot the textbox you want to mine.

---

## Linux

### Recording Audio

> Credits to salamander from the Discord

First follow the instructions as described here, so the correct recording device is set:
<https://askubuntu.com/a/1051240/392897>

Then put the following in a script and bind it to any key with your DE. Press once to start recording, a second time to
stop, then Ctrl+V into an Anki field. You will need to have `xclip` and `ffmpeg` installed.

```
#!/bin/bash

# To record desktop audio instead of mic:
# https://askubuntu.com/a/1051240/392897

recordingToggle="/tmp/ffmpeg-recording-audio"

if [[ "$1" == "-s" ]] && [[ -n "$2" ]]; then
  SLEEPS="$2"
fi

if [[ ! -f /tmp/ffmpeg-recording-audio ]]; then
  # Not recording
  audioFile=$(mktemp /tmp/ffmpeg-recording.XXXXXX.mp3)
  echo "$audioFile" > "$recordingToggle"

  if [[ -n "$SLEEPS" ]]; then
    echo "Recording in ${SLEEPS}s..."
    sleep "$SLEEPS"
  fi

  notify-send --hint=int:transient:1 -t 300 -u normal "Recording audio..."
  # Record to mp3 and remove silence
  ffmpeg -f pulse -i default -ac 2 -af silenceremove=1:0:-50dB -acodec libmp3lame -ab 320k -y "$audioFile" 1>/dev/null
else
  # Already recording
  audioFile="$(cat "$recordingToggle")"

  echo "$audioFile"
  rm "$recordingToggle"

  killall -INT ffmpeg -s 2
  # Copy file path to clipboard in a way that allows the file to be
  # pasted in some GUI apps.
  echo -n "file://${audioFile}" | xclip -sel c -t text/uri-list

  notify-send --hint=int:transient:1 -t 300 -u normal "Copied audio file to clipboard."

  killall recordAudioToggle # Name of this script, TODO handle this better
fi
```

---

### Taking screenshots

Pick a tool you like here: <https://wiki.archlinux.org/title/Screen_capture>

Your DE may already provide a tool to take screenshots. For example if you are using XFCE4 you can
use `xfce4-screenshooter`. Just make sure you can save the screenshot to your clipboard, so you can paste it in Anki.

---

### AMES

If you prefer the process to be more automated you can check out ames.
<https://github.com/eshrh/ames>

---