Professor.create email: 'ricardovillaf@gmail.com', password: 'password', administrator: true
Professor.create email: 'profesor@pmbokprojects.com', password: 'password'

Course.create nrc: 'proj-1', name: 'Curso 1', year: 2017, semester: 'II', professor_id: 1

Student.create username: 'user', password: 'password', name: 'User', surname: 'Surname', second_surname: 'SecondSurname'
Student.create username: 'user2', password: 'password', name: 'User2', surname: 'Surname', second_surname: 'SecondSurname'
Student.create username: 'user3', password: 'password', name: 'User3', surname: 'Surname', second_surname: 'SecondSurname'
Student.create username: 'user4', password: 'password', name: 'User4', surname: 'Surname', second_surname: 'SecondSurname'

Company.create name: 'Company 1'
