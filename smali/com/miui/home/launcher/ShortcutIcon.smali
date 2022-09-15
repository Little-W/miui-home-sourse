.class public Lcom/miui/home/launcher/ShortcutIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "ShortcutIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/NewInstallAppIcon;
.implements Lcom/miui/home/launcher/UpdateIconSize;
.implements Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;
.implements Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;,
        Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
    }
.end annotation


# static fields
.field private static sEnableLoadingAnim:Z = false


# instance fields
.field private mClickRunnable:Ljava/lang/Runnable;

.field protected mContext:Landroid/content/Context;

.field protected mEditModeCheckBox:Landroid/widget/CheckBox;

.field protected mFolderCreationBg:Landroid/widget/ImageView;

.field private mGeneralScaleType:Landroid/widget/ImageView$ScaleType;

.field private mImageSetCallback:Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;

.field protected mIsHideCheckBox:Z

.field private mIsShowingCheckBox:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLock:Ljava/lang/Object;

.field private mPerformHapticRunnable:Ljava/lang/Runnable;

.field private mPhysicBasedInterpolator:Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

.field public mResetBackAnimRunnable:Ljava/lang/Runnable;

.field private mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

.field private mStopLoading:Z

.field private releaseDrawableRunanble:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 72
    iput-boolean p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStopLoading:Z

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideCheckBox:Z

    .line 75
    iput-boolean p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    .line 77
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLock:Ljava/lang/Object;

    .line 454
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$aEVtRhkiKUiU83K81RF-iHNNXrU;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$aEVtRhkiKUiU83K81RF-iHNNXrU;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    .line 456
    new-instance p2, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p2, v0, v1}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPhysicBasedInterpolator:Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    .line 751
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$KT2qkmGEdI9uwz7wbQMBOlYL1T4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$KT2qkmGEdI9uwz7wbQMBOlYL1T4;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    .line 785
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$WbSNIHaAxyFVfWAqiKKT1VemhUo;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$WbSNIHaAxyFVfWAqiKKT1VemhUo;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    .line 891
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$IY8FHi9G3qiaQGT2E8lpz3MCfmE;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$IY8FHi9G3qiaQGT2E8lpz3MCfmE;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mClickRunnable:Ljava/lang/Runnable;

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/miui/home/launcher/ShortcutIcon;->sEnableLoadingAnim:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStopLoading:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isCanChecked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ShortcutIcon;)Ljava/lang/Runnable;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mClickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 295
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 296
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 297
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    const v0, 0x7f1205da

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/TitleTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 298
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-object p0
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 6

    .line 238
    monitor-enter p3

    .line 239
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView(Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p2, :cond_1

    .line 241
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 242
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 243
    invoke-virtual {p3, v0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 245
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 250
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    .line 251
    instance-of v4, p2, Landroid/widget/AbsListView;

    if-eqz v4, :cond_6

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellMaxWidth()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 253
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v4

    if-nez p0, :cond_2

    .line 255
    new-instance p0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p0, p2, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object v1, p0

    goto :goto_0

    .line 256
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, p2, :cond_3

    iget v5, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v4, :cond_4

    .line 257
    :cond_3
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 258
    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, p0

    .line 261
    :cond_4
    :goto_0
    instance-of p2, p0, Landroid/widget/AbsListView$LayoutParams;

    if-nez p2, :cond_5

    .line 262
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    :cond_5
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setFocusable(Z)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 265
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    .line 266
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setTextAlpha(F)V

    .line 267
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setClickable(Z)V

    .line 268
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setLongClickable(Z)V

    .line 269
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableAutoLayoutAnimation(Z)V

    const p0, 0x7f0600f9

    .line 271
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_1

    .line 273
    :cond_6
    invoke-static {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 p0, 0x1

    .line 274
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setFocusable(Z)V

    .line 275
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableAutoLayoutAnimation(Z)V

    const p0, 0x7f06012d

    .line 277
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_1
    const p2, 0x7f1205da

    if-eqz v1, :cond_7

    .line 280
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/TitleTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 282
    iget-object p2, v0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 285
    :cond_7
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 287
    new-instance p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;

    invoke-direct {p0, v0, p3, p1}, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$60RyNADELuCHdcEWv1bUbOTXk3U;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 290
    monitor-exit p3

    return-object v0

    :catchall_0
    move-exception p0

    .line 291
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 175
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 176
    new-instance v0, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 168
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 169
    new-instance v0, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private initShowOrHideCheckBoxAnim()V
    .locals 3

    .line 373
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$cBqNGrs0AMtevPZHLn8vUjwnBGU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$ShortcutIcon$cBqNGrs0AMtevPZHLn8vUjwnBGU;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/ShortcutIcon$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ShortcutIcon$7;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private isCanChecked()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDropable(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 515
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v0, v1, :cond_1

    .line 518
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    .line 519
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$fromXml$0(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 287
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 287
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    return-void
.end method

.method public static synthetic lambda$initShowOrHideCheckBoxAnim$1(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 377
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 454
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterOrCreateFolder(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    .line 786
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 787
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->clearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private scaleDownToFolder(Z)V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    .line 498
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07017d

    .line 499
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    int-to-float v0, v0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    div-float/2addr v1, v0

    .line 503
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherIconImageView;->getX()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/LauncherIconImageView;->setPivotX(F)V

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherIconImageView;->getY()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/LauncherIconImageView;->setPivotY(F)V

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPhysicBasedInterpolator:Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 507
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 509
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPhysicBasedInterpolator:Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 510
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public static setEnableLoadingAnim(Z)V
    .locals 0

    .line 86
    sput-boolean p0, Lcom/miui/home/launcher/ShortcutIcon;->sEnableLoadingAnim:Z

    return-void
.end method

.method private showCheckBox(ZLcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 0

    .line 593
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 594
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 595
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 598
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->showOrHideCheckBoxWithAnim(Z)V

    goto :goto_1

    .line 600
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->quickHideOrShowCheckbox(Z)V

    :goto_1
    return-void
.end method

.method private showFolderCreateBackground(Z)V
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v0, 0x3e8

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPhysicBasedInterpolator:Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    .line 466
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3fa66666    # 1.3f

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 469
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$8;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 470
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPhysicBasedInterpolator:Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    .line 483
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 484
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$9;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private startLoading([Landroid/view/View;)V
    .locals 8

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 112
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 115
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x1

    .line 117
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 118
    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x2

    .line 120
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 121
    aget-object v4, p1, v4

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x3

    .line 123
    aget-object v7, p1, v6

    invoke-direct {p0, v7}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 124
    aget-object p1, p1, v6

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 125
    new-instance v6, Lcom/miui/home/launcher/ShortcutIcon$1;

    invoke-direct {v6, p0, v0, v3}, Lcom/miui/home/launcher/ShortcutIcon$1;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$2;

    invoke-direct {v0, p0, v2, v5}, Lcom/miui/home/launcher/ShortcutIcon$2;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$3;

    invoke-direct {v0, p0, v4, v7}, Lcom/miui/home/launcher/ShortcutIcon$3;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$4;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/home/launcher/ShortcutIcon$4;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 164
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateContentDescription()V
    .locals 5

    .line 686
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f110148

    goto :goto_0

    :cond_1
    const v2, 0x7f110149

    :goto_0
    const/4 v3, 0x1

    .line 693
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 691
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 694
    invoke-super {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 688
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/TitleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 6

    .line 326
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_1

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->loadToggleBackground(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 331
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/ShortcutIcon$5;

    invoke-direct {v5, p0, p1}, Lcom/miui/home/launcher/ShortcutIcon$5;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 338
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 341
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    :cond_1
    return-void
.end method

.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 531
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 534
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->isDropable(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    return p1
.end method

.method public bindAppInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V
    .locals 3

    .line 303
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 304
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 305
    invoke-virtual {p2, p1, p0}, Lcom/miui/home/launcher/AppInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    .line 304
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/miui/home/launcher/AppInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 306
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 307
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getMessageText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessageImmediately(Ljava/lang/String;)V

    return-void
.end method

.method public bindShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/ViewGroup;)V
    .locals 2

    .line 311
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/ShortcutIcon;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    invoke-virtual {p2, p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v1

    .line 313
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 315
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 316
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getMessageText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessageImmediately(Ljava/lang/String;)V

    return-void
.end method

.method public changeToFancyDrawable()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->changeToFancyDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public checkCheckBox(Z)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->draw(Landroid/graphics/Canvas;)V

    .line 729
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 539
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isDrawingInThumbnailView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-ne p2, v0, :cond_1

    :cond_0
    return v1

    .line 544
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideCheckBox:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    if-eqz v0, :cond_3

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-ne p2, v0, :cond_3

    return v1

    .line 549
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawDragView(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawOutLine(Landroid/graphics/Canvas;)V
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/IconMessage;->setDrawOutline(Z)V

    .line 716
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setDrawOutline(Z)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 718
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setDrawOutline(Z)V

    .line 719
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/IconMessage;->setDrawOutline(Z)V

    .line 722
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 6

    .line 699
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    const v1, 0x7f110071

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/TitleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getIconRadius()F
    .locals 2

    .line 880
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40951eb8    # 4.66f

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/high16 v0, 0x42100000    # 36.0f

    return v0
.end method

.method public getIconTransparentEdge()I
    .locals 2

    .line 886
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41e00000    # 28.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 2

    .line 837
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 838
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 839
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
    .locals 2

    .line 810
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 811
    instance-of v1, v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v1, :cond_0

    .line 812
    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
    .locals 1

    .line 895
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$11;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$11;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-object v0
.end method

.method public getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 1

    .line 864
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$10;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$10;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 851
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 852
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 853
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleTextView()Landroid/view/View;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    return-object v0
.end method

.method public hasFocusable()Z
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 640
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    return v0
.end method

.method public invalidateLayerAdaptiveIconDrawable()V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNeedNewInstalledAnim()Z
    .locals 2

    .line 828
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 829
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 830
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isNeedNewInstalledAnim()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNewInstalled()Z
    .locals 2

    .line 819
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 820
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 821
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isNewInstalled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needPostWhenDrop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackAnimStart()V
    .locals 1

    const/4 v0, 0x4

    .line 738
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 1

    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconVisibility(I)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    const/4 v0, 0x1

    .line 434
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->scaleDownToFolder(Z)V

    .line 435
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(Z)V

    .line 436
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->invalidate()V

    .line 437
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/TitleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f110067

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 448
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->scaleDownToFolder(Z)V

    .line 449
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->invalidate()V

    .line 451
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 422
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->isDropable(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(Z)V

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 424
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Workspace;->createUserFolderWithDragOverlap(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z

    .line 426
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->setOnDropAnnounce(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onEnterHomeAnimFinish()V
    .locals 2

    .line 666
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->showMessageAnimation(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public onEnterHomeAnimStart()V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconMessage;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 348
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mGeneralScaleType:Landroid/widget/ImageView$ScaleType;

    const v0, 0x7f0a019c

    .line 350
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    const v0, 0x7f0a0137

    .line 351
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 353
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/miui/home/launcher/ShortcutIcon$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ShortcutIcon$6;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->initShowOrHideCheckBoxAnim()V

    return-void
.end method

.method public onProgressStatusChanged()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 225
    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->invalidate()V

    return-void
.end method

.method public onlyShowIconWhenDrawChild()V
    .locals 1

    .line 675
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    const/4 v0, 0x1

    .line 676
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIsHideCheckBox(Z)V

    return-void
.end method

.method public postResetBackAnim()V
    .locals 4

    .line 754
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 755
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->removeReleaseRunnable()V

    .line 756
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public quickHideOrShowCheckbox(Z)V
    .locals 2

    .line 606
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 609
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    .line 610
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 611
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    .line 612
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method public rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V
    .locals 0

    .line 321
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 322
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public relayoutMessageTextView()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconMessage;->requestLayout()V

    :cond_0
    return-void
.end method

.method public removeReleaseRunnable()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetBackAnim()V
    .locals 2

    .line 774
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->resetBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    goto :goto_0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public resetCheckBox()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 397
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    return-void
.end method

.method public resetPendingBackAnim()V
    .locals 2

    .line 760
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 762
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->removeReleaseRunnable()V

    .line 763
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public restoreToInitState()V
    .locals 2

    .line 644
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconContainer()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 645
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 646
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 647
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 648
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setDownloadTag()V
    .locals 0

    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 571
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    if-eqz p2, :cond_0

    .line 572
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 576
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    if-eqz p2, :cond_2

    .line 578
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    :cond_2
    return-void

    .line 582
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 583
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setEditMode(Z)V

    .line 585
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v1

    if-nez v1, :cond_4

    .line 586
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->showCheckBox(ZLcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 589
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method public setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 214
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 216
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mGeneralScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 218
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mImageSetCallback:Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 219
    invoke-interface {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;->onImageDrawableSet(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setIconTitleVisible(ZZ)V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 554
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    return-void
.end method

.method public setImageSetCallback(Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mImageSetCallback:Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;

    return-void
.end method

.method public setIsHideCheckBox(Z)V
    .locals 0

    .line 670
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideCheckBox:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public showAllChildViewWhenDrawChild()V
    .locals 1

    .line 681
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->showAllChildViewWhenDrawChild()V

    const/4 v0, 0x0

    .line 682
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIsHideCheckBox(Z)V

    return-void
.end method

.method protected showMessageAnimation(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInMultiSelecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 655
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->showMessageAnimation(Lcom/miui/home/launcher/Launcher;)V

    :cond_2
    return-void
.end method

.method public showOrHideCheckBoxWithAnim(Z)V
    .locals 4

    .line 616
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 619
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    .line 620
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    move v0, v2

    .line 623
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v3, v2, v1

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 624
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startLoadingAnim()V
    .locals 4

    const v0, 0x7f0a01dc

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 95
    sget-boolean v1, Lcom/miui/home/launcher/ShortcutIcon;->sEnableLoadingAnim:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStopLoading:Z

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x4

    .line 98
    new-array v0, v0, [Landroid/view/View;

    const v2, 0x7f0a01b5

    .line 99
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const v2, 0x7f0a01b6

    .line 100
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const v3, 0x7f0a01b7

    .line 101
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const v3, 0x7f0a01b8

    .line 102
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    .line 103
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 104
    aget-object v2, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_0
    const v3, 0x3e99999a    # 0.3f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->startLoading([Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public startNewInstallAnim()V
    .locals 1

    .line 846
    new-instance v0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->start()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStopLoading:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 3

    .line 743
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->changeToFancyDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 747
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateCheckBoxAnimProgress(F)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setScaleX(F)V

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setScaleY(F)V

    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 0

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 945
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->updateSizeOnIconSizeChanged()V

    .line 946
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public updateTitleTip()V
    .locals 5

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_3

    .line 183
    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez v1, :cond_3

    .line 185
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getCurrentLightSpeedIconPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 189
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/TitleTextView;->updateSpeedOfLightIndicator(Z)V

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    .line 192
    iget v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 193
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/TitleTextView;->updateNewInstallIndicator(Z)V

    :cond_3
    return-void
.end method
