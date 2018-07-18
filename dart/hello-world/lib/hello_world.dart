class HelloWorld {
  String hello([String name]) {
    String result = name != null && name.isNotEmpty ? name : "World"; 
    
    return "Hello, $result!";
  }
}
