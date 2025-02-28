import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../core/utils/ui_helpers.dart' as UIhelpers;
import '../../domain/entities/cart_item.dart';
import '../bloc/cart/cart_cubit.dart';
import '../bloc/cart/cart_state.dart';
import '../widgets/cart_item_widget.dart';
import '../widgets/checkout_dialog.dart';
import '../widgets/network_sensitive_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().loadCartItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NetworkSensitiveAppBar(title: 'Shopping Cart'),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartInitial || state is CartLoading) {
            return UIhelpers.buildLoading();
          } else if (state is CartLoaded) {
            final items = state.items;
            if (items.isEmpty) return UIhelpers.buildEmptyCart(context);

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    padding: const EdgeInsets.all(AppConstants.defaultPadding),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return CartItemWidget(
                        cartItem: item,
                        onIncrement: () =>
                            context.read<CartCubit>().updateCartItemQuantity(
                                  item.id,
                                  item.quantity + 1,
                                ),
                        onDecrement: () async {
                          if (item.quantity > 1) {
                            context.read<CartCubit>().updateCartItemQuantity(
                                  item.id,
                                  item.quantity - 1,
                                );
                          } else {
                            final confirm =
                                await UIhelpers.showConfirmationDialog(
                              context,
                              'Remove Item',
                              'Are you sure you want to remove this item from your cart?',
                            );
                            if (confirm) {
                              context
                                  .read<CartCubit>()
                                  .updateCartItemQuantity(item.id, 0);
                            }
                          }
                        },
                      );
                    },
                  ),
                ),
                _buildCheckoutBar(context, state.totalItems, items),
              ],
            );
          } else if (state is CartError) {
            return UIhelpers.buildError(
              context,
              state.message,
              () => context.read<CartCubit>().loadCartItems(),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildCheckoutBar(
      BuildContext context, int totalItems, List<CartItem> items) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Total Items: $totalItems',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => CheckoutDialog(
                cartItems: items,
                onCheckout: () {
                  context.read<CartCubit>().clearCart();
                  context.go('/');
                },
              ),
            ),
            child: const Text('Checkout'),
          ),
        ],
      ),
    );
  }
}
