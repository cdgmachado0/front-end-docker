
FROM node:18

WORKDIR /front_end_flux

ENV REACT_APP_ARB_PROVIDER=https://arb-goerli.g.alchemy.com/v2/byUdUm_iah_7NHbd0Finh5Fs43VXhghJ \
    REACT_APP_OZL_CONTRACT=0x52001CA6f781C3966577084EC0B386506C25dFD5 \
    REACT_APP_STORAGE_BEACON=0xDf2956dB0E0c283d2cd7eB27ecBDaBBdEe329516 \
    REACT_APP_ARB_MAINNET_PROVIDER=https://arb-goerli.g.alchemy.com/v2/byUdUm_iah_7NHbd0Finh5Fs43VXhghJ \
    REACT_APP_MAINNET_OZL_CONTRACT=0x52001CA6f781C3966577084EC0B386506C25dFD5 \
    REACT_APP_MAINNET_STORAGE_BEACON=0xDf2956dB0E0c283d2cd7eB27ecBDaBBdEe329516 \
    REACT_APP_MAINNET_OZERC1967PROXY=0x85bD2228aab3aB81Bdfc4946DFF2c4c58796610b

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3001

CMD [ "npm", "start" ]