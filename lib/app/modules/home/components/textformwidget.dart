import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/app/data/constants/app_colors.dart';
import 'package:new_project/app/data/constants/app_typography.dart';

class CustomTextFormWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon myIcon;
  final bool isPasswordField;
  final TextInputType textInputType;
  final String title;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;

  const CustomTextFormWidget({
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
  State<CustomTextFormWidget> createState() => _CustomTextFormWidgetState();
}

class _CustomTextFormWidgetState extends State<CustomTextFormWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.kGreyColor,
      keyboardType: widget.textInputType,
      obscureText: widget.isPasswordField ? show : false,
      validator: widget.validator,
      inputFormatters: widget.inputFormatter,
      textAlignVertical: TextAlignVertical.center,
      controller: widget.controller,
      style: const TextStyle(color: AppColors.kBlackColor),
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: AppColors.kWhiteColor,
        // prefixIcon: Padding(),
        alignLabelWithHint: true,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 20.sp,
        ),
        label: Text(widget.title),
        labelStyle:
            AppTypography.kMedium12.copyWith(color: AppColors.kGreyColor),
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
            : const SizedBox(),
        // errorStyle:
        //     LoginScreenFonts.textFormFieldFont.copyWith(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16.r),
        ),
        hintText: widget.hintText,
        // hintStyle: LoginScreenFonts.textFormFieldFont,
      ),
    );
  }
}
