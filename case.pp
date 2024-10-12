case $employee_name {
  'bob': {include easy_mode_tools.employee}
  'carol', 'ben': {include expert_tools.employee}
  'sue': {include regular_tools} 
}
