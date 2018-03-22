package com.rjsk.mvc.pdf;

import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.rjsk.mvc.data.entities.Order;

public class PDFBuilder extends AbstractITextPdfView {
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document doc,
			PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// define font for table header row
		Font font = FontFactory.getFont(FontFactory.HELVETICA);
		font.setColor(BaseColor.WHITE);	
		Font bold = new Font(FontFamily.HELVETICA, 12, Font.BOLD);
		// get data model which is passed by the Spring container			
		@SuppressWarnings("unchecked")
		List<Order> listOrders = (List<Order>)model.get("listOrders");
		PdfPTable table = new PdfPTable(2);
		String imageUrl="https://i.pinimg.com/736x/e4/b3/1c/e4b31cc56b8004eb33e32e483ff00181--pizza-branding-pizza-logo.jpg";
		Image img = Image.getInstance(imageUrl);
		img.scaleToFit(100f, 100f);
		doc.add(img);
		doc.add(new Paragraph("THE PIZZA WAGON",bold));
		doc.add(new Paragraph("Bandra(West), Mumbai - 400001"));
		doc.add(new Paragraph(""));
		for (Order anOrder : listOrders) {
			doc.add(new Paragraph("Invoice No: "+String.valueOf(new Random().nextInt( Integer.MAX_VALUE ) + 1),bold));
			doc.add(new Paragraph("Order No: "+anOrder.getOrderNo(),bold));
			doc.add(new Paragraph("Placed by: "+anOrder.getUsername().toUpperCase()));
			doc.add(new Paragraph("Date: "+anOrder.getDt_made()));
			table.setWidthPercentage(100.0f);
			table.setWidths(new float[] {3.0f, 2.0f});
			table.setSpacingBefore(10);
			
			// define table header cell
			PdfPCell cell = new PdfPCell();
			cell.setBackgroundColor(BaseColor.DARK_GRAY);
			cell.setPadding(5);
			
			// write table header 
			cell.setPhrase(new Phrase("Description", font));
			table.addCell(cell);
			cell.setPhrase(new Phrase("Value", font));
			table.addCell(cell);	
			
			// write table row data
			table.addCell("Pizza:");
			
			table.addCell(anOrder.getItemName());
			table.addCell("Category:");
			table.addCell(anOrder.getCategory());
			table.addCell("Size:");
			table.addCell(String.valueOf(anOrder.getSize()));
			table.addCell("Price:");
			table.addCell(String.valueOf(anOrder.getPrice()));
			table.addCell("Soft crust:");
			table.addCell(anOrder.getToppings()[0]);	
			table.addCell("Extra Cheese:");
			table.addCell(anOrder.getToppings()[1]);	
			table.addCell("Veg topping:");
			table.addCell(anOrder.getToppings()[2]);	
		}
		doc.add(table);
		doc.add(new Paragraph("GST No: "+String.valueOf(new Random().nextInt( Integer.MAX_VALUE ) + 1)));
		doc.add(new Paragraph("Thank You - Visit Again"));
	}

}