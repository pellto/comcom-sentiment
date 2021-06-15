FROM huggingface/transformers-pytorch-gpu

ENV LIBRARY_PATH=/lib:/usr/lib
EXPOSE 5000

WORKDIR /workspace

RUN curl "https://firebasestorage.googleapis.com/v0/b/toyproject-20210611.appspot.com/o/model%2F1623740341657%3AmS8kI0n0FdgdIPvYyaDX2YSE4uv2%2Foutput.zip?alt=media&token=29613a08-4cce-4a31-8ac5-2321a2bd604f" --output "./output.zip"

RUN curl "https://firebasestorage.googleapis.com/v0/b/toyproject-20210611.appspot.com/o/default%2Funzip.py?alt=media&token=55b52926-1d8d-42b5-a906-c54f8546455c" --output "./unzip.py"

RUN python3 ./unzip.py

RUN pip3 install -r require.txt
CMD ["python3", "./api_main.py"]