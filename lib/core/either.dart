sealed class Either<L, R> {
  const Either();
  factory Either.left(L value) => Left(value);
  factory Either.right(R value) => Right(value);
}

class Left<L, R> extends Either<L, R> {
  const Left(this.value);
  final L value;
}

class Right<L, R> extends Either<L, R> {
  const Right(this.value);
  final R value;
}
