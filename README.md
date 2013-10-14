# JS-Logify
JS-Logify is a [bookmarklet](http://en.wikipedia.org/wiki/Bookmarklet) to convert logic expression in _similar_ [ASCII](http://en.wikipedia.org/wiki/Ascii) formatting to proper unicode logic runes.

# Installation
Just drag the link below to you bookmark bar.

[logify](javascript:@JS@40;function@JS@40;){for@JS@40;var d=[[/<->/g,"2194"],[/<=>/g,"2194"],[/->/g,"2192"],[/@JS@/g,"2227"],[/^/g,"2227"],[/||/g,"2228"],[/V/g,"2228"],[/!/g,"00ac"],[/~/g,"00ac"],[/=/g,"2261"]],a=document.activeElement,b=a.selectionStart,c=a.selectionEnd,f=a.value.substring@JS@40;0,b),g=a.value.substring@JS@40;c,a.value.length),b="200e"+a.value.substring@JS@40;b,c)+"200e",c=0;c<d.length;c++)var e=d[c],b=b.replace@JS@40;e[0],"200e"+e[1]+"200e");a.value=f+b+g})@JS@40;);)
