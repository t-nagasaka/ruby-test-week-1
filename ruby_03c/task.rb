class Task

  @@count = 0

  attr_reader :id

  def initialize(**params)
    @name = params[:name]
    @content = params[:content]
    @@count += 1
    @id = @@count
  end

  def info
    "タスクNo.#{@id} #{@name}:#{@content} "
  end

end