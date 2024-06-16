class Solution {
    public String solution(String rsp) {
        String answer = "";
        String[] list = rsp.split("");
        
        for (int i = 0; i < list.length; i++) {
            if (list[i].equals("0")) answer += "5";
            else if (list[i].equals("2")) answer += "0";
            else answer += "2";
        }
        
        return answer;
    }
}