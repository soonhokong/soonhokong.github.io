module.exports = function(hljs) {
  return {
    case_insensitive: false,
    keywords: {
      literal:
        'true false sin cos tan exp arcsin arccos arctan arctan2 and or not',
    },
    contains: [
      {
        className: 'keyword',
        begin: 'time mode invt flow jump init goal @',
        relevance: 10
      },
      {
        className: 'built_in',
        begin: 'd\\/dt'
      },
      {
        className: 'built_in',
        begin: '==>|=|>|<|<=|>=|\\*|-|\\^|\\+',
	relevence: 0
      },
      hljs.HASH_COMMENT_MODE,
      hljs.NUMBER_MODE,
    ]
  };
};