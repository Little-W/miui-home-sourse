.class Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;
.super Landroid/widget/RelativeLayout;
.source "PocoBranchSearchGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;
    }
.end annotation


# static fields
.field private static final BRANCH_GUIDE_INTERVAL:J = 0x5265c00L

.field private static final BRANCH_PRIVACY_URL:Ljava/lang/String; = "https://branch.io/discovery-policies/#privacy"

.field private static final BRANCH_TERMS_URL:Ljava/lang/String; = "https://branch.io/discovery-policies/#terms-and-conditions"

.field public static final BRANCH_URL_TYPE_PRIVACY:I = 0x2

.field public static final BRANCH_URL_TYPE_TERMS:I = 0x1


# instance fields
.field private mAgreeBtn:Landroid/widget/TextView;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mGuideDesc:Landroid/widget/TextView;

.field private mGuideGif:Lcom/airbnb/lottie/LottieAnimationView;

.field private mGuideTitle:Landroid/widget/TextView;

.field private mPrivacyCheckBox:Landroid/widget/CheckBox;

.field private mPrivacyText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;IZ)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->goToWebViewActivity(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private static getBranchUrl(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "https://branch.io/discovery-policies/#terms-and-conditions"

    return-object p0

    :cond_0
    const-string p0, "https://branch.io/discovery-policies/#privacy"

    return-object p0
.end method

.method private static getBranchUrlTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mi/globallauncher/R$string;->branch_privacy_policy:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
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
    .end packed-switch
.end method

.method public static getPocoBranchSearchGuideView(Landroid/content/Context;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;
    .locals 2

    .line 92
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/mi/globallauncher/R$layout;->poco_all_apps_search_guide:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    return-object p0
.end method

.method private static goToWebViewActivity(Landroid/app/Activity;IZ)V
    .locals 3

    .line 195
    invoke-static {p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getBranchUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {p0, p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getBranchUrlTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mi/globallauncher/activity/CommercialWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "extra_title"

    .line 199
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "extra_url"

    .line 201
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_ui_mode"

    .line 202
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static guideViewNotShownOrShouldShowAgain()Z
    .locals 4

    .line 69
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->shouldShownBranchSearchGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchSearchGuideOpenClicked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
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

.method static synthetic lambda$initPocoBranchSearchGuideView$0(Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;->onAgreeBtnClicked()V

    .line 133
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldShownBranchSearchGuide(Z)V

    return-void
.end method

.method static synthetic lambda$initPocoBranchSearchGuideView$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$initPocoBranchSearchGuideView$2(Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;->onCloseBtnClicked()V

    :cond_0
    return-void
.end method

.method public static needToShowPocoSearchGuide()Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isShowNewFeatureRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->guideViewNotShownOrShouldShowAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V
    .locals 8

    .line 156
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 158
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 160
    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 161
    array-length v2, v0

    if-nez v2, :cond_0

    return-void

    .line 164
    :cond_0
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 165
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 166
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 167
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    if-ltz v5, :cond_2

    if-gez v6, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    new-instance v7, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$1;

    invoke-direct {v7, v4, v4, p0, p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Z)V

    const/16 v4, 0x11

    invoke-virtual {v1, v7, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_3
    sget p2, Lcom/mi/globallauncher/R$color;->url_text_highlight:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 190
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getPrivacyCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getPrivacyTextView()Landroid/widget/TextView;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyText:Landroid/widget/TextView;

    return-object v0
.end method

.method public initPocoBranchSearchGuideView(ZLcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;Z)V
    .locals 2

    .line 96
    sget v0, Lcom/mi/globallauncher/R$id;->search_guide_title:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/mi/globallauncher/R$id;->search_guide_desc:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/mi/globallauncher/R$id;->search_guide_close:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    .line 99
    sget v0, Lcom/mi/globallauncher/R$id;->search_guide_gif:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideGif:Lcom/airbnb/lottie/LottieAnimationView;

    .line 100
    sget v0, Lcom/mi/globallauncher/R$id;->search_guide_privacy_checkbox:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    .line 101
    sget v0, Lcom/mi/globallauncher/R$id;->search_guide_privacy:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyText:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/mi/globallauncher/R$id;->search_guide_btn:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    sget v0, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->setBackgroundColor(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    sget v0, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mi/globallauncher/R$color;->dark_mode_bg_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->setBackgroundColor(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 119
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    sget p3, Lcom/mi/globallauncher/R$string;->branch_search_guide_title:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    sget p3, Lcom/mi/globallauncher/R$string;->branch_search_guide_description:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideTitle:Landroid/widget/TextView;

    sget p3, Lcom/mi/globallauncher/R$string;->app_drawer_guide_title:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mGuideDesc:Landroid/widget/TextView;

    sget p3, Lcom/mi/globallauncher/R$string;->app_drawer_guide_description:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :goto_1
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyText:Landroid/widget/TextView;

    sget p3, Lcom/mi/globallauncher/R$string;->branch_search_guide_privacy:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    sget p3, Lcom/mi/globallauncher/R$string;->search_guide_btn:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mAgreeBtn:Landroid/widget/TextView;

    new-instance p3, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuide$lzsTxFneRV_lTeZc1QME138t8Iw;

    invoke-direct {p3, p2}, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuide$lzsTxFneRV_lTeZc1QME138t8Iw;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget-object p1, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuide$zN_CTOnTXmv0-YGxkwZFsFE1Jj8;->INSTANCE:Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuide$zN_CTOnTXmv0-YGxkwZFsFE1Jj8;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mCloseBtn:Landroid/widget/ImageView;

    new-instance p3, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuide$Nt8EluE91ymPrEoDJQLh48VLkZ0;

    invoke-direct {p3, p2}, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuide$Nt8EluE91ymPrEoDJQLh48VLkZ0;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isPrivacyCheckBoxChecked()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onAgreeBtnClicked()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchSwitchOn(Z)V

    .line 85
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchSearchGuideOpenClicked()V

    .line 86
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchInitSwitchOn(ZZ)V

    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const-string v1, "branch_search_guide_show_time"

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldShownBranchSearchGuide(Z)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldShownBranchSearchGuide(Z)V

    .line 79
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchSearchGuideShowTime(J)V

    :goto_0
    return-void
.end method
