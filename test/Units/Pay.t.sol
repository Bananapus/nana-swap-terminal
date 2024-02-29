// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "../helper/UnitFixture.sol";

contract Pay is UnitFixture {
    address sender;

    function setUp() public override {
        super.setUp();

        sender = makeAddr("sender");
    }

    function test_PayWhenTokenInIsTheNativeToken() external {
        vm.skip(true);

        // it should use weth as tokenIn
        // it should set inIsNativeToken to true
        // it should use msg value as amountIn
    }

    modifier whenTokenInIsAnErc20Token() {
        _;
    }

    function test_PayWhenTokenInIsAnErc20Token() external whenTokenInIsAnErc20Token {
        vm.skip(true);

        // it should use tokenIn as tokenIn
        // it should set inIsNativeToken to false
        // it should use amountIn as amountIn
    }

    function test_PayRevertWhen_AMsgValueIsPassedAlongAnErc20Token() external whenTokenInIsAnErc20Token {
        vm.skip(true);

        // it should revert
    }

    function test_PayWhenTokenInUsesAnErc20Approval() external whenTokenInIsAnErc20Token {
        vm.skip(true);

        // it should use the token transferFrom
    }

    modifier whenPermit2DataArePassed() {
        _;
    }

    function test_PayWhenPermit2DataArePassed() external whenTokenInIsAnErc20Token whenPermit2DataArePassed {
        vm.skip(true);

        // it should use the permit2 call
    }

    function test_PayRevertWhen_ThePermit2AllowanceIsLessThanTheAmountIn()
        external
        whenTokenInIsAnErc20Token
        whenPermit2DataArePassed
    {
        vm.skip(true);

        // it should revert
    }

    modifier whenAQuoteIsProvided() {
        _;
    }

    function test_PayWhenAQuoteIsProvided() external whenAQuoteIsProvided {
        vm.skip(true);

        // it should use the quote as amountOutMin
        // it should use the pool passed
        // it should use the token passed as tokenOut
    }

    function test_PayRevertWhen_TheAmountReceivedIsLessThanTheAmountOutMin() external whenAQuoteIsProvided {
        vm.skip(true);

        // it should revert
    }

    function test_PayWhenTheTokenOutIsTheNativeToken() external whenAQuoteIsProvided {
        vm.skip(true);

        // it should use weth as tokenOut
        // it should set outIsNativeToken to true
    }

    modifier whenNoQuoteIsPassed() {
        _;
    }

    function test_PayWhenNoQuoteIsPassed() external whenNoQuoteIsPassed {
        vm.skip(true);

        // it should use the default pool
        // it should take the other pool token as tokenOut
        // it should get a twap and compute a min amount
    }

    function test_PayRevertWhen_NoDefaultPoolIsDefined() external whenNoQuoteIsPassed {
        vm.skip(true);

        // it should revert
    }

    function test_PayRevertWhen_TheAmountReceivedIsLessThanTheTwapAmountOutMin() external whenNoQuoteIsPassed {
        vm.skip(true);

        // it should revert
    }

    function test_PayWhenTheOtherPoolTokenIsTheNativeToken() external {
        vm.skip(true);

        // it should use weth as tokenOut
        // it should set outIsNativeToken to true
        // it should unwrap the tokenOut after swapping
        // it should use the native token for the next terminal pay()
    }

    function test_PayWhenTheTokenOutIsAnErc20Token() external {
        vm.skip(true);

        // it should use tokenOut as tokenOut
        // it should set outIsNativeToken to false
        // it should set the correct approval
        // it should use the tokenOut for the next terminal pay()
    }

    function test_PayRevertWhen_TheTokenOutHasNoTerminalDefined() external {
        vm.skip(true);

        // it should revert
    }
}