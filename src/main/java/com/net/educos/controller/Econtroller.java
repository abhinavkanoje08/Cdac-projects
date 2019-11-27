package com.net.educos.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.net.educos.dao.Vdaoimpl;
import com.net.educos.model.Faculty;
import com.net.educos.model.Video;
import com.net.educos.service.FserviceImpl;

@Controller
@RequestMapping("/educos")
@SessionAttributes("name")
public class Econtroller {
	
	@Autowired
	private FserviceImpl service;
	@Autowired 
	private Vdaoimpl dao;
	


	
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public ModelAndView home() {
		 
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;
		
	}
	@RequestMapping(value = { "/map" }, method = RequestMethod.GET)
	public ModelAndView map() {
		 
		ModelAndView model = new ModelAndView();
		model.setViewName("map");
		return model;
		
	}

	
    @RequestMapping(value={"/flist"},method = RequestMethod.GET)
	public ModelAndView getAllFaculty(){
    	
       ModelAndView model=new ModelAndView();
       List<Faculty>list=service.getAllFaculty();
       model.addObject("facultylist",list);
       model.setViewName("facultylist");
       return model;
		
	}
    
    @RequestMapping(value={"/videopage"},method = RequestMethod.GET)
	public ModelAndView getAllVideo(){
    	
       ModelAndView model=new ModelAndView();
       List<Video>list=dao.getAllVideo();
       model.addObject("vlist",list);
       model.setViewName("videopage");
       return model;
		
	}

	@RequestMapping(value = { "/facultyadd" }, method = RequestMethod.GET)
	public ModelAndView addFaculty() {
		 
	    Faculty faculty = new Faculty();
		ModelAndView model = new ModelAndView();
		model.addObject("faculties",faculty);
		model.setViewName("facultyreg");
		return model;
		
	}
	
	@RequestMapping(value ="/videos")
	public ModelAndView video()
	{ 
		Video video = new Video();
		ModelAndView model = new ModelAndView();
		 model.addObject("video",video);
		 model.setViewName("videos");
		 return model;
		 
	}
	
	@RequestMapping(value ="/uploadvideo")
	public ModelAndView videoupload(@ModelAttribute("video")Video video)
	{ 
		
		dao.addVideo(video);
		return new ModelAndView("redirect:/educos/videopage");
	}
	
	
	//update & delete 
	@RequestMapping(value="/update/{id}",method = RequestMethod.GET)
	public ModelAndView editFaculty(@PathVariable int id){
	ModelAndView model=new ModelAndView();
	Faculty faculty=service.findFacultyById(id);
	model.addObject("faculties",faculty);
	model.setViewName("facultyreg");
	return model;
	}
	
	@RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
	public ModelAndView deleteFaculty(@PathVariable("id")int id) {
	service.deleteFaculty(id);
	return new ModelAndView("redirect:/educos/flist");
	
	}

	@RequestMapping(value = { "/student" }, method = RequestMethod.GET)
	public ModelAndView student() {
		 
		ModelAndView model = new ModelAndView();
		model.setViewName("studentreg");
		return model;
		
	}
	
	
	@RequestMapping(value = "/save",method = RequestMethod.POST)
	public ModelAndView saveOrUpdate(@ModelAttribute("faculties") Faculty faculty)
	{
		if (faculty.getFid() != 0)
		{
			service.updateFaculty(faculty);
		}
		else
		{
		service.addFaculty(faculty);
		}
		return new ModelAndView("redirect:/educos/home");
	}
	
	//profile 
	
	@RequestMapping(value = "fprofile")
	public ModelAndView profile()
	{
		ModelAndView model = new ModelAndView("profile");
		return model;
	}

	
	
	//Upload file
	public static String uploadDirectory = System.getProperty("user.dir")+"/uploadAssignment";
	
	@RequestMapping("/assignmentupload")
	public String UploadPage(Model model) {
		return "assignment";
	}
	
	@RequestMapping("/upload")
	public String upload(Model model , @RequestParam("files") MultipartFile[] files) {
		
		StringBuilder fileNames = new StringBuilder();//for holding file names
		for(MultipartFile file : files)
		{
			Path fileNameAndPath=Paths.get(uploadDirectory, file.getOriginalFilename());
			fileNames.append(file.getOriginalFilename()+ "");
			try {
				Files.write(fileNameAndPath,file.getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		model.addAttribute("msg", "succesfully upload files" +fileNames.toString());
		return "assignment";
	}
	
	//footer

	@RequestMapping("/aboutus")
	public String aboutus(Model model) {
		return "aboutus";
	}

	@RequestMapping("/contactus")
	public String contactus(Model model) {
		return "contactus";
	}	
}
