class Solution {
    public int findMaxConsecutiveOnes(int[] nums) {
         int max = 0, current = 0;

        for (int num : nums) {
            if (num == 1) {
                current++;          
                if (current > max)  
                    max = current;
            } else {
                current = 0;     
            }
        }
        return max;
        
    }
}