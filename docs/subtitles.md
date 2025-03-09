# Resyncing Subtitles

Subtitles can be found on [Jimaku](https://jimaku.cc/) and [kitsunekko](https://kitsunekko.net/dirlist.php?dir=subtitles%2Fjapanese%2F). Often, subtitles found online are not synchronized with local video files. This guide provides a method to resync subtitles accurately.

## (Windows Only) Automatic Resyncing with Alass

[Alass](https://github.com/kaegi/alass) is a tool that accurately re-times subtitles, even with unexpected splits like commercial breaks. However, it can be thrown off by subtitles not relevant for syncing, such as signs and song lyrics. To address this, a script by Anacreon (from the DJT thread) cleans up subtitles before using Alass.

**Video Demonstration:**

<iframe width="560" height="315" src="https://www.youtube.com/embed/x0h3ooBHrpk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

### Installation and Usage

1.  **Download:** Obtain the script and its dependencies in a .zip file from: <https://mega.nz/folder/W19xUQJT#Ele4MKy-c61AOp2ZaN5AYg>
2.  **Extract and Move:** Extract the folder from the .zip file and move it to the directory containing your video and subtitle files.

    *Tip:* Use 'cut' and 'paste' to move folders without writing to the drive.

    Your folder structure should resemble this:

    ![Folder structure](images/resyncfolder.jpg)
3.  **Run the Script:** Execute `RUN_ME.bat` inside the extracted folder.
4.  **Select Options:** The script will prompt you to select options by typing the corresponding number and pressing Enter:

    ![Selection script option](images/selectoption.jpg)

    *   Most subtitles on kitsunekko are in `.srt` format.
    *   Using embedded subtitles for re-timing is generally more reliable. Download shows with embedded English subtitles instead of "raws".
    *   The split penalty can usually be left unchanged. Adjust it only if a sync attempt fails.

The script will extract reference subtitles from the video files. Afterward, a menu will display the 'styles' present in the reference subtitles:

![Subtitle Styles](images/subtitlestyles.jpg)

Subtitle creators use styles to differentiate types of content, such as 'Signs' for on-screen text or 'OP/ED' for opening and ending sequences. These additional subtitles can interfere with syncing. Select only the styles relevant to the main dialogue (e.g., `[1]Default` and `[3]Default-alt` in the example).

After syncing, you will have a set of correctly timed and renamed subtitles:

![Syncing Result](images/resyncingsubtitles.jpg)

## (Linux Only) Automatic Resyncing with Alass

Consider using my retimer script which does similar tag cleaning as the Windows script. 
It's still in early development and may have issues. Feel free to contribute. 

It's available here: <https://github.com/friedrich-de/Advanced-Subtitle-Retimer>

You can also try using Alass [directly](https://github.com/kaegi/alass).

**Note: If you're a developer, please consider creating a platform independent subtitle tool that takes care of everything including subtitle extraction, tag cleaning and syncing.**