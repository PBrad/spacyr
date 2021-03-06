% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spacy_install.R
\name{spacy_install}
\alias{spacy_install}
\alias{spacy_install_virtualenv}
\title{Install spaCy in conda or virtualenv environment}
\usage{
spacy_install(conda = "auto", version = "latest", lang_models = "en",
  python_version = "3.6", envname = "spacy_condaenv", python_path = NULL,
  prompt = TRUE)

spacy_install_virtualenv(version = "latest", lang_models = "en",
  python_version = "3.6", python_path = NULL, prompt = TRUE)
}
\arguments{
\item{conda}{character; path to conda executable. Default "auto" which
automatically find the path}

\item{version}{character; spaCy version to install. Specify \code{"latest"}
  to install the latest release, or \code{"latest_v1"} to install the latest 
  release of spacy v1.*.  See spaCy Version Issues.

  You can also provide a full major.minor.patch specification (e.g. "1.1.0")}

\item{lang_models}{character; language models to be installed. Default
\code{en} (English model). A vector of multiple model names can be used
(e.g. \code{c("en", "de")}).  A list of available language models and their
names is available from the \href{https://spacy.io/usage/models}{spaCy
language models} page.}

\item{python_version}{character; determine Python version for condaenv
installation. 3.5 and 3.6 are available.}

\item{envname}{character; name of the conda-environment to install spacy. 
Default is "spacy_condaenv".}

\item{python_path}{character; path to Python in virtualenv installation}

\item{prompt}{logical; ask whether to proceed during the installation}
}
\description{
Install spaCy in a self-contained environment, including
  specified language models.  For macOS and Linux-based systems, this will
  also install Python itself via a "miniconda" environment, for
  \code{spacy_install}.  Alternatively, an existing conda installation may be
  used, by specifying its path.  The default setting of \code{"auto"} will
  locate and use an existing installation automatically, or download and
  install one if none exists.  
  
  For Windows, automatic installation of miniconda installation is not currently
  available, so the user will need to \href{https://conda.io/docs/user-guide/install/windows.html}{miniconda (or Anaconda) manually}.

If you wish to install Python ion a "virtualenv", use the
  \code{spacy_install_virtualenv} function.
}
\section{spaCy Version Issues}{


  The version options currently default to the latest spaCy v2 (\code{version
  = "latest"}). As of 2018-04, however,
  \href{https://github.com/explosion/spaCy/issues/1508}{some performance
  issues} affect the speed of the spaCy pipeline for spacy v2.x relative to
  v1.x.   This can  enormously affect the performance of
  \code{spacy_parse()}, especially when a large number of small texts are
  parseed. For this reason, the \pkg{spacyr} provides an option to
  automatically install the latest version of spacy v1.*, using \code{version
  = "latest_v1"}.
}

\examples{
\dontrun{
# install spaCy in a miniconda environment (macOS and Linux)
spacy_install(lang_models = c("en", "de"), prompt = FALSE)

# install spaCy to an existing conda environment
spacy_install(conda = "~/anaconda/bin/")
}

\dontrun{
# install spaCy in a virtualenv environment
spacy_install_virtualenv(lang_models = c("en"))
}
}
