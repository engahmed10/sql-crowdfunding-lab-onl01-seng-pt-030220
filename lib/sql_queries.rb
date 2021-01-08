# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.
def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT projects.title, SUM(pledges.amount) FROM projects INNER JOIN  pledges ON projects.id = pledges.project_id GROUP BY projects.title; "
end

def selects_the_user_name_age_and_pledge_amount_for_all_plebetized_by_name 
    "SELECT users.name ,users.age,SUM(pledges.amount) FROM users INNER JOIN pledges  ON user.id = pledges.user_id "
end
