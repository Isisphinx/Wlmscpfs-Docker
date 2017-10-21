FROM alpine:3.6

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

RUN ["chmod", "+x", "/usr/src/app/wlmscpfs"]
RUN ["chmod", "rw-", "/usr/src/app/worklistDir"]


ENV DCMDICTPATH="/usr/src/app/dicom.dic"

EXPOSE 104

CMD [ "/usr/src/app/wlmscpfs", "-dfp","/usr/src/app/worklistDir","104"]