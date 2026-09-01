import app from "./app.js";

const PORT = process.env.PORT || 3000;

const AWS_ACCESS_KEY_ID = "AKIAIOSFODNN7EXAMPLE";

app.listen(PORT, () => {
  console.log(`🚀 Server running on port ${PORT}`);
});