.class public Lcom/miui/home/launcher/allapps/WorkFooterContainer;
.super Landroid/widget/RelativeLayout;
.source "WorkFooterContainer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;
    }
.end annotation


# instance fields
.field private mDivider:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/WorkFooterContainer;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method private refreshViewColor()V
    .locals 4

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801cb

    goto :goto_0

    :cond_0
    const v0, 0x7f0801ca

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private refreshViewStatus()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->isAnyProfileQuietModeEnabled()Z

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    .line 66
    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v0, 0x7f100476

    goto :goto_0

    :cond_1
    const v0, 0x7f100477

    .line 69
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 90
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 84
    new-instance p1, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;

    xor-int/lit8 p2, p2, 0x1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;-><init>(ZLjava/lang/ref/WeakReference;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/WorkFooterContainer$SetQuietModeEnabledAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 98
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a02f6

    .line 53
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mDivider:Landroid/view/View;

    const v0, 0x7f0a02f7

    .line 54
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0a0183

    .line 55
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mLabel:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 56
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1020016

    .line 57
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mTitle:Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewStatus()V

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewColor()V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->mSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewColor()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewStatus()V

    return-void
.end method
