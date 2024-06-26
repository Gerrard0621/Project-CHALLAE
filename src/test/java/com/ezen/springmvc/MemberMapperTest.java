package com.ezen.springmvc;

import com.ezen.springmvc.domain.club.dto.SearchDto;
import com.ezen.springmvc.domain.member.dto.MemberDto;
import com.ezen.springmvc.domain.member.dto.MemberSearchCondition;
import com.ezen.springmvc.domain.member.mapper.MemberMapper;
import lombok.extern.slf4j.Slf4j;
import static org.assertj.core.api.Assertions.*;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
class MemberMapperTest {

    @Autowired
    MemberMapper memberMapper;

    @Test
    @DisplayName("회원 전체 조회 테스트")
    @Disabled
    void findAllTest() {
        List<MemberDto> list  = memberMapper.findByAll();
        for (MemberDto memberDto : list) {
            log.info("회원: {}", memberDto);
        }
    }

    @Test
    @DisplayName("회원 상세 조회 테스트")
    @Disabled
    public void findByIdTest() {
        // given
        String memberId = "bangry";
        // when
        MemberDto member = memberMapper.findById(memberId);
        // then
        assertThat(member)
                .isNotNull();
        log.info("회원정보 : {}", member.toString());
    }

    @Test
    @DisplayName("회원 인증 테스트")
    public void findByIdAndPasswdTest() {
        // given
        String id = "aa";
        String passwd = "1111";
        // when
        MemberDto memberDto = memberMapper.findByIdAndPasswd(id, passwd);
        // then
        assertThat(memberDto)
                .isNotNull();
        log.info("로그인 회원정보 : {}", memberDto.toString());
    }


    @Test
    @DisplayName("회원 등록 테스트")
    @Disabled
    void createTest() {
        MemberDto createMember = MemberDto
                .builder()
                .id("sony")
                .passwd("1111")
                .name("손흥민")
                .email("sony@gmail.com")
                .build();
        memberMapper.create(createMember);
        log.info("회원 등록 완료 : {}", createMember);
    }

    @Test
    @DisplayName("회원 정보 수정 테스트")
    @Disabled
    void updateTest() {
        MemberDto updateMember = MemberDto
                .builder()
                .id("sony")
                .passwd("2222")
                .email("sony2@gmail.com")
                .build();
        memberMapper.update(updateMember);
        log.info("회원 수정 완료 : {}", updateMember);
    }

//    @Test
//    @DisplayName("검색 타입에 따른 회원 검색 테스트")
//    @Disabled
//    void findBySearchTypeTest() {
//		List<MemberDto> list = memberMapper.findBySearchType("id", "bangry");
//        log.info("검색 회원 : {}", list);
////        List<Member> list = memberMapper.findBySearchType("name", "김");
////        log.info("검색 타입별 검색 회원 전체목록 : {}", list);
//    }

//    @Test
//    @DisplayName("아이디 또는 성으로 회원 통합 검색 테스트")
//    @Disabled
//     void findBySearchAllTest() {
////		List<MemberDto> list = memberMapper.findBySearchAll("bangry");
//        List<MemberDto> list = memberMapper.findBySearchAll("김");
//        log.info("모든 검색 전체목록 : {}", list);
//    }

//    @Test
//    @DisplayName("회원 통합 검색 테스트")
////	@Disabled
//    void findBySearchAllOptionTest() {
//        MemberSearchCondition searchCondition =
//                MemberSearchCondition
//                        .builder()
//				.memberId("bangry")
//				.name("김")
//				.email("bangry@gmail.com")
//                        .build();
//        List<MemberDto> list = memberMapper.findBySearchAllOption(searchCondition);
//        log.info("검색 옵션별 전체목록 : {}", list);
//        log.info("검색 수 : {}", list.size());
//    }


    @Test
    @DisplayName("특정 클럽원 이름 검색시 목록 출력")
//    @Disabled
    public void findByAllTest() {
        String clubNum = "101";
        SearchDto searchDto = SearchDto.builder()
                .limit(5)
                .page(1)
                .searchValue("김")
                .build();
        List<MemberDto> allList = memberMapper.myTeamList(clubNum, searchDto);
        log.info("===== 전체 클럽원 목록 =====");
        allList.forEach(memberDto-> log.info("클럽원: {}", memberDto));
    }

    @Test
    @DisplayName("클럽원 카운팅")
//    @Disabled
    public void countByClubMember() {
        String clubNum = "101";
        SearchDto searchDto = SearchDto.builder()
                .limit(10)
                .page(1)
                .searchValue("김")
                .build();
        int count = memberMapper.countMyTeamList(clubNum, searchDto);
        log.info("===== 전체 클럽원 목록 =====");
        log.info("검색 클럽원 수 : {}", count);
    }


//    @Test
//    @DisplayName("내 팀 팀원 출력 테스트")
//    void myTeamMemberTest(){
//        List<MemberDto> member = memberMapper.myTeamList("101");
//        log.info("내 팀원 : {}",member);
//    }

//    @Test
//    @DisplayName("팀원 강퇴 기능 테스트")
//    void TeamOutTest(){
//        String memberNum = "1005";
//
//        // 업데이트 수행
//        memberMapper.ClubMemberDelete(memberNum);
//        MemberDto member = memberMapper.findById("zip");
//        log.info("수정되었나 : {}",member);
//    }

}








