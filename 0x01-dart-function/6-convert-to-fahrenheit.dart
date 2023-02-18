List<double> convertToF(List<double> temperaturesInC) {
    var new_list = <double>[];
    for (var i = 0; i < temperaturesInC.length; i += 1) {
        new_list.add(double.parse((temperaturesInC[i] * 9 / 5 + 32).toStringAsFixed(2)));
    }
    return new_list;
}
