.class public final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;
.super Lcom/miui/home/launcher/LauncherIconImageView;
.source "LauncherFolder2x2IconImageView.kt"

# interfaces
.implements Lcom/miui/home/launcher/folder/IFolderContainerAnimationAble;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherFolder2x2IconImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherFolder2x2IconImageView.kt\ncom/miui/home/launcher/folder/LauncherFolder2x2IconImageView\n*L\n1#1,198:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlphaAnimCount:I

.field private final mAlphaAnimDelayTime:J

.field private final mAlphaAnimHideAlpha:F

.field private final mAlphaAnimNormalAlpha:F

.field private final mAlphaAnimShowAlpha:F

.field private final mAlphaAnimStartDelayTime:J

.field private final mAnimMax:I

.field private mBeforeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIsDebug:Z

.field private mIsDragingEnter:Z

.field private mPreDrawable:Landroid/graphics/drawable/Drawable;

.field private final mViewEaseHideAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field private final mViewEaseShowAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    new-array p2, p1, [F

    const/4 p3, 0x6

    .line 27
    invoke-static {p3, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseHideAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array p1, p1, [F

    const/16 p2, 0xf

    .line 28
    invoke-static {p2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseShowAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 p1, 0x5

    .line 29
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAnimMax:I

    const-string p1, "LauncherFolder2x2IconImageView"

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDebug:Z

    const-wide/16 p1, 0x190

    .line 32
    iput-wide p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimStartDelayTime:J

    const-wide/16 p1, 0xc8

    .line 33
    iput-wide p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimDelayTime:J

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42200000    # 40.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43590000    # 217.0f

    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimHideAlpha:F

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x41c80000    # 25.0f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x43330000    # 179.0f

    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimShowAlpha:F

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/high16 p1, 0x43000000    # 128.0f

    :goto_2
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimNormalAlpha:F

    .line 50
    sget-object p1, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;->Companion:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;->getInstance()Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/common/IconSizeProvider;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method

.method public static final synthetic access$getMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    return p0
.end method

.method public static final synthetic access$getMAnimMax$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAnimMax:I

    return p0
.end method

.method public static final synthetic access$getMIsDragingEnter$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    return p0
.end method

.method public static final synthetic access$preformAnimInternal(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->preformAnimInternal()V

    return-void
.end method

.method public static final synthetic access$resetDrawableToNormalState(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->resetDrawableToNormalState()V

    return-void
.end method

.method public static final synthetic access$setMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    return-void
.end method

.method private final animEnd()V
    .locals 2

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha(ZZ)V

    return-void
.end method

.method private final animStart()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->preformAnimInternal()V

    return-void
.end method

.method private final customTask(Lkotlin/jvm/functions/Function0;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;J)V"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;-><init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 124
    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final onDragContainerBgAnimAlpha(ZZ)V
    .locals 8

    .line 140
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDebug:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->TAG:Ljava/lang/String;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragContainerBgAnimAlpha,mAlphaAnimCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 147
    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimHideAlpha:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimShowAlpha:F

    :goto_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "LauncherFolder2x2IconImageView"

    aput-object v4, v2, v3

    .line 149
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "animAlpha"

    aput-object v6, v5, v3

    .line 152
    iget-object v7, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    check-cast v7, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v7}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v1

    .line 150
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v3

    if-eqz p2, :cond_2

    .line 154
    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimNormalAlpha:F

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    .line 155
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    if-eqz p1, :cond_3

    .line 156
    iget-object v6, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseHideAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mViewEaseShowAlpha:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :goto_1
    iput-object v6, v0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 157
    new-instance v6, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;-><init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;ZZ)V

    check-cast v6, Lmiuix/animation/listener/TransitionListener;

    aput-object v6, v1, v3

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v5, v4

    .line 154
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    .line 152
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.folder.FolderIcon4x4NormalBackgroundDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onDragContainerBgAnimAlpha$default(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 138
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha(ZZ)V

    return-void
.end method

.method private final preformAnimInternal()V
    .locals 3

    .line 115
    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;-><init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 120
    iget v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimCount:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimStartDelayTime:J

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mAlphaAnimDelayTime:J

    .line 115
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->customTask(Lkotlin/jvm/functions/Function0;J)V

    return-void
.end method

.method private final resetDrawableToNormalState()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mBeforeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 92
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.home.launcher.folder.FolderIcon4x4NormalBackgroundDrawable"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final settingDrawableToAnimState()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mBeforeDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    new-instance v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.folder.FolderIcon4x4NormalBackgroundDrawable"

    if-eqz v0, :cond_4

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600e1

    .line 77
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0600e2

    goto :goto_0

    :cond_1
    const v3, 0x7f0600e3

    :goto_0
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 77
    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x82

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 81
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAnimAlpha()F
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->getAlpha()F

    move-result p0

    return p0
.end method

.method protected getHeightMeasureSpec(I)I
    .locals 0

    return p1
.end method

.method protected getWidthMeasureSpec(I)I
    .locals 0

    return p1
.end method

.method public final isDraggingEnter()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    return p0
.end method

.method public onDragEnter()V
    .locals 3

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->settingDrawableToAnimState()V

    .line 65
    sget-object v1, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleIconContainerBg(Landroid/view/View;Z)V

    .line 66
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->animStart()V

    return-void
.end method

.method public onDragExit()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mIsDragingEnter:Z

    .line 100
    sget-object v1, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->scaleIconContainerBg(Landroid/view/View;Z)V

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->animEnd()V

    return-void
.end method

.method public final setAnimAlpha(F)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setAlpha(F)V

    return-void
.end method

.method public final setDrawableAnimAlpha(F)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 189
    check-cast v0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    float-to-int p1, p1

    .line 190
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->mPreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 189
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.folder.FolderIcon4x4NormalBackgroundDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
