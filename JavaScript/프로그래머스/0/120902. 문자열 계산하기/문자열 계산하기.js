const solution = str => new Function('"use strict"; return (' + str + ')')();