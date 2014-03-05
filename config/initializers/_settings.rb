App = Hashie::Mash.new

App.name = "The Talent Auction"

App.url = Rails.env.development? ? "localhost:3000" : "talentauction.herokuapp.com"

App.currency = "USD"

App.emails = {
  admin:      "helloluis@me.com",
  sales:      "helloluis@me.com",
  support:    "helloluis@me.com",
  accounting: "helloluis@me.com"
}
