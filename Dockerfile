FROM python:3.7.2

# Setup a dir for the code
WORKDIR /temp_folder

# Install Python dependencies
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# make sure that pytest is installed
# we'll need it to run the tests!
RUN pip install pytest

# Copy over the source code
COPY minimal_python_package minimal_python_package/

# Copy over the test folder
COPY tests tests/
COPY main.py main.py

CMD ["/bin/bash"]
