script {
    use aptos_framework::object;

    use bounti_x_addr::bounti_x;

    fun update_payment_allowlist(sender: &signer) {
        bounti_x::add_to_payment_allowlist(
            sender,
            // 0xa is APT in FA format
            object::address_to_object(@0xa),
        );
    }
}
