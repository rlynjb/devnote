## Foundation Built-In and Custom Media Queries and Columns
This is an outline of Zurb Foundations' Media Query viewport rangaes, but from experience, I find myself creating custom ones since there is always a flaw on designs. So its always good to know that Zurb Foundation do offer custom media queries and custom rows and columns.

My idea to understanding how to implement Responsive to an existing website or a new one, I've first layed out a chart of its ranges.

small | medium | large | xlarge | xxlarge
--- | --- | --- | --- | ---
< 640px | 641px < 1024px | 1025px < 1440px | 1441px < 1920px | 1921px < 

I used these ranges as a guide for my media queries or atleast understand how to use small, medium, large, xlarge, xxlarge classnames.
But, while testing the design/responsive on my browser, I found design elements that don't fit in its range/s. For example, the medium size range which is design for tablets. Lower boundary of 641px is too narrow and an upper boundary of 1024px might be too wide.
I solved this issue by creating splits or halves for each ranges.

### Custom Medium Range

medium 1st half | medium 2nd half
--- | ---
641px < 840px | 841px < 1024px

This pretty much solved my media query issue. In Foundations' default Medium Range
```
$medium-range: (40.063em, 64em);
```
So in my foundation override sass file.
```
$medium-1st-half-range: (40.063em, 50.000em);
$medium-2nd-half-range: (50.063em, 64em);
```
* Note: you can still use px when planning the widths, but there is an online tool, pxtoem.com, to convert px to ems. There is a reason why Foundation uses ems instead of px, this plays a big part of Responsive Design.

We can still use Foundations' default medium range, but if there are any detailed styling that needs fixed, the Splits/Halves (atleast thats what I call it) is what I use.
