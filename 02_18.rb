task1 = { name: "洗濯", detail: "8時までに干し終える" }
task2 = { name: "仕事", detail: "9時〜18時" }

def info name:, detail:
  p "[タスク名] #{name} [タスク詳細] #{detail}"
end

info(task1)
info(task2)