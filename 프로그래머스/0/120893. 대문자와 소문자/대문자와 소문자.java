class Solution {
    public String solution(String my_string) {
        String result = "";
        String[] list = my_string.split("");
        
        for (int i = 0; i < list.length; i++) {
            if (Character.isLowerCase(list[i].charAt(0))) result += list[i].toUpperCase();
            else result += list[i].toLowerCase();
        }
        
        return result;
    }
}