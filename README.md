# JS-Logify
JS-Logify is a [bookmarklet](http://en.wikipedia.org/wiki/Bookmarklet) to convert logic expression in _similar_ [ASCII](http://en.wikipedia.org/wiki/Ascii) formatting to proper unicode logic runes.

# Installation
Just drag the link below to you bookmark bar.

[logify](javascript:&#40;function&#40;&#41;{for&#40;var d=[[/<->/g,"2194"],[/<=>/g,"2194"],[/->/g,"2192"],[/&/g,"2227"],[/^/g,"2227"],[/||/g,"2228"],[/V/g,"2228"],[/!/g,"00ac"],[/~/g,"00ac"],[/=/g,"2261"]],a=document.activeElement,b=a.selectionStart,c=a.selectionEnd,f=a.value.substring&#40;0,b&#41;,g=a.value.substring&#40;c,a.value.length&#41;,b="200e"+a.value.substring&#40;b,c&#41;+"200e",c=0;c<d.length;c++&#41;var e=d[c],b=b.replace&#40;e[0],"200e"+e[1]+"200e"&#41;;a.value=f+b+g}&#41;&#40;&#41;;)
