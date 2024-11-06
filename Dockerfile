FROM node:18
WORKDIR /cochrane_kwinton_ui_garden-main
COPY package.json yarn.lock ./
RUN yarn
COPY . .
EXPOSE 8083
CMD ["yarn", "storybook", "-p", "8083"]