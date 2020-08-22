enum Rarity {
  one,
  two,
  three,
  four,
  five,
  six,
}

extension RarityValues on Rarity {
  int get value {
    switch (this) {
      case Rarity.one:
        return 0;

      case Rarity.two:
        return 1;

      case Rarity.three:
        return 2;

      case Rarity.four:
        return 3;

      case Rarity.five:
        return 4;

      case Rarity.six:
        return 5;

      default:
        return -1;
    }
  }
}
