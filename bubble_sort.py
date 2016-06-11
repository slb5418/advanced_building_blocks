
def bubble_sort(arr):

	for i in range(0, len(arr)-1):

		item1 = arr[i]
		item2 = arr[i+1]

		if item1 > item2:

			newarr = arr[0:i] + [item2, item1] + arr[i+2:]
			print (newarr)
			return bubble_sort(newarr)

	return arr

if __name__ == '__main__':
	print ( bubble_sort([4,3,78,2,0,2]))
