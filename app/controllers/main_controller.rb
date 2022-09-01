class MainController < ApplicationController
  $sub1 = "";
  $sub2 = "";
  $sub3 = "";
  $score1 = 0;
  $score2 = 0;
  $score3 = 0;
  def test
    render "test";
  end

  def test_post
    $sub1 = params[:sub1];
    $sub2 = params[:sub2];
    $sub3 = params[:sub3];
    $score1 = params[:score1].to_f;
    $score2 = params[:score2].to_f;
    $score3 = params[:score3].to_f;
    redirect_to "/test_post";
  end

  def result
    @s1 = $sub1;
    @s2 = $sub2;
    @s3 = $sub3;
    @sum = $score1 + $score2 + $score3;
    @max_sub = ""
    if($score1 > $score2)
      if($score1 > $score3)
        @max_sub = $sub1
      else
        @max_sub = $sub3
      end
    else
      if($score2 > $score3)
        @max_sub = $sub2
      else
        @max_sub = $sub3
      end
    end
    render "test_post"
  end
end
