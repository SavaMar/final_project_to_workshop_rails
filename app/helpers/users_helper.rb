module UsersHelper

  def availability(user)
    if user.last_seen < Time.now - 1.hour
      "<div id='circle-logged-on'></div>".html_safe
    elsif user.last_seen > Time.now - 1.hour
      "<div id='circle-available'></div>".html_safe
    else
      "<div id='circle-logged-off'></div>".html_safe
    end

  end
end
