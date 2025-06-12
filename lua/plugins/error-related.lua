return {
  { "nvie/vim-flake8" },
  { "tell-k/vim-autopep8" },
  {
    "dense-analysis/ale",
    config = function()
      vim.g.ale_python_pylint_options = "--max-line-length=120 --disable=R0902,C0103,C0111"
      vim.g.ale_python_flake8_options =
        "--max-line-length=120 --disable=R0902,C0103,C0111 --extension-pkg-whitelist=cv2 --generated-members=numpy.*,torch.*,cv2.*,Cython.*,onxx.*"
    end,
  },
}
