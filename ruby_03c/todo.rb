class Todo


  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "#{task.info} を追加しました。"
  end


  def info
    puts "<タスク一覧>"
    @tasks.each do |task|
      puts "#{task.info}"
    end
  end


  def delete(id:)
    delete_task = @tasks.find{|task| task.id == id}
    if @tasks.delete(delete_task)
      puts "#{delete_task.info} を削除しました。"
    else
      puts "選択したタスクはありません"
    end
  end
end