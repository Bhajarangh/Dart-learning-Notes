void main() {
    String geek = "Bhajarangh";
    try {
        int result = int.parse(geek);
    } on FormatException {       // we know exactly what is the error.
        print('Hey bro, I cant convert int to String');
    }
}
