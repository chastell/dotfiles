setlocal shiftwidth=4

map  <leader>b oCRM_Core_Error::backtrace();<esc>
map  <leader>B OCRM_Core_Error::backtrace();<esc>
vmap <leader>d yoCRM_Core_Error::debug_var('<esc>pa', <esc>pa, false);<esc>
vmap <leader>D yOCRM_Core_Error::debug_var('<esc>pa', <esc>pa, false);<esc>
vmap <leader>e yoCRM_Core_Error::debug('<esc>pa', <esc>pa);<esc>
vmap <leader>E yOCRM_Core_Error::debug('<esc>pa', <esc>pa);<esc>
vmap <leader>l yoCRM_Core_Error::debug_log_message('<esc>pa', <esc>pa, false);<esc>
vmap <leader>L yOCRM_Core_Error::debug_log_message('<esc>pa', <esc>pa, false);<esc>
vmap <leader>v yovar_dump('<esc>pa', <esc>pa);<esc>
vmap <leader>V yOvar_dump('<esc>pa', <esc>pa);<esc>
