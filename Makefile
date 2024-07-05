-include .env

deploy-sepolia:
	forge script script/DeployPfpNft.s.sol --rpc-url $(ETHEREUM_SEPOLIA_RPC_URL) --account key --verify --etherscan-api-key $(ETHERSCAN_API_KEY) --broadcast -vvvv

mint-sepolia:
	forge script script/Interactions.s.sol:MintPfpNft --rpc-url $(ETHEREUM_SEPOLIA_RPC_URL) --account key --verify --etherscan-api-key $(ETHERSCAN_API_KEY) --broadcast -vvvv
