%% NOTE: This is based on the efforts of Erik Chmelar (echmelar@yahoo.com) %%
%% Second author: Scott Coppen (scoppen@swc-systems.com)
%%

## OVERVIEW:

This repository is explicitly designed to be used a submodule - please refer
to information below for intructions on how to perform the initial setup.
These files are specifially modified to conform to the USPTO's patent
specification, drawings, and claims guidelines. They are simple modifications
to the article class.

## REQUIREMENTS

Command line interface with the following programs/utilities available
   - LaTeX with the 'graphicx', 'subfig', 'psfrag', and 'fancyhdr' packages
   - GNU make
   - awk

## INITIAL SETUP:

1. Initialize the local directory as a Git repository:

        $ git init

2. Add the 'Patent-Template-for-LaTeX' submodule as the 'config' directory:

        $ git submodule add git://github.com/scoppen/Patent-Template-for-LaTeX.git config
        
   NOTE: The submodule must be located within a sub-directory named 'config'!

3. Build the default LaTeX file 'stubs':

        $ make -f config/Makefile provisional

   This command will create a local Makefile as well as all the necessary
   LaTeX file stubs for the patent.
   NOTE: The template also supports 'utility' or 'design' patent templates.

4. Commit your work:

        $ git commit -m 'Initial commit'

   NOTE: You should add the generated files (inventors.def, etc.) to your Git
   repo but it is probably not advisable to use a publicly accessible remote host
   for these files.  I would recommend using a local repository that is backed up
   or use Gitolite within a firewall protected LAN.

## COMPILING:

Type 'make' at the command line.  The patent will be compiled as 'patent.pdf'.
The files in the 'config' sub-directory are not intended to be modified.


## FILES:

| Filename      | Purpose        |
| :------------ |:---------------|
| Makefile		 | GNU make compatible makefile |
| README.md		 | This file |
| commands.def	 | Applicable environment/commands  |
| config.tex	|	Document package configuration  |
| patent.bst	|	Formatting of \cite{} references |
| design.def	|	LaTeX file stubs for design patents  |
| design.tex	|	Formatting for design patents  |
| provisional.def	|	LaTeX file stubs for provisional patents |
| provisional.tex	|	Formatting for provisional patents |
| utility.def	|	LaTeX file stubs for utility patents |
| utility.tex	|	Formatting for utility patents  |
 

## DRAWINGS:

Drawings for non-design patents are quite easy to do - just follow the
guidelines in the USPTO's `Guide to Filing A Non-Provisional (Utility)
Patent Application'. 
Basically, drawing with black ink or computer, use only that ink for all
shading (no grey, use dots or lines for shading), use zebra stripes for
cross sections, make all numbers and letters legibly large, and make the
line going from each number or letter to the feature clear and unambiguous.

For design patents, the drawings can be much more difficult to generate
properly.  Make sure to consult the assistance of an experienced
professional if you are unsure!

##SUPPORT/WARRANTY:

There is no support or warranty provided for the use of this template. 
The authors wrote it because using LaTeX for filing patent applications is a
natural fit - and providing it to the public is a nice thing to do.

