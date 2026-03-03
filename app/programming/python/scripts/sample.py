import requests
# response = requests.get("https://example.com")
response = requests.get("https://ipecho.net/plain")
print(response.status_code)
print(response.text)
