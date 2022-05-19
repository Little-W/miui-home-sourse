.class public Lcom/miui/home/launcher/allapps/AllAppsSheet;
.super Lcom/miui/home/launcher/view/AbstractSlideInView;
.source "AllAppsSheet.java"

# interfaces
.implements Lcom/miui/home/launcher/Insettable;


# static fields
.field public static final COLOR_MODE:Lcom/miui/home/launcher/allapps/AllAppsColorMode;


# instance fields
.field private final mFastScrollerOffset:Landroid/graphics/Point;

.field private mFragment:Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

.field private mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->COLOR_MODE:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/view/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 65
    iput-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mContent:Landroid/view/View;

    return-void
.end method

.method private handleOpen()V
    .locals 3

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mIsOpen:Z

    .line 90
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getBackgroundColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->setBackgroundColor(I)V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsSheet;->COLOR_MODE:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 92
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->removeFragment()V

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->showFragment()V

    return-void
.end method

.method private removeFragment()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFragment:Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFragment:Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 116
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFragment:Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    :cond_0
    return-void
.end method

.method public static shouldShow(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static show(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/AllAppsSheet;
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isAllAppsSheetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    .line 53
    invoke-static {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;

    return-object p0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0032

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsSheet;

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 59
    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->handleOpen()V

    return-object v0
.end method

.method private showFragment()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->newInstance()Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFragment:Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFragment:Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    const v2, 0x7f0a0067

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mIsOpen:Z

    .line 107
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->removeFragment()V

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->onCloseComplete()V

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/miui/home/launcher/view/AbstractSlideInView;->onAttachedToWindow()V

    .line 71
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/miui/home/launcher/view/AbstractSlideInView;->onDetachedFromWindow()V

    .line 165
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFragment:Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "color_mode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    sget-object p1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getBackgroundColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 156
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingLeft(Landroid/view/View;I)V

    .line 157
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 158
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingRight(Landroid/view/View;I)V

    .line 159
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method
