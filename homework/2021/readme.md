# LaTeX source files for Databse Homework

`main.tex` is the control file.  Directory `sets` contains homework problem sets sequential numbered to match the order of presented in the course.  The `listings` package used to typeset programming code (i.e., SQL syntax) is contained in the `coding.tex` file.  Colors and frame box packages are also included in `coding.tex`.  


## Directory Structure and Contents
```
|-- readme.md (this file)
|-- HW2.pdf
|-- HW3.pdf
|-- HW4.pdf
|-- HW5.pdf
|-- HW6.pdf
|-- HW7.pdf
|-- HW8.pdf
|-- HW9.pdf
|   |-- solutions
|   |   |-- HW2-sols.pdf
|   |   |-- HW3-sols.pdf
|   |   |-- HW4-sols.pdf
|   |   |-- HW5-sols.pdf
|   |   |-- HW6-sols.pdf
|   |   |-- HW7-sols.pdf
|   |   |-- HW8-sols.pdf
|   |   |-- HW9-sols.pdf
|   |-- latex
|   |   |-- 2.tex
|   |   |-- 3.tex
|   |   |-- 4.tex
|   |   |-- 5.tex
|   |   |-- 6.tex
|   |   |-- 7.tex
|   |   |-- 8.tex
|   |   |-- 9.tex
```


## Source file parameters
You will need to edit the file settings specific the course and homework.  These parameters start on Line 2 of `main.tex`.

```
% Course Information
\def\course{DSC301}
\def\professor{Quinlan}
\def\semesteryear{Spring 2021}

% Homework Specific
\def\hw{4} % HW # (header and input file)
\def\sols{1} % Include solutions? 1 or 0

```



### General Topics
1. Blank - A survey was given.
2. Introduction to databases
