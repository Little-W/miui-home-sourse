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
.implements Lcom/miui/miuiwidget/LargeScreenTouchTarget;


# static fields
.field private static sMaMlsWithoutTitle:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isResumed:Z

.field private mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

.field private mIsEnableAutoLayoutAnimation:Z

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 165
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "bc128052-1c50-4da8-b920-0728aa957a98"

    const-string v2, "060fd4b1-8f58-4af2-a735-75c33090066a"

    const-string v3, "b9884f60-2597-4e66-b94e-cffe97be3b69"

    const-string v4, "ab27e957-5695-4972-b18e-33a5d14b2fc4"

    const-string v5, "cf575d11-7676-4cc3-a24f-6f9f52688fa3"

    const-string v6, "7fa212ed-3c4a-49fc-9841-5be0d5d337e3"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->sMaMlsWithoutTitle:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method private createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 10

    .line 75
    iget-object v0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    iput v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    .line 79
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    :goto_0
    iget v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    .line 83
    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    if-lez v2, :cond_1

    .line 84
    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    .line 85
    iget-object v3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v4, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    iput v4, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->homeWidgetId:I

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v5, "%d,%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    .line 88
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    iget v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-boolean v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object v3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "home"

    iget-object v8, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    .line 104
    invoke-static {v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-static/range {v2 .. v9}, Lcom/miui/maml/widget/edit/MamlutilKt;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    goto :goto_2

    .line 109
    :cond_2
    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {p1, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createConfigPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    .line 112
    :cond_3
    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createEditUri(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static from(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;
    .locals 4

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0097

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 128
    invoke-direct {v1, v0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    .line 130
    iput-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 131
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 132
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setTag(Ljava/lang/Object;)V

    .line 133
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setWidgetId(I)V

    .line 134
    invoke-direct {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-object v1
.end method

.method public static synthetic lambda$onUpgrade$0(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->uninstallMaMl(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onUpgrade$1(Lcom/miui/home/launcher/maml/MaMlWidgetView;IILjava/lang/String;)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 144
    new-instance p2, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;

    invoke-direct {p2, p0, p3, p1}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onUpgrade$2(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->reload(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$requestUpdate$3(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    :cond_0
    return-void
.end method

.method private pauseWidget()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 333
    iget-boolean v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    return-void
.end method

.method private reload(Ljava/lang/Runnable;)V
    .locals 7

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 184
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x1

    .line 185
    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xc8

    .line 186
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 187
    new-instance v3, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p1

    .line 202
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 204
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 206
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/maml/MaMlHostView;->setAlpha(F)V

    .line 207
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onWallpaperColorChanged()V

    .line 211
    iget-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    :cond_0
    return-void
.end method

.method private resumeWidget()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 324
    iget-boolean v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    :cond_0
    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    return-void
.end method

.method private shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 1

    .line 176
    sget-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->sMaMlsWithoutTitle:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 1

    .line 151
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
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

    .line 153
    :cond_1
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    .line 154
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mLocationOnScreen:[I

    .line 476
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 449
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 450
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 443
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 444
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 438
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 388
    iget-boolean v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    return-object v0
.end method

.method public getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object v0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object v0
.end method

.method public getIconRadius()F
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 393
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 396
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    return-object v0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong type of ItemInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object v0
.end method

.method public getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidgetId()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getWidgetId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public isUseTransitionAnimation()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->notifyColorChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 341
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDestroy()V

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 230
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a03dd

    .line 231
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a01a7

    .line 232
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/TitleTextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 277
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    .line 278
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 265
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onPause()V

    .line 266
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 260
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onResume()V

    .line 261
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onUpgrade(II)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 141
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    .line 142
    new-instance v1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$z9dFA6rN6pqFNXRLUUa6XPPKjn8;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$z9dFA6rN6pqFNXRLUUa6XPPKjn8;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;IILjava/lang/String;)V

    .line 147
    new-instance p1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;

    invoke-direct {p1, p0, v1}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVisible()V
    .locals 0

    .line 271
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 283
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onWallpaperColorChanged()V

    .line 284
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->notifyColorChanged()V

    return-void
.end method

.method public requestUpdate(Z)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->requestLayout()V

    .line 305
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    .line 306
    new-instance p1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$DJCg-1JEsOCdv4Eg_jvQi0U4Q3U;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$DJCg-1JEsOCdv4Eg_jvQi0U4Q3U;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->doRender()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 349
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 373
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 1

    .line 217
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 249
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 253
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_1

    .line 254
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 255
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setUpgradeListener(Lcom/miui/home/launcher/MIUIWidgetBasicInfo$UpgradeListener;)V

    :cond_1
    return-void
.end method

.method public setWidgetId(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    :cond_0
    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public touchIn(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateColor(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->updateColor(I)V

    :cond_0
    return-void
.end method

.method public updateWidgetSize()V
    .locals 0

    .line 470
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    return-void
.end method
