def factory_new_user():
    return{
        'name': 'Clint Barton',
        'email': 'barton@hotmail.com',
        'password': 'pwd123'
    }

def factory_get_user():
    return{
        'name': 'Gwen Stacy',
        'email': 'stacy@ozcorp.com',
        'password': 'pwd123'
    }

def factory_remove_user():
    return{
        'name': 'Tadeus Ross',
        'email': 'ross@gmail.com',
        'password': 'pwd123'
    }

def factory_update_user():
    email = 'vivismonteiro@gmail.com'

    return {
        'before': {
            'name': 'Monteiro Vivi',
            'email': email,
            'password': 'pwd123'
        },
        'after': {
            'name': 'Vivis Monteiro',
            'email': email,
            'whatsapp': '11999999999',
            'avatar': 'https://avatars.githubusercontent.com/u/59649608'

        }
    }

def factory_user_session(target):
    name = 'Kate Bishop',
    email = 'kate@hotmail.com',
    password = 'pwd123'

    data = {
        'signup': {
            'name': name,
            'email': email,
            'password': password
        },
        'login': {
            'email': email,
            'password': password
        }
    }

    return data[target]

def factory_be_geek():
    return{
        'name': 'João Lucas',
        'email': 'joao@qaninja.com.br',
        'password': 'pwd123',
        'geek_profile': {
            'whatsapp': '11999999999',
            'desc': 'Precisando dar aquela ajeitada no seu computador? Conte comigo para te ajudar, seja um problema se sistema ou alguma peça que não está funcionando como deveria, eu posso te ajudar! Entre em contato e faça o seu orçamento sem compromisso!',
            'printer_repair': 'Sim',
            'work': 'Presencial',
            'cost': '100'
        }
    }

def factory_search_for_geeks():
    return{
        'name': 'Peter Quill',
        'email': 'quill@marvel.com',
        'password': 'pwd123'
    }