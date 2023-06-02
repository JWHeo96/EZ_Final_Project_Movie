package com.movie.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.movie.biz.dto.TheaterVO;
import com.movie.biz.service.TheaterService;

@Controller
@RequestMapping("/movie")
public class TicketingController {

    @Autowired
    private TheaterService theaterService;

    @GetMapping("/ticketingView")
    public String ticketingView(Model model) {
        List<TheaterVO> localList = theaterService.getTheaterLocal();
        model.addAttribute("localList", localList);
        return "ticketing/ticketing";
    }

    @GetMapping("/theaterList")
    @ResponseBody
    public List<TheaterVO> theaterListView(@RequestParam("local") String local) {
        return theaterService.getTheaterList(local);
    }
}
