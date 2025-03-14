// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

interface IJBSwapTerminal {
    function DEFAULT_PROJECT_ID() external view returns (uint256);
    function MAX_TWAP_SLIPPAGE_TOLERANCE() external view returns (uint256);
    function MIN_TWAP_SLIPPAGE_TOLERANCE() external view returns (uint256);
    function MAX_TWAP_WINDOW() external view returns (uint256);
    function MIN_TWAP_WINDOW() external view returns (uint256);
    function SLIPPAGE_DENOMINATOR() external view returns (uint160);
    function MIN_DEFAULT_POOL_CARDINALITY() external view returns (uint16);

    function addDefaultPool(uint256 projectId, address token, IUniswapV3Pool pool) external;
    function addTwapParamsFor(
        uint256 projectId,
        IUniswapV3Pool pool,
        uint256 secondsAgo,
        uint256 slippageTolerance
    )
        external;
}
