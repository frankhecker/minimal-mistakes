---
comments: false
date: 2010-11-07 04:36:07+00:00
layout: post
slug: exploring-howard-county-election-data-with-r-part-1
title: Exploring Howard County election data with R, part 1
tags:
- howardcounty
- politics
---

The Maryland and Howard County general elections are now over, and we (mostly) know who won. However there's still one major question I'm waiting on the answer to, namely, what were the relatively proportions of Republicans, Democrats, and unaffiliated and other voters within the total population voting in the general election? If you recall, [I previously predicted](http://blog.hecker.org/2010/10/15/howard-county-likely-voters-in-the-2010-general-election/) that Democrats would be 46-47% of those voting in Howard County, Republicans 36%, and unaffiliated and other voters 16-17%. I made a [similar prediction for Maryland statewide](http://blog.hecker.org/2010/10/26/maryland-likely-voters-in-the-2010-general-election/) (54% Democrats, 33% Republicans, and 13% unaffiliated and other). I'm curious to see how close I came to the actual numbers.

I'm guessing that authoritative reports on voter turnout broken down by party won't be available until all absentee ballots are counted and the official results are released. In the meantime I thought it would be fun to write up some posts on how anyone interested can try to do these sorts of predictions for themselves, using publicly available data and free software. This is a bit geeky, but it's also fun if you're into politics and elections, and it requires only minimal math skills. If you're interested please read on.

As I previously mentioned, in doing these predictions I used the [R statistical software package](http://en.wikipedia.org/wiki/R_%28programming_language%29). Versions of R suitable for use on Windows and Mac systems are available at no charge from either the [R Project for Statistical Computing](http://www.r-project.org/) (the open source project that develops the software) or [Revolution Analytics](http://www.revolutionanalytics.com/) (a company that sells proprietary software based on R). For these posts I'll use the version available from the R Project. (Downloading Revolution R, the version from Revolution Analytics, requires you to supply some basic personal information.)

You first need to download and install the R software, either the [Windows version](http://watson.nci.nih.gov/cran_mirror/bin/windows/) or the [Mac version](http://watson.nci.nih.gov/cran_mirror/bin/macosx/) as appropriate; for Windows you just need the base distribution, and for Mac the file `R-2.12.0.pkg`. (The version number in the file's name may be slightly different depending on when you download the software.) The R software is pretty straightforward to install: just double-click on the downloaded file and follow the instructions in the install wizard, accepting all the installation defaults. However if you're unsure how to do it or if you encounter problems, check out the [relevant section of the Windows FAQ](http://watson.nci.nih.gov/cran_mirror/bin/windows/base/rw-FAQ.html#How-do-I-install-R-for-Windows_003f) and the [Mac FAQ for R.app](http://watson.nci.nih.gov/cran_mirror/bin/macosx/RMacOSX-FAQ.html#R_002eapp).

Once you've got your copy of R installed, you can execute it simply by double-clicking on the application icon (or, on Windows, invoking it from the Start menu), just as you would with any other Windows or Mac application. R primarily uses a command line interface, so look for a window that displays the R version and startup information and then presents a command prompt (>):

[sourcecode light="true"]
R version 2.12.0 (2010-10-15)
Copyright (C) 2010 The R Foundation for Statistical Computing
...
Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.35 (5632) i386-apple-darwin9.8.0]

> 
[/sourcecode]
(The above output is from R running on a Mac; the output for Windows will look slightly different.)

The first R command you should try is `getwd()`, which prints the working directory from which R will load data files by default; you'll need to know this for the next step. Just enter the command as shown in the example below and hit the return key. (The output below is from my Mac system; on Windows the working directory will display as a Windows path, except with the backslash character \ replaced with a slash character /.)
[sourcecode light="true"]
> getwd()
[1] "/Users/hecker"
> 
[/sourcecode]

Now for some data. Let's start with the data sets for Howard County voter turnout for general elections from 1988 through 2008 (`[howard-county-md-general-election-turnout.txt](http://hecker.org/public/howard-county-md-general-election-turnout.txt)`) and for primary elections over the same period (omitting 1996, for which no data was available) (`[howard-county-md-primary-election-turnout.txt](http://hecker.org/public/howard-county-md-primary-election-turnout.txt)`). To download the data as text files to your Windows system, right-click on each link (click the right mouse button while the cursor is over the link) and select Save Target As... (for IE8) or Save Link As... (for Firefox). On Mac systems control-click on each link (click the mouse while holding down the Control key) and select Save Linked File As... (for Safari) or Save Link As... (for Firefox). Select a suitable directory in which to download the two files; if possible choose the directory that was displayed as a result of entering the `getwd()` command into R as discussed above.

If you'd like you can use the complete data sets for all elections. However since our focus is on the 2010 election I think it's best to limit ourselves to the data for past Maryland gubernatorial elections, since turnout patterns in those years are somewhat different than those in presidential election years. The simplest way to do this is to make copies of the files `howard-county-md-general-election-turnout.txt` and  `howard-county-md-primary-election-turnout.txt` you downloaded above, and then edit the copies to delete the lines corresponding to the presidential election years (1988, 1992, 1996, 2000, 2004, and 2008).

Since these are both text files, you can edit them using any suitable text editor, including Notepad on Windows and TextEdit on Mac. (Since the lines in the files are very long, the files will be easier to edit if you make the editing window very wide.) The resulting files should retain the initial header line and then have five lines containing the data for 1990, 1994, 1998, 2002, and 2006. You can call the new files anything you wish, but for purposes of this example I'll call them `hoco-gub-gen-turnout.txt` and `hoco-gub-pri-turnout.txt`.

Finally, let's load the data files into R. Make sure that the two files `hoco-gub-gen-turnout.txt` and `hoco-gub-pri-turnout.txt` are in the directory displayed by the `getwd()` command; if they're not already there move them there now. Then in R use the following commands to load the data:
[sourcecode light="true"]
> hgg <- read.table("hoco-gub-gen-turnout.txt", header=TRUE)
> hgp <- read.table("hoco-gub-pri-turnout.txt", header=TRUE)
> 
[/sourcecode]
What we're doing here is using the `read.table()` function to read data from each file, and then assigning the resulting data (using the <- assignment operator) to two newly created variables `hgg` (for the Howard County gubernatorial general election data) and `hgp` (for the Howard County gubernatorial primary election data). (In R terminology `hgg` and `hgp` are referred to as data frames.) Note that the variable names are arbitrary; I used short names because we'll be typing them in a lot; however if you wish you could use longer names like `hoco_gub_gen_data` and `hoco_gub_pri_data`.

Since we didn't supply directory paths for the two files, R looked for them in the current working directory (given by the `getwd()` command). The `header=TRUE` option tells R that the first line of each file is a header line, and that the actual data starts with the second line.

We can now test to make sure the data loaded correctly by printing out particular columns; the variable for each column is given by either `hgg$` or `hgp$` followed by the name of that column as read from the data file. For example, entering the variable names `hgg$Year` and `hgp$Year` will print out the data from the first column of each file, containing the year:
[sourcecode light="true"]
> hgg$Year
[1] 1990 1994 1998 2002 2006
> hgp$Year
[1] 1990 1994 1998 2002 2006
> 
[/sourcecode]
(Note that variable names in R are case-sensitive, so you must type `hgg$Year` with a capital Y; typing `hgg$year` will produce the error value NULL.)

As a second test, print the percentage of unaffiliated and other voters for each election (the last column in the table):
[sourcecode light="true"]
> hgg$PctVotersOther
[1]  9.39 10.95 12.07 13.28 15.27
> hgp$PctVotersOther
[1] 1.36 1.75 1.85 3.58 3.16
> 
[/sourcecode]

Finally, you can also enter the variable names `hgg` and `hgp` by themselves to print all columns and rows of the table. For example, here's how to print all the values in the data frame `hgg`:
[sourcecode light="true"]
> hgg
  Year Registered Turnout PctTurnout  RegD PctRegD TurnoutD PctTurnoutD
1 1990      94550   53440      56.52 48234   51.01    29418       60.99
2 1994     106389   74320      69.86 52813   49.64    38293       72.51
3 1998     130862   84040      64.22 62156   47.50    42393       68.20
4 2002     141565   97162      68.63 66280   46.82    46968       70.86
5 2006     165019  106756      64.69 77030   46.68    52819       68.57
   RegR PctRegR TurnoutR PctTurnoutR RegOther PctRegOther TurnoutOther
1 34767   36.77    19002       54.66    11549       12.21         5020
2 38729   36.40    27892       72.02    14847       13.96         8135
3 47853   36.57    31504       65.83    20853       15.94        10143
4 50920   35.97    37288       73.23    24365       17.21        12906
5 55843   33.84    37639       67.40    32146       19.48        16298
  PctTurnoutOther PctVotersD PctVotersR PctVotersOther
1           43.47      55.05      35.56           9.39
2           54.79      51.52      37.53          10.95
3           48.64      50.44      37.49          12.07
4           52.97      48.34      38.38          13.28
5           50.70      49.48      35.26          15.27
> [/sourcecode]

That's it for today's lesson. You now know how to start R, load in a data table, and print out its values. If you'd like to quit R at this point simply use the `q()`command, and tell R to save the workspace image when it asks. (This will allow you to start R next time and use the data you loaded without having to load it again from the files.) In the [next post](http://blog.hecker.org/2010/11/13/exploring-howard-county-election-data-with-r-part-2/) we'll start doing some basic data analysis.
