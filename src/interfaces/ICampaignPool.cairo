use starknet::{ContractAddress, ClassHash};
use tokengiver::base::types::CampaignPool;
// *************************************************************************
//                              INTERFACE of TOKEN GIVER CAMPAIGN POOL
// *************************************************************************

#[starknet::interface]
pub trait ICampaignPool<TState> {
    fn create_campaign_pool(
        ref self: TState,
        registry_hash: felt252,
        implementation_hash: felt252,
        salt: felt252,
        recipient: ContractAddress,
        campaign_pool_id: u256,
    ) -> ContractAddress;

    fn donate_campaign_pool(ref self: TState, campaign_pool_address: ContractAddress, amount: u256);

    fn apply_to_campaign_pool(
        ref self: TState,
        campaign_address: ContractAddress,
        campaign_pool_address: ContractAddress,
        amount: u256
    );
    // fn upgrade(ref self: TState, new_class_hash: ClassHash);
}
