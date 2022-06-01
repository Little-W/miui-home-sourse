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

.field private mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

.field private mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    .line 63
    new-instance p1, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    const p1, 0x7f0d00ef

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/GestureLearnAlertDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->showDialogToSetMiuiHomeAsDefault()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->showDialogToGestureTutorial()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/NavigationBarTypeView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    return-object p0
.end method

.method static synthetic lambda$showDialogToGestureTutorial$3()V
    .locals 0

    .line 121
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickLearnBtnEvent()V

    return-void
.end method

.method public static synthetic lambda$showDialogToGestureTutorial$4(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 2

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    .line 125
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-direct {p0, v1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    .line 126
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v1

    iget-boolean p1, p1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowNavGuide(Z)V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    return-void
.end method

.method public static synthetic lambda$showDialogToSetMiuiHomeAsDefault$2(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.home"

    const-class v2, Lcom/miui/home/launcher/Launcher;

    .line 104
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->changeDefaultHome(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    const/4 p1, 0x1

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setForceFSGNavBar(Z)V

    .line 106
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/Launcher;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$updateFullScreenViewAnim$0(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 90
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

    .line 92
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getAnimResource(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 93
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private setForceFSGNavBar(Z)V
    .locals 3

    const-string v0, "NavBarTypeContainerPreference"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceFSGNavBar, force_fsg_nav_bar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 135
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/NavBarChangeMessage;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/common/messages/NavBarChangeMessage;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setSelectItem(Lcom/miui/home/recents/settings/NavigationBarTypeView;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    if-ne v0, p1, :cond_0

    return-void

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    .line 145
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

    .line 146
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mCurrentNavBarTypeView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->setSelected(Z)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;->onNavBarTypeChanged()V

    :cond_3
    return-void
.end method

.method private showDialogToGestureTutorial()V
    .locals 2

    .line 118
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    .line 119
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const v1, 0x7f1002ee

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    .line 120
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const v1, 0x7f1002ed

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    sget-object v1, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$WdaaK7-qzrc6HC0VrQZsBxNLTT0;->INSTANCE:Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$WdaaK7-qzrc6HC0VrQZsBxNLTT0;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickPosButtonRunnable(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    const-string v1, "com.miui.systemui.fsgesture.introduce"

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$jJnuarjaIvNM0WMOTqsOMPSJ5Pc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$jJnuarjaIvNM0WMOTqsOMPSJ5Pc;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava/util/function/Consumer;)V

    .line 129
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mGestureLearnAlertDialog:Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private showDialogToSetMiuiHomeAsDefault()V
    .locals 3

    .line 99
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$xRC8XKr4JwAzzOwGzEOecvusUBk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$xRC8XKr4JwAzzOwGzEOecvusUBk;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    const v2, 0x7f100310

    .line 101
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10030e

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f100311

    .line 112
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(I)V

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private updateFullScreenViewAnim()V
    .locals 3

    .line 90
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$6bJyeLXyWQesLQ1Bjq0wsSlpftc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$6bJyeLXyWQesLQ1Bjq0wsSlpftc;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$GH2dJW4oJTROsOX5X27N72tGpso;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$GH2dJW4oJTROsOX5X27N72tGpso;-><init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateSelectedView()V
    .locals 1

    .line 139
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

    .line 48
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 50
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a02ea

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    .line 52
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mVirtualKeyView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0122

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    const v0, 0x7f0a0123

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 57
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mAllNavBarTypeViewList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mFullScreenGestureView:Lcom/miui/home/recents/settings/NavigationBarTypeView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateSelectedView()V

    .line 60
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateFullScreenViewAnim()V

    return-void
.end method

.method public setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->mListener:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;

    return-void
.end method
