void main(List<String> args) {
    int nb = int.parse(args[0]);
    if (nb > 0) {
        print("${nb} is positive");
    }
    if (nb == 0) {
        print("${nb} is zero");
    }
    if (nb < 0) {
        print("${nb} is negative");
    }
}
