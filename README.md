# Poison
A escalação de privilégios é bem falada na Cibersegurança que no caso seria, acessar privilégios de outro usuário de uma máquina, sem precisar, só testando falhas e métodos de escalação

umas das mais famosas forma de escalar privilégio é procurar exploits para explorar uma falha, nesse código eu desenvolvi um script em bash para ajudar vocês em um cenario real

## Como Usar
```bash
wget https://raw.githubusercontent.com/Freitaszkb/Poison/refs/heads/main/poison.sh
chm0d +x poison.sh
./poison
```

## Cenário 
![Captura_de_Tela_15](https://github.com/user-attachments/assets/6ed4a99e-dad3-444a-8ef5-09bf1bfe7179)

nesse cenário vemos a ferramenta sendo baixada e nele, executei em bash sem dar permissão com chmod,
após rodar o script, ele achou uma falha e retornou o link do exploit, e rodando o exploit com Pwnkit, conseguimos acesso ROOT, permissão admin do sistema, agora somos o usuário root podemos fazer tudo no sistema
ver o /etc/passwd e até o /etc/shadow

