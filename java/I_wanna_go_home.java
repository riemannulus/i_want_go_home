class Person {
    private String name;
    I(String name) {
        this.name = name;
    }
    public void wanna(String Do) {
        System.out.println(name + " Wanna " + Do);
    }
}
class I_wanna_go_home {
    public static void main(String[] args) {
        Person I = new Person("I");
        I.wanna("Go Home");
    }
}
