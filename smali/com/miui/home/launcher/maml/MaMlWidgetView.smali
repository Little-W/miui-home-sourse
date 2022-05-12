.class public Lcom/miui/home/launcher/maml/MaMlWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "MaMlWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/home/launcher/MIUIWidgetBasicInfo$UpgradeListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
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

.field private mMaMlCornerSize:F

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 174
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

    .line 70
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method private createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 10

    .line 84
    iget-object v0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    iput v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    .line 88
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :goto_0
    iget v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    .line 92
    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    if-lez v2, :cond_1

    .line 93
    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    .line 94
    iget-object v3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iget v4, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    iput v4, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->homeWidgetId:I

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v5, "%d,%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    .line 97
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_1
    iget v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    .line 108
    :goto_1
    iget-boolean v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    iget-object v2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object v3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "home"

    iget-object v8, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-static/range {v2 .. v9}, Lcom/miui/maml/widget/edit/MamlutilKt;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    goto :goto_2

    .line 118
    :cond_2
    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {p1, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createConfigPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    .line 121
    :cond_3
    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createEditUri(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static from(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;
    .locals 4

    .line 134
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0086

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 137
    invoke-direct {v1, v0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    .line 139
    iput-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 140
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 141
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setTag(Ljava/lang/Object;)V

    .line 142
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setWidgetId(I)V

    .line 143
    invoke-direct {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-object v1
.end method

.method public static synthetic lambda$onUpgrade$0(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->uninstallMaMl(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onUpgrade$1(Lcom/miui/home/launcher/maml/MaMlWidgetView;IILjava/lang/String;)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 153
    new-instance p2, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;

    invoke-direct {p2, p0, p3, p1}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onUpgrade$2(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->reload(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$requestUpdate$3(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    :cond_0
    return-void
.end method

.method private pauseWidget()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 343
    iget-boolean v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    return-void
.end method

.method private reload(Ljava/lang/Runnable;)V
    .locals 7

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 193
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x1

    .line 194
    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xc8

    .line 195
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 196
    new-instance v3, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 210
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p1

    .line 211
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 215
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/maml/MaMlHostView;->setAlpha(F)V

    .line 216
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onWallpaperColorChanged()V

    .line 220
    iget-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    :cond_0
    return-void
.end method

.method private resumeWidget()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 334
    iget-boolean v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    if-nez v1, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    :cond_0
    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->isResumed:Z

    return-void
.end method

.method private shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 1

    .line 185
    sget-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->sMaMlsWithoutTitle:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 1

    .line 160
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
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

    .line 162
    :cond_1
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    .line 163
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x2

    .line 448
    new-array v0, v0, [I

    .line 449
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getLocationOnScreen([I)V

    .line 450
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 451
    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    .line 452
    aget v0, v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 453
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/maml/MaMlHostView;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 454
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/maml/MaMlHostView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public getCornerRadius()F
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 398
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

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    return-object v0
.end method

.method public getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object v0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object v0
.end method

.method public getIconRadius()F
    .locals 2

    .line 429
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    .line 432
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    return v0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 403
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 406
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong type of ItemInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 1

    .line 411
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

    .line 254
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

    .line 378
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public isUseTransitionAnimation()Z
    .locals 1

    .line 443
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

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->notifyColorChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 351
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDestroy()V

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a02e7

    .line 241
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a0147

    .line 242
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/TitleTextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 287
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    .line 288
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 275
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onPause()V

    .line 276
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 270
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onResume()V

    .line 271
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onUpgrade(II)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 150
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    .line 151
    new-instance v1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$z9dFA6rN6pqFNXRLUUa6XPPKjn8;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$z9dFA6rN6pqFNXRLUUa6XPPKjn8;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;IILjava/lang/String;)V

    .line 156
    new-instance p1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;

    invoke-direct {p1, p0, v1}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVisible()V
    .locals 0

    .line 281
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 282
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 293
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onWallpaperColorChanged()V

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->notifyColorChanged()V

    return-void
.end method

.method public requestUpdate(Z)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->requestLayout()V

    .line 315
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    .line 316
    new-instance p1, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$DJCg-1JEsOCdv4Eg_jvQi0U4Q3U;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$DJCg-1JEsOCdv4Eg_jvQi0U4Q3U;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->doRender()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 383
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

    .line 226
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07018a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mMaMlCornerSize:F

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 259
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 263
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_1

    .line 264
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 265
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setUpgradeListener(Lcom/miui/home/launcher/MIUIWidgetBasicInfo$UpgradeListener;)V

    :cond_1
    return-void
.end method

.method public setWidgetId(I)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    :cond_0
    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 374
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

    .line 306
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->updateColor(I)V

    :cond_0
    return-void
.end method
