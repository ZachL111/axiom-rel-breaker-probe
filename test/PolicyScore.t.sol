// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(87, 92, 9, 15, 5);
        require(scorer.score(signal) == 174, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_2() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(90, 86, 25, 7, 7);
        require(scorer.score(signal) == 184, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_3() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(71, 95, 12, 15, 12);
        require(scorer.score(signal) == 171, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
}
