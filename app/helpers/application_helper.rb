module ApplicationHelper

   def words_form_method(word)
    word.new_record? ? "post" : "put"
  end

  def words_form_action(word)
    word.new_record? ? "/words" : "/words/#{word.id}"
  end

  def words_form_id(word)
    word.new_record? ? "new-word" : "words-#{word.id}"
  end

  def words_form_class(word)
    word.new_record? ? "new-word" : "edit-word"
  end

  def words_form_submit_text(word)
    word.new_record? ? "Add" : "Edit"
  end
end
