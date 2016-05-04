# USCMS-Reports

These are the quarterly reports for the U.S. CMS Operations Program. 

To create the pdf output just run `make` in the quarterly sub-trees. 

You will need to have [pandoc](http://pandoc.org) and latex installed.

To get pandoc on the mac, the easiest is to use [homebrew](http://brew.sh) to install it. This is really trivial, there's a one-liner on the homebrew web page to get homebrew up and running, then you are ready to install packages like pandoc:

    brew install pandoc

that's it!

To get the full Latex installation for the mac go to [MacTEX](https://tug.org/mactex/). 

I'm currently using the font family Minion Pro, which can be easily installed in the mac system (it e.g. comes with the Adobe Reader App for free). If you don't have it and don't want to install it, just choose another font in the template.tex file. 

#### Syntax Tips:

Markdown syntax is trivial, see intro [here](https://daringfireball.net/projects/markdown/basics), which has everything you'll likely ever need (or the much more extensive documentation in the [pandoc users guide](http://pandoc.org/README.html)). It also makes figures and tables really easy:

I'm using the markdown pandoc [simple_tables](http://pandoc.org/README.html#tables), like this:

    Date            Milestone  
    --------------  -----------------------------------------------
    Feb 2016        Firmware version 1.0 released
    Mar 2016        Even better firmware 1.1 released

    Table: Major milestones achieved this quarter

Figures can be inserted like this:

    ![Caption text goes here.\label{fig:no1}](figures/image.png) 

and referred to like `...see Figure \ref{fig:no1}...`, as in Latex. 

#### Update: 

I'm now using a "better" way to deal with Figure and Table references instead of the raw Latex `\ref` and `\label`, that also works with other output formats like `html`, using a syntax like `...see Figure {@fig:id}...` and 

    ![Figure caption.](image.png){#fig:id}

This requires the pandoc filter [pandoc-fignos](https://github.com/tomduck/pandoc-fignos). It's trivial to install once you have python `pip` -- which MacOS doesn't as a default. I just installed python in `homebrew`, which comes with `pip`:

    brew install python

Then it's trivial to install [pandoc-fignos](https://github.com/tomduck/pandoc-fignos): 

    pip install pandoc-fignos

Now you can use [pandoc-fignos](https://github.com/tomduck/pandoc-fignos) in pandoc by adding `--filter pandoc-fignos`.

