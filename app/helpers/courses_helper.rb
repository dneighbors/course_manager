module CoursesHelper
  def render_cost(cost)
    return "Free" if cost.blank?
    "$ #{cost}"
  end
end
