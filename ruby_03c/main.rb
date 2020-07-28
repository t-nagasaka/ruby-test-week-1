require 'pry'

class Task

  @@count = 0

  attr_reader :name, :content, :id

  def initialize(**params)
    @name = params[:name]
    @content = params[:content]
    @@count += 1
    @id = @@count
  end
end

class Todo


  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "タスクNo.#{task.id} #{task.name}:#{task.content} を追加しました。"
  end


  def info
    puts "<タスク一覧>"
    @tasks.each do |task|
      puts "タスクNo.#{task.id} #{task.name}:#{task.content}"
    end
  end


  def delete(id:)
    delete_task = @tasks.find{|task| task.id == id}
    if @tasks.delete(delete_task)
      puts "タスクNo.#{delete_task.id} #{delete_task.name}:#{delete_task.content} を削除しました。"
    else
      puts "選択したタスクはありません"
    end
  end

  # def delete(id:)
  #   @tasks.each do |task|
  #     if task.id == id
  #       @tasks.reject!{|task|task.id == id}
  #       puts "タスクNo.#{task.id} #{task.name}:#{task.content} を削除しました。"
  #     end
  #   end
  # end

end

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