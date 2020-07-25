# OmniGen Fron-end

Aplicativo de gerenciamento Omnichannel desenvolvido em flutter para o MegaHack 3.0.

## Recursos

- **Flutter** -  A framework developed by Google in the Dart language.

## Como iniciar?

1. Clone este repositório utilizando `git clone https://github.com/felipebufelli/to_do_list.git`
2. Mova-se para o diretório apropriado: `cd to_do_list`
3. Rode `flutter run` para iniciar a aplicação.

Nota: Se você optar por iniciar o aplicativo móvel no emulador Android, será necessário iniciar o emulador antes.

## Prototipagem

A prototipagem da maioria das telas foi feita no figma e pode ser vista por [aqui](https://www.figma.com/file/HwnUyaeyv36n6F8OSrPzdy/Mega-Hack-3.0?node-id=1%3A14).

### API: [https://omnigem.herokuapp.com/canais/{id}](https://omnigem.herokuapp.com/canais/1)

E necessario informar o id do canal para receber suas informacoes.

Exemplo de resposta:

```javascript
{
  "id": 4,
  "nome": "MecadoLivre",
  "taxa_inicial": "00.00",
  "taxa_fixa": "05.00",
  "taxa_inicial_per": "00.00",
  "taxa_deb": "0.00",
  "taxa_cred": "0.00",
  "taxa_cred_parc": "0.00",
  "taxa_universal": "00.16",
  "lucro_bruto_mes": ""
}
```
