class I {
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
        I syru = new I("Syru");
        syru.wanna("Go Home");
    }
}
