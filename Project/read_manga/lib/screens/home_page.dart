import 'package:flutter/material.dart';
import 'package:read_manga/models/chap_page.dart';
import '../models/story.dart';

class HomePage extends StatelessWidget {
  List<Story> stories = [
    //truyện solo leveling
    Story(
      title: 'Solo Leveling',
      author: 'Fuse',
      imagePath: 'assets/logo_manga/logo_solo_leveling.jpg',
      summary: 'Solo Leveling',
      image1: 'assets/logo_manga/logo_solo_leveling.jpg', //Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 10',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 11',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 12',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),
      ],
    ),
    //truyện nguyên tôn
    Story(
      title: 'Nguyên Tôn',
      author: 'Thiên Tằm Thổ Đậu',
      imagePath: 'assets/logo_manga/logo_nguyen_ton.jpg',
      summary: 'Nguyên Tôn',
      image1: 'assets/logo_manga/logo_nguyen_ton.jpg', // Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 7...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 8...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 9...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),
      ],
    ),
    //Truyện chuyển sinh thành slime
    Story(
      title: 'Tôi Đã Chuyển Sinh Thành Slime',
      author: 'Kawakami Taiki',
      imagePath: 'assets/logo_manga/logo_slime.jpg',
      summary: 'Tôi Đã Chuyển Sinh Thành Slime',
      image1: 'assets/logo_manga/logo_slime.jpg', //Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 10',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 11',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 12',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),
      ],
    ),
    //Truyện để có thể sống sót
    Story(
      title: 'Để Có Thể Sống Sót',
      author: 'Parae, Im Jin-Gook',
      imagePath: 'assets/logo_manga/logo_de_co_the_song_sot.jpg',
      summary: 'Để Có Thể Sống Sót',
      image1: 'assets/logo_manga/logo_de_co_the_song_sot.jpg', // Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 7...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 8...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 9...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),
      ],
    ),
    //Truyện hệ thống super god
    Story(
      title: 'Hệ Thống Super God',
      author: 'Đang Cập Nhật',
      imagePath: 'assets/logo_manga/logo_he_thong_super_god.jpg',
      summary: 'Hệ Thống Super God',
      image1: 'assets/logo_manga/logo_he_thong_super_god.jpg', //Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 10',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 11',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 12',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),
      ],
    ),
    //truyện đại quản gia là ma hoàng
    Story(
      title: 'Đại Quản Gia Là Ma Hoàng',
      author: 'Dạ Kiêu',
      imagePath: 'assets/logo_manga/logo_dai_quan_gia_la_ma_hoang.jpg',
      summary: 'Đại Quản Gia Là Ma Hoàng',
      image1: 'assets/logo_manga/logo_dai_quan_gia_la_ma_hoang.jpg', // Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 7...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 8...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 9...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),
      ],
    ),
    //truyện vạn cổ tối cường tông
    Story(
      title: 'Vạn Cổ Tối Cường Tông',
      author: 'Giang Hồ Tái Kiến',
      imagePath: 'assets/logo_manga/logo_van_co_toi_cuong_tong.jpg',
      summary: 'Vạn Cổ Tối Cường Tông',
      image1: 'assets/logo_manga/logo_van_co_toi_cuong_tong.jpg', //Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 10',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 11',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 12',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),
      ],
    ),
    //truyện ta bị kẹt cùng một ngày 1000 năm
    Story(
      title: 'Ta Bị Kẹt Cùng Một Ngày 1000 Năm',
      author: 'Tang Trạch',
      imagePath: 'assets/logo_manga/logo_ta_bi_ket_cung_mot_ngay_1000_nam.jpg',
      summary: 'Ta Bị Kẹt Cùng Một Ngày 1000 Năm',
      image1: 'assets/logo_manga/logo_ta_bi_ket_cung_mot_ngay_1000_nam.jpg', // Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 7...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 8...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 9...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),
      ],
    ),
    //truyện toàn chức pháp sư
    Story(
      title: 'Toàn Chức Pháp Sư',
      author: 'Chaos',
      imagePath: 'assets/logo_manga/logo_toan_chuc_phap_su.jpg',
      summary: 'Toàn Chức Pháp Sư',
      image1: 'assets/logo_manga/logo_toan_chuc_phap_su.jpg', //Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 10',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 11',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 12',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),
      ],
    ),
    //truyện võ luyện đỉnh phong
    Story(
      title: 'Võ Luyện Đỉnh Phong',
      author: 'Mạc Mặc',
      imagePath: 'assets/logo_manga/logo_vo_luyen_dinh_phong.jpg',
      summary: 'Võ Luyện Đỉnh Phong',
      image1: 'assets/logo_manga/logo_vo_luyen_dinh_phong.jpg', // Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 7...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 8...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 9...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),
      ],
    ),
    //truyện kỷ nguyên kỳ lạ
    Story(
      title: 'Kỷ Nguyên Kỳ Lạ',
      author: 'Mộng Tiên Giới',
      imagePath: 'assets/logo_manga/logo_ky_nguyen_ky_la.jpg',
      summary: 'Kỷ Nguyên Kỳ Lạ',
      image1: 'assets/logo_manga/logo_ky_nguyen_ky_la.jpg', //Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap1.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 10',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap2.JPG',
          ],
        ),
        StoryChapter(
          title: 'Chương 11',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap3.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 12',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/solo_leveling/solo_leveling_chap4.png',
          ],
        ),
      ],
    ),
    //truyện toàn cầu băng phong
    Story(
      title: 'Toàn Cầu Băng Phong',
      author: 'Ký Ức Đích Hải',
      imagePath: 'assets/logo_manga/logo_toan_cau_bang_phong.jpg',
      summary: 'Toàn Cầu Băng Phong',
      image1: 'assets/logo_manga/logo_toan_cau_bang_phong.jpg', // Hình ảnh tổng quát cho truyện
      chapters: [
        StoryChapter(
          title: 'Chương 1',
          content: 'Nội dung chương 1...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 2',
          content: 'Nội dung chương 2...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 3',
          content: 'Nội dung chương 3...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 4',
          content: 'Nội dung chương 4...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 5',
          content: 'Nội dung chương 5...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 6',
          content: 'Nội dung chương 6...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),

        StoryChapter(
          title: 'Chương 7',
          content: 'Nội dung chương 7...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap1.jpg',
          ],
        ),
        StoryChapter(
          title: 'Chương 8',
          content: 'Nội dung chương 8...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap2.png',
          ],
        ),
        StoryChapter(
          title: 'Chương 9',
          content: 'Nội dung chương 9...',
          images: [
            'assets/chap_manga/nguyen_ton/nguyen_ton_chap3.png',
          ],
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chủ'),
      ),
      body: ListView.builder(
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10.0,
              child: ListTile(
                contentPadding: EdgeInsets.all(10.0),
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(stories[index].imagePath),
                ),
                title: Text(
                  stories[index].title,
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Tác giả: ${stories[index].author}',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChapPage(
                        story: stories[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
