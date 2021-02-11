.class public Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;
.super Landroidx/preference/Preference;
.source "NavBarTypeContainerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;
    }
.end annotation


# instance fields
.field private mAllNavBarTypeViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/settings/NavigationBarTypeView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

.field private mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

.field private mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    .line 51
    new-instance p1, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    const p1, 0x7f0d007e

    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->showDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/NavigationBarTypeView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic lambda$showDialog$2()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickLearnBtnEvent()V

    return-void
.end method

.method public static synthetic lambda$showDialog$3(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 2

    const/4 v0, 0x1

    .line 89
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    .line 90
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-direct {p0, v1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    .line 91
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v1

    iget-boolean p1, p1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowNavGuide(Z)V

    return-void
.end method

.method public static synthetic lambda$updateFullScreenViewAnim$0(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updateFullScreenViewAnim$1(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Ljava/lang/Boolean;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f0001

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0002

    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 77
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private setForceFSGNavBar(Z)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    if-ne v0, p1, :cond_0

    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    .line 107
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    .line 108
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->setSelected(Z)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

    if-eqz p1, :cond_3

    .line 111
    invoke-interface {p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;->onNavBarTypeChanged()V

    :cond_3
    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 83
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10019f

    .line 84
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    const v1, 0x7f10019e

    .line 85
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    .line 86
    sget-object v1, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$5n5xfecdzM7CK4Ytf2DSycQJqrY;->INSTANCE:Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$5n5xfecdzM7CK4Ytf2DSycQJqrY;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickPosButtonRunnable(Ljava/lang/Runnable;)V

    const-string v1, "com.miui.systemui.fsgesture.introduce"

    .line 87
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$JQ3sky_uVY5ZQH0PS600mhOXG50;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$JQ3sky_uVY5ZQH0PS600mhOXG50;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava8/util/function/Consumer;)V

    .line 93
    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private updateFullScreenViewAnim()V
    .locals 3

    .line 73
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$ZFj02ymYjkdtqGHZ14XOZOHntL8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$ZFj02ymYjkdtqGHZ14XOZOHntL8;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$5RfEOt_vN1tpVbbZzUmtUShwZT0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$5RfEOt_vN1tpVbbZzUmtUShwZT0;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateSelectedView()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 38
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a01f2

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    .line 40
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a00d1

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    const v0, 0x7f0a00d2

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 45
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateSelectedView()V

    .line 48
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateFullScreenViewAnim()V

    return-void
.end method

.method public setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

    return-void
.end method
