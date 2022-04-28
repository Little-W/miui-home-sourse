.class public abstract Lcom/miui/home/launcher/ItemIcon;
.super Lcom/miui/launcher/views/LauncherRelativeLayout;
.source "ItemIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/home/launcher/IBackAnimView;
.implements Lcom/miui/home/launcher/UpdateIconSize;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/anim/IconTypeAnimTarget;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;
.implements Lcom/miui/home/launcher/interfaces/IEditable;
.implements Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;
.implements Lcom/miui/home/library/mirror/MirrorContextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;
    }
.end annotation


# static fields
.field private static final DOWN_SCALE:F = 0.8f

.field private static final ICON_TOUCH_DOWN_SCALE:F = 0.9f

.field public static final MOVEMENT_ANIMATION_DURATION:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "ItemIcon"

.field private static sCanvas:Landroid/graphics/Canvas;

.field protected static final sLayerPaint:Landroid/graphics/Paint;

.field private static sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mDownState:Lmiuix/animation/controller/AnimState;

.field protected mDrawOutline:Z

.field private mDrawTouchMask:Z

.field private mEnableTouchMask:Z

.field private mFirstDrawMark:Z

.field private mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field protected mIconContainer:Landroid/widget/FrameLayout;

.field private mIconDarkShadow:Landroid/graphics/Bitmap;

.field protected mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field protected mIconTile:Landroid/widget/ImageView;

.field private mIsDrawingInThumbnailView:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mIsFolmeDown:Z

.field private mIsHideShadow:Z

.field private mIsHideTitle:Z

.field private mIsHideTouchMask:Z

.field private mIsShowMessageAnimation:Z

.field protected mMaskColor:I

.field protected mMessage:Lcom/miui/home/launcher/IconMessage;

.field private mMessageAnimation:Ljava/lang/Runnable;

.field private mMessageBackground:Ljava/lang/String;

.field private mMessageIconTile:[B

.field private mMessageOldText:Ljava/lang/CharSequence;

.field protected mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

.field private mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

.field private mPerformClickRunnable:Ljava/lang/Runnable;

.field private mSkipNextAutoLayoutAnimation:Z

.field mStateStyle:Lmiuix/animation/IStateStyle;

.field private mTempRect:Landroid/graphics/Rect;

.field protected mTitle:Lcom/miui/home/launcher/TitleTextView;

.field protected mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

.field private mTouchDown:Z

.field private mUpState:Lmiuix/animation/controller/AnimState;

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/miui/home/launcher/ItemIcon;->sLayerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 136
    sput-object v0, Lcom/miui/home/launcher/ItemIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/ItemIcon;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    const/4 p2, 0x0

    .line 73
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 80
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mSkipNextAutoLayoutAnimation:Z

    .line 88
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableAutoLayoutAnimation:Z

    .line 89
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowMessageAnimation:Z

    .line 135
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    const-string v0, ""

    .line 176
    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 177
    new-instance v0, Lcom/miui/home/launcher/ItemIcon$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ItemIcon$1;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimation:Ljava/lang/Runnable;

    .line 307
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    .line 314
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    .line 315
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 316
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    .line 439
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mEnableTouchMask:Z

    .line 454
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mFirstDrawMark:Z

    .line 793
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getDefaultLayerType()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/ItemIcon;->setLayerType(ILandroid/graphics/Paint;)V

    const p2, 0x7f0600ce

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMaskColor:I

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ItemIcon;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowMessageAnimation:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ItemIcon;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    return-object p1
.end method

.method protected static createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 782
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, p0

    goto :goto_1

    .line 783
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 784
    :cond_2
    :goto_0
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, p0

    .line 787
    :goto_1
    instance-of p1, p1, Lcom/miui/home/launcher/CellLayout;

    if-eqz p1, :cond_3

    instance-of p1, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    if-nez p1, :cond_3

    .line 788
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method protected static createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 812
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private drawDarkShadow(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07015d

    .line 143
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 144
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getIconShadowBlurPaint(F)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 145
    sget-object v4, Lcom/miui/home/launcher/ItemIcon;->sCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_1

    .line 146
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    sput-object v4, Lcom/miui/home/launcher/ItemIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 148
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    .line 149
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    return-void

    .line 151
    :cond_2
    sget-object p3, Lcom/miui/home/launcher/ItemIcon;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    sget-object p2, Lcom/miui/home/launcher/ItemIcon;->sTmpRect:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v4

    add-int/2addr p3, v4

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 153
    sget-object p2, Lcom/miui/home/launcher/ItemIcon;->sTmpRect:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTop()I

    move-result p3

    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getTop()I

    move-result v4

    add-int/2addr p3, v4

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 154
    sget-object p2, Lcom/miui/home/launcher/ItemIcon;->sTmpRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v4

    add-int/2addr p3, v4

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 155
    sget-object p2, Lcom/miui/home/launcher/ItemIcon;->sTmpRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v4

    add-int/2addr p3, v4

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 156
    sget-object p2, Lcom/miui/home/launcher/ItemIcon;->sCanvas:Landroid/graphics/Canvas;

    sget-object p3, Lcom/miui/home/launcher/ItemIcon;->sTmpRect:Landroid/graphics/Rect;

    const v4, 0x7f0600fe

    .line 157
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/miui/home/launcher/common/Utilities;->getIconDarkShadowPaint(FI)Landroid/graphics/Paint;

    move-result-object v0

    .line 156
    invoke-virtual {p2, v3, v1, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 159
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    const/4 p3, 0x0

    .line 160
    invoke-virtual {p1, p2, p3, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->getResourcePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 252
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getResourcePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initFolMe()V
    .locals 1

    .line 338
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ItemIcon$fBfTq352ard3SaQbwgWWjIxyQMo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$ItemIcon$fBfTq352ard3SaQbwgWWjIxyQMo;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initPerformClickRunnable()V
    .locals 2

    .line 416
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mPerformClick"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 419
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mPerformClickRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$initFolMe$0(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 4

    .line 339
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 340
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 341
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "myDown"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    .line 342
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 343
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 344
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "myUp"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 345
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 346
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method

.method private setMessageIconTile([B)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->isFancyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageIconTile:[B

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 271
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 276
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMessageTextBackground(Ljava/lang/String;)V
    .locals 2

    .line 261
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/IconMessage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backupProperty()V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 2

    .line 682
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 683
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherRelativeLayout;->buildDrawingCache(Z)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mFirstDrawMark:Z

    .line 459
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherRelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 464
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mFirstDrawMark:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 465
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isEnableIconShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideShadow:Z

    if-nez v0, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/home/launcher/ItemIcon;->drawDarkShadow(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    .line 473
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mFirstDrawMark:Z

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_3

    iget-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTouchMask:Z

    if-nez v2, :cond_3

    .line 478
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 479
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    .line 478
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 480
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherRelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 481
    iget p2, p0, Lcom/miui/home/launcher/ItemIcon;->mMaskColor:I

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 483
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTitle:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_5

    goto :goto_1

    .line 486
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->preDrawChild(Landroid/view/View;)I

    move-result v0

    const/16 v2, -0x3e8

    if-eq v0, v2, :cond_6

    .line 488
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherRelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 489
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->afterDrawChild(Landroid/graphics/Canvas;Z)V

    :cond_6
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getDrawableState()[I

    move-result-object v0

    .line 445
    sget-object v1, Lcom/miui/home/launcher/ItemIcon;->PRESSED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/ItemIcon;->SELECTED_STATE_SET:[I

    .line 446
    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 447
    :goto_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    if-eq v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mEnableTouchMask:Z

    if-eqz v1, :cond_2

    .line 448
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    .line 449
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->invalidate()V

    .line 451
    :cond_2
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherRelativeLayout;->drawableStateChanged()V

    return-void
.end method

.method public enableDrawTouchMask(Z)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mEnableTouchMask:Z

    return-void
.end method

.method public endFolmeAnim()V
    .locals 2

    .line 361
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 362
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public folmeDown()V
    .locals 3

    .line 330
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    const-string v0, "itemIcon"

    const-string v1, "folmeDown"

    .line 331
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method public folmeUp()V
    .locals 4

    .line 320
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    const-string v0, "itemIcon"

    const-string v1, "folmeUp"

    .line 322
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 325
    iput-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method public getBoomAnimBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 509
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 511
    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 7

    .line 761
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherRelativeLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/IconMessage;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/IconMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/IconMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 766
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v6}, Lcom/miui/home/launcher/IconMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 768
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getDefaultLayerType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    return-object v0
.end method

.method public getIconContainer()Landroid/view/View;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getIconImageView()Landroid/view/View;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    return-object v0
.end method

.method public getIconImageViewCenterPoint([I)Z
    .locals 3

    .line 525
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 529
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    aput v2, p1, v1

    .line 530
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return v1
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 7

    .line 545
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 548
    new-array v0, v0, [F

    .line 549
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 550
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v3

    float-to-int v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    aget v3, v0, v3

    iget-object v6, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 551
    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aget v0, v0, v4

    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 552
    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ItemIcon hasn\'t layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIconLocation()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    .line 536
    new-array v0, v0, [I

    .line 537
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 538
    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    aget v4, v0, v1

    aget v5, v0, v3

    aget v1, v0, v1

    iget-object v6, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v0, v0, v3

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {v2, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public getIsHideShadow()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideShadow:Z

    return v0
.end method

.method public getIsHideTitle()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTitle:Z

    return v0
.end method

.method public getIsHideTouchMask()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTouchMask:Z

    return v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isEmptyMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    return-object v0
.end method

.method public getTitleContainer()Landroid/view/View;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    return-object v0
.end method

.method public getVisionOffset([I)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getTop()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 695
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isMessageVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method protected initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 1

    .line 103
    new-instance v0, Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    return-object v0
.end method

.method public isDrawOutline()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    return v0
.end method

.method public isDrawingInThumbnailView()Z
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInThumbnailView:Z

    return v0
.end method

.method public isDropVisibilityAggregated(Z)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isEmptyMessage()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public isHintClick(Landroid/view/ViewGroup;II)Z
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 797
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 798
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->setRectSize(Landroid/graphics/Rect;II)V

    .line 799
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 803
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 804
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getTextContentWidth(Landroid/widget/TextView;)I

    move-result p1

    .line 805
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getTextContentHeight(Landroid/widget/TextView;)I

    move-result v0

    .line 806
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->setRectSize(Landroid/graphics/Rect;II)V

    .line 807
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/TitleTextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 808
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isMessageVisible()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needReset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAnimation(Z)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ItemIconTitleContainer;->setIsOnAnimation(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->endFolmeAnim()V

    .line 369
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherRelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const v0, 0x7f0a013c

    .line 108
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0143

    .line 109
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    const v0, 0x7f0a0140

    .line 110
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const v0, 0x7f0a0141

    .line 111
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/IconMessage;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    const v0, 0x7f0a0144

    .line 114
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    const v0, 0x7f0a0145

    .line 115
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemIconTitleContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    sget-object v1, Lcom/miui/home/launcher/ItemIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/TitleTextView;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/TitleTextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/TitleTextView;->setPaintFlags(I)V

    .line 118
    new-instance v0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    .line 119
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemIcon;->initFolMe()V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onBindElementFinishInflate()V

    return-void
.end method

.method public onIconRemoved()V
    .locals 0

    return-void
.end method

.method public onIconSetNull()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 590
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 591
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 593
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 595
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 596
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 598
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherRelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 377
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/CellLayout;

    if-eqz v3, :cond_0

    .line 378
    invoke-virtual {p0, p0, v0, v2}, Lcom/miui/home/launcher/ItemIcon;->isHintClick(Landroid/view/ViewGroup;II)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 382
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->folmeDown()V

    :cond_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_3

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->folmeUp()V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

    if-eqz v0, :cond_5

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 396
    iget-boolean v3, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;->onSlideVertically(Lcom/miui/home/launcher/ItemIcon;)V

    .line 398
    iput-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    .line 399
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ItemIcon;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 407
    :pswitch_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    goto :goto_0

    .line 403
    :pswitch_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    .line 411
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWallpaperColorChanged()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    const v2, 0x7f110310

    const v3, 0x7f110313

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->invalidate()V

    :cond_0
    return-void
.end method

.method public onlyShowIconWhenDrawChild()V
    .locals 2

    const/4 v0, 0x1

    .line 657
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 658
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 659
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->setCanChangeCanvasAlphaWhenDrawIcon(Z)V

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherRelativeLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mPerformClickRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemIcon;->initPerformClickRunnable()V

    :cond_0
    if-eqz p1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mPerformClickRunnable:Ljava/lang/Runnable;

    if-ne p1, v0, :cond_1

    .line 433
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    .line 436
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherRelativeLayout;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public restoreProperty()V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 1

    .line 652
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    .line 653
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->setCanChangeCanvasAlphaWhenDrawIcon(Z)V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconMessage;->setVisibility(I)V

    goto :goto_1

    .line 735
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconMessage;->setVisibility(I)V

    .line 738
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 571
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 2

    .line 608
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getWidth()I

    move-result v0

    .line 609
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getHeight()I

    move-result v1

    .line 610
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 611
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getWidth()I

    move-result p1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getHeight()I

    move-result p1

    if-eq v1, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 612
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconDarkShadow:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    return-void
.end method

.method public setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 500
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 501
    :cond_0
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_1

    .line 502
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 746
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setIsHideShadow(Z)V
    .locals 0

    .line 669
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideShadow:Z

    return-void
.end method

.method public setIsHideTitle(Z)V
    .locals 0

    .line 644
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTitle:Z

    return-void
.end method

.method public setIsHideTouchMask(Z)V
    .locals 0

    .line 701
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTouchMask:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ItemIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 205
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 207
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    const-string p1, ""

    .line 208
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 209
    iput-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowMessageAnimation:Z

    .line 211
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->showMessageAnimation(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    const/4 v1, 0x1

    .line 213
    iput-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowMessageAnimation:Z

    .line 214
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->setMessageTextBackground(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 216
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {p2}, Lcom/miui/home/launcher/IconMessage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 217
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->showMessageAnimation(Lcom/miui/home/launcher/Launcher;)V

    .line 219
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 220
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/IconMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/IconMessage;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 226
    :cond_6
    :goto_1
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/ItemIcon;->setMessageIconTile([B)V

    .line 227
    iput-object p3, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageIconTile:[B

    return-void
.end method

.method public setMessageImmediately(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 232
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconMessage;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconMessage;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconMessage;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setOnSlideVerticallyListener(Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/TitleTextView;->setAlpha(F)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/TitleTextView;->setTextColor(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/TitleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 567
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElement()V

    return-void
.end method

.method public setTouchScaleFactor(F)V
    .locals 4

    .line 352
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 354
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 356
    invoke-virtual {p1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method

.method public showAllChildViewWhenDrawChild()V
    .locals 2

    const/4 v0, 0x0

    .line 663
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 665
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->setCanChangeCanvasAlphaWhenDrawIcon(Z)V

    return-void
.end method

.method protected showMessageAnimation(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 243
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getForegroundTaskQueue()Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->addTask(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    return-void
.end method
