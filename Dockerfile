FROM alpine:3.6

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

ENV DCMDICTPATH="/usr/src/app/dicom.dic"

EXPOSE 104
CMD [ "./wlmscpfs", "-dfp","worklistDir","104"]