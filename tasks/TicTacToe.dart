import 'dart:io';
import '../utils/index.dart';

void main(List<String> args) {
  List<List<int>> board = createBoard();

  showBoard(board);

  int playerNum = 1;
  while (true) {
    print('Player ${playerNum}, choice location.');
    List<int> loc = choiceLoc(board);
    int row = loc[0];
    int col = loc[1];
    board[row][col] = playerNum;

    showBoard(board);

    if (isBoardAllPlaced(board)) {
      print('Draw! Board is all placed.');
      break;
    }

    if (check(board, playerNum)) {
      print('Winner is ${playerNum}');
      break;
    }

    playerNum = playerNum == 1 ? 2 : 1;
  }

  showBoard(board);
}

bool check(List<List<int>> board, int playerNum) {
  return checkHorizon(board, playerNum) ||
      checkVertical(board, playerNum) ||
      checkOblique(board, playerNum);
}

bool checkHorizon(List<List<int>> board, int playerNum) {
  for (var row = 0; row < 3; row++) {
    if (board[row].every((num) => num == playerNum)) return true;
  }

  return false;
}

bool checkVertical(List<List<int>> board, int playerNum) {
  for (var col = 0; col < 3; col++) {
    bool isValid = true;
    for (var row = 0; row < 3; row++) {
      if (board[row][col] != playerNum) {
        isValid = false;
        break;
      }
    }
    if (isValid) {
      return true;
    }
  }

  return false;
}

bool checkOblique(List<List<int>> board, int playerNum) {
  bool isValid = true;
  for (var row = 0; row < 3; row++) {
    if (board[row][row] != playerNum) {
      isValid = false;
      break;
    }
  }
  if (isValid) {
    return true;
  }

  isValid = true;
  for (var row = 0; row < 3; row++) {
    if (board[row][2 - row] != playerNum) {
      isValid = false;
      break;
    }
  }
  if (isValid) {
    return true;
  }

  return false;
}

List<int> choiceLoc(List<List<int>> board) {
  int row = choiceRow();
  int col = choiceCol();
  while (board[row][col] != 0) {
    print('This local can not placed.');
    row = choiceRow();
    col = choiceCol();
  }

  return [row, col];
}

int choiceRow() {
  stdout.write('Please input row : ');
  return getInputNum(min: 0, max: 3);
}

int choiceCol() {
  stdout.write('Please input col : ');
  return getInputNum(min: 0, max: 3);
}

bool isBoardAllPlaced(board) {
  return board.every((row) => !row.contains(0));
}

List<List<int>> createBoard() {
  return List.generate(3, (index) => List.generate(3, (index) => 0));
}

void showBoard(List<List<int>> board) {
  for (var i = 0; i < board.length; i++) print(board[i]);
}
