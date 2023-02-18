int whoWins(Map<String, int> team1, Map<String, int> team2) {
    int score1 = team1['Free throws']! + (2 * team1['2 pointers']!) + (3 * team1['3 pointers']!);
    int score2 = team2['Free throws']! + (2 * team2['2 pointers']!) + (3 * team2['3 pointers']!);
    if (score1 > score2) {
        return 1;
    }
    if (score1 < score2) {
        return 2;
    }
    return 0;
}
