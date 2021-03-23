%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUME CLASS FILE
%
% This class file defines the structure and design of the template. 
%
% 
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%   CLASS DECLARATION (Loads base class article as well)
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume_new}[2021/03/20 Resume Class v0.1]
\LoadClass[11pt,letterpaper]{article}   % Font size and paper type

%----------------------------------------------------------------------------------------
%   CLASS FORMATTING PACKAGES
%----------------------------------------------------------------------------------------

\RequirePackage{ifthen}                 % If/Then/Else constructs for formatting
\RequirePackage{geometry}               % For document margins
\RequirePackage{titlesec}               % For modifying title,section names, etc.
\RequirePackage[parfill]{parskip}       % Remove paragraph indentation
\RequirePackage{paracol}                % Create multi-column layout

%----------------------------------------------------------------------------------------
%   PAGE FORMATTING
%----------------------------------------------------------------------------------------

\pagestyle{empty}                       % Suppress page numbers

\geometry{vmargin = 0.75in, hmargin = 0.5in}

\columnratio{0.55,0.45}                 % Ratio of two column sizes
\setlength\columnsep{0.05\textwidth}    % Space between columns
%\setlength\columnseprule{0.4pt}        % Creates vertical rule between resume columns

%----------------------------------------------------------------------------------------
%   CUSTOM RESUME ENVIRONMENTS
%----------------------------------------------------------------------------------------
\newenvironment{resumeList}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
 {\bf #1} \hfill {#2} % Bold company name and date on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
  \\
  {\em #3} \hfill {\em #4} % Italic job title and location
  }\smallskip
  \begin{list}{\labelitemiv}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}
