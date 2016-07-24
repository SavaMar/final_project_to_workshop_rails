module WeaponsHelper
  def currency(price)
    agent = Mechanize.new
    page = agent.get("http://finance.i.ua/bank/10/")
    # review_meta = page.search('.local_table')
    # usd =  review_meta.search('tr')[1].search('td big')[0].text
    usd = page.search('big')[0].text
    full = usd.to_f*price.fractional
    Money.new(full, "USD")
  end
end
