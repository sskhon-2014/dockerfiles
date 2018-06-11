FROM jupyter/base-notebook:c7d997f2db86



RUN conda install --quiet --yes \
    'conda-forge::blas=*=openblas' \
    'ipywidgets=7.2*' \
    'pandas=0.22*' \
    'numexpr=2.6*' \
    'matplotlib=2.1*' \
    'scipy=1.0*' \
    'seaborn=0.8*' \
    'scikit-learn=0.19*' \
    'scikit-image=0.13*' \
    'sympy=1.1*' \
    'cython=0.28*' \
    'patsy=0.5*' \
    'statsmodels=0.8*' \
    'cloudpickle=0.5*' \
    'dill=0.2*' \
    'numba=0.38*' \
    'bokeh=0.12*' \
    'sqlalchemy=1.2*' \
    'hdf5=1.10*' \
    'h5py=2.7*' \
    'vincent=0.4.*' \
    'beautifulsoup4=4.6.*' 


ARG JUPYTERHUB_VERSION=0.9.*
RUN pip install --no-cache jupyterhub==$JUPYTERHUB_VERSION
