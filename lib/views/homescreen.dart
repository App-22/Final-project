import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/productModel.dart';
import '../services/Api/Api.dart';
import '../widgets/HomeHeader.dart';
import '../widgets/SearchBarWidget.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const HomeHeader(),

              const SearchBarWidget(),

              const SizedBox(height: 20),

              FutureBuilder<List<ProductModel>>(
                future: apiService.getProducts(),

                builder: (context, snapshot) {

                  if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(40),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }

                  final products = snapshot.data!;

                  return GridView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 16),

                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: .62,
                    ),

                    itemCount: products.length,

                    itemBuilder: (context, index) {

                      final product = products[index];

                      return InkWell(
                        borderRadius: BorderRadius.circular(20),

                        onTap: () {

                          context.push(
                            "/productDeatailscreen",
                            extra: product,
                          );

                        },

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors.grey.withOpacity(.15),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              )
                            ],
                          ),

                          child: Padding(
                            padding:
                                const EdgeInsets.all(12),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,

                              children: [

                                Align(
                                  alignment:
                                      Alignment.topRight,
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey.shade600,
                                  ),
                                ),

                                Expanded(
                                  child: Center(
                                    child:
                                        CachedNetworkImage(
                                      imageUrl:
                                          product.image,

                                      fit: BoxFit.contain,

                                      placeholder:
                                          (context, url) =>
                                              const CircularProgressIndicator(),

                                      errorWidget:
                                          (context, url, error) =>
                                              const Icon(
                                        Icons
                                            .broken_image,
                                        size: 60,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 10),

                                Text(
                                  product.title,

                                  maxLines: 2,

                                  overflow:
                                      TextOverflow.ellipsis,

                                  style:
                                      const TextStyle(
                                    fontWeight:
                                        FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Row(
                                  children: [

                                    const Icon(
                                      Icons.star,
                                      color:
                                          Colors.amber,
                                      size: 18,
                                    ),

                                    const SizedBox(
                                        width: 5),

                                    Text(
                                      product.rating.rate
                                          .toString(),
                                    ),

                                  ],
                                ),

                                const Spacer(),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,

                                  children: [

                                    Text(
                                      "\$${product.price}",

                                      style:
                                          const TextStyle(
                                        color: Colors
                                            .deepOrange,

                                        fontWeight:
                                            FontWeight
                                                .bold,

                                        fontSize: 18,
                                      ),
                                    ),

                                    Container(
                                      decoration:
                                          BoxDecoration(
                                        color: Colors
                                            .deepOrange,
                                        borderRadius:
                                            BorderRadius
                                                .circular(
                                                    10),
                                      ),

                                      child:
                                          const Padding(
                                        padding:
                                            EdgeInsets
                                                .all(8),

                                        child: Icon(
                                          Icons
                                              .shopping_cart_outlined,
                                          color: Colors
                                              .white,
                                          size: 18,
                                        ),
                                      ),
                                    )

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}