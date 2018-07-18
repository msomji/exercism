public enum Signal {

    WINK(1), //1
    DOUBLE_BLINK(2), // 2
    CLOSE_YOUR_EYES(4), // 4
    JUMP(8); // 8

    private final int point;

    Signal(int point) {
        this.point = point;
    }

    public int getPoint() {
        return point;
    }
}
