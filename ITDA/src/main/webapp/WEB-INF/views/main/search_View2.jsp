<div id="ct_wrap" class="container">
	<div id="ct" class="container_inner">
		<div class="container_main">
			<div class="container_sidebar _CONTAINER_SIDEBAR">
				<div class="container_sidebar_inner _GRID_TEMPLATE_COLUMN_SIDEBAR _CONTAINER_SIDEBAR_INNER"></div>
			</div>
			<div class="container_content _GRID_TEMPLATE_COLUMN _STICKY_CONTENT">
			<div class="premium_search_page">
	<div class="psp_main">
		<div class="psp_head">
			<div class="psp_head_inner">
				<div class="psp_head_content">
			<a href="#" class="psp_back_button _BACK" data-clk="pch_search.back"><span class="blind">뒤로가기</span></a>
			<div class="psp_input_wrap _SEARCH_INPUT_WRAP">
				<input id="_SEARCH_INPUT" type="text" placeholder="프리미엄 채널, 콘텐츠를 검색해 보세요" class="psp_search_input" value="바이오" data-url="/ch/search" data-search-query="바이오" autocomplete="off">
				<button id="_SEARCH_RESET_BTN" type="button" class="psp_input_cancel_button" data-clk="pch_search.close">삭제</button>
			</div>
			<button type="button" class="psp_search_button _SEARCH_SUBMIT_BTN" data-clk="pch_search.search" data-url="/ch/search" data-search-value="true"><span class="blind">검색</span></button>
				</div>
			</div>
		</div>
		<div class="psp_recent _SEARCH_HISTORY_AREA" style="display: none;">
			<strong class="psp_recent_title">최근 검색어</strong>
			<div class="psp_recent_list_area">
				<div id="_SEARCH_HISTORY_LIST_WRAP" data-nclk-prefix="pch_search">
				<ul class="psp_recent_list">
					<li class="psp_recent_item">
						<a href="#" class="psp_recent_link _SEARCH_KEYWORD_LINK" data-keyword="dfdsf" data-clk="pch_search.historylink">dfdsf</a>
						<button type="button" class="psp_recent_delete _DELETE_SEARCH_HISTORY_BTN" data-keyword="dfdsf" data-clk="pch_search.historyremove"><span class="blind">삭제</span></button>
					</li>
				</ul>
				</div>
				<script type="x-tmpl-mustache" class="_SEARCH_HISTORY_LIST">
				{{#autoSave}}
				{{#hasKeywords}}
				<ul class="psp_recent_list">
					{{#keywords}}
					<li class="psp_recent_item">
						<a href="#" class="psp_recent_link _SEARCH_KEYWORD_LINK" data-keyword="{{keyword}}" data-clk="{{nclkPrefix}}.historylink">{{keyword}}</a>
						<button type="button" class="psp_recent_delete _DELETE_SEARCH_HISTORY_BTN" data-keyword="{{keyword}}" data-clk="{{nclkPrefix}}.historyremove"><span class="blind">삭제</span></button>
					</li>
					{{/keywords}}
				</ul>
				{{/hasKeywords}}
				{{^keywords}}
				<div class="psp_recent_text">검색 내역이 없습니다.</div>
				{{/keywords}}
				{{/autoSave}}
				{{^autoSave}}
				<div class="psp_recent_text">검색어 저장 기능이 꺼져 있습니다.</div>
				{{/autoSave}}
				</script>
			</div>
			<div class="psp_recent_option">
				<div class="psp_recent_option_button_wrap">
					<button type="button" class="psp_recent_option_button _CLEAR_SEARCH_HISTORY_BTN" data-clk="pch_search.historyclear">전체 삭제</button>
					<button type="button" class="psp_recent_option_button _AUTO_SAVE_BUTTON" data-enable="false" data-clk="pch_search.historyoff">자동저장 끄기</button>
					<button type="button" style="display: none;" class="psp_recent_option_button _AUTO_SAVE_BUTTON" data-enable="true" data-clk="pch_search.historyon">자동저장 켜기</button>
				</div>
				<div class="psp_recent_option_close_wrap">
					<button type="button" class="psp_recent_option_button _CLOSE_SEARCH_HISTORY_BTN" data-clk="pch_search.historyclose">닫기</button>
				</div>
			</div>
		</div>
		<div class="_TOP_SEARCH_KEYWORD" style="display:none;">
			<div class="premiumhome_keyword _TEMPLATE" data-template-id="SCS_PREMIUM_HOME_TOP_SEARCH_KEYWORD">
				<h2 class="pk_h">인기검색어</h2>
				<ul class="pk_list">
					<li class="pk_item">
						<a href="/ch/search?searchQuery=%EC%96%B4%EB%8F%84%EB%B9%84" class="pk_link" data-clk="pch_search.hot">어도비</a>
					</li>
					<li class="pk_item">
						<a href="/ch/search?searchQuery=%EB%8F%84%EC%95%88" class="pk_link" data-clk="pch_search.hot">도안</a>
					</li>
					<li class="pk_item">
						<a href="/ch/search?searchQuery=%EB%B0%98%EB%8F%84%EC%B2%B4" class="pk_link" data-clk="pch_search.hot">반도체</a>
					</li>
					<li class="pk_item">
						<a href="/ch/search?searchQuery=%EB%B9%84%ED%8A%B8%EC%BD%94%EC%9D%B8" class="pk_link" data-clk="pch_search.hot">비트코인</a>
					</li>
					<li class="pk_item">
						<a href="/ch/search?searchQuery=%EB%84%A4%EC%98%B4%EC%8B%9C%ED%8B%B0" class="pk_link" data-clk="pch_search.hot">네옴시티</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="psp_nav _SEARCH_RESULT_AREA">
			<div class="psp_nav_inner">
				<ul class="psp_nav_list" role="tablist">
					<li class="psp_nav_item" role="tab" aria-selected="true">
						<a href="#" class="psp_nav_button _SEARCH_SUBMIT_BTN" data-clk="pch_search.taball" data-url="/ch/search">전체</a>
					</li>
					<li class="psp_nav_item" role="tab" aria-selected="false">
						<a href="#" class="psp_nav_button _SEARCH_SUBMIT_BTN" data-clk="pch_search.tabch" data-url="/ch/search/channel">채널</a>
					</li>
					<li class="psp_nav_item" role="tab" aria-selected="false">
						<a href="#" class="psp_nav_button _SEARCH_SUBMIT_BTN" data-clk="pch_search.tabcont" data-url="/ch/search/content">콘텐츠</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="psp_body _SEARCH_RESULT_AREA">
			<div class="psp_result_area">
				<div class="psp_sort_area">
					<strong class="psp_category">채널 <em>1</em></strong>
				</div>
				<ul class="psp_channel_list _CONTENT_LIST _SEARCH_RESULT_LIST" data-template="SCS_PREMIUM_CHANNEL_SEARCH_CHANNEL" data-type="channel" data-search-query="바이오" data-cursor-name="page" data-cursor="1" data-has-next="" data-total-count="1">
					<li class="psp_channel_item">
						<a href="/bionomics/knowledge" class="psp_channel_link" data-clk="pch_search.resultch" target="_blank">
							<div class="psp_channel_thumb">
								<img src="https://scs-phinf.pstatic.net/MjAyMjA2MjdfNTIg/MDAxNjU2MzMzMDk2NDU4.X_jc6X4B4z5cvhmtX9GK-8MjWr7LFYkGamsGMm1-vQEg.dekIbXdxcBF9YnFEGTFI2yDhfztgH8co4vnQ2F1gDdkg.JPEG/image%7Cpremium%7Cchannel%7Cbionomics%7C2022%7C06%7C27%7C1656333096431.jpg?type=nfs200_200" class="psp_channel_img" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
								<i class="icon_partner"><span class="blind">파트너 채널</span></i>
							</div>
							<div class="psp_text">
								<span class="psp_tag">과학</span>
								<strong class="psp_name"><em>바이오</em>노믹스</strong>
								<p class="psp_info">"술 마시는 유전자"는 필자가 강의하는 "양조학"에서 흥미있는 주제를 골라 요약한 내용입니다. 10회에 걸쳐 연재합니다. </p>
								<p class="psp_date">
									<span class="update">02.07. 업데이트</span>
								</p>
							</div>
						</a>
					</li>
				</ul>
			</div>
			<div class="psp_result_area">
				<div class="psp_sort_area">
					<strong class="psp_category">콘텐츠 <em>15,529</em></strong>
				</div>
				<ul class="psp_content_list _CONTENT_LIST _SEARCH_RESULT_LIST" data-template="SCS_PREMIUM_CHANNEL_SEARCH_CONTENT" data-type="content" data-stype="" data-search-query="바이오" data-cursor-name="page" data-cursor="2" data-has-next="true" data-cp-name="" data-sub-id="" data-total-count="15529">
					<li class="psp_content_item">
						<div class="psp_content_name">
							<a href="https://contents.premium.naver.com/byteplus/byte" class="psp_channel_link" data-clk="pch_search.resultcontch" target="_blank">
								<span class="psp_channel_thumb_small">
									<img src="https://static-scs.pstatic.net/premium-service/v1/channel/Premium/byteplus/byte/logo" class="psp_channel_img" width="18" height="18" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
								</span>
								<span class="psp_channel_name">BYTE+</span>
							</a>
							<a href="/byteplus/byte/contents?categoryId=1803ae8db02000ecx" class="psp_category_name" data-clk="pch_search.resultcontcate" target="_blank">기업 한입</a>
						</div>
						<div class="psp_content_inner">
						<div class="psp_text">
							<a href="/byteplus/byte/contents/220608121740611aw" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<strong class="psp_name">[기업한입] 전 세계 <em>바이오</em>의약품의 생산기지, 삼성<em>바이오</em>로직스</strong>
							</a>
							<a href="/byteplus/byte/contents/220608121740611aw" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<p class="psp_info">특히 우리나라를 대표하는 CMO(의약품 위탁생산) 기업인 삼성<em>바이오</em>로직스는 글로벌 백신의 허브 역할을 톡톡히 수행했는데요. 모더나, 아스트라제네카 등 글로벌 대형 제약사들의... 오늘 &lt;기업 한 입&gt;에서는 전 세계 <em>바이오</em>의약품의 생산기지, '삼성<em>바이오</em>로직스'에 대해 알아보도록 하겠습니다. 삼성<em>바이오</em>로직스는 세계 최대 규모의 생산 설비를 보유하며 CMO... </p>
							</a>
							<a href="/byteplus/byte/contents/220608121740611aw" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<div class="psp_content_author">
									<em class="psp_content_author_by">by</em>
									<div class="psp_content_author_text">🐰  Inhye</div>
								</div>
							</a>
							<div class="psp_content_info">
								<span class="psp_content_info_text">2022.06.09.</span>
							</div>
							<ul class="psp_viewer_tag_list">
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EC%82%BC%EB%B0%94" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">삼바</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EC%82%BC%EC%84%B1%EB%B0%94%EC%9D%B4%EC%98%A4%EB%A1%9C%EC%A7%81%EC%8A%A4" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">삼성바이오로직스</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EC%9D%B4%EC%9E%AC%EC%9A%A9" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">이재용</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EC%82%BC%EB%B0%94%EB%B6%84%EC%8B%9D%ED%9A%8C%EA%B3%84" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">삼바분식회계</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EC%82%BC%EC%84%B1%EB%B0%94%EC%9D%B4%EC%98%A4%EC%97%90%ED%94%BC%EC%8A%A4" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">삼성바이오에피스</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=CDO" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">CDO</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EC%9D%B4%EA%B1%B4%ED%9D%AC" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">이건희</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=mRNA" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">mRNA</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EC%BD%94%EB%A1%9C%EB%82%9819" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">코로나19</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/byteplus/byte/contents?tag=%EB%B6%84%EC%8B%9D%ED%9A%8C%EA%B3%84" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">분식회계</a>
								</li>
							</ul>
						</div>
						<a href="/byteplus/byte/contents/220608121740611aw" class="psp_content_thumb" data-clk="pch_search.resultcont" target="_blank">
							<img src="https://scs-phinf.pstatic.net/MjAyMjA2MDhfMTM3/MDAxNjU0NjU3NDUzNzA2.cJomgUXp7yyiChBTTtud9Z4XNhB87bf4gqwfevhRgNUg.zPvlTj7_45bt4IfkoN4TteMK5fRN6w3JmHg3-KBQKr4g.JPEG/Samsung+BioLogics_Company_06.jpeg?type=nfs220_220" class="psp_content_img" width="50" height="50" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
						</a>
						</div>
					</li>
					<li class="psp_content_item">
						<div class="psp_content_name">
							<a href="https://contents.premium.naver.com/joosikstudy/atmproject" class="psp_channel_link" data-clk="pch_search.resultcontch" target="_blank">
								<span class="psp_channel_thumb_small">
									<img src="https://static-scs.pstatic.net/premium-service/v1/channel/Premium/joosikstudy/atmproject/logo" class="psp_channel_img" width="18" height="18" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
								</span>
								<span class="psp_channel_name">주식스터디</span>
							</a>
							<a href="/joosikstudy/atmproject/contents?categoryId=1898a23d774000ce9" class="psp_category_name" data-clk="pch_search.resultcontcate" target="_blank">실시간 관심주 (찌라시 &amp; 재료)</a>
						</div>
						<div class="psp_content_inner">
						<div class="psp_text">
							<a href="/joosikstudy/atmproject/contents/230911141025854fm" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<strong class="psp_name">지엔씨에너지 주가 전망 <em>바이오</em>가스 관련주 에코<em>바이오</em> 에코<em>바이오</em>홀딩스</strong>
							</a>
							<a href="/joosikstudy/atmproject/contents/230911141025854fm" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<p class="psp_info">지엔씨에너지 주가 전망 <em>바이오</em>가스 관련주 에코<em>바이오</em> 에코<em>바이오</em>홀딩스 지엔씨에너지 주가 전망 <em>바이오</em>가스 관련주 에코<em>바이오</em> 에코<em>바이오</em>홀딩스 지엔씨에너지 주가 전망 <em>바이오</em>가스 관련주 에코<em>바이오</em> 에코<em>바이오</em>홀딩스​ ​ ​ <em>바이오</em> 가스 법안 통과 유일한 <em>바이오</em>가스 전처리체계를 지닌 기업. 지엔씨에너지 ​ <em>바이오</em> 가스 법안 통과에 따라 관련 기업도... </p>
							</a>
							<div class="psp_content_info">
								<span class="psp_content_info_text">2023.09.11.</span>
							</div>
						</div>
						<a href="/joosikstudy/atmproject/contents/230911141025854fm" class="psp_content_thumb" data-clk="pch_search.resultcont" target="_blank">
							<img src="https://scs-phinf.pstatic.net/MjAyMzA5MTFfMjQ1/MDAxNjk0NDA5MDE0OTg2.rvVy2K3da8gKk92ECLrXvrXI93h1d7TOCZvjGFnoNl0g.QeAmSLdlJsbg3EZtDbX55yZy5spJyGu-b_um6lehK78g.PNG/image.png?type=nfs220_220" class="psp_content_img" width="50" height="50" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
						</a>
						</div>
					</li>
					<li class="psp_content_item">
						<div class="psp_content_name">
							<a href="https://contents.premium.naver.com/numbers/members" class="psp_channel_link" data-clk="pch_search.resultcontch" target="_blank">
								<span class="psp_channel_thumb_small">
									<img src="https://static-scs.pstatic.net/premium-service/v1/channel/Premium/numbers/members/logo" class="psp_channel_img" width="18" height="18" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
								</span>
								<span class="psp_channel_name">넘버스 투자생각</span>
							</a>
							<a href="/numbers/members/contents?categoryId=17be9a1aef8000ckm" class="psp_category_name" data-clk="pch_search.resultcontcate" target="_blank">투자 감각 키우기</a>
						</div>
						<div class="psp_content_inner">
						<div class="psp_text">
							<a href="/numbers/members/contents/230621095536195rq" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<strong class="psp_name">삼성<em>바이오</em>로직스·셀트리온·롯데<em>바이오</em>로직스가 ‘<em>바이오</em>USA 2023’에 참석한 이유</strong>
							</a>
							<a href="/numbers/members/contents/230621095536195rq" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<p class="psp_info">‘Stand Up for Science at BIO2023’라는 슬로건으로 열렸던 ‘2023 <em>바이오</em> 인터내셔널 컨벤션’(이하 <em>바이오</em>USA)에 다녀왔습니다. JP모건헬스케어콘퍼런스, <em>바이오</em> 유럽과 함께 업계 최대 행사로 꼽히는 글로벌 제약·<em>바이오</em>분야 행사인데요. 전세계 9000명 이상의 글로벌 기업이 참여한 가운데 한국에서도 544개 기업·기관이 참여했습니다. 이는 미국 다음으로 많은 참여... </p>
							</a>
							<div class="psp_content_info">
								<span class="psp_content_info_text">2023.06.21.</span>
							</div>
							<ul class="psp_viewer_tag_list">
								<li class="psp_viewer_tag_item">
									<a href="/numbers/members/contents?tag=CDMO" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">CDMO</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/numbers/members/contents?tag=%EB%A1%AF%EB%8D%B0%EB%B0%94%EC%9D%B4%EC%98%A4%EB%A1%9C%EC%A7%81%EC%8A%A4" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">롯데바이오로직스</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/numbers/members/contents?tag=%EB%B0%94%EC%9D%B4%EC%98%A4USA" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">바이오USA</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/numbers/members/contents?tag=%EC%82%BC%EC%84%B1%EB%B0%94%EC%9D%B4%EC%98%A4%EB%A1%9C%EC%A7%81%EC%8A%A4" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">삼성바이오로직스</a>
								</li>
								<li class="psp_viewer_tag_item">
									<a href="/numbers/members/contents?tag=%EC%85%80%ED%8A%B8%EB%A6%AC%EC%98%A8" class="psp_viewer_tag_link" data-clk="pch_search.resultconttag" target="_blank">셀트리온</a>
								</li>
							</ul>
						</div>
						<a href="/numbers/members/contents/230621095536195rq" class="psp_content_thumb" data-clk="pch_search.resultcont" target="_blank">
							<img src="https://scs-phinf.pstatic.net/MjAyMzA2MjFfMTEz/MDAxNjg3MzA4MzEyNTIy.sb5x98UBGBw6UWeW8mnYrz8mJ0KH1neW35zqaKvNceAg.mfx9rNfFXadJ7hWDbGIjaNBiS1BB_60mKkYNh6w0kC0g.JPEG/20230620_%EC%82%BC%EC%84%B1%EB%B0%94%EC%9D%B4%EC%98%A4%EB%A1%9C%EC%A7%81%EC%8A%A4_%EC%85%80%ED%8A%B8%EB%A6%AC%EC%98%A8_%EB%A1%AF%EB%8D%B0%EB%B0%94%EC%9D%B4%EC%98%A4%EB%A1%9C%EC%A7%81%EC%8A%A4_%EB%84%98%EB%B2%84%EC%8A%A4.jpg?type=nfs220_220" class="psp_content_img" width="50" height="50" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
						</a>
						</div>
					</li>
					<li class="psp_content_item">
						<div class="psp_content_name">
							<a href="https://contents.premium.naver.com/nomadand/nomad" class="psp_channel_link" data-clk="pch_search.resultcontch" target="_blank">
								<span class="psp_channel_thumb_small">
									<img src="https://static-scs.pstatic.net/premium-service/v1/channel/Premium/nomadand/nomad/logo" class="psp_channel_img" width="18" height="18" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
								</span>
								<span class="psp_channel_name">유목민의 시그널리포트</span>
							</a>
							<a href="/nomadand/nomad/contents?categoryId=1889302a51e000aif" class="psp_category_name" data-clk="pch_search.resultcontcate" target="_blank">[테마] 누가아라</a>
						</div>
						<div class="psp_content_inner">
						<div class="psp_text">
							<a href="/nomadand/nomad/contents/231012113352068yx" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<strong class="psp_name">23년 '<em>바이오</em>가 온다'...시리즈[9] 지아이이노베이션,파로스아이<em>바이오</em>,큐라티스,에스<em>바이오</em>메딕스,큐리옥스<em>바이오</em>시스템즈</strong>
							</a>
							<a href="/nomadand/nomad/contents/231012113352068yx" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<p class="psp_info">최근 <em>바이오</em>헬스케어 분야가 투자자들 사이에서 주목을 받으며 <em>바이오</em>헬스케어 ETF 가 출시되는 등 <em>바이오</em> 섹터에 자금이 유입되는 모습을 볼 수 있습니다. 매일 저녁 발행되는 시그널이브닝 또는 직접 상한가, 천만주 종목들을 정리하다 보면 어느 섹터에서 강한 상승을 보여주고 있는지 알수 있는데 <em>바이오</em> 섹터의 종목들이 눈에 띄는 점도 확인하실... </p>
							</a>
							<a href="/nomadand/nomad/contents/231012113352068yx" class="psp_content_link" data-clk="pch_search.resultcont" target="_blank">
								<div class="psp_content_author">
									<em class="psp_content_author_by">by</em>
									<div class="psp_content_author_text">누가아라</div>
								</div>
							</a>
							<div class="psp_content_info">
								<span class="psp_content_info_text">2023.10.12.</span>
							</div>
						</div>
						<a href="/nomadand/nomad/contents/231012113352068yx" class="psp_content_thumb" data-clk="pch_search.resultcont" target="_blank">
							<img src="https://scs-phinf.pstatic.net/MjAyMzEwMTBfMjk1/MDAxNjk2OTQ4MTY0Nzk3.km2x82clYEMHswj3Dq5J3qfgSjohTCUh3159LnEX-j0g.o94NeGZxdiB_8hAacui4NCRQh1_Q9prhxcEvCzrYFLUg.PNG/image.png?type=nfs220_220" class="psp_content_img" width="50" height="50" alt="" onerror="this.outerHTML='<span class=&quot;no_image&quot;></span>'">
						</a>
						</div>
					</li>
				</ul>
				<div class="psp_dropdown">
					<button type="button" class="psp_button_more _SEARCH_SUBMIT_BTN" data-clk="pch_search.resultcontmore" data-url="/ch/search/content">콘텐츠 검색 결과 더보기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
window.__htExternalUrl = window.__htExternalUrl || {};
window.__htExternalUrl["like"] = "https://static-like.pstatic.net/js/reaction/dist/reaction.min.js";
window.__htLikeOption = {
	type: "basic",
	cssId: "scs",
	domain: "https://news.like.naver.com",
	staticDomain: "https://static-like.pstatic.net",
	isMobile: true,
	isHiddenLabel: false,
	isHiddenCount: false,
	isHiddenZeroCount: true,
	isUsedLabelAsZeroCount: false,
	isDebugMode: false,
	isDuplication: false,
	isHiddenLayerAfterSelection: true,
	clicklog: function(el, name) {
		nclkWrap.send({
			$this: $(el),
			sArea: name
		});
	}
};
</script>

			</div>
			<div class="container_aside _CONTAINER_ASIDE">
				<div class="container_aside_inner _GRID_TEMPLATE_COLUMN_ASIDE _CONTAINER_ASIDE_INNER"></div>
			</div>
		</div>
		<div class="_GRID_TEMPLATE_COLUMN_OUTSIDE"></div>
	</div>
</div>