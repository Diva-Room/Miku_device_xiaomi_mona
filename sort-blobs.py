def sort_category(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    result = []
    category = []
    category_name = None
    for line in lines[1:]:  # skip the first line
        if line.startswith("#"):
            if category:
                category.sort()
                result.extend(category)
                result.append("\n")
            category = [line]
            category_name = line[1:].strip()
        elif line.strip() and category_name:
            category.append(line)
    if category:
        category.sort()
        result.extend(category)
        result.append("\n")
    with open(file_path, 'w') as file:
        file.writelines(lines[:1] + result)

file_path = "proprietary-files.txt"
sort_category(file_path)
