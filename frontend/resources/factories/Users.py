from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_password(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def users_to_insert_db():
    return [
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek')

    ]

def factory_user(target):
    data = {
        'faker': {
        'name': fake.first_name(),
        'lastname': fake.last_name(),
        'email': fake.free_email(),
        'password': 'pwd123'

        },
        'wrong_email': {
            'name': 'Pedro',
            'lastname': 'Lara',
            'email': 'pedro_dl*hotmail.com',
            'password': 'pwd123'
        },
        'login': {
        'name': 'Viviane',
        'lastname': 'Peres',
        'email': 'vivismonteiro@gmail.com',
        'password': 'pwd123'

        },
        'be_geek': {
        'name': 'Kim',
        'lastname': 'Dotcom',
        'email': 'kim@dot.com',
        'password': 'pwd123',
        'geek_profile': {
            'whats': '11999999999',
            'desc': 'Precisando dar aquela ajeitada no seu computador? Conte comigo para te ajudar, seja um problema se sistema ou alguma peça que não está funcionando como deveria, eu posso te ajudar! Entre em contato e faça o seu orçamento sem compromisso!',
            'printer_repair': 'Sim',
            'work': 'Remoto',
            'cost': '100'
        }
        },
        'attempt_be_geek': {
        'name': 'Dio',
        'lastname': 'Linux',
        'email': 'dio@linux.com',
        'password': 'pwd123',
        'geek_profile': {
            'whats': '11999999999',
            'desc': 'Se precisar de qualquer serviço seja no seu Desktop ou Notebook, conte comigo. Instalo sistemas operacionais, atualizo drivers e hardwares.  Orçamento grátis e garantia de serviço.',
            'printer_repair': 'Não',
            'work': 'Remoto',
            'cost': '150'
        }
        }
        

    }
    return data[target]


