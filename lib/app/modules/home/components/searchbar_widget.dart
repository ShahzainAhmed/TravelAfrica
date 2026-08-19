import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';

class SearchBarWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon myIcon;
  final bool isPasswordField;
  final TextInputType textInputType;
  final String title;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;

  const SearchBarWidget({
    super.key,
    required this.title,
    this.isPasswordField = false,
    required this.myIcon,
    this.inputFormatter,
    this.textInputType = TextInputType.text,
    required this.controller,
    required this.hintText,
    this.validator,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 14.r,
            spreadRadius: 0,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: TextFormField(
        cursorColor: AppColors.kGreyColor,
        keyboardType: widget.textInputType,
        obscureText: widget.isPasswordField ? show : false,
        validator: widget.validator,
        inputFormatters: widget.inputFormatter,
        textAlignVertical: TextAlignVertical.center,
        controller: widget.controller,
        style: const TextStyle(
          color: AppColors.kBlackColor,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: AppColors.kWhiteColor,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 20.sp,
          ),
          label: Text(widget.title),
          labelStyle: AppTypography.kMedium12.copyWith(
            color: AppColors.kGreyColor,
          ),
          suffixIcon: widget.isPasswordField
              ? IconButton(
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      show = !show;
                    });
                  },
                  icon: Icon(
                    show ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xff7E7A7A),
                  ),
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide.none,
          ),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
