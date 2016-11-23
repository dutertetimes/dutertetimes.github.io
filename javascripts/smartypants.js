// https://gist.github.com/danburzo/1cc866400cb4f810c493

function smartypants(str) {
  /* 
    Rules adapted from:
    http://www.leancrew.com/all-this/2010/11/smart-quotes-in-javascript/
  */
  return [
    [/(^|[-\u2014\s(\["])'/g, "$1\u2018"], // opening single quote
    [/'/g, "\u2019"], // closing single quote, apostrophe
    [/(^|[-\u2014/\[(\u2018\s])"/g, "$1\u201c"], // opening double quote
    [/"/g, "\u201d"], // closing double quote
    [/(\d)-(\d)/g, '$1\u2013$2'], // en dash in numerals
    [/\s?-{2,3}\s?/g, '\u2009\u2014\u2009'], // em dash 
    [/\.{3}/g, '\u2026'] // ellipsis
  ].reduce(function(str, rule) {
    return str.replace.apply(str, rule);
  }, str);
};
