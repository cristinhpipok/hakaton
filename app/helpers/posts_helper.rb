module PostsHelper
  def form_title
    @post.new_record? ? "New post" : "Edit Post"
  end
end
