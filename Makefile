-include .env
build:; 

deploy-sepolia: 
	forge script script/DeployFundMe.s.sol 
	--rpc-url $(SEPOLIA_RPC_URL) --private-key $(SEPOLIA_PRIVATE_KEY) 
	--broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY)
	-vvvv
