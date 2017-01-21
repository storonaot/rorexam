class Image < ApplicationRecord
  belongs_to :theme

  scope :theme_images, -> (theme_id) { select('id','name','file','ave_value').where(theme_id: theme_id) }

  scope :find_image, -> (image_id) { find(image_id) }

  def self.update_ave_value(image_id, ave_value)
    image = find(image_id)
    image.update(ave_value: ave_value)
  end

  def self.show_valued_image(new_value_data)
    image_id = new_value_data[:image_id]
    theme_id = new_value_data[:theme_id]
    current_user_id = new_value_data[:user_id]
    user_valued, value = Value.user_valued_exists(current_user_id, image_id) # 1/0 ?
    values_qty = Value.all.count.round

    if user_valued == 1
      common_ave_value = find(image_id).ave_value.round
    else
      common_ave_value = 0
    end

    data = {
      values_qty: values_qty,
      current_user_id: current_user_id,
      theme_id: theme_id,
      image_id: image_id,
      user_valued: user_valued,
      value: value,
      common_ave_value: common_ave_value
    }
    data
  end

  def self.value_and_update(new_value_data)
    image_id = new_value_data[:image_id]
    theme_id = new_value_data[:theme_id]
    puts "in value_and_update: image_id = #{image_id} \n"
    Value.create(new_value_data)
    ave_value = Value.calc_average_value(image_id).round
    puts "in value_and_update: ave_value = #{ave_value} \n"
    update_ave_value(image_id, ave_value)

    show_valued_image(new_value_data)
  end

end
