;;; remove-both-duplicate-lines.el --- Remove both duplicate lines in ordered buffer  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Jonne Itkonen

;; Author: Jonne Itkonen <ji@91-155-12-242.elisa-laajakaista.fi>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Buffer should be sorted in beforehand.

;;; Code:


(defun remove-both-duplicate-lines () (interactive)
       (when (string-equal (thing-at-point 'line)
                           (progn (next-line) (thing-at-point 'line)))
         (progn (next-line)
                (kill-line -2))))

(provide 'remove-both-duplicate-lines)
;;; remove-both-duplicate-lines.el ends here
