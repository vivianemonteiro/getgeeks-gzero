*Settings*
Documentation       Be Geek test suite

Resource            ${EXECDIR}/resources/Base.robot

Suite Setup          Start Session For Attempt Be Geek
Test Template        Attempt To Be a Geek

*Variables*
${long_desc}        Trabalho com formatação de computadores, Linux, Windows e IOS, faço remoção de vírus e malwares, instalo sistema operacional. Conserto também o hardaware do seu notebook ou desktop. Troco placa de vídeo, rede ou qualquer outra peça que precise de manutenção. Faço orçamento sem compromisso.

*Test Cases*

Short Description           desc                Formato Seu PC.            A descrição deve ter no minimo 80 caracteres

Empty Description           desc                ${EMPTY}                   Informe a descrição do seu trabalho

Long Description            desc                ${long_desc}               A descrição deve ter no máximo 255 caracteres
   
Only Whats DDD              whats               11                         O Whatsapp deve ter 11 digitos contando com o DDD

Whats Without DDD           whats               999999999                  O Whatsapp deve ter 11 digitos contando com o DDD

Empty Whats                 whats               ${EMPTY}                   O Whatsapp deve ter 11 digitos contando com o DDD

Cost With Letters           cost                aaaa                       Valor hora deve ser numérico  

Cost With AlphNum           cost                aa12                       Valor hora deve ser numérico 

Cost With Special Chars     cost                $%@*                       Valor hora deve ser numérico 
 
Empty Cost                  cost                ${EMPTY}                   Valor hora deve ser numérico 

No Printer Repair           printer_repair      ${EMPTY}                   Por favor, informe se você é um Geek Supremo

No work                     work                ${EMPTY}                   Por favor, selecione o modelo de trabalho

*Keywords*
Attempt To Be a Geek
    [Arguments]         ${key}      ${input_field}      ${output_message}

    ${user}     Factory User       attempt_be_geek

    Set To Dictionary       ${user}[geek_profile]           ${key}          ${input_field} 
    Fill Geek Form          ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    ${output_message}
    
    After Test         

Start Session For Attempt Be Geek

    ${user}     Factory User        attempt_be_geek
    Start Session
    Do Login        ${user}
    Go To Geek Form