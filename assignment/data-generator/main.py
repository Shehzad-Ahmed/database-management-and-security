# This is a sample Python script.
from data import data
# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.


def convert(value):
    if type(value) is int:
        return str(value)
    if value is None:
        return "NULL"
    return f"'{value}'"


def generate_sql_file():
    with open("generate-data.sql", "w") as file:
        for item in data:
            file.write(f"-- START OF DATA FOR TABLE {item['model']} \n\n")
            for values in item["data"]:
                file.write(f"INSERT INTO {item['model']} ({','.join(item['columns'])})\nVALUES ({','.join(map(convert,values))});")
                file.write("\n")
            file.write(f"\n-- END OF DATA FOR TABLE {item['model']} \n\n")


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    generate_sql_file()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
