class Solution {
    public int[] solution(int[] num_list, int n) {
        int[] answer = new int[num_list.length - n + 1];
        
        for (int j = 0; j < answer.length; j++) {
            answer[j] = num_list[n - 1 + j];
        }
        
        return answer;
    }
}