class Blog < ApplicationRecord
  after_create :broadcast_notification

  private
  def broadcast_notification
    data = {blogs_count: Blog.count, custom_html: '<div>hola!</div>'}
    ActionCable.server.broadcast 'blog_notifications_channel', data
  end
end
