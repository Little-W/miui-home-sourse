.class public Lcom/miui/home/launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/NewInstallIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Folder$FolderCallback;
    }
.end annotation


# static fields
.field public static DEFAULT_FOLDER_CLOSE_DURATION:I = 0xe6

.field public static DEFAULT_FOLDER_EDITING_DURATION:I = 0x12c

.field public static DEFAULT_FOLDER_NAME:Ljava/lang/String; = null

.field public static DEFAULT_FOLDER_OPEN_DURATION:I = 0xe6

.field public static DEFAULT_FOLDER_RECOMMEND_DURATION:I = 0xc8


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field protected mBackgroundView:Landroid/view/ViewGroup;

.field private mBorderLineShow:Z

.field private mClosing:Z

.field protected mContent:Lcom/miui/home/launcher/FolderGridView;

.field private mContentBackground:Landroid/graphics/drawable/Drawable;

.field private mContentRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDefaultUnnamedFolderName:Ljava/lang/String;

.field protected mDragController:Lcom/miui/home/launcher/DragController;

.field protected mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

.field private mEditAnimator:Landroid/animation/ValueAnimator;

.field private mEditAnimatorShowing:Z

.field private mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mEnableChildViewChangeInFolderAnimation:Z

.field private mEnableShowFolderContentBg:Z

.field private mFakeIcon:Landroid/widget/ImageView;

.field private mFolderGrid:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mIsEditing:Z

.field private mItemIconToPreviewIconScale:F

.field private mLastOpenedScale:F

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOpenCloseAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mOpenCloseScale:F

.field private mOpenedScale:F

.field private mPreviewPosRect:Landroid/graphics/Rect;

.field private mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

.field private mRenameEdit:Landroid/widget/EditText;

.field protected mTitleText:Landroid/widget/TextView;

.field private mTmpPos:[F

.field private mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

.field private mVisionCenterX:F

.field private mVisionCenterY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 85
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 88
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 90
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    .line 91
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    .line 92
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    .line 134
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mItemIconToPreviewIconScale:F

    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 136
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    .line 137
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    .line 138
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 143
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    .line 308
    new-instance p2, Lcom/miui/home/launcher/Folder$4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$4;-><init>(Lcom/miui/home/launcher/Folder;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 335
    new-instance p2, Lcom/miui/home/launcher/Folder$5;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$5;-><init>(Lcom/miui/home/launcher/Folder;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Folder;)Landroid/widget/EditText;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onOpenAnimationFinished()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 75
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScale:F

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 75
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 75
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/Folder;)Landroid/view/View;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/NonOverlapLinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Folder;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Folder;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 75
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/Folder;F)F
    .locals 0

    .line 75
    iput p1, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 75
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Folder;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->tellItemIconIsOnAnimation(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    return p0
.end method

.method private checkChildAnimEnable()Z
    .locals 2

    .line 973
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-nez v0, :cond_1

    .line 974
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "accessibility"

    .line 975
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getEditText()Ljava/lang/CharSequence;
    .locals 3

    .line 613
    sget-object v0, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 615
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    return-object v0
.end method

.method private isFoldDeviceAndNoWordModel()Z
    .locals 1

    .line 979
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$exitEditState$1(Lcom/miui/home/launcher/Folder;)V
    .locals 1

    const/4 v0, 0x0

    .line 582
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method public static synthetic lambda$onClose$0(Lcom/miui/home/launcher/Folder;)V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method private onCloseAnimationFinished()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->onBinded(Z)V

    .line 588
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 591
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 594
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 595
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentInvisible()V

    return-void
.end method

.method private onOpenAnimationFinished()V
    .locals 2

    .line 599
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setScaleX(F)V

    .line 600
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setScaleY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 601
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setBackgroundAlpha(F)V

    .line 602
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setupOutOfPreviewContent(F)V

    .line 603
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onFolderOpenAnimationFinish()V

    .line 604
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->focusTalkBackToView(Landroid/view/View;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentVisible()V

    return-void
.end method

.method private setEnableContent(Z)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setEnabled(Z)V

    .line 809
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setClickable(Z)V

    .line 810
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setLongClickable(Z)V

    return-void
.end method

.method private setFakeIcon()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewContainerSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 537
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showOrHideSoftInput(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->showKeyboardAsync(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method

.method private tellItemIconIsOnAnimation(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 924
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ItemIcon;->onAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private transFolderGrid(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 732
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 734
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderGridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 735
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget p2, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v0, p2

    .line 736
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 737
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 739
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/FolderGridView;->setTranslationY(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public afterDragStart()V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->afterDragStart()V

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->beforeDragStart(I)V

    return-void
.end method

.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 4

    .line 639
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 640
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->onBinded(Z)V

    .line 641
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 646
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f1100c6

    const v3, 0x7f1100c7

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 647
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f1100c8

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToNoWord(Landroid/content/Context;Landroid/view/View;I)V

    .line 649
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToNoWord(Landroid/content/Context;Landroid/view/View;I)V

    .line 650
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 651
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f07012e

    goto :goto_1

    :cond_1
    const v2, 0x7f07012d

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 652
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateViewsLayout()V

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 659
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_2

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    :goto_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 679
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableInteractive(Z)V
    .locals 1

    .line 885
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->setEnableContent(Z)V

    .line 886
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 887
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setEnabled(Z)V

    return-void
.end method

.method public exitEditState()V
    .locals 2

    .line 579
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 582
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Folder$rLwrJ_g4oJ-gbZrtXVoGYw7caFY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Folder$rLwrJ_g4oJ-gbZrtXVoGYw7caFY;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getContainerId()J
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    return-wide v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    return-object v0
.end method

.method public getContent()Lcom/miui/home/launcher/FolderGridView;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    return-object v0
.end method

.method public getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getFolderSize()I
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 899
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    return v0
.end method

.method public getInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object v0
.end method

.method public getOpenCloseAnimatorListenerAdapter()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method public getRecommendAppsSwitch()Lcom/miui/home/launcher/NonOverlapLinearLayout;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    return-object v0
.end method

.method public getTitle()Landroid/view/View;
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpdateListener()Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    return-object v0
.end method

.method public hasNewInstallApps()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->hasNewInstalledApp()Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->invalidate()V

    .line 800
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public isEditAnimatorShowing()Z
    .locals 1

    .line 916
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    return v0
.end method

.method public isEditing()Z
    .locals 1

    .line 804
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02a6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 669
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    :goto_0
    return-void
.end method

.method onClose(ZLjava/lang/Runnable;)V
    .locals 3

    .line 546
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 550
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 551
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 552
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 553
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->checkChildAnimEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 554
    invoke-virtual {p0, v1, v1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 555
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 557
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 559
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz p2, :cond_3

    .line 560
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {p2}, Lcom/miui/home/launcher/Folder$FolderCallback;->onClose()V

    if-nez p1, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    goto :goto_0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setFakeIcon()V

    .line 569
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 571
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 572
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 575
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Folder$qhRThDu4lbKiuqM2GP7IOByDnCY;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Folder$qhRThDu4lbKiuqM2GP7IOByDnCY;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 562
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p2, 0x0

    .line 428
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    :cond_0
    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v1, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    check-cast v1, Lcom/miui/home/launcher/FolderIcon;

    .line 411
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->isPreRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 419
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 420
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 421
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_1

    .line 412
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 413
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 424
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 230
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setChildrenDrawingOrderEnabled(Z)V

    const v0, 0x7f0a0115

    .line 232
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderGridView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const v0, 0x7f0a0113

    .line 233
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0071

    .line 234
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a02a6

    .line 238
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0117

    .line 240
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    const v0, 0x7f0a01f8

    .line 241
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0a01eb

    .line 243
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/NonOverlapLinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const v1, 0x7f08013f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0116

    .line 249
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100463

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$1;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$2;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$3;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 296
    new-instance v0, Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;-><init>(Lcom/miui/home/launcher/NewInstallIconContainer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 815
    iget-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p1, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 823
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 832
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    .line 836
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return p3

    .line 840
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p1, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez p1, :cond_2

    goto :goto_0

    .line 844
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 845
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return p3

    .line 849
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->onLongClick(Landroid/view/View;)Z

    return p3

    :cond_4
    :goto_0
    return p3
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 382
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 383
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderGridView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderGridView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p4}, Lcom/miui/home/launcher/FolderGridView;->getRight()I

    move-result p4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getHeight()I

    move-result p5

    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DragMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 954
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DragMessage;->isDragging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->showOrHideFolderBorderLine(Z)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureStartEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 960
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 961
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method onOpen()V
    .locals 6

    .line 473
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 475
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 476
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xff

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 477
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->checkChildAnimEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 479
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 482
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->requestFocus()Z

    .line 484
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_3

    .line 485
    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->onOpen()V

    .line 486
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    .line 490
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/FolderGridView;->setAlpha(F)V

    .line 491
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->setBackgroundAlpha(F)V

    .line 493
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, v3, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-interface {v3, v4}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 494
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    aput v1, v3, v2

    aput v1, v3, v0

    .line 495
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v1, p0, v3, v0, v0}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 496
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    aget v4, v3, v0

    float-to-int v4, v4

    aget v5, v3, v2

    float-to-int v5, v5

    aget v0, v3, v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    aget v2, v3, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    .line 497
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 496
    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScale:F

    .line 500
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewIconHeight()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewIconHeight()F

    move-result v0

    .line 502
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mItemIconToPreviewIconScale:F

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    .line 507
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    .line 508
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    .line 509
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setPivotX(F)V

    .line 510
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setPivotY(F)V

    .line 511
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setFakeIcon()V

    .line 512
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 1019
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateViewsLayout()V

    .line 1020
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->onScreenSizeChanged()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 905
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 910
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 441
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 866
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 892
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAlpha(F)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setFolderBackgroundViewPaddingTop(I)V
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public setFolderHeaderPaddingBottom(I)V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 455
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 456
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderGridView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public setOpenedScale(F)V
    .locals 0

    .line 396
    iput p1, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    return-void
.end method

.method public setupOutOfPreviewContent(F)V
    .locals 5

    .line 871
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewCount()I

    move-result v0

    .line 872
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 873
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lt v1, v0, :cond_1

    .line 874
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 876
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ShortcutsAdapter;->getIsDragging(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 879
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showEditPanel(ZZ)V
    .locals 5

    if-nez p1, :cond_0

    .line 683
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 685
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-nez p1, :cond_1

    .line 689
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/FolderGridView;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/FolderGridView;->setImportantForAccessibility(I)V

    .line 694
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-ne v2, p1, :cond_2

    goto/16 :goto_3

    .line 698
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getEditText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 700
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRename(Lcom/miui/home/launcher/FolderInfo;)V

    .line 701
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 703
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    .line 704
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 705
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Folder;->showRecommendAppsSwitch(ZZ)V

    :cond_4
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 709
    iget-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    if-eqz p2, :cond_5

    .line 710
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 713
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 714
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 716
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/FolderGridView;->setEnabled(Z)V

    return-void

    .line 719
    :cond_6
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    xor-int/lit8 p2, p1, 0x1

    .line 720
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Folder;->setEnableContent(Z)V

    if-eqz p1, :cond_7

    .line 722
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 724
    :cond_7
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    .line 725
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/FolderGridView;->setAlpha(F)V

    .line 727
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method showOrHideFolderBorderLine(Z)V
    .locals 4

    .line 966
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    .line 967
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 968
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    if-eqz p1, :cond_0

    const/16 v3, 0xff

    :cond_0
    const/4 p1, 0x1

    aput v3, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 969
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showRecommendAppsSwitch(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 745
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendSwitchShow()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    return-void

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 749
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Folder;->transFolderGrid(ZZ)V

    .line 751
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 752
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/FolderCling;->setDrawChildrenReverse(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 753
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 776
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setVisibility(I)V

    .line 777
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setAlpha(F)V

    .line 778
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget p2, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_RECOMMEND_DURATION:I

    int-to-long v0, p2

    .line 779
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Folder$8;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$8;-><init>(Lcom/miui/home/launcher/Folder;)V

    .line 780
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 787
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 789
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setVisibility(I)V

    .line 790
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setAlpha(F)V

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 755
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget p2, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_RECOMMEND_DURATION:I

    int-to-long v0, p2

    .line 756
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Folder$7;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$7;-><init>(Lcom/miui/home/launcher/Folder;)V

    .line 757
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Folder$6;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$6;-><init>(Lcom/miui/home/launcher/Folder;)V

    .line 763
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 770
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 772
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 4

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 855
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v2, p0, v3}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    .line 856
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 857
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderGridView;->addDragOverItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method protected updateAppearance()V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getEditText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 633
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateFolderClingPaddingTop()V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 522
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 523
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    .line 524
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 525
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 526
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v0, v3

    .line 529
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public updateViewsLayout()V
    .locals 7

    .line 983
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->isFoldDeviceAndNoWordModel()Z

    move-result v0

    .line 984
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 985
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 986
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 987
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 989
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 990
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 989
    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/miui/home/launcher/FolderGridView;->setPadding(IIII)V

    .line 991
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 992
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 993
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 994
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/FolderGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_0

    const v3, 0x7f070140

    goto :goto_0

    :cond_0
    const v3, 0x7f07013f

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderGridView;->setHorizontalSpacing(I)V

    .line 996
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    const v3, 0x7f070142

    goto :goto_1

    :cond_1
    const v3, 0x7f070141

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderGridView;->setVerticalSpacing(I)V

    .line 998
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 999
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07013e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1000
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 998
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1002
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1003
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070134

    const v5, 0x7f070133

    if-eqz v0, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1004
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1007
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1008
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070135

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1009
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1011
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1010
    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1013
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1014
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1015
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
