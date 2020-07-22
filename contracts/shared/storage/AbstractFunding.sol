// SPDX-License-Identifier: MIT
pragma solidity >=0.6.8 <0.7.0;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "../interfaces/IFunding.sol";


/**
 * @title Total Funding.
 * @dev Handles state for .
 * @author @NoahMarconi @ameensol @JFickel @ArnaudBrousseau
 */
abstract contract AbstractFunding is IFunding {
    using SafeMath for uint256;


    /*----------  Globals  ----------*/

    /* solhint-disable max-line-length */
    uint256 private totalFunding;                 // Cumulative funding donated by donors.
    /* solhint-enable max-line-length */


    /*----------  Shared Getters  ----------*/

    /**
     * @dev Cumulative funding donated by donors.
     */
    function getTotalFunding()
        external
        override
        view
        returns(uint256)
    {
        return totalFunding;
    }


    /*----------  Shared Setters  ----------*/

    /**
     * @dev Set cumulative funding donated by donors.
     * @param value new total funding amount.
     */
    function setTotalFunding(uint256 value)
        internal
    {
        totalFunding = totalFunding.add(value);
    }

}
