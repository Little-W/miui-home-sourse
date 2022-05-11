.class public Lcom/mi/globallauncher/view/BranchSearchGuide;
.super Landroid/widget/RelativeLayout;
.source "BranchSearchGuide.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;
    }
.end annotation


# static fields
.field private static final BRANCH_GUIDE_INTERVAL:J = 0x5265c00L

.field public static final BRANCH_GUIDE_TYPE_1:I = 0x1

.field public static final BRANCH_GUIDE_TYPE_2:I = 0x2

.field public static final BRANCH_GUIDE_TYPE_3:I = 0x3

.field public static final BRANCH_GUIDE_TYPE_4:I = 0x4

.field private static final BRANCH_PRIVACY_URL:Ljava/lang/String; = "https://branch.io/discovery-policies/#privacy"

.field private static final BRANCH_TERMS_URL:Ljava/lang/String; = "https://branch.io/discovery-policies/#terms-and-conditions"

.field public static final BRANCH_URL_TYPE_PRIVACY:I = 0x2

.field public static final BRANCH_URL_TYPE_TERMS:I = 0x1

.field private static final XIAOMI_PRIVACY_URL:Ljava/lang/String; = "https://privacy.mi.com/all"

.field public static final XIAOMI_URL_TYPE_PRIVACY:I = 0x3


# instance fields
.field private branchGuideViewClickListener:Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;

.field private homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

.field private mAgreeBtn:Landroid/widget/TextView;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mGuideDesc:Landroid/widget/TextView;

.field private mGuideFeature:Landroid/widget/TextView;

.field private mGuideFeature2:Landroid/widget/TextView;

.field private mGuideFeature3:Landroid/widget/TextView;

.field private mGuideGifType1:Lcom/airbnb/lottie/LottieAnimationView;

.field private mGuideTitle:Landroid/widget/TextView;

.field private stepOneIv:Landroid/widget/ImageView;

.field private stepOneTv:Landroid/widget/TextView;

.field private stepTwoIv:Landroid/widget/ImageView;

.field private stepTwoTv:Landroid/widget/TextView;

.field private viewStubType1:Landroid/view/ViewStub;

.field private viewStubType4:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/view/BranchSearchGuide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/mi/globallauncher/view/BranchSearchGuide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;IZ)V
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->goToWebViewActivity(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public static getBranchSearchGuideView(Landroid/content/Context;)Lcom/mi/globallauncher/view/BranchSearchGuide;
    .locals 2

    .line 148
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/mi/globallauncher/R$layout;->all_apps_search_guide:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/view/BranchSearchGuide;

    return-object p0
.end method

.method private static getBranchUrl(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "https://branch.io/discovery-policies/#terms-and-conditions"

    return-object p0

    :pswitch_0
    const-string p0, "https://privacy.mi.com/all"

    return-object p0

    :pswitch_1
    const-string p0, "https://branch.io/discovery-policies/#privacy"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getBranchUrlTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 373
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mi/globallauncher/R$string;->branch_privacy_policy:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 370
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mi/globallauncher/R$string;->branch_terms_condition:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static goToWebViewActivity(Landroid/app/Activity;IZ)V
    .locals 3

    .line 344
    invoke-static {p1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getBranchUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {p0, p1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getBranchUrlTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "extra_title"

    .line 348
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "extra_url"

    .line 350
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_ui_mode"

    .line 351
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static guideViewNotShownOrShouldShowAgain()Z
    .locals 4

    .line 122
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->shouldShownBranchSearchGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchSearchGuideOpenClicked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getBranchSearchGuideShowTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$initBranchSearchGuideView$0(Lcom/mi/globallauncher/view/BranchSearchGuide;Landroid/view/View;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->branchGuideViewClickListener:Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;

    if-eqz p1, :cond_0

    .line 252
    invoke-interface {p1}, Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;->onAgreeBtnClicked()V

    .line 254
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldShownBranchSearchGuide(Z)V

    return-void
.end method

.method static synthetic lambda$initBranchSearchGuideView$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$initBranchSearchGuideView$2(Lcom/mi/globallauncher/view/BranchSearchGuide;Landroid/view/View;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->branchGuideViewClickListener:Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;

    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1}, Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;->onCloseBtnClicked()V

    :cond_0
    return-void
.end method

.method public static needToShowSearchGuide()Z
    .locals 1

    .line 114
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isChangeToDrawerByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isShowNewFeatureRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/mi/globallauncher/view/BranchSearchGuide;->guideViewNotShownOrShouldShowAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setMiTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V
    .locals 8

    .line 307
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 308
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 309
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 311
    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 312
    array-length v2, v0

    if-nez v2, :cond_0

    return-void

    .line 315
    :cond_0
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 316
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 317
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 318
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    if-ltz v5, :cond_2

    if-gez v6, :cond_1

    goto :goto_1

    .line 321
    :cond_1
    new-instance v7, Lcom/mi/globallauncher/view/BranchSearchGuide$2;

    invoke-direct {v7, v4, v4, p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V

    const/16 v4, 0x11

    invoke-virtual {v1, v7, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_3
    sget p2, Lcom/mi/globallauncher/R$color;->url_text_highlight:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 339
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public static setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V
    .locals 8

    .line 266
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 267
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 268
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 270
    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 271
    array-length v2, v0

    if-nez v2, :cond_0

    return-void

    .line 274
    :cond_0
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 275
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 276
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 277
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    if-ltz v5, :cond_2

    if-gez v6, :cond_1

    goto :goto_1

    .line 280
    :cond_1
    new-instance v7, Lcom/mi/globallauncher/view/BranchSearchGuide$1;

    invoke-direct {v7, v4, v4, p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V

    const/16 v4, 0x11

    invoke-virtual {v1, v7, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_3
    sget p2, Lcom/mi/globallauncher/R$color;->url_text_highlight:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 302
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public initBranchSearchGuideView(ZLcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;I)V
    .locals 2

    .line 152
    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->branchGuideViewClickListener:Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;

    .line 153
    sget p2, Lcom/mi/globallauncher/R$id;->search_guide_title:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    .line 154
    sget p2, Lcom/mi/globallauncher/R$id;->search_guide_desc:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    .line 155
    sget p2, Lcom/mi/globallauncher/R$id;->search_guide_close:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    .line 156
    sget p2, Lcom/mi/globallauncher/R$id;->search_guide_feature:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature:Landroid/widget/TextView;

    .line 157
    sget p2, Lcom/mi/globallauncher/R$id;->search_guide_feature2:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature2:Landroid/widget/TextView;

    .line 158
    sget p2, Lcom/mi/globallauncher/R$id;->search_guide_feature3:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature3:Landroid/widget/TextView;

    .line 159
    sget p2, Lcom/mi/globallauncher/R$id;->search_guide_btn:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    .line 161
    sget p2, Lcom/mi/globallauncher/R$id;->view_stub_type1:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->viewStubType1:Landroid/view/ViewStub;

    .line 162
    sget p2, Lcom/mi/globallauncher/R$id;->view_stub_type4:I

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->viewStubType4:Landroid/view/ViewStub;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p3, p2, :cond_3

    const/4 p2, 0x4

    if-eq p3, p2, :cond_0

    goto/16 :goto_3

    .line 174
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->viewStubType4:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 175
    sget v1, Lcom/mi/globallauncher/R$id;->type_four_step_one_tv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneTv:Landroid/widget/TextView;

    .line 176
    sget v1, Lcom/mi/globallauncher/R$id;->type_four_step_one_iv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneIv:Landroid/widget/ImageView;

    .line 177
    sget v1, Lcom/mi/globallauncher/R$id;->type_four_step_two_tv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoTv:Landroid/widget/TextView;

    .line 178
    sget v1, Lcom/mi/globallauncher/R$id;->type_four_step_two_iv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoIv:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 180
    :catch_0
    :try_start_1
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->viewStubType4:Landroid/view/ViewStub;

    invoke-virtual {p2, v0}, Landroid/view/ViewStub;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 183
    :goto_0
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneIv:Landroid/widget/ImageView;

    sget v0, Lcom/mi/globallauncher/R$drawable;->type_four_step_one:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoIv:Landroid/widget/ImageView;

    sget v0, Lcom/mi/globallauncher/R$drawable;->type_four_step_two:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 188
    :cond_1
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneIv:Landroid/widget/ImageView;

    sget v0, Lcom/mi/globallauncher/R$drawable;->type_four_step_one_dark_mode:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoIv:Landroid/widget/ImageView;

    sget v0, Lcom/mi/globallauncher/R$drawable;->type_four_step_two_dark_mode:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneIv:Landroid/widget/ImageView;

    sget p3, Lcom/mi/globallauncher/R$drawable;->type_four_step_one:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoIv:Landroid/widget/ImageView;

    sget p3, Lcom/mi/globallauncher/R$drawable;->type_four_step_two:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepOneIv:Landroid/widget/ImageView;

    sget p3, Lcom/mi/globallauncher/R$drawable;->type_four_step_one_dark_mode:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->stepTwoIv:Landroid/widget/ImageView;

    sget p3, Lcom/mi/globallauncher/R$drawable;->type_four_step_two_dark_mode:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    :goto_2
    throw p2

    .line 166
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->viewStubType1:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 167
    sget v1, Lcom/mi/globallauncher/R$id;->search_guide_gif:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideGifType1:Lcom/airbnb/lottie/LottieAnimationView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 169
    :catch_1
    iget-object p2, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->viewStubType1:Landroid/view/ViewStub;

    invoke-virtual {p2, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_3
    if-eqz p1, :cond_4

    .line 198
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    sget p2, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setBackgroundColor(I)V

    goto :goto_4

    .line 206
    :cond_4
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    sget p2, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn_dark:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->dark_mode_bg_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setBackgroundColor(I)V

    :goto_4
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_5

    .line 241
    :pswitch_0
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->layout_guide_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->branch_guide_type_four_desc:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->branch_guide_type_four_main:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature2:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature3:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->got_it_botton:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 233
    :pswitch_1
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->new_feature_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->quick_finder_tip_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->quick_finder_feature_description:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature2:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature3:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->switch_on_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 225
    :pswitch_2
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->new_feature_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->branch_tip_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->branch_feature_description:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature2:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature3:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->got_it_botton:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 217
    :pswitch_3
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->branch_guide_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->branch_guide_type_one_desc:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->branch_guide_type_one_main:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature2:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mGuideFeature3:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    sget p2, Lcom/mi/globallauncher/R$string;->got_it_botton:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_5
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    new-instance p2, Lcom/mi/globallauncher/view/-$$Lambda$BranchSearchGuide$wDZft42D88sCuH27OZBrfHXo1zA;

    invoke-direct {p2, p0}, Lcom/mi/globallauncher/view/-$$Lambda$BranchSearchGuide$wDZft42D88sCuH27OZBrfHXo1zA;-><init>(Lcom/mi/globallauncher/view/BranchSearchGuide;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget-object p1, Lcom/mi/globallauncher/view/-$$Lambda$BranchSearchGuide$ja6cqkpJk8ed92yIafgl3QiCMA8;->INSTANCE:Lcom/mi/globallauncher/view/-$$Lambda$BranchSearchGuide$ja6cqkpJk8ed92yIafgl3QiCMA8;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    new-instance p2, Lcom/mi/globallauncher/view/-$$Lambda$BranchSearchGuide$tKlWZzjsROfMswCCVBH811YvMxQ;

    invoke-direct {p2, p0}, Lcom/mi/globallauncher/view/-$$Lambda$BranchSearchGuide$tKlWZzjsROfMswCCVBH811YvMxQ;-><init>(Lcom/mi/globallauncher/view/BranchSearchGuide;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAgreeBtnClicked()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchSearchGuideOpenClicked()V

    .line 138
    invoke-static {}, Lio/branch/search/BranchSearch;->optInToTracking()V

    .line 139
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchInitSwitchOn(ZZ)V

    .line 142
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchHasBeenOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchHasBeenOpened(Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 90
    new-instance v0, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;-><init>(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    .line 91
    iget-object v0, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->register(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->unRegister(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 3

    .line 128
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const-string v1, "branch_search_guide_show_time"

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldShownBranchSearchGuide(Z)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldShownBranchSearchGuide(Z)V

    .line 132
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchSearchGuideShowTime(J)V

    :goto_0
    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->branchGuideViewClickListener:Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0}, Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;->onCloseBtnClicked()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/mi/globallauncher/messages/CommercialCloseAllOverLauncherWindowMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 108
    iget-object p1, p0, Lcom/mi/globallauncher/view/BranchSearchGuide;->branchGuideViewClickListener:Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;->onCloseBtnClicked()V

    :cond_0
    return-void
.end method
