class NbtTag < ActiveRecord::Base
  belongs_to :id_map
  belongs_to :nbt_tag
  has_many :nbt_tags
  
  def display_name
    return "asdf"#(self.nbt_tag.nil? ? "" : ".") + "{" + type_name + "}"# + self.name
  end
  
  def type_name
    case(self.type)
    when 0
      "End"
    when 1
      "Byte"
    when 2
      "Short"
    when 3
      "Int"
    when 4
      "Long"
    when 5
      "Float"
    when 6
      "Double"
    when 7
      "Byte Array"
    when 8
      "String"
    when 9
      "List"
    when 10
      "Compound"
    when 11
      "Int Array"
    end
  end
end
