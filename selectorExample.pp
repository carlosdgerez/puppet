$default_editor = $facts['os']['family'] ? {
  'Linux'    => 'vim'
  'Windows'  => 'notepad'
   default   => 'nano',
}
