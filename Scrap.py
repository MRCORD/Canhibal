import requests

import pandas as pd
from bs4 import BeautifulSoup

url = 'https://www.fundserv.com/tools-and-training/tools/fund-profiles/'
response = requests.get(url)

bs_html = BeautifulSoup(response, 'lxml')
headers = [header.text for header in bs_html.find_all('th')]
headers_string = ""
for head in headers:
    headers_string = headers_string + head + ","
headers_string = headers_string[:-1] + "\n"

rows = []
table = bs_html.find("table")
for row in table.find_all('td'):
    rows.append(row.getText())
    
