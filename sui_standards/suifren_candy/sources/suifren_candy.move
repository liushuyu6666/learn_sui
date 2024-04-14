module suifren_candy::sui_fren {
    use sui::coin::{Self};

    public struct SUI_FREN has drop {}

    fun init(candy_otw: SUI_FREN, ctx: &mut TxContext) {
        let (treasury_cap, metadata) = coin::create_currency(
            candy_otw,
            9,
            b"CANDY",
            b"SuiFren Candy",
            b"Candies to level up SuiFren",
            option::none(),
            ctx,
        );
        transfer::public_transfer(metadata, tx_context::sender(ctx));
        transfer::public_transfer(treasury_cap, tx_context::sender(ctx));
    }
}