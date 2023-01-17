# Mining from visual novels

Visual novels are possibly the best resource to learn from. The combination of written Japanese and voiced text and
dialogue makes them a good resource both for beginners and advanced learners and most importantly, they are fun. In this
section I will show you how to extract the text from a visual novel and use Yomichan and ShareX to 'mine' them.

- If you don't have tools set up to capture audio and screenshots yet take a look at
  the [Handling Media section](media.md).
- If you don't have a mined deck set up with Yomichan yet see the [Yomichan setup page](yomichansetup.md)

---

## Textractor

[Textractor](https://github.com/Artikash/Textractor) is a text hooking program that allows you to extract the text out
of most visual novels. You can grab it [here](https://github.com/Artikash/Textractor/releases). (Get the English only
version.)

1. For most visual novels you will need the x86 so start that up first.
2. Remove the following extensions by clicking on them and pressing delete:
    - Bing Translate
    - Extra Window

<figure>
  <img src="/images/removingextensions.gif" width="600"/>
</figure>

You shouldn't use machine translation tools no matter at what stage in your learning you are. They are useless and will
ruin your experience. If you want you can remove the Regex plugin as well (it spawns an annoying extra window every
time). There are cases where it is useful however. Basic usage of it is detailed below.

---

## HTML Page and Clipboard inserter

To make use of the extracted text to do lookups and create flashcards with Yomichan we utilize an empty html page with a
plugin that pastes our clipboard into it.

Get the plugin here:

- [Chrome](https://chrome.google.com/webstore/detail/clipboard-inserter/deahejllghicakhplliloeheabddjajm)
- [Firefox](https://addons.mozilla.org/ja/firefox/addon/clipboard-inserter/)

You turn it on by clicking on the icon inside the browser task bar. If you are using Chrome you may need to allow it to
access local files. Otherwise it is incapable of accessing the html page we download in the next step.

- chrome://extensions/ → Details → Allow access to file URLs

Html pages:

- (NEW!) Improved and updated text hooking page with more features and full
  compatibility: <p>[Download](https://anacreondjt.gitlab.io/docs/texthooker/)</p>
- With removable lines (but incompatible with the mpv script introduced in
  the [anime section](ankisetup.md)): <p><a href="/assets/MkU86hMd.html" download>Download</a></p>
- Without removable lines (but compatible with the script): <p><a href="/assets/hZ4sawL4.html" download>Download</a></p>

---

## Hooking a visual novel and mining

1. Launch your visual novel and start the game so some text is displayed on screen
2. Launch the html page and activate the plugin
3. Launch Textractor → 'Attach to game' → Find and select the process for your game → OK
4. Go back to your visual novel and advance by one line
5. Go back to Textractor and scroll through all threads until you find one that matches the text

Now the visual novels text will be copied to our clipboard whenever we advance the text. → You can directly paste it
into Anki and it appears in the html page!

<figure>
  <img src="/images/hookingavn.gif" width="600"/>
  <figcaption>The final text hooking result.</figcaption>
</figure>

You can now mine from visual novels:

1. Identify a word you want to mine and create a card with Yomichan
2. Paste the text that is inside your clipboard into Anki
3. Record the audio and paste it into the audio field
4. Take a screenshot and paste it into the picture field

For taking visual novel screenshots I prefer the 'capture active window' ShareX function. How you replay audio differs
by visual novel. For some you do it with a hotkey, sometimes you need to go into the text log and click on the line and
sometimes it's not even possible. In that case you can try the method I suggest for video games. (TBA)

How this whole process generally looks like is shown here:

<iframe width="560" height="315" src="https://www.youtube.com/embed/rEfuBDJ7dfI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The card making process in the video is somewhat outdated so don't sweat the details.

---

### Saving a hook

After you successfully set up a hook you should click on **'Save hook(s)**'. This will cause Textractor to remember the
hook and activate it automatically the next time you launch the game.

---

## Textractor Advanced

Although it will work with 90% of VNs ouf of the box Textractor has some advanced functions for finding hooks and
working with text which I'll show here.

### Hook codes

Textractor should be able to find a hook code for most visual novels automatically. If it can't you can try taking a
look here: <https://vn-hooking.fandom.com/wiki/H-Code>

If you are lucky and it has a code for the game you are looking for click on 'Add hook', paste the code and press OK.
After advancing the text the hook should appear in the list.

### Searching for hooks

You can also search for hooks. While this rarely works it's still worth a shot.

Click on 'Search for hooks', tick 'Search for C/J/K' and start the hook search. Advance the text once and wait for the
result. You will be given a large list of potential hooks, one of which hopefully contains what you were searching for
which you can then add.

### Using Regex with Textractor

Regular expressions are an extremely powerful tool for finding certain text or matching text to patterns. The Regex
extension for Textractor lets you use regular expressions to filter the output for your clipboard. Let's say for example
that a visual novel is giving you both English and Japanese. You could write a Regex to filter out the English text.
Things like Furigana may also appear weird, take this for example:

<ruby>耕司<rt>こうじ</rt></ruby> would render as something like #{こうじ}耕司# in the Saya no Uta HD edition.

We can filter this with the following Regex `#(\u007B.*?\u007D)?` and get a much nicer output.

<figure>
  <img src="/images/regexfilter.jpg" width="600"/>
  <figcaption>Filtering text with Regex</figcaption>
</figure>

Useful links:

- [Testing Regex](https://regexr.com/)
- [Fun Regex Tutorial](https://www.youtube.com/watch?v=77I4ZkhuHsQ)

--- 

## Reading visual novels on Linux

There are many ways to make this work. Other guides suggest you use a compatibility tool like Wine, but personally I do
not recommend it. Wine is a hacky solution that is not guaranteed to work, is inherently insecure and messes with your
system in a way I find undesirable. Instead I opt to use VirtualBox. Utilizing the various features VirtualBox offers,
we can have an experience that trumps that of Windows users (through the use of borderless fullscreen on any program and
machine state restoration), while keeping the VN and other programs nicely isolated from our main system. The only thing
you need is a machine powerful enough to run a VM.

### Setting up VirtualBox and installing Windows

1. Install VirtualBox and the required host modules. See if there are instructions for your distribution. For Arch Linux
   you can simply look [here](https://wiki.archlinux.org/title/VirtualBox). Assuming you are using the standard Linux
   kernel simply:
    - `sudo pacman -S virtualbox virtualbox-host-modules-arch` and restart your computer for the modules to load.
2. Start VirtualBox and create a new VM. I recommend Windows 10, 4GB of RAM and at least 100GB of drive space.
3. Adjust settings:
    - Add some processor cores under `System -> Processor`
    - Enable 3D Acceleration under `Display`
    - Go to Network and disable the Network Adapter. We don't need Windows connecting to the internet.
    - Set up a shared folder and `Shared Folders`. This is the easiest option to share files between your host machine
      and the VM.
4. Add a Windows disc image under `Storage`. I recommend `Windows 10 Enterprise LTSC 2019 x64`.
5. Start your VM and go through the Windows installation process.
6. After you are finished go to `Devices -> Insert Guest Additions CD image...` and follow the install process. This is
   necessary so our Shared Folder will work.

### Preparing the VM for Visual Novels

Now that we have a working Windows VM there are several things we must do to make the process of reading and hooking VNs
as smooth as possible.

1. Go to `File -> Preferences -> Keyboard` and disable `Auto Capture Keyboard`. This prevents the VM from fully
   capturing the keyboard and preventing the use of shortcuts from our host machine. That means we can Alt+Tab from the
   VM to our host system and keep using our shortcut for recording audio, albeit making navigation on the VM a bit more
   difficult. You can still insert common key combinations by going `Input -> Keyboard -> Insert ...`
2. Go to `Devices -> Shared Clipboard` and either set `From Guest to Host` or `Bidirectional`. This is necessary so we
   can use Textractor in our VM and read the output in the hooking window running in our host.

You can now follow the Textractor section above inside your VM. You can insert a VN CD by
going `Devices -> Optical Drives -> Choose a disk file` which lets you install the game.

### Disabling Right-CTRL

VirtualBox lets you Alt-Tab to your host without a problem now, but there is still an issue. You don't have to press it
but internally VirtualBox still send a Right-CTRL (the host key) to the VM. This is an issue because in most VNs
touching CTRL will make the VN start skipping text. As we don't want text skipped every time we look something up we
have to find a way to mitigate this. The easiest way to do this is to disable Right-CTRL in the registry using a program
called [Sharpkeys](https://github.com/randyrants/sharpkeys). After you reboot the machine Alt-Tabbing should no longer
trigger text skipping.

<figure>
  <img src="/images/sharpkeys.png" width="600"/>
  <figcaption>Sharpkeys.</figcaption>
</figure>

### The most comfortable reading experience

If everything worked you can now start Textractor, your VN, hook the text and experiment with the different display
modes to find what best works for you. I recommend `View -> Full-screen mode`. The best thing is, you only have to set
this up once for every VN! Once you close the VN simply tick `Save machine state` and you will be right back when you
were next time you launch the VM.

Reading the VN and utilizing Textractor on the VM, you can Yomichan scan in the hooking window on your host machine and
mine unknown words with Yomichan to Anki. Enjoy!

## Reading visual novels on Linux | Alternatives

Having trouble with VirtualBox? Sadly VirtualBox does not provide the best virtualization method and thus fails in
certain more demanding games. You can still try [Wine](https://learnjapanese.moe/vn-linux/), but alternatively you
can also try QEMU/KVM, which offers vastly superior VM performance.

Installation blows the scope of this guide, but everything you can do on VirtualBox is also possible here, so go ahead
and try it. Useful links:

https://wiki.archlinux.org/title/Libvirt
https://leduccc.medium.com/improving-the-performance-of-a-windows-10-guest-on-qemu-a5b3f54d9cf5


