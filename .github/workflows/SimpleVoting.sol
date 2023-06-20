// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    mapping (bytes32 => uint256) public votesReceived;
    bytes32[] public candidateList;

    constructor(bytes32[] memory candidateNames) {
        candidateList = candidateNames;
    }

    function totalVotesFor(bytes32 candidate) view public returns (uint256) {
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }

    function voteForCandidate(bytes32 candidate) public {
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
    }

    function validCandidate(bytes32 candidate) view public returns (bool) {
        for (uint256 i = 0; i < candidateList.length; i++) {
            if (candidateList[i] == candidate) {
                return true;
            }
        }
        return false;
    }
}
这个合约允许用户在给定的候选人列表中进行投票，并记录每个候选人获得的票数。

要将这个合约上传到GitHub，你需要按照之前提到的GitHub上传步骤进行操作。在上传时，将合约代码放在一个名为 "SimpleVoting.sol" 的文件中，并按照步骤将代码推送到你的GitHub代码仓库。

请记住，上传到GitHub的代码库应该包含一个说明文件（例如README.md），其中包含关于代码库的详细信息、用法说明和示例等内容。

希望这个以太坊智能合约示例对你有所帮助！如果你还有其他问题，随时提问。






