require 'houston'

# Environment variables are automatically read, or can be overridden by any specified options. You can also
# conveniently use `Houston::Client.development` or `Houston::Client.production`.
APN = Houston::Client.production

APN.certificate = File.read("insert_path_to_production_APNS_pem_file")

# An example of the token sent back when a device registers for notifications
token = "<insert device token you receive from APNS here>"

# Create a notification that alerts a message to the user, plays a sound, and sets the badge on the app
notification = Houston::Notification.new(device: token)
notification.alert = "Hello World!"

# Notifications can also change the badge count, have a custom sound, have a category identifier, indicate available Newsstand content, or pass along arbitrary data.
notification.badge = 42
notification.sound = "sosumi.aiff"
# notification.category = "INVITE_CATEGORY"
# notification.content_available = true
# notification.custom_data = {foo: "bar"}

# And... sent! That's all it takes.
APN.push(notification)
