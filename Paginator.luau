-- Created by ToastEngine
-- https://www.roblox.com/users/7177436/profile

local Paginator = {}
Paginator.__index = Paginator

function Paginator.new(items, itemsPerPage)
	local self = setmetatable({}, Paginator)
	self.items = items or {}
	self.itemsPerPage = itemsPerPage or 10
	self.currentPage = 1
	return self
end

function Paginator:setItems(items)
	self.items = items
end

function Paginator:setItemsPerPage(itemsPerPage)
	self.itemsPerPage = itemsPerPage
end

function Paginator:getCurrentPage()
	return self.currentPage
end

function Paginator:setCurrentPage(page)
	self.currentPage = math.min(math.max(page, 1), self:getTotalPages())
end

function Paginator:getTotalPages()
	return math.ceil(#self.items / self.itemsPerPage)
end

function Paginator:getItemsForCurrentPage()
	local startIndex = (self.currentPage - 1) * self.itemsPerPage + 1
	local endIndex = math.min(startIndex + self.itemsPerPage - 1, #self.items)
	local pageItems = {}
	for i = startIndex, endIndex do
		table.insert(pageItems, self.items[i])
	end
	return pageItems
end

function Paginator:nextPage()
	self:setCurrentPage(self.currentPage + 1)
end

function Paginator:previousPage()
	self:setCurrentPage(self.currentPage - 1)
end

return Paginator
