module ApplicationHelper
  def render_stars(rating)
    full_star = "★"
    empty_star = "☆"

    full_star * rating + empty_star * (5 - rating)
  end
end
