(function () {
    var ltr = function(s) {
        return "\u200e" + s + "\u200e";
    };
    /* Order is important, ambiguity is resolved by precedence */
    var symbol_map = [
        [(/\<-\>/g), "↔"],
        [(/\<=\>/g), "↔"],
        [(/\-\>/g), "→"],
        [(/&/g), "∧"],
        [(/\^/g), "∧"],
        [(/\|\|/g), "∨"],
        [(/V/g), "∨"],
        [(/!/g), '¬'],
        [(/~/g), '¬'],
        [(/=/g), '≡']
    ];

    var activeElement = document.activeElement;

    var selectionStart = activeElement.selectionStart;
    var selectionEnd = activeElement.selectionEnd;

    var prefix = activeElement.value.substring(0, selectionStart);
    var suffix = activeElement.value.substring(selectionEnd,
                                               activeElement.value.length);
    var selectedText = activeElement.value.substring(selectionStart,
                                                     selectionEnd);

    var resultText = ltr(selectedText);
    for (var i = 0; i < symbol_map.length; i++) {
        var mapping = symbol_map[i];
        var asciiSymbol = mapping[0];
        var unicodeSymbol = mapping[1];
        resultText = resultText.replace(asciiSymbol, ltr(unicodeSymbol));
    }

    activeElement.value = prefix + resultText + suffix;
})();

