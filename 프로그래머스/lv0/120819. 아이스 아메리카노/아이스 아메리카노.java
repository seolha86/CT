class Solution {
    public int[] solution(int money) {
        int c = 0;
        int m = 0;
        
        c = money / 5500;
        m = money % 5500;
        
        int[] answer = {c, m};
        return answer;
    }
}