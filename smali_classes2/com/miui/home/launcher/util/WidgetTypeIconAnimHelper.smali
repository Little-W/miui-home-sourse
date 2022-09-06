.class public Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;
.super Ljava/lang/Object;
.source "WidgetTypeIconAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
    }
.end annotation


# instance fields
.field private mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private findTargetCellLayout(Landroid/graphics/Rect;)Lcom/miui/home/launcher/CellLayout;
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
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

    .line 147
    iget-object v2, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 149
    new-array v2, v2, [I

    .line 150
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 151
    aget v4, v2, v3

    .line 152
    aget v2, v2, v3

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 153
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v3, v2, :cond_0

    return-object v1

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method private static getViewLocationRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    .line 165
    new-array v1, v1, [I

    .line 166
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 167
    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    .line 168
    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 169
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 170
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

    .line 98
    iput-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    :cond_0
    return-void
.end method

.method public defaultStartActivityAction(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "maml_view_location_on_screen"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 110
    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->resetStartActivityExtraOptions(Landroid/content/Intent;Landroid/graphics/Rect;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_3

    const-string v0, "extra_is_clear_cache_agent"

    .line 114
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 113
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    :cond_4
    :goto_2
    return-object p2
.end method

.method public getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    .line 122
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    return-object v0
.end method

.method public isOpenAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 136
    array-length p1, p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetStartActivityExtraOptions(Landroid/content/Intent;Landroid/graphics/Rect;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 37
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->findTargetCellLayout(Landroid/graphics/Rect;)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x2

    .line 40
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    move v3, v2

    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 44
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 48
    instance-of v5, v4, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v5, :cond_4

    .line 49
    move-object v5, v4

    check-cast v5, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    .line 51
    invoke-interface {v5}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->isUseTransitionAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 54
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 55
    aget v6, v1, v2

    .line 56
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    const/4 v8, 0x1

    .line 57
    aget v8, v1, v8

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v8

    .line 62
    iget v10, p2, Landroid/graphics/Rect;->left:I

    if-lt v10, v6, :cond_4

    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_4

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-lt v6, v8, :cond_4

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v9, :cond_4

    .line 64
    invoke-interface {v5}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object p2

    .line 65
    new-instance v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iput-object v5, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mStartActivityWidgetView:Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    .line 67
    iget-object v1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mScreenId:J

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-interface {v5}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppPackage:Ljava/lang/String;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mAppClass:Ljava/lang/String;

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iput-object p2, p1, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mStartActivityWidgetRect:Landroid/graphics/Rect;

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iget-object v0, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, v4, p2}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    goto :goto_2

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-static {v4}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getViewLocationRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    if-nez p3, :cond_6

    .line 87
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object p3, p1

    .line 89
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    if-eqz p1, :cond_7

    .line 90
    iget-object p1, p0, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->mLaunchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->mOptions:Landroid/os/Bundle;

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    return-object p3
.end method
