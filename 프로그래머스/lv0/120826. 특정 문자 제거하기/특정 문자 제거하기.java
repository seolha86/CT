class Solution {
    public String solution(String my_string, String letter) {
        String answer = "";
        
        String[] myString = my_string.split("");
        String[] str = new String[my_string.length()];
        
        for (int i = 0; i < str.length; i++) {
            if (!myString[i].equals(letter)) {
                answer += myString[i];
            }
        }
        
        return answer;
    }
}