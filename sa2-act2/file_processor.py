import argparse

def count_lines(file_path):
    with open(file_path, 'r') as file:
        return sum(1 for line in file)

def count_words(file_path):
    with open(file_path, 'r') as file:
        return sum(len(line.split()) for line in file)

def convert_to_uppercase(file_path):
    with open(file_path, 'r') as file:
        return file.read().upper()

def check_contains_word(file_path, word):
    with open(file_path, 'r') as file:
        return word in file.read()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Process a text file.')
    parser.add_argument('file', type=str, help='Path to the text file')
    parser.add_argument('--operation', type=str, choices=['linecount', 'wordcount', 'uppercase', 'contains'], help='Type of operation')
    parser.add_argument('--word', type=str, help='Word to find (required for contains operation)')

    args = parser.parse_args()

    if not args.operation:
        parser.error('Operation argument is required.')

    if args.operation == 'linecount':
        print(f"The number of lines in the file is: {count_lines(args.file)}")
    elif args.operation == 'wordcount':
        print(f"The number of words in the file is: {count_words(args.file)}")
    elif args.operation == 'uppercase':
        print(convert_to_uppercase(args.file))
    elif args.operation == 'contains':
        if not args.word:
            parser.error('Word argument is required for contains operation.')
        if check_contains_word(args.file, args.word):
            print(f"The word '{args.word}' was found in the file.")
        else:
            print(f"The word '{args.word}' was not found in the file.")
