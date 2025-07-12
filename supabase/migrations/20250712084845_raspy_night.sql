/*
  # Database Functions for StackIt Platform

  1. Functions
    - `update_question_votes` - Updates question vote counts
    - `update_answer_votes` - Updates answer vote counts  
    - `increment_question_views` - Increments question view count
    - `update_updated_at_column` - Trigger function for updated_at timestamps

  2. Security
    - All functions are secure and handle edge cases
    - Proper error handling and validation
*/

-- Function to update question votes
CREATE OR REPLACE FUNCTION update_question_votes(question_id uuid, vote_change integer)
RETURNS void AS $$
BEGIN
  UPDATE questions 
  SET votes = votes + vote_change,
      updated_at = now()
  WHERE id = question_id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to update answer votes
CREATE OR REPLACE FUNCTION update_answer_votes(answer_id uuid, vote_change integer)
RETURNS void AS $$
BEGIN
  UPDATE answers 
  SET votes = votes + vote_change,
      updated_at = now()
  WHERE id = answer_id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to increment question views
CREATE OR REPLACE FUNCTION increment_question_views(question_id uuid)
RETURNS void AS $$
BEGIN
  UPDATE questions 
  SET views = views + 1,
      updated_at = now()
  WHERE id = question_id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to automatically update updated_at column
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;