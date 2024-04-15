/// Module: mint_suifren
module mint_suifren::mint_suifren {
    use sui::coin::{Self, TreasuryCap};

    // One-time witness
    public struct MINT_SUIFREN has drop {}

    fun init(otw: MINT_SUIFREN, ctx: &mut TxContext) {
        let (treasury, metadata) = coin::create_currency(
            otw,
            9,
            b"CANDY",
            b"SuiFren Candy",
            b"Candies to level up SuiFren",
            option::none(),
            ctx,
        );
        transfer::public_transfer(treasury, tx_context::sender(ctx));
        transfer::public_transfer(metadata, tx_context::sender(ctx));
    }

    entry fun mint_candy(treasury: &mut TreasuryCap<MINT_SUIFREN>, amount: u64, ctx: &mut TxContext) {
        coin::mint_and_transfer(treasury, amount, tx_context::sender(ctx), ctx);
    }
}

