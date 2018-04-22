module.exports = function(hljs) {
  return {
    lexems: '[A-z0-9\\-_]+',
    case_insensitive: false,
    keywords: {
      literal:
        'true false sin cos tan exp arcsin arccos arctan arctan2 and or not',
    },
    contains: [
      {
        className: 'keyword',
        begin: 'set-logic|declare-fun|check-sat|assert|Real|define-ode|exit|forall_t',
        relevance: 10
      },
      {
        className: 'built_in',
        begin: 'd\\/dt',
        relevance: 10
      },
      {
        className: 'built_in',
        begin: '=|<=|>=|>|<|\\*|\\^|\\+',
	relevence: 0
      },
      hljs.HASH_COMMENT_MODE,
      hljs.NUMBER_MODE,
    ]
  };
};