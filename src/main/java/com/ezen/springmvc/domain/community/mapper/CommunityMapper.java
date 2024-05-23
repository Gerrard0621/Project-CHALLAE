package com.ezen.springmvc.domain.community.mapper;

import com.ezen.springmvc.domain.community.dto.CommunityDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommunityMapper {
    //내용 출력
    public List<CommunityDto> findAllContent();
}


