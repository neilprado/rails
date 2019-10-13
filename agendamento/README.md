# EXERCICIOS

### Questão 1 - Cadastrar 10 novas pessoas

```ruby
10.times{
    p = Person.new
    p.nome = Faker::Name.name
    p.abreviacao = Faker::Name.initials
    p.save
}

```

### Questão 2 - Cadastrar um e-mail para cada pessoa

```ruby
Person.count.times{
    |i|
    Email.create(endereco: Faker::Internet.email, person_id:i+1)
}

```

### Questão 3 - Alterar o nome das 5 primeiras pessoas para “Fulano de tal”

```ruby
5.times{
    |i|
    p = Person.find(i+1)
    p.update(nome: "Fulano de Tal")
}

```

### Questão 4 - Alterar o nome da pessoa que possui o último e-mail cadastrado para “Beltraninha de Tal”

```ruby
p = Email.last.person
p.update(nome: "Beltraninha de Tal")

```

### Questão 5 - Cadastrar mais 20 pessoas

```ruby
20.times{
    p = Person.new
    p.nome = Faker::Name.name
    p.abreviacao = Faker::Name.initials
    p.save
}

```

### Questão 6 - Remover as 02 (duas) últimas pessoas cadastradas

```ruby
p = Person.last(2)
p.count.times{
    |i|
    p[i].destroy
}
```

### Questão 7 - Remover as pessoas que possuem id entre [12 e 16]
```ruby
p = Person.find([12, 13, 14, 15, 16])
p.count.times{
    |i|
    p[i].destroy
}

```

### Questão 8 - Remover todos os e-mails e todas as pessoas cadastradas.

```ruby
Email.destroy_all
Person.destroy_all

```



