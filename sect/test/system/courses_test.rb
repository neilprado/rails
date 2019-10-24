require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "creating a Course" do
    visit courses_url
    click_on "New Course"

    fill_in "Carga horaria", with: @course.carga_horaria
    fill_in "Email instrutor", with: @course.email_instrutor
    fill_in "Nome instrutor", with: @course.nome_instrutor
    fill_in "Requisito", with: @course.requisito
    fill_in "Titulo", with: @course.titulo
    fill_in "Vagas", with: @course.vagas
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "updating a Course" do
    visit courses_url
    click_on "Edit", match: :first

    fill_in "Carga horaria", with: @course.carga_horaria
    fill_in "Email instrutor", with: @course.email_instrutor
    fill_in "Nome instrutor", with: @course.nome_instrutor
    fill_in "Requisito", with: @course.requisito
    fill_in "Titulo", with: @course.titulo
    fill_in "Vagas", with: @course.vagas
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "destroying a Course" do
    visit courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end
