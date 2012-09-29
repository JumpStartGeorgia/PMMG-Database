# encoding: utf-8
module Call1sHelper
  
  def yn_label(value)
    if value.nil?
      ''
    elsif value == true
      'დიახ'
    else value == false
      'არა'
    end
  end

end
