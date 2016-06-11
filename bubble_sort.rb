
def bubble_sort(arr)
	for i in 0..(arr.length()-1)
		for j in 0..arr.length-2-i
			if arr[j] > arr[j+1]
				arr[j], arr[j+1] = arr[j+1], arr[j]
			end
		end
	end
	return arr
end

puts bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr)
	for i in 0..(arr.length()-1)
		for j in 0..arr.length-2-i
			if yield(arr[j],arr[j+1]) > 0
				arr[j], arr[j+1] = arr[j+1], arr[j]
			end
		end
	end
	return arr
end


puts bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }
puts bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length }