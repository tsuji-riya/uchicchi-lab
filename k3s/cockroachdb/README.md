以下のyamlは/submodules/cockroach-operatorからシンボリックリンクを作成して参照してくるため直接変更してはいけない。
- crds.yaml
- operator.yaml

バージョンアップの際は参照元のsubmoduleを指定したタグでgit checkoutする。
