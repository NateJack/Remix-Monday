ActionController::Base.session = {
  :key         => '_rjd2-remix_session',
  :secret      => 'a7c9d3f27743eb5920e8bbee3d805b84fb3d41bb064fb0398de214461a63e045d4707d273555e8a6d5301ffc3cd48d4fee365ead0a0d4b1c40881bf4d8a74119'
}

ActionController::Dispatcher.middleware.insert_before(
  ActionController::Session::CookieStore, 
  FlashSessionCookieMiddleware, 
  ActionController::Base.session_options[:key]
)