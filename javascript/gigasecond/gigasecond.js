export const gigasecond = (dateTime) => {
  return new Date(new Date(dateTime)
                            .setUTCSeconds(
                              dateTime
                              .getUTCSeconds() + Math.pow(10, 9)));
}
