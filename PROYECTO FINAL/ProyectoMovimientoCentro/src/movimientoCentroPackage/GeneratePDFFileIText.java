package movimientoCentroPackage;

import com.itextpdf.text.Anchor;
import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chapter;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Section;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.DottedLineSeparator;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.io.*;
import java.util.ArrayList; 
import javax.servlet.http.*;

public class GeneratePDFFileIText {
	// Fonts definitions (Definición de fuentes).
	private static final Font chapterFont = FontFactory.getFont(FontFactory.HELVETICA, 26, Font.BOLDITALIC);
	private static final Font paragraphFont = FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL);

	private static final Font categoryFont = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
	private static final Font subcategoryFont = new Font(Font.FontFamily.TIMES_ROMAN, 16, Font.BOLD);
	private static final Font blueFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.RED);    
	private static final Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);

	private static final String iTextExampleImage = "imagenes/logo.png";

	public void createPDFCandidatos(File pdfNewFile, ArrayList<Candidato> candidatos) throws MalformedURLException, IOException {

		try {
			Document document = new Document();
			try {

				PdfWriter.getInstance(document, new FileOutputStream(pdfNewFile));

			} catch (FileNotFoundException fileNotFoundException) {
				System.out.println("(No se encontrado el fichero para generar el pdf)" + fileNotFoundException);
			}
			BDController controladorBD = new BDController();
			document.open();
			document.addTitle("Listado de Candidatos MOVIMIENTO CENTRO");
			document.addSubject("Using iText (usando iText)");
			document.addKeywords("Java, PDF, iText");
			document.addAuthor("MOVIMIENTO CENTRO");
			document.addCreator("MOVIMIENTO CENTRO");

			Chunk chunk = new Chunk("MOVIMIENTO CENTRO", chapterFont);
			chunk.setBackground(BaseColor.WHITE);
			Chapter chapter = new Chapter(new Paragraph(chunk), 1);
			chapter.setNumberDepth(0);
			chapter.add(new Paragraph("Listado de Candidatos UNION", paragraphFont));
			Image image;


			image = Image.getInstance("C:\\Users\\Naggy\\Desktop\\proyecto\\ProyectoEquipoAmarillo\\PROYECTO FINAL");  
			image.setAbsolutePosition(-450, 200);
			chapter.add(image);

			document.add(chapter);

			Chapter chapSecond = new Chapter(new Paragraph(new Anchor("Listado de Candidatos")), 1);
			Paragraph paragraphS = new Paragraph("MOVIMIENTO CENTRO", subcategoryFont);


			DottedLineSeparator dottedline = new DottedLineSeparator();
			dottedline.setOffset(-2);
			dottedline.setGap(2f);


			Section paragraphMoreS = chapSecond.addSection(paragraphS);
			// List by iText (listas por iText)
			/*String text = "test 1 2 3 ";
            for (int i = 0; i < 5; i++) {
                text = text + text;
            }
            List list = new List(List.UNORDERED);
            ListItem item = new ListItem(text);
            item.setAlignment(Element.ALIGN_JUSTIFIED);
            list.add(item);
            text = "a b c align ";
            for (int i = 0; i < 5; i++) {
                text = text + text;
            }
            item = new ListItem(text);
            item.setAlignment(Element.ALIGN_JUSTIFIED);
            list.add(item);
            text = "supercalifragilisticexpialidocious ";
            for (int i = 0; i < 3; i++) {
                text = text + text;
            }
            item = new ListItem(text);
            item.setAlignment(Element.ALIGN_JUSTIFIED);
            list.add(item);
            paragraphMoreS.add(list);
            document.add(chapSecond);
			 */
			// How to use PdfPTable
			// UtilizaciÃ³n de PdfPTable

			// We use various elements to add title and subtitle
			// Usamos varios elementos para aÃ±adir tÃ­tulo y subtÃ­tulo
			Anchor anchor = new Anchor("", categoryFont);
			anchor.setName("");            
			Chapter chapTitle = new Chapter(new Paragraph(anchor), 1);
			Paragraph paragraph = new Paragraph("", subcategoryFont);
			Section paragraphMore = chapTitle.addSection(paragraph);
			//paragraphMore.add(new Paragraph("This is a simple example (Este es un ejemplo sencillo)"));
			Integer numColumns = 5;
			Integer numRows = candidatos.size();
			// We create the table (Creamos la tabla).
			PdfPTable table = new PdfPTable(numColumns); 

			// Ahora llenamos la tabla del PDF
			PdfPCell columnHeader;
			//Rellenamos las cabeceras de la tabla).                
			//for (int column = 0; column < numColumns; column++) {
			columnHeader = new PdfPCell(new Phrase("Foto"));
			columnHeader.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(columnHeader);
			columnHeader = new PdfPCell(new Phrase("Nombre"));
			columnHeader.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(columnHeader);
			columnHeader = new PdfPCell(new Phrase("Apellidos"));
			columnHeader.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(columnHeader);
			columnHeader = new PdfPCell(new Phrase("Fecha de nacimiento"));
			columnHeader.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(columnHeader);
			columnHeader = new PdfPCell(new Phrase("Autonomia"));
			columnHeader.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(columnHeader);
			//}
			table.setHeaderRows(1);
			//Rellenamos las filas de la tabla).                

			Image fotoCandidato;
			Image fotoAutonomia;
			for (int row = 0; row < numRows; row++) {
				//for (int column = 0; column < numColumns; column++) {

				fotoCandidato = Image.getInstance("C:\\Users\\Naggy\\Desktop\\proyecto\\ProyectoEquipoAmarillo\\PROYECTO FINAL\\ProyectoMovimientoCentro\\WebContent\\imagenes\\candidatos" + candidatos.get(row).getCod_candidato() + ".jpg");
				table.addCell(fotoCandidato);
				fotoAutonomia = Image.getInstance("C:\\Users\\Naggy\\Desktop\\proyecto\\ProyectoEquipoAmarillo\\PROYECTO FINAL\\ProyectoMovimientoCentro\\WebContent\\imagenes\\candidatos" + candidatos.get(row).getCod_candidato() + ".jpg");
				table.addCell(fotoAutonomia);     
				
				
				//}
			}
			// Añadimos la tabla)
			paragraphMore.add(table);
			// Añadimos el elemento con la tabla).
			document.add(chapTitle);

			document.close();
			System.out.println("Se ha generado la hoja PDF!");
		} catch (DocumentException documentException) {
			System.out.println("Se ha producido un error al generar un documento: " + documentException);
		}
	}


}
