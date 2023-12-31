.class public Lcom/miui/home/launcher/maml/MaMlWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "MaMlWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/home/launcher/MIUIWidgetBasicInfo$UpgradeListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/WidgetSizeUpdater;
.implements Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;
.implements Lcom/miui/home/launcher/maml/ThemeSupport;
.implements Lcom/miui/miuiwidget/LargeScreenTouchTarget;


# instance fields
.field private mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

.field private mIsEnableAutoLayoutAnimation:Z

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTheme:Lcom/miui/home/launcher/maml/Theme;

.field private mThemeApplied:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method private applyThemeIfNeed()V
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->supportTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {v0}, Lcom/miui/home/launcher/maml/ThemeFactory;->getTheme(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/maml/Theme;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->apply(Lcom/miui/home/launcher/maml/Theme;)Z

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setPathThenVisible(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static create(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;
    .locals 4

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d009a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 145
    invoke-direct {v1, v0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    .line 147
    iput-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 148
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 149
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setTag(Ljava/lang/Object;)V

    .line 150
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setWidgetId(I)V

    .line 152
    invoke-direct {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->applyThemeIfNeed()V

    .line 153
    invoke-direct {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateEditLinkUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 154
    invoke-direct {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 155
    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onWallpaperColorChanged()V

    return-object v1
.end method

.method private createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 1

    .line 80
    iget-object p0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 81
    new-instance p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    iget-object v0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 83
    iput p0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    .line 84
    new-instance p0, Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;)V

    .line 86
    :goto_0
    iget p1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    return-object p0
.end method

.method public static from(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;
    .locals 2

    .line 132
    invoke-static {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->create(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;

    move-result-object v0

    .line 133
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    .line 136
    invoke-static {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->create(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private pauseWidget()V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    return-void
.end method

.method private reload(Ljava/lang/Runnable;)V
    .locals 8

    .line 261
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    .line 262
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed()Z

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string v5, "alpha"

    .line 264
    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    .line 265
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 266
    new-instance v7, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;

    invoke-direct {v7, p0, v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 280
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p1

    .line 281
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 283
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 285
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/maml/MaMlHostView;->setAlpha(F)V

    .line 286
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 288
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->applyThemeIfNeed()V

    .line 289
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateEditLinkUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 291
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onWallpaperColorChanged()V

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    :cond_0
    return-void
.end method

.method private resumeWidget()V
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    return-void
.end method

.method private shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    .line 240
    invoke-static {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->isClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateEditLinkUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 9

    .line 92
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    .line 94
    iget-object v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->homeWidgetId:I

    .line 95
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const-string v0, "%d,%d"

    .line 97
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    .line 108
    :goto_0
    iget-boolean v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v7, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 113
    invoke-static {p0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "home"

    .line 110
    invoke-static/range {v1 .. v8}, Lcom/miui/maml/widget/edit/MamlutilKt;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createConfigPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    .line 121
    :cond_2
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createEditUri(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method private updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 3

    .line 217
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    .line 223
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 229
    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->getTitleStyle()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public apply(Lcom/miui/home/launcher/maml/Theme;)Z
    .locals 7

    .line 183
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed()Z

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->onDestroy()V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/maml/MaMlHostView;->applyPath(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mThemeApplied:Z

    .line 190
    iget-boolean v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mThemeApplied:Z

    const-string v3, " to widget id = "

    const-string v4, "MaMlWidgetView"

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    const-string v5, "THEME_APPLIED"

    invoke-interface {v2, p0, v5}, Lcom/miui/home/launcher/maml/Theme;->handle(Lcom/miui/home/launcher/maml/ThemeSupport;Ljava/lang/String;)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply theme:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->id:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failure to apply theme:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->id:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object v1, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->applyPath(Ljava/lang/String;)Z

    :goto_0
    if-eqz v0, :cond_2

    .line 199
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mLocationOnScreen:[I

    .line 550
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 523
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 524
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 512
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isForbidLaunchSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dispatchTouchEvent: isForbidLaunchSplit = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaMlWidgetView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 517
    :cond_0
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 518
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 507
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    .line 457
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    return-object p0
.end method

.method public getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object p0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object p0
.end method

.method public getIconRadius()F
    .locals 0

    .line 488
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 462
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    .line 465
    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-object p0

    .line 463
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong type of ItemInfo"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 428
    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 0

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTheme()Lcom/miui/home/launcher/maml/Theme;
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mThemeApplied:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object p0
.end method

.method public getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidgetId()I
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getWidgetId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 437
    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public isUseTransitionAnimation()Z
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onUpgrade$0$MaMlWidgetView(Ljava/lang/String;I)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->uninstallMaMl(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$onUpgrade$1$MaMlWidgetView(IILjava/lang/String;)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 166
    new-instance p2, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;

    invoke-direct {p2, p0, p3, p1}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onUpgrade$2$MaMlWidgetView(Ljava/lang/Runnable;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->reload(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$requestUpdate$3$MaMlWidgetView()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    :cond_0
    return-void
.end method

.method public notifyColorChanged()V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->notifyColorChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 410
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDestroy()V

    .line 411
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 312
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a03e7

    .line 313
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a01b5

    .line 314
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    .line 315
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/TitleTextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 359
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    .line 360
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 347
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onPause()V

    .line 348
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 342
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onResume()V

    .line 343
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onUpgrade(II)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    .line 164
    new-instance v1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$z9dFA6rN6pqFNXRLUUa6XPPKjn8;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$z9dFA6rN6pqFNXRLUUa6XPPKjn8;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;IILjava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object p1

    if-nez p1, :cond_0

    .line 170
    new-instance p1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;

    invoke-direct {p1, p0, v1}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onVisible()V
    .locals 0

    .line 353
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 365
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onWallpaperColorChanged()V

    .line 366
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->notifyColorChanged()V

    return-void
.end method

.method public requestUpdate(Z)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->requestLayout()V

    .line 387
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    .line 388
    new-instance p1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$DJCg-1JEsOCdv4Eg_jvQi0U4Q3U;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$DJCg-1JEsOCdv4Eg_jvQi0U4Q3U;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->doRender()V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/maml/Theme;->accept(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/maml/Theme;->handle(Lcom/miui/home/launcher/maml/ThemeSupport;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 418
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 442
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 302
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 331
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 335
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_1

    .line 336
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 337
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setUpgradeListener(Lcom/miui/home/launcher/MIUIWidgetBasicInfo$UpgradeListener;)V

    :cond_1
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    :cond_0
    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public supportTheme()Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    instance-of p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public touchIn(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateColor(I)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->updateColor(I)V

    :cond_0
    return-void
.end method

.method public updateWidgetSize()V
    .locals 0

    .line 544
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    return-void
.end method
