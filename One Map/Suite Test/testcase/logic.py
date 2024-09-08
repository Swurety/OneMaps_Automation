import random
import string
import json
import sys

from datetime import datetime, timedelta


class DateGeneratorLibrary:
    def formatted_past_date(self):
        current_date = datetime.now()
        past_date = current_date - timedelta(days=3 * 30)
        return past_date.strftime("%m/%d/%Y %I:%M:%S.%f %p")[:-3]

    def formatted_current_date(self):
        current_date = datetime.now()
        formatted_date = current_date.strftime("%m/%d/%Y %I:%M %p")
        formatted_date_2 = current_date.strftime("%m/%d/%Y %I:%M:%S.%f %p")
        formatted_date_3 = current_date.strftime("%m/%d/%Y %I:%M:%S.%f %p")[:-3]
        return formatted_date, formatted_date_2, formatted_date_3

    def formatted_future_date(self):
        current_date = datetime.now()
        future_date = current_date + timedelta(days=3 * 30)
        return future_date.strftime("%m/%d/%Y %I:%M %p")


class PasswordGeneratorLibrary:
    def generate_password(self):
        uppercase_alphabet = random.choice(string.ascii_uppercase)
        lowercase_alphabet = ''.join(random.choice(string.ascii_lowercase) for _ in range(5))
        numeric = ''.join(random.choice(string.digits) for _ in range(3))
        special_characters = ''.join(random.choice(string.punctuation) for _ in range(2))
        return uppercase_alphabet + lowercase_alphabet + numeric + special_characters

    
# Explicitly define keywords for Robot Framework
formatted_past_date = DateGeneratorLibrary().formatted_past_date
formatted_current_date = DateGeneratorLibrary().formatted_current_date
formatted_future_date = DateGeneratorLibrary().formatted_future_date
generate_password = PasswordGeneratorLibrary().generate_password