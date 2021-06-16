FROM huggingface/transformers-pytorch-gpu

ENV LIBRARY_PATH=/lib:/usr/lib
EXPOSE 5000

WORKDIR /workspace

RUN curl "https://firebasestorage.googleapis.com/v0/b/toyproject-20210611.appspot.com/o/model%2Ffor_ainize%2Foutput.zip?alt=media&token=2558ce7c-8433-4383-bbdd-80287ae2b77b" --output "./output.zip"

RUN curl "https://firebasestorage.googleapis.com/v0/b/toyproject-20210611.appspot.com/o/default%2Funzip.py?alt=media&token=55b52926-1d8d-42b5-a906-c54f8546455c" --output "./unzip.py"

RUN python3 ./unzip.py

RUN pip3 install -r require.txt
CMD ["python3", "./api_main.py"]