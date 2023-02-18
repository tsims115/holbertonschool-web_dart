void outer(String name, String id) {
    String inner() {
        String str = "Hello Agent ${name.split(' ')[1][0]}.${name.split(' ')[0]} your id is ${id}";
        return str;
    }
    print(inner());
}
