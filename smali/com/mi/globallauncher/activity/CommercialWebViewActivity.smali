.class public Lcom/mi/globallauncher/activity/CommercialWebViewActivity;
.super Landroid/app/Activity;


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

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mIsLightMode:Z

    new-instance v0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$1;-><init>(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)V

    iput-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity$2;-><init>(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)V

    iput-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->composeEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private composeEmail(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ""

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private loadData()V
    .locals 3

    iget-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WebViewActivity"

    if-eqz v0, :cond_0

    const-string v0, "start url is null"

    invoke-static {v1, v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData start url is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$CommercialWebViewActivity(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "extra_ui_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mIsLightMode:Z

    iget-boolean v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/mi/globallauncher/R$style;->WebViewCustomLightTheme:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/mi/globallauncher/R$style;->WebViewCustomDarkTheme:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/mi/globallauncher/R$layout;->webview_activity:I

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/16 v2, 0x400

    if-lt p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2410

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2400

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    iget-boolean p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setElevation(F)V

    iget-boolean v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mIsLightMode:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    sget p1, Lcom/mi/globallauncher/R$id;->branch_web:I

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    sget p1, Lcom/mi/globallauncher/R$id;->progress_bar_load:I

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mi/globallauncher/activity/-$$Lambda$CommercialWebViewActivity$iju5DyY0sDwtnEKqOr_kqU_nuSE;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/activity/-$$Lambda$CommercialWebViewActivity$iju5DyY0sDwtnEKqOr_kqU_nuSE;-><init>(Lcom/mi/globallauncher/activity/CommercialWebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_8
    invoke-direct {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->loadData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;->finish()V

    :cond_0
    return-void
.end method
