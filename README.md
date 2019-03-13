# r-mv-examples
Examples of multivariate statistical analysis using R for STAT505 

See [Penn State STAT505](https://newonlinecourses.science.psu.edu/stat505_sp19/lesson/0)

## Website Navigation

The code snippets are compiled into an R markdown website.  

This can be previewed online here (note: very slow rendering):  
[Rendered Markdown Site](http://htmlpreview.github.io/?https://github.com/cottieda/r-mv-examples/blob/master/_web/_site/index.html)

To view the site in the local repo, navigate to: 
```
\r-mv-examples\_web\_site\index.html
```

To rebuild the site locally, run:  
```
\r-mv-examples\_script\build_all.bat
```

## Editing/Adding Content
Contributors: Do not push code snippets, datasets, or other files related to the HW or exams.  
  
Before re-building the whole site, it is advisable to test-build any edited chapters by first running build_unit.bat.  
e.g. to rebuild \L1 chapter you'd run:  
```
\r-mv-examples\L1\build_unit.bat
```
When creating a new chapter, the following should be present in the new directory:  
 * 'source', 'out', and 'data' directories
 * build_unit.bat file

When creating new chapters, the following items must be followed due to the flat heirarchical nature of the R Markdown Website output:
 * .rmd documents must have unique names across the full project  
   * (e.g. \L1\source\test.rmd and \L2\source\test.rmd would create a conflict in the generated website even though individual units would build fine)
 * any datasets must have unique names across the full project  
   * (e.g. \L1\data\swiss.dat and \L2\data\swiss.dat would create a conflict in the generated website even though individual units would build fine)

Note that the formate of the generated website is not tied to the structure of the chapters.  
Instead, the output website format is defined in
```
\r-mv-examples\_site.yml
```

For additional info on how an R markdown website is structured see: 
[rmarkdown’s site generator](https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html)
