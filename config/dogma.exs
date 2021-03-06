use Mix.Config
alias Dogma.Rule

config :dogma,
  rule_set: Dogma.RuleSet.All,
  exclude: [
    ~r(\Arel/),
    ~r(\Adeps/)
  ],
  override: [
    %Rule.LineLength{max_length: 120},
    # TODO: https://github.com/lpil/dogma/issues/201
    %Rule.TakenName{enabled: false},
    %Rule.InfixOperatorPadding{enabled: false},
    %Rule.FunctionArity{max: 6}
  ]
