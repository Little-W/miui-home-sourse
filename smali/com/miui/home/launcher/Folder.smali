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
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


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
.field private final TAG:Ljava/lang/String;

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

.field private mNewInstallIconScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOpenCloseAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mOpenCloseScaleX:F

.field private mOpenCloseScaleY:F

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

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 272
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "Folder"

    .line 90
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 100
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 102
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    .line 103
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    .line 104
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    .line 150
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mItemIconToPreviewIconScale:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 151
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 152
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    .line 153
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    .line 154
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 159
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    .line 392
    new-instance p2, Lcom/miui/home/launcher/Folder$5;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$5;-><init>(Lcom/miui/home/launcher/Folder;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 428
    new-instance p2, Lcom/miui/home/launcher/Folder$6;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$6;-><init>(Lcom/miui/home/launcher/Folder;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    .line 273
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Folder;)Landroid/widget/EditText;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onOpenAnimationFinished()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScaleX:F

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScaleY:F

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->isBigFolder()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Folder;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/home/launcher/Folder;)Landroid/content/Context;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/home/launcher/Folder;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/NonOverlapLinearLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Folder;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallIconScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/Folder;F)F
    .locals 0

    .line 86
    iput p1, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Folder;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Folder;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->tellItemIconIsOnAnimation(Z)V

    return-void
.end method

.method private checkChildAnimEnable()Z
    .locals 1

    .line 1176
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-nez p0, :cond_1

    .line 1177
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v0, "accessibility"

    .line 1178
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private clearRenameEditFocusState()V
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1164
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private getEditText()Ljava/lang/CharSequence;
    .locals 3

    .line 795
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

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 797
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    return-object p0
.end method

.method private is2x2_4BigFolder()Z
    .locals 2

    .line 482
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 483
    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v1, 0x15

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isBigFolder()Z
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz p0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isFoldDeviceAndNoWordModel()Z
    .locals 0

    .line 1182
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onCloseAnimationFinished()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->onBinded(Z)V

    .line 762
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 765
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 766
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 768
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 769
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentInvisible()V

    .line 770
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->releaseFakeIconBitmap()V

    return-void
.end method

.method private onOpenAnimationFinished()V
    .locals 2

    .line 782
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setScaleX(F)V

    .line 783
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setScaleY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 784
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setBackgroundAlpha(F)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setupContentAlpha(F)V

    .line 786
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onFolderOpenAnimationFinish()V

    .line 787
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->focusTalkBackToView(Landroid/view/View;)V

    .line 790
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentVisible()V

    return-void
.end method

.method private reCalcContentPosition()V
    .locals 6

    .line 734
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 735
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v2, p0, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 736
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    aget v4, v2, v3

    float-to-int v4, v4

    aget v5, v2, v1

    float-to-int v5, v5

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    aget v1, v3, v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    .line 737
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 736
    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 738
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderGridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 740
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    .line 743
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 744
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    .line 748
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setPivotX(F)V

    .line 749
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setPivotY(F)V

    return-void
.end method

.method private releaseFakeIconBitmap()V
    .locals 2

    const-string v0, "Folder"

    const-string v1, "releaseFakeIconBitmap"

    .line 777
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private resetItemWhenDropBackToFolder(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 548
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 549
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 550
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 551
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->resetCheckBox()V

    .line 552
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->showItemTitle()V

    .line 553
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 554
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private resetItemWhenFolderDisappeared(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 558
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 561
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 563
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private setEnableContent(Z)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setEnabled(Z)V

    .line 1007
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->setClickable(Z)V

    .line 1008
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setLongClickable(Z)V

    return-void
.end method

.method private setFakeIcon(Z)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewContainerSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "Folder"

    const-string v1, "setFakeIcon"

    .line 684
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 686
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 687
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    const p1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 689
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setViewLayoutParamsOfSoscSplit()V
    .locals 6

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 198
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/miui/home/launcher/FolderGridView;->setPadding(IIII)V

    .line 200
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 202
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->setVerticalSpacing(I)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07019e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07019c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 205
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 210
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070198

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v4, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private showOrHideSoftInput(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->showKeyboardAsync(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method

.method private tellItemIconIsOnAnimation(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1117
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    .line 1119
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

    .line 918
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

    .line 920
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderGridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 921
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget p2, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v0, p2

    .line 922
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Folder$7;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$7;-><init>(Lcom/miui/home/launcher/Folder;)V

    .line 923
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 934
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 936
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private updateOpenCloseScale()V
    .locals 4

    .line 652
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

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScaleX:F

    .line 653
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScaleX:F

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScaleY:F

    .line 654
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->isBigFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 657
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v1

    mul-int/lit8 v2, v1, 0x3

    .line 658
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 659
    iget v2, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScaleY:F

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mNewInstallIconScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public afterDragStart()V
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->afterDragStart()V

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 0

    .line 1125
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->beforeDragStart(I)V

    return-void
.end method

.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 4

    .line 821
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 822
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->onBinded(Z)V

    .line 823
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 828
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f12013c

    const v3, 0x7f12013d

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 829
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f12013e

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToNoWord(Landroid/content/Context;Landroid/view/View;I)V

    .line 831
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToNoWord(Landroid/content/Context;Landroid/view/View;I)V

    .line 832
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setViewLayoutParamsOfSoscSplit()V

    goto :goto_1

    .line 836
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetViewsLayoutParams()V

    .line 841
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 843
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_2

    .line 845
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

    .line 863
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 866
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableInteractive(Z)V
    .locals 1

    .line 1077
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->setEnableContent(Z)V

    .line 1078
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1079
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setEnabled(Z)V

    return-void
.end method

.method public exitEditState()V
    .locals 2

    .line 753
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 755
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 756
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Folder$rLwrJ_g4oJ-gbZrtXVoGYw7caFY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Folder$rLwrJ_g4oJ-gbZrtXVoGYw7caFY;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getContainerId()J
    .locals 2

    .line 575
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    return-wide v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    return-object p0
.end method

.method public getContent()Lcom/miui/home/launcher/FolderGridView;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    return-object p0
.end method

.method public getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method public getFakeIcon()Landroid/widget/ImageView;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getFolderSize()I
    .locals 0

    .line 1088
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    return p0
.end method

.method public getInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method public getOpenCloseAnimatorListenerAdapter()Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method public getRecommendAppsSwitch()Lcom/miui/home/launcher/NonOverlapLinearLayout;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    return-object p0
.end method

.method public getTitle()Landroid/view/View;
    .locals 0

    .line 1141
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getUpdateListener()Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    return-object p0
.end method

.method public hasNewInstallApps()Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->hasNewInstalledApp()Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->invalidate()V

    .line 998
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public isEditAnimatorShowing()Z
    .locals 0

    .line 1109
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    return p0
.end method

.method public isEditing()Z
    .locals 0

    .line 1002
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    return p0
.end method

.method public isRenameEditVisible()Z
    .locals 0

    .line 1229
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$exitEditState$1$Folder()V
    .locals 1

    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method public synthetic lambda$onClose$0$Folder()V
    .locals 1

    const/4 v0, 0x0

    .line 730
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method public loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 188
    invoke-virtual {p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setViewLayoutParamsOfSoscSplit()V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetViewsLayoutParams()V

    :goto_0
    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a038f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 856
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    :goto_0
    return-void
.end method

.method onClose(ZLjava/lang/Runnable;)V
    .locals 3

    .line 696
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 700
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 701
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 702
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 703
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->checkChildAnimEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 704
    invoke-virtual {p0, v1, v1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 705
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 707
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 709
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080238

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/FolderGridView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->reCalcContentPosition()V

    .line 713
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz p2, :cond_3

    .line 714
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {p2}, Lcom/miui/home/launcher/Folder$FolderCallback;->onClose()V

    if-nez p1, :cond_1

    .line 720
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    goto :goto_0

    .line 722
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->setFakeIcon(Z)V

    .line 723
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 724
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->updateOpenCloseScale()V

    .line 726
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 727
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 730
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Folder$qhRThDu4lbKiuqM2GP7IOByDnCY;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Folder$qhRThDu4lbKiuqM2GP7IOByDnCY;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 716
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p2, 0x0

    .line 567
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 569
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    :cond_0
    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 537
    iget-object v1, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    check-cast v1, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->isPreRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 541
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

    if-eqz v1, :cond_1

    .line 542
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/Folder;->resetItemWhenDropBackToFolder(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;)V

    :cond_1
    return-void

    .line 538
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->resetItemWhenFolderDisappeared(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 296
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setChildrenDrawingOrderEnabled(Z)V

    const v0, 0x7f0a0169

    .line 298
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderGridView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const v0, 0x7f0a0166

    .line 299
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0085

    .line 300
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a038f

    .line 304
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a016a

    .line 306
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    const v0, 0x7f0a02bc

    .line 307
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0a02ae

    .line 309
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/NonOverlapLinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const v1, 0x7f080235

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0168

    .line 315
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104e9

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$1;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$2;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$3;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    new-instance v0, Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;-><init>(Lcom/miui/home/launcher/NewInstallIconContainer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    .line 363
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    new-instance v1, Lcom/miui/home/launcher/Folder$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$4;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

    .line 1013
    iget-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p1, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1021
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

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

    .line 1030
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    .line 1035
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p1, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 1039
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1040
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return p3

    .line 1044
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->onLongClick(Landroid/view/View;)Z

    :cond_3
    :goto_0
    return p3
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 498
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 500
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView;->getRight()I

    move-result p1

    .line 501
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderGridView;->getLeft()I

    move-result p2

    .line 502
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreen(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 503
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderGridView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    .line 504
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderGridView;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->is2x2_4BigFolder()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 507
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p1, p2

    .line 510
    :cond_1
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mFakeIcon:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p4}, Lcom/miui/home/launcher/FolderGridView;->getTop()I

    move-result p4

    iget-object p5, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p5}, Lcom/miui/home/launcher/FolderGridView;->getTop()I

    move-result p5

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p5, p0

    invoke-virtual {p3, p2, p4, p1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DragMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 1147
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DragMessage;->isDragging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->showOrHideFolderBorderLine(Z)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/EnterRecentFromAppEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1158
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->clearRenameEditFocusState()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureStartEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1153
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->clearRenameEditFocusState()V

    return-void
.end method

.method onOpen()V
    .locals 5

    .line 612
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    const/4 v0, 0x0

    .line 613
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 614
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 615
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xff

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 616
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->checkChildAnimEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 618
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setVisibility(I)V

    .line 620
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08023e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/FolderGridView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 623
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->requestFocus()Z

    .line 625
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_2

    .line 626
    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->onOpen()V

    .line 627
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    .line 631
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->setAlpha(F)V

    .line 632
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setBackgroundAlpha(F)V

    .line 634
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 635
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->reCalcContentPosition()V

    .line 636
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->updateOpenCloseScale()V

    .line 638
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewIconHeight()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewIconHeight()F

    move-result v0

    .line 640
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v3, p0, Lcom/miui/home/launcher/Folder;->mOpenCloseScaleX:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mItemIconToPreviewIconScale:F

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    .line 645
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Folder;->setFakeIcon(Z)V

    .line 646
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 647
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 1224
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetViewsLayoutParams()V

    .line 1225
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->onScreenSizeChanged()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 184
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Folder;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 4

    .line 1097
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1102
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1103
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1104
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    const v1, 0x7f060122

    goto :goto_2

    :cond_2
    const v1, 0x7f060123

    :goto_2
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 291
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 580
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public resetViewsLayoutParams()V
    .locals 7

    .line 1186
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->isFoldDeviceAndNoWordModel()Z

    move-result v0

    .line 1187
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1188
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070182

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1189
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1190
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->requestLayout()V

    .line 1192
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1193
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1194
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070185

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    .line 1193
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/miui/home/launcher/FolderGridView;->setPadding(IIII)V

    .line 1195
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1196
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070187

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1197
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070180

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1198
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->requestLayout()V

    .line 1199
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_0

    const v3, 0x7f0701a1

    goto :goto_0

    :cond_0
    const v3, 0x7f0701a0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderGridView;->setHorizontalSpacing(I)V

    .line 1200
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    const v3, 0x7f0701a4

    goto :goto_1

    :cond_1
    const v3, 0x7f0701a2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderGridView;->setVerticalSpacing(I)V

    .line 1202
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1203
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1204
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07019c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1202
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1206
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1207
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070190

    const v4, 0x7f07018e

    if-eqz v0, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1208
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 1209
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f070197

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1211
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1212
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1213
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070191

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1214
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 1215
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1216
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1215
    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1218
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1219
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1220
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    .line 1060
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1061
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1084
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAlpha(F)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setFolderBackgroundViewPaddingTop(I)V
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public setFolderHeaderPaddingBottom(I)V
    .locals 0

    .line 1137
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 595
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderGridView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public setOpenedScale(F)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    return-void
.end method

.method public setupContentAlpha(F)V
    .locals 4

    const/4 v0, 0x0

    .line 1066
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1068
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getIsDragging(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1071
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showEditPanel(ZZ)V
    .locals 4

    if-nez p1, :cond_0

    .line 870
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 872
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderGridView;->setImportantForAccessibility(I)V

    .line 881
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-ne v1, p1, :cond_2

    goto/16 :goto_3

    .line 885
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getEditText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 887
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRename(Lcom/miui/home/launcher/FolderInfo;)V

    .line 888
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 890
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    .line 891
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Folder;->showRecommendAppsSwitch(ZZ)V

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 895
    iget-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    if-eqz p2, :cond_4

    .line 896
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 899
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 900
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 902
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setEnabled(Z)V

    return-void

    .line 905
    :cond_5
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    xor-int/lit8 p2, p1, 0x1

    .line 906
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Folder;->setEnableContent(Z)V

    if-eqz p1, :cond_6

    .line 908
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 910
    :cond_6
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    .line 911
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/FolderGridView;->setAlpha(F)V

    .line 913
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method showOrHideFolderBorderLine(Z)V
    .locals 4

    .line 1169
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    .line 1170
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1171
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

    .line 1172
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showRecommendAppsSwitch(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 942
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

    .line 945
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Folder;->transFolderGrid(ZZ)V

    .line 948
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 949
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/FolderCling;->setDrawChildrenReverse(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 950
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 972
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->showOrHideRecommendScreen(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 974
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setVisibility(I)V

    .line 975
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setAlpha(F)V

    .line 976
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget p2, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_RECOMMEND_DURATION:I

    int-to-long v0, p2

    .line 977
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Folder$10;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$10;-><init>(Lcom/miui/home/launcher/Folder;)V

    .line 978
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 985
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 987
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setVisibility(I)V

    .line 988
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setAlpha(F)V

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 952
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget p2, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_RECOMMEND_DURATION:I

    int-to-long v0, p2

    .line 953
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Folder$9;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$9;-><init>(Lcom/miui/home/launcher/Folder;)V

    .line 954
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Folder$8;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$8;-><init>(Lcom/miui/home/launcher/Folder;)V

    .line 960
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 967
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 969
    :cond_6
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 4

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1050
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v2, p0, v3}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    .line 1051
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 1052
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->addDragOverItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method protected updateAppearance()V
    .locals 4

    .line 803
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getEditText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 805
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 815
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateFolderClingPaddingTop()V
    .locals 4

    .line 668
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

    .line 669
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 670
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    .line 671
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 672
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 673
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v0, v3

    .line 676
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method
