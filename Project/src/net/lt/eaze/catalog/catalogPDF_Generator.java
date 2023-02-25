package net.lt.eaze.catalog;

import java.awt.Color;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.JAXBContext;

import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.context.support.ServletContextResource;

import com.lowagie.text.Cell;
import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.HeaderFooter;
import com.lowagie.text.Image;
import com.lowagie.text.ImageLoader;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.Rectangle;
import com.lowagie.text.Table;
import com.lowagie.text.alignment.HorizontalAlignment;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.CMYKColor;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

import net.lt.eaze.model_metamodel2.Element_Attributes;

public class catalogPDF_Generator {

	// List to hold all Students
//	private List<Student> studentList;
	
	public static boolean isProbablyArabic(String s) {
		System.out.println("s: "+s);
		for (int i = 0; i < s.length();) {
			int c = s.codePointAt(i);
			if (c >= 0x0600 && c <= 0x06E0)
				return true;
			i += Character.charCount(c);
		}
		return false;
	}

	public ByteArrayInputStream generate(Catalog catalog, ServletContext servletContext, HttpSession session,List<String> attributeNamesForArabic,HashMap<String, String> messages_data,String locale)
			throws DocumentException, IOException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) session.getAttribute("unif");
		List<Element_Attributes> elementAttributesList = unif.getElement_attributes();
//		List<Element_Attributes> elementAttributesListForCurrentElement = new ArrayList<Element_Attributes>();
		List<String> elementAttributesListForCurrentElement = new ArrayList<String>();
		String elementName = catalog.getElementName();
		HashMap<String, String> attributesPageTitles = new HashMap<String, String>();
		HashMap<String, String> groupCaptionPageTitles = new HashMap<String, String>();
		HashMap<String, String> groupCaptions = new HashMap<String, String>();
		for (Element_Attributes obj : elementAttributesList) {
			if (obj.getConceptName().equals(elementName)) {
				attributesPageTitles.put(obj.getAttrributeName(), obj.getFormPageTitle());
				groupCaptionPageTitles.put(obj.getGroupCaption(), obj.getFormPageTitle());
				groupCaptions.put(obj.getAttrributeName(), obj.getGroupCaption());
				elementAttributesListForCurrentElement.add(obj.getAttrributeName());
			}
		}
		System.out.println("attributesPageTitles: "+attributesPageTitles);
		System.out.println("groupCaptionPageTitles: "+groupCaptionPageTitles);

		// Creating the Object of Document
		Document document = new Document(PageSize.A4, 50, 50, 50, 15);

		// Getting instance of PdfWriter
//		PdfWriter.getInstance(document, response.getOutputStream());

		// Opening the created document to modify it
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		PdfWriter.getInstance(document, out);
		document.open();
		String fontPathArialBlackMainHeading = session.getServletContext().getRealPath("/")+"resources/fonts/arial-black.ttf";
		BaseFont bfComicMainHeading = BaseFont.createFont(fontPathArialBlackMainHeading, BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
		
		Resource resource1_1 = new ServletContextResource(servletContext, "/resources/images/logo-for-pdf-footer.png");
        File resourceFile_1 = resource1_1.getFile();
        
        Resource eaxee_logo_resourse = new ServletContextResource(servletContext, "/resources/images/logo-login-black-white.png");
        File eaxee_logo_file = eaxee_logo_resourse.getFile();
        
        Font footerTextFont = FontFactory.getFont(FontFactory.TIMES_ROMAN);
        footerTextFont.setSize(10);
        
        String fontPathArialBlack = session.getServletContext().getRealPath("/")+"resources/fonts/arial.ttf";
		String fontPathArabic = session.getServletContext().getRealPath("/")+"resources/fonts/Amiri-Regular.ttf";
		BaseFont bfComic = BaseFont.createFont(fontPathArialBlack, BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
        Font fontTableContent = new Font(bfComic, 10);
        
        DateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date date = new Date();  
        
        Image mim_logo = Image.getInstance(resourceFile_1.toString());
        mim_logo.setAlignment(Image.ALIGN_RIGHT);
        mim_logo.setAbsolutePosition(0, 0);
        mim_logo.scalePercent(35);
        
        Image eaxee_logo = Image.getInstance(eaxee_logo_file.toString());
//        eaxee_logo.setAlignment(Image.LEFT);
        eaxee_logo.setAbsolutePosition(100, 0);
        eaxee_logo.scalePercent(10);
		
		
		/////////////
		
		
		
		
		
//		Rectangle box = document.getPageSize();
//		
//		document.add(box);
//
//	    Paragraph mainPageParagraph = new Paragraph("Hello! This PDF is created for ");
//	    paragraph.setWidth(100);
//	    document.showTextAligned(paragraph, (box.getLeft() + box.getRight()) / 2, (box.getTop() + box.getBottom()) / 2,
//	            TextAlignment.CENTER, VerticalAlignment.MIDDLE);
//
////	    PdfCanvas pdfCanvas = new PdfCanvas(pdfDocument.getLastPage());
//	    Rectangle borderRectangle = new Rectangle(box.getLeft() + 5, box.getBottom() + 5, box.getWidth() - 10, box.getHeight() - 10);
//	    pdfCanvas.setColor(new DeviceRgb(0f, 0f, 0.6f), false);
//	    pdfCanvas.setLineWidth(3);
//	    pdfCanvas.rectangle(borderRectangle);
//	    pdfCanvas.stroke();

		
		
		Table mainPageTable = new Table(3);
        // 2 pixel wide blue border
		mainPageTable.setBorderWidth(1);
		mainPageTable.setBorderColor(new Color(238, 233, 233));
		mainPageTable.setWidth(100f);
//		mainPageTable.setPadding(5);
//		mainPageTable.setSpacing(0);
		
	
		
		
	    Cell c = new Cell("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
	    c.setHeader(true);
	    c.setColspan(3);
	    mainPageTable.addCell(c);
	    
	    
	    
	    Font mainPageParagraphFont = new Font(bfComicMainHeading, 20);

//		Paragraph mainPageParagraph1 = new Paragraph("EAXee", mainPageParagraphFont);
		
	    c = new Cell(new Phrase("     Object Report\n     ", mainPageParagraphFont));
	    c.add(new Phrase("Exported By "+username, fontTableContent));
	    c.add(new Phrase("\n     ", mainPageParagraphFont));
	    c.add(new Phrase(formatter1.format(date), fontTableContent));
	    c.add(mim_logo);
	    c.add(new Phrase("\n"));
//	    c = new Cell(new Phrase("EAXee"));
	    c.setBorderColor(new Color(0, 0, 0));
	    c.setHeader(false);
	    c.setColspan(3);
	    mainPageTable.addCell(c);
	    
//		mainPageTable.addCell(mainPageParagraph1);
	    
		
//		c = new Cell("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");\
	    c = new Cell("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
	    c.add(new Phrase(" Powered By\n\n", fontTableContent));
	    c.add(eaxee_logo);
	    c.setHeader(false);
	    c.setColspan(3);
	    mainPageTable.addCell(c);
	    
	    
	    
//		Cell c1 = new Cell("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
//	    mainPageTable.addCell(c1);
//	    mainPageTable.endHeaders();
//	    c = new Cell("example cell with rowspan 2 and red border");
//	    c.setRowspan(2);
//	    c.setBorderColor(new Color(255, 0, 0));
//	    mainPageTable.addCell(c);
//	    mainPageTable.addCell("1.1");
//	    mainPageTable.addCell("2.1");
//	    mainPageTable.addCell("1.2");
//	    mainPageTable.addCell("2.2");
//	    c = new Cell("align center");
//	    c.setHorizontalAlignment(HorizontalAlignment.CENTER);
//	    mainPageTable.addCell(c);
//	    c = new Cell("big cell");
//	    c.setRowspan(2);
//	    c.setColspan(2);
//	    mainPageTable.addCell(c);
//	    c = new Cell("align right");
//	    c.setHorizontalAlignment(HorizontalAlignment.RIGHT);
//	    mainPageTable.addCell(c);
	    document.add(mainPageTable);
		
		
		
		
		
		
		
		
		
		/////////////
		
		 BaseFont bf_helv = BaseFont.createFont(BaseFont.HELVETICA, "Cp1252", false);
         BaseFont bf_times = BaseFont.createFont(BaseFont.TIMES_ROMAN, "Cp1252", false);
         BaseFont bf_courier = BaseFont.createFont(BaseFont.COURIER, "Cp1252", false);
         BaseFont bf_symbol = BaseFont.createFont(BaseFont.SYMBOL, "Cp1252", false);
		
         
         Chunk chunk = new Chunk(mim_logo, 0, 0, true);
         
         
         Chunk chunk1 = new Chunk("Downloaded on "+formatter1.format(date)+"  ||  Page Number: ",footerTextFont);
         HeaderFooter footer = new HeaderFooter( new Phrase(chunk1), new Phrase(chunk));
		
		footer.setBorder(Rectangle.NO_BORDER);
		
		footer.setAlignment(Element.ALIGN_JUSTIFIED_ALL);
		document.setFooter(footer);

		// Creating font
		// Setting font style and size
		
		Font mainHeadingFont = new Font(bfComicMainHeading, 16);
//		mainHeadingFont.setSize(14);
		Font fontTiltle = new Font(bfComicMainHeading, 14);
//		fontTiltle.setSize(16);
//		Font headingTitle = FontFactory.getFont(FontFactory);
//		fontTiltle.setSize(20);
		
		BaseFont bfComicArabic = BaseFont.createFont(fontPathArabic, BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
        Font fontTableContentArabic = new Font(bfComicArabic, 13);
        Font fontTiltleArabic = new Font(bfComicArabic, 14);

		// Creating paragraph
		Paragraph paragraph = new Paragraph("Object Report of " + elementName, mainHeadingFont);

		// Aligning the paragraph in document
		paragraph.setAlignment(Paragraph.ALIGN_CENTER);

		// Adding the created paragraph in document
		document.add(paragraph);

		List<thead> theads = catalog.getTheads();
		List<String> thList = theads.get(0).getTh();
		int theadLength = thList.size();
		////

		List<tbody> tbodyList = catalog.getTbodies();
		int dataRowsIndex = 1;
		List<tr> tr_List = new ArrayList<tr>();
		
		for (tbody td_list : tbodyList) {
			tr_List = td_list.getTr();
			for(tr obj:tr_List) {
				List<String> pagesAdded = new ArrayList<String>();
				PdfPTable table = null;
				List<String> td_List = obj.getTd();
				//////////
				
				for (int i = 0; i < theadLength; i++) {
					String thValue = thList.get(i);
					String tdValue = td_List.get(i);
					String valueToCompare = thValue;
					String pageTitle = attributesPageTitles.get(valueToCompare);
					String pageTitleToShow = pageTitle;
					if(locale.equals("ar")) {
						valueToCompare = attributeNamesForArabic.get(i);
						System.out.println("valueToCompare: "+valueToCompare);
						pageTitle = attributesPageTitles.get(valueToCompare);
						if(pageTitle==null) {/// it is done because we also have grouped attributes with one group caption
							pageTitle = groupCaptionPageTitles.get(valueToCompare);
						}
						if(pageTitle==null) {///// it is done because because attribute having node and nodes had same arabic.
							System.out.println("null  elementAttributesListForCurrentElement: "+elementAttributesListForCurrentElement);
							for(String att:elementAttributesListForCurrentElement) {
								if(att.toLowerCase().startsWith(valueToCompare.toLowerCase())) {
									valueToCompare = att;
									pageTitle = attributesPageTitles.get(valueToCompare);
									break;
								}else if(valueToCompare.toLowerCase().startsWith(att.toLowerCase())) {
									valueToCompare = att;
									pageTitle = attributesPageTitles.get(valueToCompare);
									break;
								}
							}
//							pageTitle = groupCaptionPageTitles.get(valueToCompare);
						}
						pageTitleToShow = pageTitle;
						System.out.println("pageTitle for arabic: "+pageTitle);
						pageTitleToShow = messages_data.get(pageTitle.replaceAll("\\s+", "_"));
					}
					String groupCaption = groupCaptions.get(valueToCompare);
//					PdfPTable table = new PdfPTable(2);
					if (!pagesAdded.contains(pageTitle)) {
						if (i > 0) {
							document.add(table);
						}
						Paragraph p1 = new Paragraph(pageTitleToShow, fontTiltle);
						System.out.println("pageTitleToShow: "+pageTitleToShow);
						p1.setAlignment(Paragraph.ALIGN_LEFT);
						try{
							if (isProbablyArabic(pageTitleToShow)) {
								
								System.out.println("pageTitleToShow: "+pageTitleToShow);
//								p1 = new Paragraph(pageTitleToShow, fontTableContentArabic);
	//							cell.setPhrase(new Phrase(tdValue, fontTableContentArabic));
//								cell.setPhrase(new Phrase(tdValue, fontTableContentArabic));
//								PdfPCell cell = new PdfPCell();
//				            	cell.setPhrase(new Phrase(pageTitleToShow, fontTableContentArabic));
//				            	cell.setRunDirection(PdfWriter.RUN_DIRECTION_RTL);
				            	p1 = new Paragraph(new Phrase(pageTitleToShow, fontTableContentArabic));
								p1.setAlignment(Paragraph.ALIGN_RIGHT);
//								document.add(cell);
							}
						}catch (Exception e) {
							// TODO: handle exception
						}

						// Aligning the paragraph in document

						// Adding the created paragraph in document
						document.add(p1);
						table = new PdfPTable(2);
						pagesAdded.add(pageTitle);
					}
					// Setting width of table, its columns and spacing
					table.setWidthPercentage(100f);
					table.setWidths(new int[] { 3, 6 });
					table.setSpacingBefore(5);

					// Create Table Cells for table header
					PdfPCell cell = new PdfPCell();

//					cell.setPadding(5);
					table.addCell(new Phrase(thValue, fontTableContent));
					
					
					String[] tdSplitted = tdValue.split("<br>");
					int idSlittedIndex = tdSplitted.length;
					if(idSlittedIndex>1) {
						tdValue = "";
						for(int x=0;x<idSlittedIndex;x++) {
							String bulletObj = tdSplitted[x];
							tdValue += "\u2022 "+bulletObj;
							if(x!=idSlittedIndex-1) {
								tdValue +="\n";
							}
						}
					}
					
//					System.out.println(fontPath1);
//					String fontPath = "c:/windows/fonts/arial.ttf";
//					String fontPath = "c:/Users/ABC/eclipse-workspace/Project/WebContent/resources/fonts/ARIALUNI.TTF";
//					FontFactory.register(fontPath);
					
//					System.out.println("tdValue: "+tdValue);
//					if(tdValue.getCharacterEncoding() == null) {
//						tdValue.setCharacterEncoding("UTF-8");
//					}
					
		            
//		            PdfPCell cell = new PdfPCell();
//		    		cell.setPhrase(new Phrase("\u0627\u0644\u0645\u0648\u0642\u0639 \u0627\u0644\u0625\u0644\u0643\u062a\u0631\u0648\u0646\u064a", font));
					if(groupCaption!= null) {
						if(groupCaption.equals("Change History") ) {
							String[] changeHistorySplitted = tdValue.split(";");
							if(changeHistorySplitted.length>0) {
								tdValue = "";
								int changeHistorySplittedLength = changeHistorySplitted.length;
								for(int chIndex=0;chIndex<changeHistorySplittedLength;chIndex++) {
									String bulletObj = changeHistorySplitted[chIndex];
									tdValue += "\u2022 "+bulletObj;
									if(chIndex!=changeHistorySplittedLength-1) {
										tdValue +="\n";
									}
								}
							}
						}
						
					}
		            cell.setPhrase(new Phrase(tdValue, fontTableContent));
		            if(isProbablyArabic(tdValue)) {
		            	
//		            	BaseFont bfComicArabic = BaseFont.createFont(fontPathArabic, BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
//		                Font fontTableContentArabic = new Font(bfComicArabic, 13);
		            	
//		            	fontTableContent = new Font(bfComic, 14);
		            	cell.setPhrase(new Phrase(tdValue, fontTableContentArabic));
		            	cell.setRunDirection(PdfWriter.RUN_DIRECTION_RTL);
		            }
		    		table.addCell(cell);
//					table.addCell(tdValue);
					if (i == theadLength - 1) {
						document.add(table);
					}
				}
				
				//////////
			}
			//////////

			

			/////////

			/*
			 * for(tr obj:td) {
			 * 
			 * td_List = obj.getTd(); int tdIndex = 0; for(String obj1:td_List) { obj1 =
			 * obj1.replaceAll("<br>", ";"); } }
			 */
		}
		/*
		Table table = new Table(3);
        // 2 pixel wide blue border
	    table.setBorderWidth(2);
	    table.setBorderColor(new Color(0, 0, 255));
	    table.setPadding(5);
	    table.setSpacing(5);
	    Cell c = new Cell("header");
	    c.setHeader(true);
	    c.setColspan(3);
	    table.addCell(c);
	    table.endHeaders();
	    c = new Cell("example cell with rowspan 2 and red border");
	    c.setRowspan(2);
	    c.setBorderColor(new Color(255, 0, 0));
	    table.addCell(c);
	    table.addCell("1.1");
	    table.addCell("2.1");
	    table.addCell("1.2");
	    table.addCell("2.2");
	    c = new Cell("align center");
	    c.setHorizontalAlignment(HorizontalAlignment.CENTER);
	    table.addCell(c);
	    c = new Cell("big cell");
	    c.setRowspan(2);
	    c.setColspan(2);
	    table.addCell(c);
	    c = new Cell("align right");
	    c.setHorizontalAlignment(HorizontalAlignment.RIGHT);
	    table.addCell(c);
	    document.add(table);
		*/
		////////////
		/*
		 * Table table = new Table(3); // 2 pixel wide blue border
		 * table.setBorderWidth(2); table.setBorderColor(new Color(0, 0, 255));
		 * table.setPadding(5); table.setSpacing(5); Cell c = new Cell("header");
		 * c.setHeader(true); c.setColspan(3); table.addCell(c); table.endHeaders(); c =
		 * new Cell("example cell with rowspan 2 and red border"); c.setRowspan(2);
		 * c.setBorderColor(new Color(255, 0, 0)); table.addCell(c);
		 * table.addCell("1.1"); table.addCell("2.1"); table.addCell("1.2");
		 * table.addCell("2.2"); c = new Cell("align center");
		 * c.setHorizontalAlignment(HorizontalAlignment.CENTER); table.addCell(c); c =
		 * new Cell("big cell"); c.setRowspan(2); c.setColspan(2); table.addCell(c); c =
		 * new Cell("align right"); c.setHorizontalAlignment(HorizontalAlignment.RIGHT);
		 * table.addCell(c); document.add(table);
		 */

//		///////////////

//		try {
		/*
		Resource resource1 = new ServletContextResource(servletContext, "/resources/images/akbarkhan.jpg");
		File resourceFile = resource1.getFile();
		Image simple = Image.getInstance(resourceFile.toString());
		simple.setAbsolutePosition(100, 100);
		simple.scalePercent(50);
		document.add(simple);
		*/
//        } catch (Exception ex) {
//            System.out.println("no image for you");
//        }

		// Closing the document
		document.close();
		return new ByteArrayInputStream(out.toByteArray());

	}

	public void generate(HttpServletResponse response) throws DocumentException, IOException {

		// Creating the Object of Document
		Document document = new Document(PageSize.A4);

		// Getting instance of PdfWriter
		PdfWriter.getInstance(document, response.getOutputStream());

		// Opening the created document to modify it
		document.open();

		// Creating font
		// Setting font style and size
		Font fontTiltle = FontFactory.getFont(FontFactory.TIMES_ROMAN);
		fontTiltle.setSize(20);

		// Creating paragraph
		Paragraph paragraph = new Paragraph("List Of Students", fontTiltle);

		// Aligning the paragraph in document
		paragraph.setAlignment(Paragraph.ALIGN_CENTER);

		// Adding the created paragraph in document
		document.add(paragraph);

		// Creating a table of 3 columns
		PdfPTable table = new PdfPTable(3);

		// Setting width of table, its columns and spacing
		table.setWidthPercentage(100f);
		table.setWidths(new int[] { 3, 3, 3 });
		table.setSpacingBefore(5);

		// Create Table Cells for table header
		PdfPCell cell = new PdfPCell();

		// Setting the background color and padding
		cell.setBackgroundColor(CMYKColor.MAGENTA);
		cell.setPadding(5);

		// Creating font
		// Setting font style and size
		Font font = FontFactory.getFont(FontFactory.TIMES_ROMAN);
		font.setColor(CMYKColor.WHITE);

		// Adding headings in the created table cell/ header
		// Adding Cell to table
		cell.setPhrase(new Phrase("ID", font));
		table.addCell(cell);
		cell.setPhrase(new Phrase("Student Name", font));
		table.addCell(cell);
		cell.setPhrase(new Phrase("Section", font));
		table.addCell(cell);

		// Iterating over the list of students
//		for (Student student : studentList) {
//			// Adding student id
//			table.addCell(String.valueOf(student.getId()));
//			// Adding student name
//			table.addCell(student.getName());
//			// Adding student section
//			table.addCell(student.getSection());
//		}
		// Adding the created table to document

//		table.addCell(String.valueOf("001"));
		table.addCell("001");
		table.addCell("Ali");
		table.addCell("A");

		table.addCell("001");
		table.addCell("Ahsan");
		table.addCell("A0");

		document.add(table);

//		Resource resource1 = new ServletContextResource(servletContext, "/resources/images/akbarkhan.jpg");
//		File resourceFile = resource1.getFile();

//		ImageLoader imgLoader = new ImageLoader();
//		imgLoader.getJpegImage(resourceFile.toString());

		/*
		 * String imageFile = "F:/JavaPdf/image.png"; ImageData data =
		 * ImageDataFactory.create(imageFile); // Creating an Image object Image image =
		 * new Image(data);
		 * 
		 * // Set the position of the image. image.setFixedPosition(200, 300);
		 * 
		 * // Adding image to the document document.add(image);
		 */

		// Closing the document
		document.close();

	}
}