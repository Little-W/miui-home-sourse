.class public Lcom/mi/globallauncher/CommercialWebViewActivity;
.super Landroid/app/Activity;
.source "CommercialWebViewActivity.java"


# static fields
.field public static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"

.field public static final EXTRA_UI_MODE:Ljava/lang/String; = "extra_ui_mode"

.field public static final EXTRA_URL:Ljava/lang/String; = "extra_url"

.field private static final TAG:Ljava/lang/String; = "WebViewActivity"


# instance fields
.field private mIsLightMode:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mIsLightMode:Z

    .line 147
    new-instance v0, Lcom/mi/globallauncher/CommercialWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/CommercialWebViewActivity$1;-><init>(Lcom/mi/globallauncher/CommercialWebViewActivity;)V

    iput-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 193
    new-instance v0, Lcom/mi/globallauncher/CommercialWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/CommercialWebViewActivity$2;-><init>(Lcom/mi/globallauncher/CommercialWebViewActivity;)V

    iput-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/CommercialWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/CommercialWebViewActivity;->composeEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/CommercialWebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/CommercialWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private composeEmail(Ljava/lang/String;)V
    .locals 3

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 186
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 187
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "android.intent.extra.EMAIL"

    .line 188
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    const-string v1, ""

    .line 189
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ""

    .line 190
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/CommercialWebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/mi/globallauncher/CommercialWebViewActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 95
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadData()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebViewActivity"

    const-string v1, "start url is null"

    .line 138
    invoke-static {v0, v1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->finish()V

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "WebViewActivity"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData start url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_ui_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mIsLightMode:Z

    .line 46
    iget-boolean v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/mi/globallauncher/R$style;->WebViewCustomLightTheme:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/mi/globallauncher/R$style;->WebViewCustomDarkTheme:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->setTheme(I)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/mi/globallauncher/R$layout;->webview_activity:I

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/CommercialWebViewActivity;->setContentView(I)V

    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/16 v1, 0x400

    if-lt p1, v0, :cond_2

    .line 52
    iget-boolean p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2410

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 59
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_4

    .line 60
    iget-boolean p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2400

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 67
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 72
    :goto_2
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 73
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setElevation(F)V

    .line 77
    iget-boolean v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz v0, :cond_6

    .line 78
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 80
    :cond_6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/CommercialWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    :cond_8
    sget p1, Lcom/mi/globallauncher/R$id;->webview:I

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/CommercialWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 88
    sget p1, Lcom/mi/globallauncher/R$id;->progress_bar_load:I

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/CommercialWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 90
    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 92
    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mi/globallauncher/-$$Lambda$CommercialWebViewActivity$WKIx7o2fJJMZIY4Mt8mjzTcxQzQ;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/-$$Lambda$CommercialWebViewActivity$WKIx7o2fJJMZIY4Mt8mjzTcxQzQ;-><init>(Lcom/mi/globallauncher/CommercialWebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    iget-object p1, p0, Lcom/mi/globallauncher/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 104
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 105
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 111
    :cond_9
    invoke-direct {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->loadData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onStop()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 117
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/mi/globallauncher/CommercialWebViewActivity;->finish()V

    :cond_0
    return-void
.end method
