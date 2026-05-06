// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/DomainReview.sol";

contract DomainReviewTest {
    function testDomainReviewLane() public pure {
        DomainReview lens = new DomainReview();
        DomainReview.Item memory item = DomainReview.Item(47, 35, 22, 50);
        require(lens.score(item) == 113, "domain score mismatch");
        require(lens.lane(item) == 1, "domain lane mismatch");
    }
}
