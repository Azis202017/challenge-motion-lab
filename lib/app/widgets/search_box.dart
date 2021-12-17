
import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required TextEditingController searchController,
  }) : _searchController = searchController, super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: TextField(
        controller: _searchController,
        style: FontApp.bodyRegular1.copyWith(
          color: ColorApp.hintTextColor,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: ColorApp.hintTextColor,
          ),
          contentPadding: const EdgeInsets.only(
            top: 14,
            bottom: 13,
          ),
          hintText: 'Mau Makan Apa Hari Ini?',
          hintStyle: FontApp.bodyRegular1.copyWith(
            color: ColorApp.hintTextColor,
            fontSize: 14,
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: ColorApp.greyBackgroundColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 0.0,
            ),
          ),
        ),
      ),
    );
  }
}
