less-convert.bat
================

Convert less 2 css using windows bat, wsf and less.js. NO node.js, no rails.

Description
===========
 All pack based on less.js, .bat and .wsf is for a correctly run less.js  
 Thanks to the package there is no need to use node.js, rails. Nothing extra, small size, easy run by standard tools of windows.  
 
Usage:
======

    Single file: 
     >less-convert.bat input.less [output.css] [logfile] 
    Directory:   
     >less-convert.bat inputdir outputdir [logfile]
     
     if [logfile] is empty, log will be saved as %temp%\<name-with-a-path-delimited-by-dash>.log 
 
 For use in WebStorm, PhpStorm edit path in watchers.xml and import it.  
 in watchers.xml change parameter
 
     <option name="program" value="<path/to/your/less-convert.bat>" />