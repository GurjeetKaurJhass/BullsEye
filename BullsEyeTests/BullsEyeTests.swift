/// Copyright (c) 2019 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import XCTest



//1. tell the test case about what project you want to test

//give this file access to the functions and variables

@testable import BullsEye



class BullsEyeTests: XCTestCase {
  
  
  
  //2. create global variable for bullsEyegame
  
  //java - BullsEyeGame game;
  
  var game : BullsEyeGame!
  
  
  
  override func setUp() {
    
    //3. initialize the global variable
    
    // JAVA: game = new BullsEyeGame
    
    game = BullsEyeGame();
    
  }
  
  
  
  override func tearDown() {
    
    //4. close the game
    
    game = nil
    
    super.tearDown()
    
  }
  
  
  
  //R1: Test that a new game started correctly
  
  //expected output: round=0, total points= 0
  
  //expected output is actually that round = 1, not 0
  
  func testStartNewGame(){
    //start a new game
    game.startNewGame();
    //Check that starting round number =1;
    XCTAssertEqual(1, game.round);
    //Check that total sharing point=0;
    XCTAssertEqual(0, game.scoreTotal);
  }
  
  
  
  func testStartNewRound(){
   
   //start a new game
    game.startNewGame()
    let initialRoundNumber=1;
    let initialRoundPoints=0;
    let initialTargetNumber=game.targetValue
   //check the initial state of the game
    XCTAssertEqual(initialRoundNumber, game.round);
    XCTAssertEqual(initialRoundPoints, game.scoreRound);
    
    
    
    
  }
}

