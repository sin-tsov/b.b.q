module ApplicationHelper
    def user_avatar(user)
    'user.png'
  end

  def flash_class_name(name)
    case name
    when 'notice' then 'secondary'
    when 'alert'  then 'danger'
    else name
    end
  end

  def bootstrap_class_for(flash_type)
  {
    success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-success'
  }.stringify_keys[flash_type.to_s] || flash_type.to_s
end
def bootstrap_flash(opts = {})
  flash.each do |msg_type, message|
    concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)}", role: 'alert') do
      concat content_tag(:button, '×', class: 'close', data: { dismiss: 'alert' })
      concat message
    end)
  end
  nil
end

  def fa_icon(icon_class)
     content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
