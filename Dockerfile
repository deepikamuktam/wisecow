FROM alpine:3.18
RUN apk add --no-cache bash
WORKDIR /app
COPY . .
RUN chmod +x ./wisecow.sh
ENV PORT=4499
EXPOSE 4499
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s \
  CMD wget -qO- --tries=1 --timeout=5 http://127.0.0.1:${PORT}/health || exit 1
CMD ["./wisecow.sh"]
