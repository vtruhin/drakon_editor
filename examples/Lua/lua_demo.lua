-- Autogenerated with DRAKON Editor 1.27
print("Lua is cool.")


function Main()
    -- item 52
    print("DRAKON-Lua demo")
    print("===============")
    -- item 405
    alt_select_test()
    -- item 189
    foreachDemo()
    -- item 50
    quicksortDemo()
    -- item 356
    local result = "success"
    -- item 355
    return result
end

function alt_select_test(static)
    -- item 360
    alternative_select(-100, -1)
    alternative_select(100, 1)
    alternative_select(0, 0)
end

function alternative_select(value, expected)
    -- item 368
    local actual = 0
    -- item 3690001
    if value < 0 then
        -- item 377
        actual = -1
    else
        -- item 3690002
        if value == 0 then
            -- item 378
            actual = 0
        else
            -- item 379
            actual = 1
        end
    end
    -- item 380
    if actual == expected then
        
    else
        -- item 386
        error("alt select failure!\n")
    end
    -- item 3900001
    if value < 0 then
        -- item 398
        actual = -1
    else
        -- item 3900002
        if value == 0 then
            -- item 399
            actual = 0
        else
            -- item 3900003
            if value > 0 then
                
            else
                -- item 3900004
                error("Condition was not detected.")
            end
            -- item 400
            actual = 1
        end
    end
    -- item 401
    if actual == expected then
        
    else
        -- item 406
        error("alt select failure!\n")
    end
end

function arrayToString(array)
    local i
    -- item 267
    local result = ""
    local current
    -- item 2650001
    i = 1
    while true do
        -- item 2650002
        if i <= #array then
            
        else
            normal_ = 0
            break
        end
        -- item 269
        current = array[i]
        -- item 303
        if result == "" then
            -- item 306
            result = current
        else
            -- item 268
            result = result .. " " .. current
        end
        -- item 2650003
        i = i + 1
    end
    -- item 270
    return result
end

function ascComparer(left, right)
    -- item 271
    if left < right then
        -- item 274
        return -1
    else
        -- item 275
        if left > right then
            -- item 278
            return 1
        else
            -- item 279
            return 0
        end
    end
end

function compare(comparer, array, leftIndex, rightIndex)
    -- item 245
    local left = array[leftIndex]
    local right = array[rightIndex]
    -- item 244
    return comparer(left, right)
end

function descComparer(left, right)
    -- item 285
    if left < right then
        -- item 287
        return 1
    else
        -- item 288
        if left > right then
            -- item 291
            return -1
        else
            -- item 292
            return 0
        end
    end
end

function fibonacci(n)
    local i
    -- item 185
    local result = {0}
    -- item 1610001
    if n == 0 then
        
    else
        -- item 1610002
        if n == 1 then
            -- item 293
            table.insert(result, 1)
        else
            -- item 294
            table.insert(result, 1)
            -- item 1710001
            i = 2
            while true do
                -- item 1710002
                if i <= n then
                    
                else
                    normal_ = 0
                    break
                end
                -- item 172
                local f2 = result[i - 1]
                local f1 = result[i]
                local fib = f1 + f2
                -- item 295
                table.insert(result, fib)
                -- item 1710003
                i = i + 1
            end
        end
    end
    -- item 176
    return result
end

function foreachDemo()
    -- item 155
    print("iteration demo")
    -- item 153
    local sequence = fibonacci(15)
    -- item 154
    printListArrow(sequence)
    printListBackward(sequence)
    printListFor(sequence)
    
    printListForeach(sequence)
    -- item 156
    print()
    -- item 437
    test_early(20, 60)
    -- item 438
    test_early(35, 70)
    -- item 439
    test_early(4, 0)
end

function foreach_early_exit(value)
    -- item 436
    local found
    local normal_419
    normal_419 = 1
    for _, x in pairs({10, 20, 30}) do
        -- item 423
        if x == value then
            -- item 427
            found = x
            normal_419 = 0
            break
        else
            
        end
    end
    if normal_419 == 1 then
        -- item 426
        found = 0
    end
    for _, x in pairs({40, 20, 70}) do
        -- item 435
        local m = x / 2
        -- item 430
        if m == value then
            -- item 434
            return x + found
        else
            
        end
    end
    -- item 433
    return 0
end

function output(text)
    -- item 302
    io.write(text, " ")
end

function printListArrow(collection)
    -- item 131
    print("using if and arrow:")
    -- item 126
    local i = 1
    while true do
        -- item 127
        if i <= #collection then
            
        else
            normal_ = 0
            break
        end
        -- item 125
        local item = collection[i]
        output(item)
        -- item 129
        i = i + 1
    end
    -- item 132
    print("")
end

function printListBackward(collection)
    -- item 313
    local n = #collection
    while true do
        -- item 314
        if n > 0 then
            
        else
            normal_ = 0
            break
        end
        -- item 312
        local item = collection[n]
        output(item)
        -- item 316
        n = n - 1
    end
    -- item 319
    print("")
end

function printListFor(collection)
    local j
    -- item 348
    local i
    -- item 142
    print("using for:")
    -- item 3500001
    j = 1
    while true do
        -- item 3500002
        if j <= #collection then
            
        else
            normal_ = 0
            break
        end
        -- item 353
        local item = collection[j]
        output(item)
        -- item 3500003
        j = j + 1
    end
    -- item 352
    print("")
    -- item 1390001
    i = 1
    while true do
        -- item 1390002
        if i <= #collection then
            
        else
            normal_ = 0
            break
        end
        -- item 183
        local item = collection[i]
        output(item)
        -- item 1390003
        i = i + 1
    end
    -- item 143
    print("")
end

function printListForeach(collection)
    -- item 119
    print("using foreach:")
    for item in pairs(collection) do
        -- item 116
        output(item)
    end
    -- item 118
    print("")
    for key, value in pairs(collection) do
        -- item 334
        output("(" .. key .. ", " .. value .. ")")
    end
    -- item 336
    print("")
end

function quicksort(comparer, collection, first, last)
    -- item 230
    local i
    local pivotIndex
    local storeIndex
    -- item 203
    local length = last - first + 1
    -- item 2040001
    if (length == 0) or (length == 1) then
        
    else
        -- item 2040003
        if length == 2 then
            -- item 219
            if compare(comparer, collection, first, last) <= 0 then
                
            else
                -- item 220
                swap(collection, first, last)
            end
        else
            -- item 223
            pivotIndex = first + math.floor(length / 2)
            -- item 231
            swap(collection, pivotIndex, last)
            storeIndex = first
            -- item 2240001
            i = first
            while true do
                -- item 2240002
                if i < last then
                    
                else
                    normal_ = 0
                    break
                end
                -- item 232
                if compare(comparer, collection, i, last) < 0 then
                    -- item 233
                    swap(collection, i, storeIndex)
                    storeIndex = storeIndex + 1
                else
                    
                end
                -- item 2240003
                i = i + 1
            end
            -- item 236
            swap(collection, storeIndex, last)
            -- item 237
            quicksort(comparer, collection, first, storeIndex)
            -- item 238
            quicksort(comparer, collection, storeIndex + 1, last)
        end
    end
end

function quicksortDemo()
    -- item 62
    print("quick sort demo")
    -- item 58
    local unsorted = { "the", "sooner", "we", "start", "this", "the", "better" }
    local sorted   = { "aa", "bb", "cc", "dd", "ee", "ff" }
    local reverse  = { "ff", "ee", "dd", "cc", "bb", "aa" }
    local empty    = {}
    local flat     = { "flat", "flat", "flat", "flat", "flat" }
    -- item 59
    local comparer = ascComparer
    quicksort(comparer, unsorted, 1, #unsorted)
    quicksort(comparer, sorted, 1, #sorted)
    quicksort(comparer, reverse, 1, #reverse)
    quicksort(comparer, empty, 1, #empty)
    quicksort(comparer, flat, 1, #flat)
    -- item 61
    stringsAreSorted(unsorted)
    stringsAreSorted(sorted)
    stringsAreSorted(reverse)
    stringsAreSorted(empty)
    stringsAreSorted(flat)
    -- item 60
    print(arrayToString(unsorted))
    print(arrayToString(sorted))
    print(arrayToString(reverse))
    print(arrayToString(empty))
    print(arrayToString(flat))
end

function stringsAreSorted(array)
    local _iter71, _state71, i, current
    local _sw810000_ = 0
    local j = 0
    local length = #array
    local after
    local _next_item_ = 0
    _next_item_ = 710001
    while true do
        if _next_item_ == 710001 then
            _iter71, _state71, i = pairs(array) i, current = _iter71(_state71, i)
            _next_item_ = 710002
    
        elseif _next_item_ == 710002 then
            if i ~= nil then
                -- item 740001
                j = i + 1
                _next_item_ = 740002
            else
                return
            end
    
        elseif _next_item_ == 740002 then
            if j <= length then
                -- item 76
                after = array[j]
                _next_item_ = 810000
            else
                -- item 710003
                i, current = _iter71(_state71, i)
                _next_item_ = 710002
            end
    
        elseif _next_item_ == 810000 then
            _sw810000_ = descComparer(current, after)
            _next_item_ = 810001
    
        elseif _next_item_ == 810001 then
            if _sw810000_ == 1 then
                -- item 90
                _next_item_ = 740003
            else
                _next_item_ = 810002
            end
    
        elseif _next_item_ == 810002 then
            if _sw810000_ == 0 then
                -- item 89
                _next_item_ = 740003
            else
                _next_item_ = 810003
            end
    
        elseif _next_item_ == 740003 then
            j = j + 1
            _next_item_ = 740002
    
        elseif _next_item_ == 810003 then
            if _sw810000_ == -1 then
                _next_item_ = 88
            else
                -- item 810004
                error(_sw810000_)
                _next_item_ = 88
            end
    
        elseif _next_item_ == 88 then
            _next_item_ = 259
    
        elseif _next_item_ == 259 then
            print("current = " .. current)
            print("after = " .. after)
            print("collection = " .. arrayToString(array))
            print("result = " .. descComparer(current, after))
            print("...not sorted.")
            _next_item_ = 77
    
        elseif _next_item_ == 77 then
            error("Collection is not sorted.")
            return
    
        end
    end
end

function swap(array, leftIndex, rightIndex)
    -- item 252
    local left = array[leftIndex]
    local right = array[rightIndex]
    -- item 251
    array[leftIndex] = right
    array[rightIndex ] = left
end

function test_early(value, expected)
    -- item 445
    local actual = foreach_early_exit(value)
    -- item 446
    if actual == expected then
        
    else
        -- item 449
        error ("foreach_early_exit failed")
    end
end


Main()
