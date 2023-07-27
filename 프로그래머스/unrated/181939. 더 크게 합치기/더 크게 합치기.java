class Solution {
    public int solution(int a, int b) {
        String f = a + "" + b;
        String s = b + "" + a;
        
        return Integer.valueOf(f) > Integer.valueOf(s) ? Integer.valueOf(f) : Integer.valueOf(s);
    }
}