require 'pry'

require_relative 'task'
require_relative 'todo'


task1 = Task.new(name: "洗濯", content: "8時までに干し終える")
task2 = Task.new(name: "仕事", content: "9時〜18時")
task3 = Task.new(name: "買物", content: "卵,ネギ")


todo = Todo.new
todo.add(task1)
todo.add(task2)
todo.add(task3)
todo.info
todo.delete(id: 1)
todo.info