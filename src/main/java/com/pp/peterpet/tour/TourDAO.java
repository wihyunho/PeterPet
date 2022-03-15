package com.pp.peterpet.tour;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.peterpet.board.BoardDTO;
import com.pp.peterpet.board.BoardMapper;

@Service
public class TourDAO {

	@Autowired
	private SqlSession ss;
	
	//String area;
	//String type;
	
	//Type test ;

	public void getTour(HttpServletRequest request) {

		String area = request.getParameter("area");
		String type = request.getParameter("type");
		System.out.println(area + type);

		if (type.equals("0") ) {
			//test = new Type();
			//test.setArea(area);
			//test.setType(type);
			
			TourDTO tt = new TourDTO();
			tt.setP_area(area);
			
			request.setAttribute("pet", ss.getMapper(TourMapper.class).getAllTour(tt));
		} else {
			//test = new Type();
		//	test.setArea(area);
			//test.setType(type);
			
			TourDTO tt = new TourDTO();
			tt.setP_area(area);
			tt.setP_category(type);

			request.setAttribute("pet", ss.getMapper(TourMapper.class).getTour(tt));
		}

	}

	public void upsertTour(TourDTO p_up, TourDTO p_in,HttpServletRequest request) {

		//String uri = "http://data.visitkorea.or.kr/sparql?query=PREFIX+skos%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2004%2F02%2Fskos%2Fcore%23%3E%0D%0APREFIX+rdf%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23%3E%0D%0APREFIX+rdfs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0D%0APREFIX+dc%3A+%3Chttp%3A%2F%2Fpurl.org%2Fdc%2Felements%2F1.1%2F%3E%0D%0APREFIX+owl%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2002%2F07%2Fowl%23%3E%0D%0APREFIX+xsd%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema%23%3E%0D%0APREFIX+vi%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Ftransformer%2Fviews%23%3E%0D%0APREFIX+kto%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fontology%2F%3E%0D%0APREFIX+ktop%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fproperty%2F%3E%0D%0APREFIX+ids%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fresource%2F%3E%0D%0APREFIX+wgs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2003%2F01%2Fgeo%2Fwgs84_pos%23%3E%0D%0APREFIX+f%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Fgeo%2Ffunctions%23%3E%0D%0APREFIX+foaf%3A+%3Chttp%3A%2F%2Fxmlns.com%2Ffoaf%2F0.1%2F%3E%0D%0APREFIX+geo%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Fgeo%2Fproperty%23%3E%0D%0APREFIX+busan%3A+%3Chttp%3A%2F%2Flod.busan.go.kr%2Fontology%2F%3E%0D%0APREFIX+kwater%3A+%3Chttp%3A%2F%2Fopendata.kwater.or.kr%2Flod%2Fdef%2F%3E%0D%0A%0D%0A%0D%0ASELECT+%3Fname+%3Farea+%3Fcategory+%3Faddress+%3Ftell+%3Fdes+%3Fimg%0D%0AWHERE+%7B%0D%0A+%3Fresource+a+kto%3APlace.%0D%0A+++%3Fresource+++rdfs%3Alabel+%3Fname+.%0D%0A++%3Fresource++++ktop%3Alocation+%3Floc.%0D%0A++++%3Floc++skos%3Abroader+%3Flocup.%0D%0A++%3Flocup+skos%3AbroaderTransitive+%3Flocsuper.%0D%0A++%3Flocsuper+skos%3AprefLabel+%3Farea.%0D%0A+++FILTER+langMatches%28+lang%28%3Farea%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Acategory+%3Fcat.%0D%0A+++%3Fcat+skos%3Abroader+%3Fcatup.%0D%0A++%3Fcatup+skos%3AbroaderTransitive+%3Fcatsuper.%0D%0A++%3Fcatsuper+skos%3AprefLabel+%3Fcategory.%0D%0A++FILTER+langMatches%28+lang%28%3Fcategory%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Aaddress%09%3Faddress.%0D%0A++%3Fresource+++ktop%3Atel+%3Ftell.%0D%0A++%3Fresource+++dc%3Adescription+%3Fdes.%0D%0A+++%3Fresource++ktop%3ApetsAvailable+%3Fpet.%0D%0A++++++FILTER%28%3Fpet+%3D+%22%EA%B0%80%EB%8A%A5%22+%29%0D%0A++%0D%0A++%0D%0A++%7Bselect+distinct+%3Fimg+where%7B%0D%0A++++%3Fresource+foaf%3Adepiction+%3Fimg%0D%0A++++++++++++++%7D%7D%0D%0A%0D%0A%7D%09&format=json";
		
		String uri = "http://data.visitkorea.or.kr/sparql?query=PREFIX+skos%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2004%2F02%2Fskos%2Fcore%23%3E%0D%0APREFIX+rdf%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23%3E%0D%0APREFIX+rdfs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0D%0APREFIX+dc%3A+%3Chttp%3A%2F%2Fpurl.org%2Fdc%2Felements%2F1.1%2F%3E%0D%0APREFIX+owl%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2002%2F07%2Fowl%23%3E%0D%0APREFIX+xsd%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema%23%3E%0D%0APREFIX+vi%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Ftransformer%2Fviews%23%3E%0D%0APREFIX+kto%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fontology%2F%3E%0D%0APREFIX+ktop%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fproperty%2F%3E%0D%0APREFIX+ids%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fresource%2F%3E%0D%0APREFIX+wgs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2003%2F01%2Fgeo%2Fwgs84_pos%23%3E%0D%0APREFIX+foaf%3A+%3Chttp%3A%2F%2Fxmlns.com%2Ffoaf%2F0.1%2F%3E%0D%0APREFIX+geo%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Fgeo%2Fproperty%23%3E%0D%0APREFIX+pf%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2FDARQ%2Fproperty%23%3E+%0D%0A%0D%0ASELECT+%28%3Fresource+as+%3Fcode%29+%3Fname+%3Farea+%3Fcategory+%3Faddress+%3Ftell+%3Fdes+%3Fimg%0D%0AWHERE+%7B%0D%0A+%3Fresource+a+kto%3APlace.%0D%0A+++%3Fresource+++rdfs%3Alabel+%3Fname+.%0D%0A++%3Fresource++++ktop%3Alocation+%3Floc.%0D%0A++++%3Floc++skos%3Abroader+%3Flocup.%0D%0A++%3Flocup+skos%3AbroaderTransitive+%3Flocsuper.%0D%0A++%3Flocsuper+skos%3AprefLabel+%3Farea.%0D%0A+++FILTER+langMatches%28+lang%28%3Farea%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Acategory+%3Fcat.%0D%0A+++%3Fcat+skos%3Abroader+%3Fcatup.%0D%0A++%3Fcatup+skos%3AbroaderTransitive+%3Fcatsuper.%0D%0A++%3Fcatsuper+skos%3AprefLabel+%3Fcategory.%0D%0A++FILTER+langMatches%28+lang%28%3Fcategory%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Aaddress%09%3Faddress.%0D%0A++%3Fresource+++ktop%3Atel+%3Ftell.%0D%0A++%3Fresource+++dc%3Adescription+%3Fdes.%0D%0A+++%3Fresource++ktop%3ApetsAvailable+%3Fpet.%0D%0A++++++FILTER%28%3Fpet+%3D+%22%EA%B0%80%EB%8A%A5%22+%29%0D%0A++%0D%0A++%0D%0A+%0D%0A++++%3Fresource+foaf%3Adepiction+%3Fimg.%0D%0A++++++++++++%0D%0A%0D%0A%7D%09%09%09%09%0D%0A%09%09%09&format=json";
		
		//String url_noImg = "http://data.visitkorea.or.kr/sparql?query=PREFIX+skos%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2004%2F02%2Fskos%2Fcore%23%3E%0D%0APREFIX+rdf%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23%3E%0D%0APREFIX+rdfs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0D%0APREFIX+dc%3A+%3Chttp%3A%2F%2Fpurl.org%2Fdc%2Felements%2F1.1%2F%3E%0D%0APREFIX+owl%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2002%2F07%2Fowl%23%3E%0D%0APREFIX+xsd%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema%23%3E%0D%0APREFIX+vi%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Ftransformer%2Fviews%23%3E%0D%0APREFIX+kto%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fontology%2F%3E%0D%0APREFIX+ktop%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fproperty%2F%3E%0D%0APREFIX+ids%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fresource%2F%3E%0D%0APREFIX+wgs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2003%2F01%2Fgeo%2Fwgs84_pos%23%3E%0D%0APREFIX+f%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Fgeo%2Ffunctions%23%3E%0D%0APREFIX+foaf%3A+%3Chttp%3A%2F%2Fxmlns.com%2Ffoaf%2F0.1%2F%3E%0D%0APREFIX+geo%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Fgeo%2Fproperty%23%3E%0D%0APREFIX+busan%3A+%3Chttp%3A%2F%2Flod.busan.go.kr%2Fontology%2F%3E%0D%0APREFIX+kwater%3A+%3Chttp%3A%2F%2Fopendata.kwater.or.kr%2Flod%2Fdef%2F%3E%0D%0A%0D%0A%0D%0ASELECT+%28%3Fresource+as+%3Fcode%29+%3Fname+%3Farea+%3Fcategory+%3Faddress+%3Ftell+%3Fdes+%0D%0AWHERE+%7B%0D%0A+%3Fresource+a+kto%3APlace.%0D%0A+++%3Fresource+++rdfs%3Alabel+%3Fname+.%0D%0A+Filter%28NOT+EXISTS%7B+%3Fresource+foaf%3Adepiction+%3Fimg.%7D%29%0D%0A++++++++%0D%0A++++++++%0D%0A++%3Fresource++++ktop%3Alocation+%3Floc.%0D%0A++++%3Floc++skos%3Abroader+%3Flocup.%0D%0A++%3Flocup+skos%3AbroaderTransitive+%3Flocsuper.%0D%0A++%3Flocsuper+skos%3AprefLabel+%3Farea.%0D%0A+++FILTER+langMatches%28+lang%28%3Farea%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Acategory+%3Fcat.%0D%0A+++%3Fcat+skos%3Abroader+%3Fcatup.%0D%0A++%3Fcatup+skos%3AbroaderTransitive+%3Fcatsuper.%0D%0A++%3Fcatsuper+skos%3AprefLabel+%3Fcategory.%0D%0A++FILTER+langMatches%28+lang%28%3Fcategory%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Aaddress%09%3Faddress.%0D%0A++%3Fresource+++ktop%3Atel+%3Ftell.%0D%0A++%3Fresource+++dc%3Adescription+%3Fdes.%0D%0A+++%3Fresource++ktop%3ApetsAvailable+%3Fpet.%0D%0A++++++FILTER%28%3Fpet+%3D+%22%EA%B0%80%EB%8A%A5%22+%29%0D%0A++%0D%0A%0D%0A%7D%0D%0A%09%09%09%0D%0A++%09%09%09%09%0D%0A%09%09%09%0D%0A++%09%09%09%09%0D%0A%09%09%09&format=json";
		//String url_noImg="http://data.visitkorea.or.kr/sparql?query=PREFIX+skos%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2004%2F02%2Fskos%2Fcore%23%3E%0D%0APREFIX+rdf%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23%3E%0D%0APREFIX+rdfs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0D%0APREFIX+dc%3A+%3Chttp%3A%2F%2Fpurl.org%2Fdc%2Felements%2F1.1%2F%3E%0D%0APREFIX+owl%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2002%2F07%2Fowl%23%3E%0D%0APREFIX+xsd%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema%23%3E%0D%0APREFIX+vi%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Ftransformer%2Fviews%23%3E%0D%0APREFIX+kto%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fontology%2F%3E%0D%0APREFIX+ktop%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fproperty%2F%3E%0D%0APREFIX+ids%3A+%3Chttp%3A%2F%2Fdata.visitkorea.or.kr%2Fresource%2F%3E%0D%0APREFIX+wgs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2003%2F01%2Fgeo%2Fwgs84_pos%23%3E%0D%0APREFIX+foaf%3A+%3Chttp%3A%2F%2Fxmlns.com%2Ffoaf%2F0.1%2F%3E%0D%0APREFIX+geo%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2Fgeo%2Fproperty%23%3E%0D%0APREFIX+pf%3A+%3Chttp%3A%2F%2Fwww.saltlux.com%2FDARQ%2Fproperty%23%3E+%0D%0ASELECT+%28%3Fresource+as+%3Fcode%29+%3Fname+%3Farea+%3Fcategory+%3Faddress+%3Ftell+%3Fdes+%0D%0AWHERE+%7B%0D%0A+%3Fresource+a+kto%3APlace.%0D%0A+++%3Fresource+++rdfs%3Alabel+%3Fname+.%0D%0A%0D%0A++++++++%0D%0A++++++++%0D%0A++%3Fresource++++ktop%3Alocation+%3Floc.%0D%0A++++%3Floc++skos%3Abroader+%3Flocup.%0D%0A++%3Flocup+skos%3AbroaderTransitive+%3Flocsuper.%0D%0A++%3Flocsuper+skos%3AprefLabel+%3Farea.%0D%0A+++FILTER+langMatches%28+lang%28%3Farea%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Acategory+%3Fcat.%0D%0A+++%3Fcat+skos%3Abroader+%3Fcatup.%0D%0A++%3Fcatup+skos%3AbroaderTransitive+%3Fcatsuper.%0D%0A++%3Fcatsuper+skos%3AprefLabel+%3Fcategory.%0D%0A++FILTER+langMatches%28+lang%28%3Fcategory%29%2C+%22KO%22+%29+%0D%0A++%0D%0A++%3Fresource++++ktop%3Aaddress%09%3Faddress.%0D%0A++%3Fresource+++ktop%3Atel+%3Ftell.%0D%0A++%3Fresource+++dc%3Adescription+%3Fdes.%0D%0A+++%3Fresource++ktop%3ApetsAvailable+%3Fpet.%0D%0A++++++FILTER%28%3Fpet+%3D+%22%EA%B0%80%EB%8A%A5%22+%29%0D%0A++%0D%0A%0D%0A%7D%09%09%0D%0A%09%09%09&format=json";
		try {
			URL url = new URL(uri);
			URLConnection conn = url.openConnection();
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			StringBuilder sb = new StringBuilder();
			String line;
//			URL url_No = new URL(url_noImg);
//			URLConnection conn_No = url_No.openConnection();
//			BufferedReader br_No = new BufferedReader(new InputStreamReader(conn_No.getInputStream(), "UTF-8"));
//			StringBuilder sb_No = new StringBuilder();
//			String line_No;

			while ((line = br.readLine()) != null) {
				sb = sb.append(line);
				
			}
//			while ((line_No = br_No.readLine()) != null) {
//				sb_No = sb_No.append(line_No);
//			}
//			String ssb_No = sb_No.toString();
			String ssb = sb.toString();
			

			JSONObject jsonObject = new JSONObject(ssb);
			JSONArray test = (JSONArray) jsonObject.getJSONObject("results").getJSONArray("bindings");
//			JSONObject jsonObject_No = new JSONObject(ssb_No);
//			JSONArray test_No = (JSONArray) jsonObject_No.getJSONObject("results").getJSONArray("bindings");
//			for (int a = 0; a < test_No.length(); a++) {
//				JSONObject iiN = (JSONObject) test.get(a);
//				String areaN = (String) iiN.getJSONObject("area").get("value".toString());
//				String categoryN = (String) iiN.getJSONObject("category").get("value".toString());
//				String nameN = (String) iiN.getJSONObject("name").get("value".toString());
//				String addressN = (String) iiN.getJSONObject("address").get("value".toString());
//				String tellN = (String) iiN.getJSONObject("tell").get("value".toString());
//				String desN = (String) iiN.getJSONObject("des").get("value".toString());
//				String imgN = "resources/images/noimage.png";
//				// Object pet = ii.getJSONObject("pet").get("value".toString());
//				String codeN = (String) iiN.getJSONObject("code").get("value".toString());
//				String[] codeTN = codeN.split("/resource/");
//				codeN = codeTN[1];
//				TourDTO t = new TourDTO();
//				t.setP_code(codeN);
//				
//
//			
//				TourDTO resultN = ss.getMapper(TourMapper.class).checkTour(t);
//
//				if (resultN != null) {
//					
//					p_upN.setP_area(areaN);
//					p_upN.setP_category(categoryN);
//					p_upN.setP_name(nameN);
//					p_upN.setP_code(codeN);
//					p_upN.setP_address(addressN);
//					p_upN.setP_tell(tellN);
//					p_upN.setP_des(desN);
//					p_upN.setP_img(imgN);
//					ss.getMapper(TourMapper.class).updateTour(p_upN);
//				} else {
//					
//					p_inN.setP_area(areaN);
//					p_inN.setP_category(categoryN);
//					p_inN.setP_name(nameN);
//					p_inN.setP_code(codeN);
//					p_inN.setP_address(addressN);
//					p_inN.setP_tell(tellN);
//					p_inN.setP_des(desN);
//					p_inN.setP_img(imgN);
//					ss.getMapper(TourMapper.class).putTour(p_inN);
//				}
//			}

			for (int a = 0; a < test.length(); a++) {
				
				JSONObject ii = (JSONObject) test.get(a);
				String area = (String) ii.getJSONObject("area").get("value".toString());
				String category = (String) ii.getJSONObject("category").get("value".toString());
				String name = (String) ii.getJSONObject("name").get("value".toString());
				String address = (String) ii.getJSONObject("address").get("value".toString());
				String tell = (String) ii.getJSONObject("tell").get("value".toString());
				String des = (String) ii.getJSONObject("des").get("value".toString());
				String img = (String) ii.getJSONObject("img").get("value".toString());
				// Object pet = ii.getJSONObject("pet").get("value".toString());
				String code = (String) ii.getJSONObject("code").get("value".toString());
				String[] codeT = code.split("/resource/");
				code = codeT[1];
				TourDTO t = new TourDTO();
				t.setP_code(code);
				

				
				TourDTO result = ss.getMapper(TourMapper.class).checkTour(t);

				if (result != null) {
					p_up.setP_area(area);
					p_up.setP_category(category);
					p_up.setP_name(name);
					p_up.setP_code(code);
					p_up.setP_address(address);
					p_up.setP_tell(tell);
					p_up.setP_des(des);
					p_up.setP_img(img);
					ss.getMapper(TourMapper.class).updateTour(p_up);
				} else {
					p_in.setP_area(area);
					p_in.setP_category(category);
					p_in.setP_name(name);
					p_in.setP_code(code);
					p_in.setP_address(address);
					p_in.setP_tell(tell);
					p_in.setP_des(des);
					p_in.setP_img(img);
					ss.getMapper(TourMapper.class).putTour(p_in);
				}
			}
			
			
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "업데이트 성공.");
		} catch (IOException e) {
			e.printStackTrace();
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "업데이트 실패.");
		}
	}
	


	public void paging(int page, HttpServletRequest request) {
		//test.getArea();
		//test.getType();
	//	System.out.println("제발 : " + test.getArea());
		//getTour(request);
		request.setAttribute("curPageNo", page);
		//request.getAttribute("pet");
		//test = new Type();
		// 전체 페이지 수 계산
		int cnt = 9; // 한 페이지당 보여줄 개수
		
		System.out.println("페이징ㅆㅅㅇㄴㄱㄴㅇ"+ request.getAttribute("pet"));
		
		int total = ((List<TourDTO>) request.getAttribute("pet")).size();// 총 데이터 개수

		int pageCount = (int) Math.ceil(total / (double) cnt);
		request.setAttribute("pageCount", pageCount);

		int start = total - (cnt * (page - 1));
		int end = (page == pageCount) ? -1 : start - (cnt + 1);

		ArrayList<TourDTO> items = new ArrayList<TourDTO>();
		if (!((List<TourDTO>) request.getAttribute("pet")).isEmpty()) {
			for (int i = start - 1; i > end; i--) {
				items.add(((List<TourDTO>) request.getAttribute("pet")).get(i));
			}
		}
		request.setAttribute("pet", items);
	}
	
	
	public void tourView(HttpServletRequest request) {

		String code = request.getParameter("code");
		
		TourDTO tt = new TourDTO();
		tt.setP_code(code);
		
		
		request.setAttribute("pet", ss.getMapper(TourMapper.class).tourView(tt));
		
	}
	
	
}