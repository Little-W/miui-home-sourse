.class public Lcom/miui/home/launcher/SearchBarDrawerLayout;
.super Landroid/widget/RelativeLayout;
.source "SearchBarDrawerLayout.java"


# instance fields
.field private mClear:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

.field private mIcon:Landroid/widget/ImageView;

.field private mInput:Lcom/miui/home/launcher/ExtendedEditText;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private changeColor()V
    .locals 4

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchBarIconTintColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchBarInputTextColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ExtendedEditText;->setTextColor(I)V

    .line 71
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchBarInputHintColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ExtendedEditText;->setHintTextColor(I)V

    .line 72
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mClear:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchBarInputClearColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchBarBackgroundResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 45
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 53
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01c4

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a01c2

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ExtendedEditText;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    const v0, 0x7f0a01c3

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mClear:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->changeColor()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->changeColor()V

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDrawerLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
