class Solution {
    public int maximumLengthSubstring(String s) {

        int[] count = new int[26];

        int left = 0;
        int maxLength = 0;

        for (int right = 0; right < s.length(); right++) {

            int index = s.charAt(right) - 'a';
            count[index]++;

            while (count[index] > 2) {
                int leftIndex = s.charAt(left) - 'a';
                count[leftIndex]--;
                left++;
            }

            maxLength = Math.max(maxLength, right - left + 1);
        }

        return maxLength;
    }
}