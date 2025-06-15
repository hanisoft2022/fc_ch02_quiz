import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OptionItem extends HookWidget {
  final String initialText;
  final VoidCallback onRemove;
  final ValueChanged<String> onChanged;

  const OptionItem({
    super.key,
    required this.initialText,
    required this.onRemove,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialText);

    // initialText가 변경될 때마다 controller.text를 갱신
    useEffect(() {
      if (controller.text != initialText) {
        controller.text = initialText;
      }
      return null;
    }, [initialText]);

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: '선택지'),
            onChanged: onChanged,
          ),
        ),
        IconButton(icon: Icon(Icons.remove_circle), onPressed: onRemove),
      ],
    );
  }
}
