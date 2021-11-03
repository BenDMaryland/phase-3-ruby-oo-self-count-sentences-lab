require 'pry'

class String
  # attr_accessor :sentence?, :question?, :exclamation?

  def sentence?
    self.slice(-1)=="."
  end

  def question?
    
    self.slice(-1)=="?"
  end

  def exclamation?
    self.slice(-1)=="!"
  end

  def count_sentences
 
    total_count=0
    array=self.split(//)
   
   period_count= array.filter {|letter| letter==="."  }
   question_count = array.filter {|letter| letter==="?"  }
  exla_count= array.filter {|letter| letter==="!"  }

  total_count= period_count+exla_count+question_count
  binding.pry
    total_count.length()
  end
end