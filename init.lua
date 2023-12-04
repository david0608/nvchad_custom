local nvimrc_path = vim.fn.getcwd()..'/.nvimrc.lua'
if 0 ~= vim.fn.filereadable(nvimrc_path)
then
  dofile(nvimrc_path)
end
