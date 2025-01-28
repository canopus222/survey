package survey::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

# トップページ（回答入力ページ）
get '/' => sub {
    my ($c) = @_;
    return $c->render('index.tx');
};

# 確認ページへの処理
post '/confirm' => sub {
    my ($c) = @_;

    # フォームから送られたデータを取得するだけ
    my $params = $c->req->parameters;

    # フォームデータを取得
    my $name    = $params->{name};
    my $age     = $params->{age};
    my $job     = $params->{job};
    my $drinks  = $params->{drinks};
    my $remarks = $params->{remarks};

    return $c->render('confirm.tx', {
        name          => $name,
        age           => $age,
        job           => $job,
        drinks        => $drinks,
        remarks       => $remarks,
    });
};

# 回答完了ページ
post '/submit' => sub {
    my ($c) = @_;

    # フォームから送られたデータを取得
    my $params = $c->req->parameters;
    my $name    = $params->{name};
    my $age     = $params->{age};
    my $job     = $params->{job};
    my $drinks  = $params->{drinks};
    my $remarks = $params->{remarks};

    # データベースに保存する処理
    $c->db->insert(survey => {
        name    => $name,
        age     => $age,
        job     => $job,
        drinks  => $drinks,
        remarks => $remarks,
    });

    # 完了ページを表示
    return $c->render('completion.tx');
};


# any '/' => sub {
#     my ($c) = @_;
#     my $counter = $c->session->get('counter') || 0;
#     $counter++;
#     $c->session->set('counter' => $counter);
#     return $c->render('index.tx', {
#         counter => $counter,
#     });
# };

# post '/reset_counter' => sub {
#     my $c = shift;
#     $c->session->remove('counter');
#     return $c->redirect('/');
# };

# post '/account/logout' => sub {
#     my ($c) = @_;
#     $c->session->expire();
#     return $c->redirect('/');
# };

1;
