<% request.setCharacterEncoding("UTF-8"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/vendor/css/bootstrap.min.css">
        <title>HRM - Sign In</title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.css">
        <link rel="stylesheet" href="assets/css/signin.css">
    </head>

    <body class="container-fluid h-100">
        <main class="row text-center h-100 d-flex align-items-center">   
            <section class="col-12">
                <div class="ui top attached tabular menu w-50 align-items-center" style="margin: 0 auto !important;">
                    <a class="active item font-weight-bold border border-dark border-bottom-0" data-tab="signIn">サインイン</a>
                    <a class="item font-weight-bold border border-dark border-bottom-0" data-tab="create">新規登録</a>
                </div>
                <div class="ui tab active segment w-50" data-tab="signIn" style="margin: 0 auto !important;">
                    <div>
                        <form class="form-signin" action="Auth" method="POST">
                            <img class="mb-4" src="assets/img/topLogo.svg" alt="" width="144" height="144">
                            <h1 class="h2 mb-3 font-weight-normal">Human Resource Manager</h1>
                            <% if (request.getParameter("info") != null) {%>
                            <div class="alert alert-info" role="alert"><%= request.getParameter("info")%></div>
                            <% }%>
                            <% if (request.getParameter("error") != null) {%>
                            <div class="alert alert-danger" role="alert"><%= request.getParameter("error")%></div>
                            <% }%>
                            <label for="inputEmail" class="sr-only">Sign in ID (Email address)</label>
                            <input type="email" id="inputEmail" name="form-email" class="form-control form-control-first" placeholder="ID (Email address)" required autofocus>
                            <label for="inputPassword" class="sr-only">Sign in Password</label>
                            <input type="password" name="form-pwd" id="inputPassword" class="form-control form-control-last" placeholder="Password" required>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                            <p class="mt-5 mb-3 text-muted">&copy; k17053 2018</p>
                        </form>
                    </div>
                </div>
                <div class="ui tab segment w-50" data-tab="create" style="margin: 0 auto !important;">
                    <form class="form-signin" enctype="multipart/form-data" action="UserRegister" method="POST">
                        <h1 class="h2 mb-3 font-weight-normal"><strong>新規登録</strong></h1>
                        <% if (request.getParameter("info") != null) {%>
                        <div class="alert alert-info" role="alert"><%= request.getParameter("info")%></div>
                        <% }%>
                        <% if (request.getParameter("error") != null) {%>
                        <div class="alert alert-danger" role="alert"><%= request.getParameter("error")%></div>
                        <% }%>
                        <label for="inputEmail" class="sr-only">Eメールアドレス</label>
                        <input type="email" id="inputEmail" name="form-email" class="form-control form-control-first" placeholder="sample@sample.com" required autofocus>
                        <label for="inputPassword" class="sr-only">パスワード</label>
                        <input type="password" name="form-pwd" id="inputPassword" class="form-control form-control-last" placeholder="Password" required>
                        <label for="inputName" class="sr-only">あなたの名前</label>
                        <input type="text" id="inputName" name="form-name" class="form-control" placeholder="鈴木一郎" required>
                        <input type="file" name="form-photo" class="form-control form-control-last" required>
                        <label class="sr-only">所属チーム名</label>
                        <input type="text" name="form-organization" class="form-control form-control-last" placeholder="〇〇株式会社" required>
                        <label class="sr-only">あなたのポジション（役職）</label>
                        <input type="text" name="form-position" class="form-control form-control-last" placeholder="営業部部長" required>
                        <label class="sr-only">電話番号</label>
                        <input type="text" name="form-phone" class="form-control form-control-last" placeholder="1234567890" required>
                        <label class="sr-only">ひとこと</label>
                        <input type="textarea" name="form-message" class="form-control form-control-last" placeholder="ex) こんにちは！私は〇〇です．．．．" required>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">登録する！</button>
                        <p class="mt-5 mb-3 text-muted">&copy; k17053 2018</p>
                    </form>
                </div>
            </section>
        </main>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="assets/vendor/js/jquery-3.3.1.slim.min.js"></script>
        <script src="assets/vendor/js/popper.min.js"></script>
        <script src="assets/vendor/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.js"></script> 
        <script type="text/javascript">
            history.pushState(null, null, null);
            $(window).on("popstate", function (event) {
                if (!event.originalEvent.state) {
                    history.pushState(null, null, null);
                    return;
                }
            });
            $('.top.menu .item').tab();
        </script>

        <style>
            main {
                background-color: #ffffff;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25'%3E%3Cdefs%3E%3ClinearGradient id='a' gradientUnits='userSpaceOnUse' x1='0' x2='0' y1='0' y2='100%25' gradientTransform='rotate(240)'%3E%3Cstop offset='0' stop-color='%23ffffff'/%3E%3Cstop offset='1' stop-color='%234FE'/%3E%3C/linearGradient%3E%3Cpattern patternUnits='userSpaceOnUse' id='b' width='540' height='450' x='0' y='0' viewBox='0 0 1080 900'%3E%3Cg fill-opacity='0.1'%3E%3Cpolygon fill='%23444' points='90 150 0 300 180 300'/%3E%3Cpolygon points='90 150 180 0 0 0'/%3E%3Cpolygon fill='%23AAA' points='270 150 360 0 180 0'/%3E%3Cpolygon fill='%23DDD' points='450 150 360 300 540 300'/%3E%3Cpolygon fill='%23999' points='450 150 540 0 360 0'/%3E%3Cpolygon points='630 150 540 300 720 300'/%3E%3Cpolygon fill='%23DDD' points='630 150 720 0 540 0'/%3E%3Cpolygon fill='%23444' points='810 150 720 300 900 300'/%3E%3Cpolygon fill='%23FFF' points='810 150 900 0 720 0'/%3E%3Cpolygon fill='%23DDD' points='990 150 900 300 1080 300'/%3E%3Cpolygon fill='%23444' points='990 150 1080 0 900 0'/%3E%3Cpolygon fill='%23DDD' points='90 450 0 600 180 600'/%3E%3Cpolygon points='90 450 180 300 0 300'/%3E%3Cpolygon fill='%23666' points='270 450 180 600 360 600'/%3E%3Cpolygon fill='%23AAA' points='270 450 360 300 180 300'/%3E%3Cpolygon fill='%23DDD' points='450 450 360 600 540 600'/%3E%3Cpolygon fill='%23999' points='450 450 540 300 360 300'/%3E%3Cpolygon fill='%23999' points='630 450 540 600 720 600'/%3E%3Cpolygon fill='%23FFF' points='630 450 720 300 540 300'/%3E%3Cpolygon points='810 450 720 600 900 600'/%3E%3Cpolygon fill='%23DDD' points='810 450 900 300 720 300'/%3E%3Cpolygon fill='%23AAA' points='990 450 900 600 1080 600'/%3E%3Cpolygon fill='%23444' points='990 450 1080 300 900 300'/%3E%3Cpolygon fill='%23222' points='90 750 0 900 180 900'/%3E%3Cpolygon points='270 750 180 900 360 900'/%3E%3Cpolygon fill='%23DDD' points='270 750 360 600 180 600'/%3E%3Cpolygon points='450 750 540 600 360 600'/%3E%3Cpolygon points='630 750 540 900 720 900'/%3E%3Cpolygon fill='%23444' points='630 750 720 600 540 600'/%3E%3Cpolygon fill='%23AAA' points='810 750 720 900 900 900'/%3E%3Cpolygon fill='%23666' points='810 750 900 600 720 600'/%3E%3Cpolygon fill='%23999' points='990 750 900 900 1080 900'/%3E%3Cpolygon fill='%23999' points='180 0 90 150 270 150'/%3E%3Cpolygon fill='%23444' points='360 0 270 150 450 150'/%3E%3Cpolygon fill='%23FFF' points='540 0 450 150 630 150'/%3E%3Cpolygon points='900 0 810 150 990 150'/%3E%3Cpolygon fill='%23222' points='0 300 -90 450 90 450'/%3E%3Cpolygon fill='%23FFF' points='0 300 90 150 -90 150'/%3E%3Cpolygon fill='%23FFF' points='180 300 90 450 270 450'/%3E%3Cpolygon fill='%23666' points='180 300 270 150 90 150'/%3E%3Cpolygon fill='%23222' points='360 300 270 450 450 450'/%3E%3Cpolygon fill='%23FFF' points='360 300 450 150 270 150'/%3E%3Cpolygon fill='%23444' points='540 300 450 450 630 450'/%3E%3Cpolygon fill='%23222' points='540 300 630 150 450 150'/%3E%3Cpolygon fill='%23AAA' points='720 300 630 450 810 450'/%3E%3Cpolygon fill='%23666' points='720 300 810 150 630 150'/%3E%3Cpolygon fill='%23FFF' points='900 300 810 450 990 450'/%3E%3Cpolygon fill='%23999' points='900 300 990 150 810 150'/%3E%3Cpolygon points='0 600 -90 750 90 750'/%3E%3Cpolygon fill='%23666' points='0 600 90 450 -90 450'/%3E%3Cpolygon fill='%23AAA' points='180 600 90 750 270 750'/%3E%3Cpolygon fill='%23444' points='180 600 270 450 90 450'/%3E%3Cpolygon fill='%23444' points='360 600 270 750 450 750'/%3E%3Cpolygon fill='%23999' points='360 600 450 450 270 450'/%3E%3Cpolygon fill='%23666' points='540 600 630 450 450 450'/%3E%3Cpolygon fill='%23222' points='720 600 630 750 810 750'/%3E%3Cpolygon fill='%23FFF' points='900 600 810 750 990 750'/%3E%3Cpolygon fill='%23222' points='900 600 990 450 810 450'/%3E%3Cpolygon fill='%23DDD' points='0 900 90 750 -90 750'/%3E%3Cpolygon fill='%23444' points='180 900 270 750 90 750'/%3E%3Cpolygon fill='%23FFF' points='360 900 450 750 270 750'/%3E%3Cpolygon fill='%23AAA' points='540 900 630 750 450 750'/%3E%3Cpolygon fill='%23FFF' points='720 900 810 750 630 750'/%3E%3Cpolygon fill='%23222' points='900 900 990 750 810 750'/%3E%3Cpolygon fill='%23222' points='1080 300 990 450 1170 450'/%3E%3Cpolygon fill='%23FFF' points='1080 300 1170 150 990 150'/%3E%3Cpolygon points='1080 600 990 750 1170 750'/%3E%3Cpolygon fill='%23666' points='1080 600 1170 450 990 450'/%3E%3Cpolygon fill='%23DDD' points='1080 900 1170 750 990 750'/%3E%3C/g%3E%3C/pattern%3E%3C/defs%3E%3Crect x='0' y='0' fill='url(%23a)' width='100%25' height='100%25'/%3E%3Crect x='0' y='0' fill='url(%23b)' width='100%25' height='100%25'/%3E%3C/svg%3E");
                background-attachment: fixed;
                background-size: cover;
            }
        </style>
    </body>
</html>