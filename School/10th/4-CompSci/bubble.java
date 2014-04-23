public class bubble {
	public static void main(String[] args) {

	}

	public static int[] bubble(int[] arr) {
		int temp;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; i < arr.length - i -1; j++) {
				if (arr[j] > arr[j+1]) {
					temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
				}
			}	
		}
		return arr;
	}
}

