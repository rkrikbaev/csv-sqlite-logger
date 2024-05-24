#!/usr/local/bin/python3.9
import csv
import os

# Specify the old and new header names
replace_dic = {'tanklevel':'level','datetime':'date','tankLevel':'level'}

# Specify the directory path where the CSV files are located
directory = '/Users/rustamkrikbayev/projects/csv_logger/csv_data/saved'
new_directory = '/Users/rustamkrikbayev/projects/csv_logger/csv_data'

fieldnames = []
values = []

# Iterate over each file in the directory
for filename in os.listdir(directory):
    print(f"Processing {filename}...")
    if filename.endswith('.csv'):
        # Construct the file path
        file_path = os.path.join(directory, filename)
        output_file = os.path.join(new_directory, filename)

        # Open the output file
        with open(file_path, 'r') as file_in, open(output_file, 'w') as file_out:

            # Read the header row
            reader = csv.reader(file_in)
            data = list(reader)

            fieldnames = data[0]
            values = data[1]
            
            print(fieldnames)
            print(values)

            for key, value in replace_dic.items():
                fieldnames = [item.replace(key, value) for item in fieldnames]

            print(fieldnames)

            file_out.write(','.join(fieldnames) + '\n')

            # Iterate over each row in the input file
            
            file_out.write(','.join(values)+'\n')

        #     print(f"Header renamed successfully in {filename}. Output file: {output_file}")
        # except Exception as e:
        #     print(f"An error occurred while processing {filename}: {e}")
