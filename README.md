                          
 
# Paginator

[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/navendu-pottekkat/awesome-readme?include_prereleases)](https://img.shields.io/github/v/release/navendu-pottekkat/awesome-readme?include_prereleases)
[![GitHub](https://img.shields.io/github/license/navendu-pottekkat/awesome-readme)](https://img.shields.io/github/license/navendu-pottekkat/awesome-readme)

A paginator is like a bookmarker for data. Imagine you have a long list of items, like a book with many pages. Instead of showing all the items at once, which can be overwhelming, a paginator shows a small section of them at a time, like reading one page of a book before moving to the next.

 
# Usage

```lua
local Data = {"a", "b", "c", "d", "e", "f", "g"}

local Paginator = require(path.to.Paginator)
local PaginatedData = Paginator.new(Data, 3)

-- Print the first page --
for _, obj in pairs(PaginatedData:getItemsForCurrentPage())do
  print(obj)
end

PaginatedData.nextPage()
-- Print the second page --
for _, obj in pairs(PaginatedData:getItemsForCurrentPage())do
  print(obj)
end
```

# Functions

## setItemsPerPage(itemsPerPage)
Sets the amount of items per page.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:setItemsPerPage(itemsPerPage)
```

## setItems(items)
Sets the data set to use.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:setItems(items)
```

## getCurrentPage()
Gets the current page.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:getCurrentPage()
```

## setCurrentPage(page)
Sets the current page.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:setCurrentPage(page)
```

## getTotalPages()
Gets the total amount of pages.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:getTotalPages()
```

## getItemsForCurrentPage()
Gets items for current page.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:getItemsForCurrentPage()
```

## nextPage()
Goes to the next page.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:nextPage()
```
 
## previousPage()
Goes to the previopus page.

```lua
    local Data = {"a", "b", "c", "d", "e", "f", "g"}

    local Paginator = require(path.to.Paginator)
    local PaginatedData = Paginator.new(Data, 3)
    PaginatedData:previousPage()
```
# License


[MIT license](./LICENSE)


