;;; packages.el --- luo-org layer packages file for Spacemacs.

;;; Code:

(defconst luo-org-packages '())

(spacemacs|use-package-add-hook org
  :post-config
  (luo-org/config-defaults)
  (luo-org/config-agenda)
  (luo-org/config-latex)

  (add-to-list 'org-modules 'org-habit)
  (require 'org-habit)

  (org-defkey org-mode-map "\C-c\C-j" 'org-open-at-point))

;;; packages.el ends here
