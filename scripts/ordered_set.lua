function new(items)
  local orderedSet = {
    node_for = {}, -- k: object, v: node
    head     = nil,
    tail     = nil,
    capacity = 0,
  }
  if (items) then
    for _, item in pairs(items) do
      insert(orderedSet, item)
    end
  end
  return orderedSet
end


function _find_node(orderedSet,index)
  local current = orderedSet.head
  local i = 1
  while (current) do
    if (i == index) then break end
    i = i + 1
    current = current._next
  end
  return current
end


function insert(orderedSet, item, index)
  if (orderedSet.node_for[item]) then
    return
  end

  local prev
  if (not index) then
    prev = orderedSet.tail
  else
    if (index > orderedSet.capacity + 1) then
      return
    end
    if (index < 1) then
      return
    end
    prev = (index == orderedSet.capacity + 1)
          and orderedSet.tail
          or (index == 1)
          and nil
          or orderedSet:_find_node(index)._prev
  end

  local node = {
    _item = item,
    _next = nil,
    _prev = prev,
  }

  if (prev) then
    local prev_next = prev._next
    prev._next = node
    node._next = prev_next
  end

  if (not orderedSet.head) then
    orderedSet.head = node
    orderedSet.tail = node
  end
  if ((index == 1) and (orderedSet.head)) then
    orderedSet.head._prev = node
    node._next = orderedSet.head
    orderedSet.head = node
  end

  if (not node._next) then
    orderedSet.tail = node
  end

  orderedSet.node_for[item] = node
  orderedSet.capacity = orderedSet.capacity + 1
end

function remove(orderedSet, item)
  local node = orderedSet.node_for[item]
  if (not node) then
    return
  end

  local _prev = node._prev
  local _next = node._next

  if (_prev) then
    _prev._next = _next
  else
    orderedSet.head = _next
  end

  if (_next) then
    _next._prev = _prev
  else
    orderedSet.tail = _prev
  end

  orderedSet.capacity = orderedSet.capacity - 1
  orderedSet.node_for[item] = nil
end

function pairs(orderedSet, reverse)
  local i, node, next_prop, step

  if (not reverse) then
    step = 1
    i = 0
    node = orderedSet.head
    next_prop = '_next'
  else
    step = -1
    i = orderedSet.capacity
    node = orderedSet.tail
    next_prop = '_prev'
  end

  local iterator = function() -- ignored
    if (node) then
      i = i + step
      local item = node._item
      node = node[next_prop]
      return i, item
    end
  end
  return iterator, nil, true
end