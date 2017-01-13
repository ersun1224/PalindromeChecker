public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String sWord)
{

  sWord = noCapitals(sWord);
  sWord = noSpaces(sWord);
  sWord = onlyLetters(sWord);
  return(reverse(sWord).equals(sWord));
}
public String reverse(String sWord)
{
  String s = new String("");
    for(int i = sWord.length()-1; i >= 0; i--) {
      s = s + sWord.substring(i,i+1);
    }

  return s;
}





public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String s = new String("");
  for(int i = 0; i < sWord.length();i++) {
    if(sWord.substring(i,i+1).equals(" ") ){
      
    } else {
      s = s + sWord.substring(i,i+1);
    }
  }
  
  return s;
}

public String onlyLetters(String sString){
  String s = new String("");
  for(int i = 0; i < sString.length();i++) {
    if(Character.isLetter(sString.charAt(i)) == true) {
      s = s + sString.substring(i,i+1);
    }
  }
  
  return s;
}

