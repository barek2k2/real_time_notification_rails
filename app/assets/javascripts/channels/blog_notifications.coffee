App.blog_notifications = App.cable.subscriptions.create "BlogNotificationsChannel",
  connected: ->
    console.log('channel connected')
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#blogs_count").text(data.blogs_count)
    # Called when there's incoming data on the websocket for this channel
