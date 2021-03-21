Card.destroy_all
KanbanColumn.destroy_all
Kanban.destroy_all
my_kanban = Kanban.create(
  name: "Faculdade de Engenharia da Computação",
  description: "Todas as tarefas referentes ao semestre da facul de Engenharia da Computação na Anhembi Morumbi...",
);

backlog = KanbanColumn.create(
  name: "Backlog",
  kanban: my_kanban
)

Card.create(content: "Verificar Matérias", position: 0, kanban_column: backlog)
Card.create(content: "Verificar Pendências", position: 1, kanban_column: backlog)
Card.create(content: "Cursos Complementares", position: 2, kanban_column: backlog)

todo = KanbanColumn.create(
  name: "A Fazer",
  kanban: my_kanban
)
Card.create(content: "A1 - Física", position: 0, kanban_column: todo)

inprogress = KanbanColumn.create(
  name: "Em Andamento",
  kanban: my_kanban
)
Card.create(content: "Princípios de Matemática", position: 0, kanban_column: inprogress)

completed = KanbanColumn.create(
  name: "Completo",
  kanban: my_kanban
)
Card.create(content: "Kanbanzin v0.1", position: 0, kanban_column: completed)
Card.create(content: "Programação", position: 1, kanban_column: completed)
