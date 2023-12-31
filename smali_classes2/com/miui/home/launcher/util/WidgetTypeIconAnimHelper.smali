.class public Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;
.super Ljava/lang/Object;
.source "WidgetTypeIconAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
    }
.end annotation


# static fields
.field public static final FIT_PARENT_AND_TRANSLUCENT_PACKAGE:[Ljava/lang/String;


# instance fields
.field private mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.miui.player"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->FIT_PARENT_AND_TRANSLUCENT_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private findTargetCellLayout(Landroid/graphics/Rect;)Lcom/miui/home/launcher/CellLayout;
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 168
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 169
    aget v4, v2, v3

    .line 170
    aget v2, v2, v3

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v3, v2, :cond_0

    return-object v1

    .line 177
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method private static getViewLocationRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 184
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 185
    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    .line 186
    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 187
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 188
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method public clearWidgetTypeIconCache(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    :cond_0
    return-void
.end method

.method public defaultStartActivityAction(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "maml_view_location_on_screen"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 128
    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->resetStartActivityExtraOptions(Landroid/content/Intent;Landroid/graphics/Rect;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_3

    const-string v0, "extra_is_clear_cache_agent"

    .line 132
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 131
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    :cond_4
    :goto_2
    return-object p2
.end method

.method public getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    .line 140
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    return-object p0
.end method

.method public isOpenAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 154
    array-length p1, p1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetStartActivityExtraOptions(Landroid/content/Intent;Landroid/graphics/Rect;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    .line 40
    iget-object v2, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    .line 41
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->findTargetCellLayout(Landroid/graphics/Rect;)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 45
    iput-object v4, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz v1, :cond_8

    const/4 v5, 0x0

    move v6, v5

    .line 47
    :goto_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 48
    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 52
    instance-of v8, v7, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v8, :cond_7

    .line 53
    move-object v8, v7

    check-cast v8, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    .line 54
    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 55
    aget v9, v3, v5

    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    const/4 v11, 0x1

    .line 57
    aget v12, v3, v11

    .line 58
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v12

    .line 62
    iget v14, v1, Landroid/graphics/Rect;->left:I

    if-lt v14, v9, :cond_7

    iget v9, v1, Landroid/graphics/Rect;->right:I

    if-gt v9, v10, :cond_7

    iget v9, v1, Landroid/graphics/Rect;->top:I

    if-lt v9, v12, :cond_7

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v9, v13, :cond_7

    .line 64
    new-instance v9, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-direct {v9}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;-><init>()V

    iput-object v9, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    .line 65
    iget-object v9, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-interface {v8}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 67
    iget-object v9, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iget-object v9, v9, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 68
    iget-object v9, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v9, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppClass:Ljava/lang/String;

    .line 72
    :cond_1
    invoke-interface {v8}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 73
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v9

    .line 74
    invoke-interface {v8}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v10

    .line 75
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-static {v12}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v12

    .line 73
    invoke-virtual {v9, v10, v12}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v11, v5

    .line 77
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v11, :cond_3

    .line 78
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v9

    iget-object v10, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v12, -0x1

    .line 79
    invoke-interface {v8}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v14

    .line 78
    invoke-virtual {v9, v10, v12, v13, v14}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;ILjava/lang/String;I)V

    .line 82
    :cond_3
    invoke-interface {v8}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->isUseTransitionAnimation()Z

    move-result v9

    if-nez v9, :cond_4

    .line 83
    iput-object v4, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    goto :goto_2

    .line 86
    :cond_4
    invoke-interface {v8}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object v1

    .line 87
    iget-object v2, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iput-object v8, v2, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mStartActivityWidgetView:Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    .line 88
    iget-object v3, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mScreenId:J

    .line 89
    iget-object v2, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iput-object v1, v2, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mStartActivityWidgetRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_5

    .line 91
    iput-object v4, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    goto :goto_3

    .line 93
    :cond_5
    iget-object v2, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 94
    iget-object v2, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iget-object v3, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v4, v7, v1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    goto :goto_3

    .line 96
    :cond_6
    iget-object v1, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-static {v7}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getViewLocationRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    if-nez p3, :cond_9

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_4

    :cond_9
    move-object/from16 v1, p3

    .line 107
    :goto_4
    iget-object v2, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    if-eqz v2, :cond_b

    .line 108
    iget-object v0, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_5

    :cond_a
    move-object/from16 v1, p3

    :cond_b
    :goto_5
    return-object v1
.end method
