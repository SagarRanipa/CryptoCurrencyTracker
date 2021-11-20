
# Crypto Currency Tracker App

SwiftUI app Built with MVVM architecture and is 100% written in Swift.
It can be used to track live prices of crypto coins and to create mock portfolio.
Using Combine framework with Subscribers/Publishers for efficient Data loading and
CoreData for Local Data Persistance.


## API Reference

#### Get all coins

```http
  GET https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `vs_currency` | `string` | **Required**. currency format |
| `order` | `string` | valid values: market_cap_desc, gecko_desc, gecko_asc, market_cap_asc, market_cap_desc, volume_asc, volume_desc, id_asc, id_desc |
| `per_page` | `integer` |  Total results per page |
| `page` | `integer` | Page through results |
| `sparkline` | `boolean` | Include sparkline 7 days data (eg. true, false)
| `price_change_percentage` | `string` | Include price change percentage in 1h, 24h, 7d, 14d, 30d, 200d, 1y |

 

#### Get details for coins

```http
  GET /coins/{id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. pass the coin id (can be obtained from /coins) eg. bitcoin |




## Language

 Swift - 100%




## Features

- Light/dark mode 
- Live prices
- portfolio 
- iphone and ipad support
- MVVM architecture
- search Features
- Details page 
- Combine Framework 
- CoreData


