.class public Lcom/miui/home/launcher/folder/FolderSheet;
.super Lcom/miui/home/launcher/AbstractFloatingView;
.source "FolderSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static isFolderSheetViewShow:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private downY:F

.field private eventY:F

.field listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

.field private mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mBeforeAppPredictButtonStatus:I

.field private mBigFolderBorderLayout2x2_4:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

.field private mBigFolderBorderLayout3x3_9:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

.field private mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

.field private mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

.field private mBigFolderName2x2_4:Lmiuix/visual/check/VisualCheckedTextView;

.field private mBigFolderName2x2_9:Lmiuix/visual/check/VisualCheckedTextView;

.field private mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mDefaultFolderBorderLayout:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

.field private mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mDefaultFolderName:Lmiuix/visual/check/VisualCheckedTextView;

.field private mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

.field private mFolderPickerAppPredictSummary:Landroid/widget/TextView;

.field private mFolderPickerAppPredictTitle:Landroid/widget/TextView;

.field private mFolderPickerBody:Landroid/widget/ScrollView;

.field private mFolderPickerCancel:Landroid/widget/ImageView;

.field private mFolderPickerDragLine:Landroid/widget/ImageView;

.field private mFolderPickerOk:Landroid/widget/ImageView;

.field private mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

.field private mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field private mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field private mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

.field private mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

.field private mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

.field private mFolderPickerTitle:Landroid/widget/TextView;

.field private mFolderType:I

.field private mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field private mTranslationY:F

.field private moveY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "FolderSheet"

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->TAG:Ljava/lang/String;

    .line 444
    new-instance p1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string p2, "Folder Sheet"

    invoke-direct {p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 647
    new-instance p1, Lcom/miui/home/launcher/folder/FolderSheet$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/folder/FolderSheet$2;-><init>(Lcom/miui/home/launcher/folder/FolderSheet;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "FolderSheet"

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->TAG:Ljava/lang/String;

    .line 444
    new-instance p1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string p2, "Folder Sheet"

    invoke-direct {p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 647
    new-instance p1, Lcom/miui/home/launcher/folder/FolderSheet$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/folder/FolderSheet$2;-><init>(Lcom/miui/home/launcher/folder/FolderSheet;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setNavigationBarOrStatusBarTransparent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/folder/FolderSheet;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mIsOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/folder/FolderSheet;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->restoreLauncherBlurWithAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/folder/FolderSheet;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->trackQuitFolderPicker()V

    return-void
.end method

.method private closeOrOpenPickerByTouch(FI)V
    .locals 0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 576
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleClose(Z)V

    goto :goto_0

    .line 578
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mTranslationY:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setTranslationY(F)V

    .line 579
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleOpen()V

    :goto_0
    return-void
.end method

.method private getColorFromTheme(Landroid/content/Context;II)I
    .locals 0

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 403
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FolderSheet"

    const-string p2, "Color find error"

    .line 405
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0
.end method

.method private getColorWithTheme(Landroid/content/Context;II)I
    .locals 0

    .line 618
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 622
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFolderPickerDragLineDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f0802a7

    const v1, 0x7f0802a6

    .line 705
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getFolderPickerSelectDefaultFolderBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802d5

    goto :goto_0

    :cond_0
    const v0, 0x7f0802d4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0xff

    .line 714
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-object p0
.end method

.method private getFolderPickerSummaryText(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f0605df

    const v1, 0x7f06004d

    .line 709
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorWithTheme(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private getFolderPickerTitleColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f0605e3

    const v1, 0x7f060055

    .line 701
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorWithTheme(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private getFolderSheetBigFolderBg2x2_9(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f080289

    const v1, 0x7f08028a

    .line 604
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFolderSheetType()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method private getFolderSizeByType()Ljava/lang/String;
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, v0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    const-string v2, "2*2"

    const-string v3, "1*1"

    const/16 v4, 0x15

    if-ne v0, v1, :cond_1

    .line 315
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    if-ne p0, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    return-object v2
.end method

.method private handleLauncherIconVisible(Z)V
    .locals 4

    .line 634
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    .line 635
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 636
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->setVisibility(I)V

    .line 637
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/SearchBarContainer;->setVisibility(I)V

    return-void
.end method

.method private handleOpen()V
    .locals 1

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mIsOpen:Z

    .line 280
    sput-boolean v0, Lcom/miui/home/launcher/folder/FolderSheet;->isFolderSheetViewShow:Z

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleLauncherIconVisible(Z)V

    .line 283
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setLauncherBlurWithAnim()V

    return-void
.end method

.method private handleSlidingButtonColorDarkModeSyncInternal()V
    .locals 4

    .line 418
    :try_start_0
    const-class v0, Lmiuix/slidingwidget/widget/SlidingButton;

    const-string v1, "mHelper"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 420
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 421
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f1205e1

    sget-object v3, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 422
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 423
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initDrawable()V

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButton;->requestLayout()V

    .line 425
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V
    .locals 4

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06055c

    const v2, 0x7f0600f1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorFromTheme(Landroid/content/Context;II)I

    move-result v0

    .line 385
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0605ed

    const v3, 0x7f0600f2

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorFromTheme(Landroid/content/Context;II)I

    move-result p0

    .line 387
    const-class v1, Lmiuix/visual/check/VisualCheckedTextView;

    const-string v2, "mCheckedColor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    const-class v1, Lmiuix/visual/check/VisualCheckedTextView;

    const-string v3, "mUncheckedColor"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 393
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    move p0, v0

    .line 394
    :cond_0
    invoke-virtual {p2, p0}, Lmiuix/visual/check/VisualCheckedTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 396
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private init(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 114
    iget v0, p1, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010045

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setAnimation(Landroid/view/animation/Animation;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->initListener(Lcom/miui/home/launcher/FolderInfo;)V

    .line 118
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->initPreviewIcon()V

    .line 119
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerDarkModeColor()V

    .line 123
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->isDefaultFolder(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerLocation()V

    return-void
.end method

.method private initFolderPreviewIcon2x2_4()V
    .locals 7

    .line 467
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    if-nez v3, :cond_0

    .line 472
    new-instance v3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 475
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    move-object v3, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setFolderIconPlaceholderDrawableMatchingWallpaperColor()V

    .line 481
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 482
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v6, 0x0

    .line 481
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    return-void
.end method

.method private initFolderPreviewIcon2x2_9()V
    .locals 7

    .line 486
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    if-nez v3, :cond_0

    .line 490
    new-instance v3, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 493
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    move-object v3, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setFolderIconPlaceholderDrawableMatchingWallpaperColor()V

    .line 498
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 499
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v6, 0x0

    .line 498
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    return-void
.end method

.method private initPreviewIcon()V
    .locals 4

    .line 447
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->initFolderPreviewIcon2x2_4()V

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    .line 449
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->initFolderPreviewIcon2x2_9()V

    .line 450
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, v0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 453
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    .line 454
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_4()V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, v0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 457
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 458
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_9()V

    goto :goto_0

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderVisible()V

    .line 461
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 462
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    :goto_0
    return-void
.end method

.method private internationalNotSupportAppPredict()V
    .locals 2

    .line 584
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen(Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private isDefaultFolder(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 505
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setEnabled(Z)V

    .line 506
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$show$0(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 102
    instance-of p3, p2, Lcom/miui/home/launcher/folder/FolderSheet;

    if-nez p3, :cond_0

    return-void

    .line 105
    :cond_0
    check-cast p2, Lcom/miui/home/launcher/folder/FolderSheet;

    .line 106
    invoke-direct {p2, p0}, Lcom/miui/home/launcher/folder/FolderSheet;->init(Lcom/miui/home/launcher/FolderInfo;)V

    .line 107
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 108
    invoke-direct {p2}, Lcom/miui/home/launcher/folder/FolderSheet;->handleOpen()V

    return-void
.end method

.method private restoreLauncherBlurWithAnim()V
    .locals 3

    .line 630
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x118

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenExitFolderPicker(Lcom/miui/home/launcher/Launcher;FZI)V

    return-void
.end method

.method private setBigFolderGone2x2_4()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setVisibility(I)V

    return-void
.end method

.method private setBigFolderGone2x2_9()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setVisibility(I)V

    return-void
.end method

.method private setBigFolderVisible2x2_4()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setVisibility(I)V

    return-void
.end method

.method private setBigFolderVisible2x2_9()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setVisibility(I)V

    return-void
.end method

.method private setCheckedBox(I)V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    const/16 v3, 0x15

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 213
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    return-void
.end method

.method private setDefaultFolderGone()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setVisibility(I)V

    return-void
.end method

.method private setDefaultFolderVisible()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerSelectDefaultFolderBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setVisibility(I)V

    return-void
.end method

.method private setFolderPickerDarkModeColor()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerDragLineDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetWallpaperBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetDefaultFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetBigFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetBigFolderBg2x2_9(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 367
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerOk:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTitleColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerCancel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTitleColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTitleColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTitleColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerSummaryText(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setLauncherBlurWithAnim()V
    .locals 3

    .line 626
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/16 v2, 0x118

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterFolderPicker(Lcom/miui/home/launcher/Launcher;FZI)V

    return-void
.end method

.method private setNavigationBarOrStatusBarColor(Landroid/content/Context;)V
    .locals 1

    .line 685
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 688
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method

.method private setNavigationBarOrStatusBarTransparent(Landroid/content/Context;)V
    .locals 2

    .line 693
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    const v1, 0x7f0605db

    if-eqz v0, :cond_0

    .line 694
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 696
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method

.method public static show(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    .line 101
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v0, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/folder/-$$Lambda$FolderSheet$2NNobqWbcYT9JXh_r6Rv6qUg0u4;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/launcher/folder/-$$Lambda$FolderSheet$2NNobqWbcYT9JXh_r6Rv6qUg0u4;-><init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V

    const p0, 0x7f0d007c

    invoke-virtual {v0, p0, v1, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method private trackQuitFolderPicker()V
    .locals 6

    .line 680
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getFolderGridSize()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSizeByType()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v3, "false"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 681
    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictPreferenceKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v5}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v5

    .line 680
    invoke-static {v2, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBeforeAppPredictButtonStatus:I

    if-ne v2, p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "true"

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackQuitFolderPicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSelectBorderLayoutParams()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V

    .line 151
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V

    .line 152
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V

    return-void
.end method

.method private updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V
    .locals 0

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 157
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    invoke-virtual {p1, p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getFolderSheetBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 609
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080234

    goto :goto_0

    :cond_0
    const v0, 0x7f08023b

    .line 610
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080233

    goto :goto_1

    :cond_1
    const v1, 0x7f08023a

    .line 608
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderSheetBigFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f08028b

    const v1, 0x7f08028c

    .line 600
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderSheetDefaultFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f080297

    const v1, 0x7f080298

    .line 596
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderSheetWallpaperBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f0802aa

    const v1, 0x7f0802a9

    .line 592
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationBarColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f0600f0

    const v1, 0x7f0600ef

    .line 614
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorWithTheme(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method protected handleClose(Z)V
    .locals 1

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mIsOpen:Z

    .line 289
    sput-boolean p1, Lcom/miui/home/launcher/folder/FolderSheet;->isFolderSheetViewShow:Z

    .line 290
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010037

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setAnimation(Landroid/view/animation/Animation;)V

    .line 292
    new-instance v0, Lcom/miui/home/launcher/folder/FolderSheet$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/FolderSheet$1;-><init>(Lcom/miui/home/launcher/folder/FolderSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 306
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 307
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 308
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleLauncherIconVisible(Z)V

    .line 309
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->restoreLauncherBlurWithAnim()V

    .line 310
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->trackQuitFolderPicker()V

    return-void
.end method

.method public initListener(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    const v0, 0x7f0a016e

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerBody:Landroid/widget/ScrollView;

    const v0, 0x7f0a016f

    .line 164
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerCancel:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0171

    .line 166
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerOk:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0179

    .line 168
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerTitle:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0170

    .line 170
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a0178

    .line 172
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    const v0, 0x7f0a0100

    .line 173
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderName:Lmiuix/visual/check/VisualCheckedTextView;

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderName:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-virtual {v0, p0}, Lmiuix/visual/check/VisualCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a008f

    .line 175
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_4:Lmiuix/visual/check/VisualCheckedTextView;

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_4:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-virtual {v0, p0}, Lmiuix/visual/check/VisualCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0090

    .line 177
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_9:Lmiuix/visual/check/VisualCheckedTextView;

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_9:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-virtual {v0, p0}, Lmiuix/visual/check/VisualCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00ff

    .line 179
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0, p0}, Lmiuix/visual/check/VisualCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a008d

    .line 181
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0, p0}, Lmiuix/visual/check/VisualCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0101

    .line 183
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0091

    .line 185
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0175

    .line 187
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const v0, 0x7f0a0174

    .line 188
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const v0, 0x7f0a008e

    .line 189
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0, p0}, Lmiuix/visual/check/VisualCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0092

    .line 191
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0173

    .line 193
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const v0, 0x7f0a0177

    .line 194
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    const v0, 0x7f0a0176

    .line 195
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    const v0, 0x7f0a016b

    .line 196
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a016d

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictTitle:Landroid/widget/TextView;

    const v0, 0x7f0a016c

    .line 199
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0070

    .line 200
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 203
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBeforeAppPredictButtonStatus:I

    const v0, 0x7f0a00fe

    .line 204
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderBorderLayout:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    const v0, 0x7f0a008b

    .line 205
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderBorderLayout2x2_4:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    const v0, 0x7f0a008c

    .line 206
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderBorderLayout3x3_9:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    .line 207
    iget p1, p1, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 669
    invoke-super {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->onAttachedToWindow()V

    .line 670
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 336
    invoke-super {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->onBackPressed()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    .line 433
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 435
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->updateAppPredictList()Z

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v5, 0x1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    .line 439
    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v7, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v8

    iget-object v10, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v11, 0x1

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a016b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a016f

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0171

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 239
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 240
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderVisible()V

    .line 242
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 243
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setEnabled(Z)V

    .line 244
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    const/4 p1, 0x2

    .line 245
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 246
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    goto/16 :goto_1

    .line 263
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 264
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 265
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_9()V

    .line 266
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 267
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setEnabled(Z)V

    .line 268
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->internationalNotSupportAppPredict()V

    const/16 p1, 0x16

    .line 269
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 270
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    goto :goto_1

    .line 251
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 252
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_4()V

    .line 254
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 255
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setEnabled(Z)V

    .line 256
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->internationalNotSupportAppPredict()V

    const/16 p1, 0x15

    .line 257
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 258
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    goto :goto_1

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->switchAppPredict(Z)V

    .line 224
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->addAppPredictListener(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)V

    goto :goto_0

    .line 227
    :cond_1
    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->removeAppPredictListener(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)Z

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    .line 231
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleClose(Z)V

    .line 232
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget p1, p1, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    if-eq p1, v0, :cond_4

    .line 233
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->convertIconSize(I)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleClose(Z)V

    goto :goto_1

    .line 273
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a008d
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00ff
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDarkModeChange()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerSelectDefaultFolderBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerDarkModeColor()V

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleSlidingButtonColorDarkModeSyncInternal()V

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderName:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_4:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_9:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderBorderLayout:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v1}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v1

    const v2, 0x7f08023d

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;->resetBackGroundForDarkModeChange(IZ)V

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderBorderLayout2x2_4:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v1}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;->resetBackGroundForDarkModeChange(IZ)V

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderBorderLayout3x3_9:Lcom/miui/home/launcher/view/BorderLayoutModeChangable;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;->resetBackGroundForDarkModeChange(IZ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 675
    invoke-super {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->onDetachedFromWindow()V

    .line 676
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method public onScreenSizeChange()V
    .locals 0

    .line 642
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerLocation()V

    .line 643
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setLauncherBlurWithAnim()V

    .line 644
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 543
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    .line 544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    sget-boolean p2, Lcom/miui/home/launcher/folder/FolderSheet;->isFolderSheetViewShow:Z

    if-eqz p2, :cond_5

    .line 567
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->moveY:F

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->closeOrOpenPickerByTouch(FI)V

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->moveY:F

    .line 553
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->moveY:F

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->downY:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->eventY:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 555
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->downY:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->eventY:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setTranslationY(F)V

    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setTranslationY(F)V

    goto :goto_0

    .line 562
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->closeOrOpenPickerByTouch(FI)V

    goto :goto_0

    .line 546
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->downY:F

    .line 547
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->eventY:F

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mTranslationY:F

    :cond_5
    :goto_0
    return v2
.end method

.method public setFolderPickerLocation()V
    .locals 4

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070179

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->setNavigationBarOrStatusBarTransparent(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 135
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 136
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->setNavigationBarOrStatusBarColor(Landroid/content/Context;)V

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 143
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerBody:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p0

    .line 144
    invoke-virtual {v0, v1, v2, v1, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method
