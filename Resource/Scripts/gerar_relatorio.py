from docx import Document
from docx.shared import Inches


def gerar_relatorio(evidencias, caminho_saida):
    doc = Document()
    doc.add_heading("Evidências dos testes automatizados", level=1)

    for index, (evidencia, descricao) in enumerate(evidencias.items(), start=1):
        doc.add_heading(f"Evidência do cenário {index}", level=2)
        doc.add_picture(evidencia, width=Inches(7))
        doc.add_paragraph(f"Descrição da evidência: {descricao}.")

    doc.save(caminho_saida)
    print("Relário gerado com sucesso!")


evidencias = {
    "English Pass/Results/Photos evidence/Evidência 15.png": "Então o login deve ser realizado com sucesso",
}
caminho_saida = "English Pass/Evidências dos testes.docx"
gerar_relatorio(evidencias, caminho_saida)
