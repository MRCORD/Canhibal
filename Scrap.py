import requests
from bs4 import BeautifulSoup


url = "https://www.fundserv.com/tools-and-training/tools/fund-profiles/"
page = requests.get(url)

print(page.content)

soup = BeautifulSoup(page.content, 'html.parser')
print(soup.prettify())

tb = soup.find('table', class_='data-t wpDataTable')

for link in tb.find_all('tr'):
    name = link.find('td')
    print(name.get_text('style'))
