// SPDX-License-Identifier: MIT
pragma solidity >=0.6.8 <0.7.0;

import "../interfaces/IBaseGrant.sol";


/**
 * @title Grants Spec Abstract Contract.
 * @dev Grant request, funding, and management.
 * @author @NoahMarconi @ameensol @JFickel @ArnaudBrousseau
 */
abstract contract AbstractBaseGrant is IBaseGrant {

    /*----------  Globals  ----------*/

    /* solhint-disable max-line-length */
    bytes private uri;                            // URI for additional (off-chain) grant details such as description, milestones, etc.
    address private currency;                     // (Optional) If null, amount is in wei, otherwise address of ERC20-compliant contract.
    uint256 private targetFunding;                // (Optional) Funding threshold required to begin releasing funds.
    uint256 private totalPaid;                    // Cumulative funding paid to grantees.
    uint256 private fundingDeadline;              // (Optional) Date after which signal OR funds cannot be sent.
    uint256 private contractExpiration;           // (Optional) Date after which payouts must be complete or anyone can trigger refunds.
    bool private grantCancelled;                  // Flag to indicate when grant is cancelled.
    /* solhint-enable max-line-length */


    function setTotalPaid(uint256 value)
        internal
    {
        totalPaid = value;
    }

    function setGrantCancelled(bool value)
        internal
    {
        grantCancelled = value;
    }
}
