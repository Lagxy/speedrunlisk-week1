-include .env

.PHONY: deploy_lisk_sepolia

# Target to deploy and verify
deploy_lisk_sepolia:
	@if [ -z "$(SCRIPT)" ]; then \
		echo "Error: SCRIPT is not set. Usage: make deploy_lisk_sepolia SCRIPT=path/to/file.s.sol:ContractName"; \
		exit 1; \
	fi
	@forge script $(SCRIPT) \
		--rpc-url $(LISK_SEPOLIA_RPC) \
		--private-key $(PRIVATE_KEY) \
		--broadcast \
		--verify \
		--verifier $(VERIFIER) \
		--verifier-url $(VERIFIER_SEPOLIA_URL)