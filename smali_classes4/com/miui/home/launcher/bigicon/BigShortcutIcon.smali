.class public final Lcom/miui/home/launcher/bigicon/BigShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "BigShortcutIcon.kt"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private mBigIconImageViewContainer:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;

.field private mInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final updateInfo(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 27
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 28
    iget-object p1, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mBigIconImageViewContainer:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;

    if-nez p1, :cond_0

    const-string v0, "mBigIconImageViewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const-string v1, "mInfo"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->setSpanXY(II)V

    return-void

    .line 27
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const-string p0, "dragObject"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getHeightDiffBetweenImageAndImageView()I
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mBigIconImageViewContainer:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;

    if-nez p0, :cond_0

    const-string v0, "mBigIconImageViewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p0, :cond_0

    const-string v0, "mInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method protected getSpanX()I
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p0, :cond_0

    const-string v0, "mInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    return p0
.end method

.method public getWidthDiffBetweenImageAndImageView()I
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mBigIconImageViewContainer:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;

    if-nez p0, :cond_0

    const-string v0, "mBigIconImageViewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public isBigIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isShownCheckBox()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needChangeIconAlpha()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const-string p0, "dragObject"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a0093

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.big_icon_top_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mBigIconImageViewContainer:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;

    .line 15
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onFinishInflate()V

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLaunchAppAnimStart()V
    .locals 0

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->updateSizeOnIconSizeChanged()V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->updateInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 5

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const-string v2, "mInfo"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v3, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Lcom/miui/home/launcher/IconCache;->removeBigIcons(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 77
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateSizeOnIconSizeChanged()V

    return-void
.end method
