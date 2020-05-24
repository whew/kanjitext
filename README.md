# kanjitext

Note: If you will use scripts instead of exe from releases, you should put the all.txt file from https://github.com/whew/list-of-all-kanji into the same folder. It contains almost 6,000 kanji from all possible official sources. Also, exe was built with 7-Zip, it's self-executable archive that runs batch script automatically.

Kanjitext is the simple motivational script that creates list of sentences that you can read even if you know just 10 kanjis

This script uses sed and grep. They are already packaged in released exe - https://github.com/whew/kanjitext/releases

First of all you need the "Kanji Grid" addon for anki. You can download it from https://ankiweb.net/shared/info/909972618

Then you must generate a table of kanji you know. The key is to uncheck the "Show units not yet seen" checkbox.

![Addon](/screenshots/anki_nEJUBJ6LdV.png?raw=true "Addon")

Let's imagine that we've just started and know only 230 kanjis.  
*Noooooooooo! You cannot create new profile for every Anki experiment!*   
*Ha-ha profiles do sync-sync*

![table](/screenshots/anki_SeGrBRFBXv.png?raw=true "table generated")

After that you should select all the kanji in the table and copy it to a separate file. Like "knownkanjis.txt" or something like that.

![Copying](/screenshots/anki_l0IK3xUas8.png?raw=true "copying")

You should also have a text file. Preferably, in txt format. The more text you have in it, the better. In this example, I will use a file with 33 thousand sentences from the Steins;Gate VN (https://github.com/whew/steins-gate-anki)

![SG](/screenshots/notepad%2B%2B_5ejMIjsTyX.png?raw=true "SG")

Then run exe from releases, a script from the repository or whatever you want.

![icon](/screenshots/explorer_QONqreG4sE.png?raw=true "icon")

The script will ask you some questions.

![question1](/screenshots/cmd_t1hSZ62a0G.png?raw=true)
![question2](/screenshots/cmd_IOtOn8kiC8.png?raw=true)

After that the output.exe file will appear in the folder.

![output](/screenshots/explorer_qmZwOQoajo.png "output")

As you can see, it does not contain 33 thousand lines, but only 642. Each line contains **at least one kanji** that was in the list of known, so it is much easier to understand the meaning of any of these sentences.

![642](/screenshots/notepad%2B%2B_n4T8iihUj7.png?raw=true)

I don't think you can really learn with this. But adding new cards or training in kanji recognition with it - why not?
