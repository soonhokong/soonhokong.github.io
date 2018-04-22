module.exports = function(hljs) {
    return {
        lexems: '[A-z0-9\\-_]+',
        keywords: '_',
        case_insensitive: false,
        contains: [
            {
                className: 'lean_keyword',
                begin: 'Theorem|Definition|Infix|Notation|Axiom|Variable|Coercion',
                relevance: 90
            },
            {
                className: 'op',
                begin: ':=|→|Π|λ',
                relevance: 10
            },
            {
                className: 'type',
                begin: 'Type',
                relevence: 10
            },
            {
                className: 'metavar',
                begin: '[\?]m[A-z]+',
                relevence: 10
            },
            hljs.NUMBER_MODE,
        ]
    };
};