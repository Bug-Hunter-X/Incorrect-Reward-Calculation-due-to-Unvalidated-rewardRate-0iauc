contract RewardCalculator {
    uint256 public rewardRate;

    constructor(uint256 _rewardRate) {
        rewardRate = _rewardRate; 
    }

    function calculateReward(address userAddress, uint256 contribution) public view returns (uint256) {
        require(contribution > 0, "Contribution cannot be zero"); // Validate contribution
        uint256 reward = contribution * rewardRate;
        return reward; 
    }
    
    function getRewardRate() public view returns (uint256) {
        return rewardRate;
    }
} 