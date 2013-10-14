# JS-Logify
JS-Logify is a [bookmarklet](http://en.wikipedia.org/wiki/Bookmarklet) to convert logic expression in _similar_ [ASCII](http://en.wikipedia.org/wiki/Ascii) formatting to proper unicode logic runes.

# Installation
Just drag the link below to you bookmark bar.

1. Create a new bookmark
2. Name it 'logify'
3. Put this as the link
```javascrip
javascript:(function(){for(var d=[[/<->/g,"2194"],[/<=>/g,"2194"],[/->/g,"2192"],[/&/g,"2227"],[/^/g,"2227"],[/||/g,"2228"],[/V/g,"2228"],[/!/g,"00ac"],[/~/g,"00ac"],[/=/g,"2261"]],a=document.activeElement,b=a.selectionStart,c=a.selectionEnd,f=a.value.substring(0,b),g=a.value.substring(c,a.value.length),b="200e"+a.value.substring(b,c)+"200e",c=0;c<d.length;c++)var e=d[c],b=b.replace(e[0],"200e"+e[1]+"200e");a.value=f+b+g})();
```
