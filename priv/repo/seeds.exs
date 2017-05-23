# alias NanoPlanner.Repo, as: Repo
# alias NanoPlanner.PlanItem, as: PlanItem
# alias NanoPlanner.Repo
# import NanoPlanner.Repo, only: [insert!: 2]
# import NanoPlanner.Repo, only: :functions
import NanoPlanner.Repo
alias NanoPlanner.PlanItem

insert! %PlanItem{
  name: "読書",
  description: "『走れメロス』を読む"
}

insert! %PlanItem{
  name: "買い物",
  description: "洗剤を買う"
}

insert! %PlanItem{
  name: "帰省",
  description: "新幹線の指定席を取る。お土産を買う。"
}
