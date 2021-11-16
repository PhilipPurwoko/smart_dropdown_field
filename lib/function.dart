getSelectedValue<T>({T? valueSelected, List<T>? dropDownItems}) {
  if (valueSelected == null || dropDownItems == null) return null;
  for (T value in dropDownItems) {
    if (value == valueSelected) return value;
  }

  return null;
}
