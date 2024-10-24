import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final TextEditingController? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final bool? obscureText;
  final bool? readOnly;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  const CustomTextFormField(
      {super.key,
      this.alignment,
      this.width,
      this.boxDecoration,
      this.scrollPadding,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.textStyle,
      this.obscureText,
      this.readOnly,
      this.onTap,
      this.textInputAction,
      this.maxLines,
      this.hintStyle,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.contentPadding,
      this.borderDecoration,
      this.fillColor,
      this.filled = false,
      this.validator,
      this.onChanged, this.textInputType = TextInputType.text} );

  @override
  Widget build(BuildContext context) {
    return alignment !=null ? Align(alignment: alignment??Alignment.center,child: textFormFieldWidget(context)): textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context)=>Container(
    width: width ?? double.maxFinite,
    decoration: boxDecoration,
    child: TextFormField(
      scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (event){
        if(focusNode!=null){
          focusNode?.unfocus();

        }else{
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      autofocus: autofocus!,
      style: textStyle?? CustomTextStyles.bodyMediumSecondaryContainer,
      obscureText: obscureText!,
      readOnly: readOnly!,
      onTap: (){
        onTap?.call;
      },
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
    
      validator: validator,
      onChanged: (String value){
        onChanged?.call(value);
      },

    
    ),
  );

  InputDecoration get decoration => InputDecoration(
    hintText: "",
    hintStyle: hintStyle ?? CustomTextSyles.labelLargerDMSansOnPrimaryContainer,
    prefixIcon: prefix ?? Container(
      margin: EdgeInsets.fromLTRB(22, 10, 12, 10),
      decoration: BoxDecoration(),
      child: CustomImageView(imagePath.ImageConstant
      height: 22,
      width: 26,
    ),
    ),
    prefixIconConstraints: prefixConstraints ?? BoxConstraints(
      maxHeight: 44
    ),
    suffixIcon: suffix ??
    Padding(padding: EdgeInsets.only(
      right: 15
    ),
    child: IconButton(onPressed: ()=>controller!.clear(), icon: Icon(Icons.clear,
    color: Colors.grey.shade600,),),
    ),
    suffixIconConstraints: suffixConstraints ??
    BoxConstraints(
      maxHeight: 44
    ),
    isDense: true,
    contentPadding: contentPadding ?? EdgeInsets.all(10),
    fillColor: fillColor,
    filled: filled,
    border: borderDecoration?? InputBorder.none,
    enabledBorder: borderDecoration ?? InputBorder.none,

    


  );

}
