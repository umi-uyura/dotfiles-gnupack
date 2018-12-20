module.exports = {
  env: {
    browser: true,
    node: true
  },
  parserOptions: {
    ecmaVersion: 2017,
    parser: 'babel-eslint'
  },
  extends: [
    "eslint:recommended",
    "plugin:vue/recommended"
  ],
  plugins: [
    'vue'
  ],
  globals: {
    "_": true       // lodash用変数
  },
  rules: {
    "indent": ["error", 2],                             // インデント：スペース2個
    "quotes": ["error", "single"],                      // 文字列の引用符：シングルクォーテーション
    "semi": ["error", "never"],                         // セミコロンはつけない
    "no-console": "off",                                // console利用可
    "no-empty": ["error", {"allowEmptyCatch": true}],   // 空ブロックはエラー、ただしcatchのみ許可
    "no-fallthrough": ["error",                         // switch caseのフォールスルーは原則エラー
      {
        "commentPattern": "break[\\s\\w]*omitted"       // switch caseでbreakを省略する場合は "break omitted" コメントを付ける
      }
    ],
    "no-irregular-whitespace": ["error", {"skipComments": true}],   // コメント内の不規則な空白は許可
    "no-unused-vars": ["error", {"args": "none"}],      // 関数の引数はチェックしない

    // eslint-plugin-vue
    "vue/max-attributes-per-line": "off",               // 1行に書ける属性の最大数チェックはしない
  }
}
