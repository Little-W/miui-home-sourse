.class Lmiui/home/lib/dialog/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;,
        Lmiui/home/lib/dialog/AlertController$CheckedItemAdapter;,
        Lmiui/home/lib/dialog/AlertController$ButtonInfo;,
        Lmiui/home/lib/dialog/AlertController$AlertParams;,
        Lmiui/home/lib/dialog/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private mComment:Ljava/lang/CharSequence;

.field private mCommentView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCreateThread:Ljava/lang/Thread;

.field private mCustomTitleView:Landroid/view/View;

.field private mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private mDialogContentLayout:I

.field private mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

.field private mDimBg:Landroid/view/View;

.field private mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

.field mEnableEnterAnim:Z

.field private mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/home/lib/dialog/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraImeMargin:I

.field private mFakeLandScreenMinorSize:I

.field mHandler:Landroid/os/Handler;

.field mHapticFeedbackEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mInflatedView:Landroid/view/View;

.field private mInsetsAnimationPlayed:Z

.field private mIsChecked:Z

.field private mIsDebugEnabled:Z

.field private mIsDialogAnimating:Z

.field private mIsEnableImmersive:Z

.field private mIsFromRebuild:Z

.field private mLandscapePanel:Z

.field private final mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

.field private mLayoutReloadListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogLayoutReloadListener;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mLiteVersion:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mPanelAndImeMargin:I

.field private final mPanelMaxWidth:I

.field private final mPanelMaxWidthLand:I

.field private mPanelOriginLeftMargin:I

.field private mPanelOriginRightMargin:I

.field private mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

.field private mPreferLandscape:Z

.field private mRootViewSize:Landroid/graphics/Point;

.field private mRootViewSizeDp:Landroid/graphics/Point;

.field private mScreenMinorSize:I

.field private mScreenOrientation:I

.field private mScreenRealSize:Landroid/graphics/Point;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

.field private mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

.field private final mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTreatAsLandConfig:Z

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 4

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    const/4 v1, -0x1

    .line 133
    iput v1, p0, Lmiui/home/lib/dialog/AlertController;->mExtraImeMargin:I

    .line 138
    new-instance v2, Lmiui/home/lib/dialog/AlertController$1;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$1;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 171
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    .line 181
    iput v1, p0, Lmiui/home/lib/dialog/AlertController;->mCheckedItem:I

    const/4 v1, 0x1

    .line 201
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    .line 202
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    .line 206
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    .line 215
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 216
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 217
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 218
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 224
    new-instance v2, Lmiui/home/lib/dialog/AlertController$2;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$2;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    .line 249
    new-instance v2, Lmiui/home/lib/dialog/AlertController$3;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$3;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 1161
    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    .line 319
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 321
    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    .line 322
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mEnableEnterAnim:Z

    .line 323
    new-instance p3, Lmiui/home/lib/dialog/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lmiui/home/lib/dialog/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    .line 324
    new-instance p3, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-direct {p3, p0}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    .line 325
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result p3

    xor-int/2addr p3, v1

    iput-boolean p3, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    .line 327
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 329
    sget-object v2, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    invoke-virtual {p1, p3, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 332
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mAlertDialogLayout:I

    .line 333
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mListLayout:I

    .line 334
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mMultiChoiceItemLayout:I

    .line 335
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 336
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mSingleChoiceItemLayout:I

    .line 337
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mListItemLayout:I

    .line 338
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_showTitle:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiui/home/lib/dialog/AlertController;->mShowTitle:Z

    .line 340
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 347
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isMiuiLegacyNotch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    new-array p2, v1, [Ljava/lang/Class;

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p3, p2, v0

    new-array p3, v1, [Ljava/lang/Object;

    const/16 v1, 0x300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "addExtraFlags"

    invoke-static {p1, v0, p2, p3}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    .line 351
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidth:I

    .line 352
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_max_width_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    .line 354
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 355
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImeDebugEnabled()Z

    return-void
.end method

.method static synthetic access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;
    .locals 0

    .line 107
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    return-object p0
.end method

.method static synthetic access$1000(Lmiui/home/lib/dialog/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lmiui/home/lib/dialog/AlertController;->updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$102(Lmiui/home/lib/dialog/AlertController;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDialogAnimating:Z

    return p1
.end method

.method static synthetic access$1302(Lmiui/home/lib/dialog/AlertController;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    return p1
.end method

.method static synthetic access$1400(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    .line 107
    iget p0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    return p0
.end method

.method static synthetic access$1502(Lmiui/home/lib/dialog/AlertController;I)I
    .locals 0

    .line 107
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    return p1
.end method

.method static synthetic access$1600(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    .line 107
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelMargin()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    return p0
.end method

.method static synthetic access$1800(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    return-void
.end method

.method static synthetic access$1900(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateDimBgBottomMargin(I)V

    return-void
.end method

.method static synthetic access$200(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;
    .locals 0

    .line 107
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method static synthetic access$2000(Lmiui/home/lib/dialog/AlertController;)Landroid/view/Window;
    .locals 0

    .line 107
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$2100(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$2200(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$2300(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isFreeFormMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    .line 107
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lmiui/home/lib/dialog/AlertController;)Landroid/content/Context;
    .locals 0

    .line 107
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;
    .locals 0

    .line 107
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;
    .locals 0

    .line 107
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lmiui/home/lib/dialog/AlertController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 107
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lmiui/home/lib/dialog/AlertController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateContent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$900(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    return p0
.end method

.method private addPressAnimInternal(Landroid/view/View;)V
    .locals 1

    .line 1383
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1384
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    goto :goto_1

    .line 1385
    :cond_1
    :goto_0
    instance-of p0, p1, Lmiui/home/lib/dialog/widget/GroupButton;

    if-eqz p0, :cond_2

    .line 1386
    move-object p0, p1

    check-cast p0, Lmiui/home/lib/dialog/widget/GroupButton;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/GroupButton;->getButtonSelectorBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1388
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1389
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 403
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 407
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 408
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 411
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 412
    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .locals 3

    .line 1901
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    .line 1902
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    .line 1901
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private checkAndClearFocus()V
    .locals 1

    .line 1849
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1852
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->hideSoftIME()V

    :cond_0
    return-void
.end method

.method private checkThread()Z
    .locals 1

    .line 1857
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cleanWindowInsetsAnimation()V
    .locals 2

    .line 1269
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1271
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    .line 1272
    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    :cond_0
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .locals 3

    .line 1668
    instance-of v0, p1, Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1669
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1670
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1671
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1672
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableForceDark(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 1020
    invoke-static {p1, p0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method private getCutoutMode(II)I
    .locals 0

    const/4 p0, 0x2

    if-nez p2, :cond_1

    if-ne p1, p0, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2
.end method

.method private getDialogPanelExtraBottomPadding()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getDialogPanelMargin()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1278
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getLocationInWindow([I)V

    .line 1279
    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mExtraImeMargin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1280
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_ime_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/home/lib/dialog/AlertController;->mExtraImeMargin:I

    .line 1282
    :cond_0
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1283
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    .line 1284
    aget v0, v0, v3

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 1285
    iget p0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraImeMargin:I

    sub-int/2addr v1, p0

    return v1
.end method

.method private getGravity()I
    .locals 0

    .line 1470
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    const/16 p0, 0x51

    :goto_0
    return p0
.end method

.method private getPanelWidth(ZZ)I
    .locals 3

    .line 1443
    sget v0, Lmiui/home/lib/dialog/R$layout;->miui_home_alert_dialog_content:I

    const/4 v1, 0x0

    .line 1444
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    .line 1445
    iget-boolean v2, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldUseLandscapePanel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1446
    sget v0, Lmiui/home/lib/dialog/R$layout;->miui_home_alert_dialog_content_land:I

    const/4 p1, 0x1

    .line 1447
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    .line 1448
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1450
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidth:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 1452
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 1456
    :goto_0
    iget p2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    if-eq p2, v0, :cond_5

    .line 1457
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    .line 1459
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-eqz p2, :cond_4

    .line 1460
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {v0, p2}, Lmiui/home/lib/dialog/widget/DialogRootView;->removeView(Landroid/view/View;)V

    .line 1462
    :cond_4
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    .line 1463
    invoke-virtual {p2, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    .line 1464
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p2, p0}, Lmiui/home/lib/dialog/widget/DialogRootView;->addView(Landroid/view/View;)V

    :cond_5
    return p1
.end method

.method private getRawDensity()F
    .locals 2

    .line 391
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 392
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 393
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 394
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private getScreenOrientation()I
    .locals 2

    .line 1801
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1804
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private hideSoftIME()V
    .locals 2

    .line 668
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 670
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 1303
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 1304
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateMinorScreenSize()V

    .line 1305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiui/home/lib/dialog/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    return-void
.end method

.method private isCancelable()Z
    .locals 0

    .line 660
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    return p0
.end method

.method private isCanceledOnTouchOutside()Z
    .locals 0

    .line 664
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    return p0
.end method

.method private isDialogImeDebugEnabled()Z
    .locals 4

    const-string v0, "AlertController"

    const-string v1, ""

    :try_start_0
    const-string v2, "log.tag.alertdialog.ime.debug.enable"

    .line 1917
    invoke-static {v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    .line 1920
    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1922
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    .line 1923
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    .line 1924
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    return p0
.end method

.method private isFreeFormMode()Z
    .locals 0

    .line 2255
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isInPcMode()Z
    .locals 2

    .line 1378
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "synergy_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isLandscape()Z
    .locals 1

    .line 1359
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->isLandscape(I)Z

    move-result p0

    return p0
.end method

.method private isLandscape(I)Z
    .locals 3

    .line 1363
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    return v2

    .line 1369
    :cond_1
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isInPcMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1371
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1372
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-le p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private isMiuiLegacyNotch()Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "android.os.SystemProperties"

    .line 384
    invoke-static {p0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 385
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "ro.miui.notch"

    aput-object v3, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "getInt"

    invoke-static {p0, v0, v3, v2, v1}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v5, :cond_0

    move v4, v5

    :cond_0
    return v4
.end method

.method private isNeedUpdateDialogPanelTranslationY()Z
    .locals 5

    .line 2291
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2292
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isFreeFormMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2293
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 2301
    :goto_0
    iget-boolean v4, p0, Lmiui/home/lib/dialog/AlertController;->mIsDialogAnimating:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 2306
    :cond_3
    iget-boolean v3, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v3, :cond_2

    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    if-nez p0, :cond_4

    if-eqz v0, :cond_2

    :cond_4
    :goto_1
    return v1
.end method

.method private isRealTablet()Z
    .locals 0

    .line 1478
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTablet()Z
    .locals 0

    .line 1474
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private onLayoutReload()V
    .locals 1

    .line 1736
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->onLayoutReload()V

    .line 1737
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutReloadListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogLayoutReloadListener;

    if-eqz p0, :cond_0

    .line 1738
    invoke-interface {p0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogLayoutReloadListener;->onLayoutReload()V

    :cond_0
    return-void
.end method

.method private reInitLandConfig()V
    .locals 2

    .line 1679
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/home/lib/dialog/R$bool;->treat_as_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    .line 1680
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/home/lib/dialog/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    .line 1681
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 1155
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1157
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private safeRemoveFromParent(Landroid/view/View;)V
    .locals 0

    .line 1143
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 1145
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 11

    const v0, 0x1020019

    .line 1026
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1027
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1028
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1029
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1030
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v0}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 1031
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mLiteVersion:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1033
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1040
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    move v0, v2

    :goto_0
    const v4, 0x102001a

    .line 1043
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1044
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1046
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1047
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v4}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 1048
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lmiui/home/lib/dialog/AlertController;->mLiteVersion:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1050
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1051
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1053
    :cond_1
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 1056
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1057
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    :goto_1
    const v4, 0x102001b

    .line 1060
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1061
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1063
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1064
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v4}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 1065
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lmiui/home/lib/dialog/AlertController;->mLiteVersion:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1067
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1068
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1070
    :cond_2
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 1073
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1074
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    .line 1077
    :goto_2
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1078
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    .line 1079
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1080
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    invoke-direct {p0, v6}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    goto :goto_3

    .line 1083
    :cond_4
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    .line 1084
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1085
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1086
    new-instance v8, Lmiui/home/lib/dialog/widget/GroupButton;

    iget-object v9, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$1100(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v10

    invoke-direct {v8, v9, v5, v10}, Lmiui/home/lib/dialog/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v6, v8}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$402(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Lmiui/home/lib/dialog/widget/GroupButton;)Lmiui/home/lib/dialog/widget/GroupButton;

    .line 1087
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v8

    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$600(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/home/lib/dialog/widget/GroupButton;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v8

    iget-object v9, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lmiui/home/lib/dialog/widget/GroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v8

    invoke-virtual {v8, v7}, Lmiui/home/lib/dialog/widget/GroupButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lmiui/home/lib/dialog/widget/GroupButton;->setMaxLines(I)V

    .line 1091
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lmiui/home/lib/dialog/widget/GroupButton;->setGravity(I)V

    .line 1092
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/home/lib/dialog/widget/GroupButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lmiui/home/lib/dialog/AlertController;->mLiteVersion:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1094
    :cond_5
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$500(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1095
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$700(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v8

    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$1200(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$502(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    .line 1097
    :cond_6
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/home/lib/dialog/widget/GroupButton;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 1099
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    invoke-static {v7}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 1100
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1101
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    .line 1103
    :cond_7
    invoke-static {v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_8
    if-nez v0, :cond_9

    .line 1108
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 1110
    :cond_9
    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/DialogButtonPanel;

    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogButtonPanel;->setForceVertical(Z)V

    .line 1111
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 1114
    :goto_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1115
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1116
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1117
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v4, Lmiui/home/lib/dialog/R$id;->contentPanel:I

    invoke-virtual {v1, v4}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1118
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v0, v0

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v6

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_a

    goto :goto_6

    :cond_a
    move v2, v3

    .line 1119
    :goto_6
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    if-nez v0, :cond_c

    if-nez v2, :cond_b

    .line 1121
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-direct {p0, p1, v0}, Lmiui/home/lib/dialog/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_7

    .line 1123
    :cond_b
    invoke-direct {p0, p1, v1}, Lmiui/home/lib/dialog/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1124
    check-cast v1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    invoke-virtual {v1, v5}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :cond_c
    :goto_7
    return-void
.end method

.method private setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V
    .locals 1

    .line 1322
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p2, 0x1020001

    .line 1324
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 p2, 0x0

    .line 1325
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1326
    iget-boolean p2, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1327
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;Z)V
    .locals 10

    const v0, 0x102002b

    .line 854
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 857
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v3, 0xc8

    .line 858
    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 859
    new-instance v3, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 860
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 866
    :cond_1
    :goto_0
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    if-eqz p2, :cond_8

    if-eqz v0, :cond_2

    .line 869
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz p2, :cond_7

    .line 874
    sget p2, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 875
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 876
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 877
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 878
    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v6}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 880
    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v6, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 881
    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p2, v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v7, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v6, v7}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v6

    .line 885
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    mul-int/2addr v7, v6

    .line 886
    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-le v7, v8, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-nez v3, :cond_4

    .line 891
    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 892
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 893
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 898
    :cond_4
    div-int/2addr v8, v6

    .line 899
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    mul-int/2addr v6, v8

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 900
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 901
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 902
    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    :goto_3
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 907
    sget v0, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 909
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    .line 912
    :cond_5
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move-object p2, v1

    :goto_4
    invoke-virtual {p1, p2}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_7

    .line 914
    :cond_7
    sget p2, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 915
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 916
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 918
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v1, Lmiui/home/lib/dialog/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 920
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 921
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 924
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_7

    .line 927
    :cond_8
    sget p2, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_9

    .line 929
    invoke-direct {p0, p2}, Lmiui/home/lib/dialog/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 933
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 935
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 937
    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    goto :goto_5

    :cond_a
    move p0, v2

    .line 942
    :cond_b
    :goto_5
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    if-eqz p0, :cond_c

    goto :goto_6

    :cond_c
    move-object v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_7
    return-void
.end method

.method private setupContentView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1000
    sget v0, Lmiui/home/lib/dialog/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 1001
    sget v0, Lmiui/home/lib/dialog/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 1002
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1003
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 1006
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mComment:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    .line 1007
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 1009
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1015
    :cond_1
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 764
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 766
    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    .line 768
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 770
    :cond_1
    iget v0, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 772
    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 778
    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 779
    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    if-eqz v2, :cond_6

    .line 784
    invoke-direct {p0, v1, p1}, Lmiui/home/lib/dialog/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 786
    :cond_6
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :goto_1
    return v2
.end method

.method private setupImmersiveWindow()V
    .locals 3

    .line 1599
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1600
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1601
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 1602
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$style;->Home_Animation_Dialog_NoAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1603
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, -0x7ffff700

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    .line 1608
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1611
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v2, v0}, Lmiui/home/lib/dialog/AlertController;->getCutoutMode(II)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    .line 1614
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1619
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1622
    :cond_2
    :goto_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 1623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 1624
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1625
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1626
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 1627
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    return-void
.end method

.method private setupNonImmersiveWindow(Z)V
    .locals 4

    .line 1633
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v0

    .line 1634
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth(Z)Z

    move-result p1

    .line 1635
    invoke-direct {p0, v0, p1}, Lmiui/home/lib/dialog/AlertController;->getPanelWidth(ZZ)I

    move-result v0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne v0, p1, :cond_0

    .line 1637
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_width_margin:I

    .line 1638
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1639
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v1

    sub-int/2addr v0, p1

    .line 1641
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getGravity()I

    move-result p1

    .line 1642
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p1}, Landroid/view/Window;->setGravity(I)V

    and-int/lit8 p1, p1, 0x50

    if-lez p1, :cond_1

    .line 1645
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1647
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 1649
    :cond_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1651
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x40000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1652
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 1653
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1654
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lmiui/home/lib/dialog/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1655
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1656
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setTag(Ljava/lang/Object;)V

    .line 1658
    :cond_2
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mEnableEnterAnim:Z

    if-eqz p1, :cond_3

    .line 1659
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1660
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lmiui/home/lib/dialog/R$style;->Home_Animation_Dialog_Center:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    .line 1663
    :cond_3
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 7

    .line 803
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 804
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 805
    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 807
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 809
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 812
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 813
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 814
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 816
    :cond_0
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 817
    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mShowTitle:Z

    if-eqz v1, :cond_3

    .line 819
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 820
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    if-eqz v1, :cond_1

    .line 826
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 828
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 832
    :cond_2
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    .line 833
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    .line 834
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    .line 835
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 832
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 836
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_4

    .line 841
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    goto :goto_1

    .line 845
    :cond_3
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 846
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 847
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setupView(ZZZZ)V
    .locals 3

    .line 675
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiui/home/lib/dialog/-$$Lambda$AlertController$qc2hyyX23pW7j11VCG89IyD94ik;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/-$$Lambda$AlertController$qc2hyyX23pW7j11VCG89IyD94ik;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    invoke-direct {p0, p4}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanel(Z)V

    goto :goto_0

    .line 688
    :cond_0
    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :goto_0
    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p4}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget v0, p0, Lmiui/home/lib/dialog/AlertController;->mLiteVersion:I

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 695
    iget-boolean p2, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz p2, :cond_1

    goto :goto_1

    .line 746
    :cond_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    new-instance p2, Lmiui/home/lib/dialog/AlertController$5;

    invoke-direct {p2, p0}, Lmiui/home/lib/dialog/AlertController$5;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {p1, p2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 696
    :cond_2
    :goto_1
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget p4, Lmiui/home/lib/dialog/R$id;->topPanel:I

    invoke-virtual {p2, p4}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 697
    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v0, Lmiui/home/lib/dialog/R$id;->contentPanel:I

    invoke-virtual {p4, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 698
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v2, Lmiui/home/lib/dialog/R$id;->buttonPanel:I

    invoke-virtual {v0, v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p4, :cond_3

    .line 701
    invoke-direct {p0, p4, p3}, Lmiui/home/lib/dialog/AlertController;->setupContent(Landroid/view/ViewGroup;Z)V

    :cond_3
    if-eqz v0, :cond_4

    .line 705
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 709
    invoke-direct {p0, p2}, Lmiui/home/lib/dialog/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_5
    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_6

    .line 712
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_6

    move v0, p3

    goto :goto_2

    :cond_6
    move v0, p4

    :goto_2
    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 717
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_8

    .line 718
    :cond_7
    sget v0, Lmiui/home/lib/dialog/R$id;->titleDividerNoCustom:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    .line 722
    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    :cond_9
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_a

    .line 727
    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p4, :cond_a

    .line 728
    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 729
    iget p4, p0, Lmiui/home/lib/dialog/AlertController;->mCheckedItem:I

    const/4 v0, -0x1

    if-le p4, v0, :cond_a

    .line 731
    invoke-virtual {p2, p4, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 732
    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setSelection(I)V

    .line 737
    :cond_a
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget p3, Lmiui/home/lib/dialog/R$id;->checkbox_stub:I

    invoke-virtual {p2, p3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_b

    .line 739
    iget-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-direct {p0, p3, p2}, Lmiui/home/lib/dialog/AlertController;->setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V

    :cond_b
    if-nez p1, :cond_c

    .line 743
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->onLayoutReload()V

    :cond_c
    :goto_3
    return-void
.end method

.method private setupWindow()V
    .locals 1

    .line 1591
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupImmersiveWindow()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1594
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow(Z)V

    :goto_0
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .locals 3

    .line 1166
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    .line 1172
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1173
    new-instance v0, Lmiui/home/lib/dialog/AlertController$6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiui/home/lib/dialog/AlertController$6;-><init>(Lmiui/home/lib/dialog/AlertController;I)V

    .line 1249
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1253
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmiui/home/lib/dialog/AlertController$7;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$7;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1264
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private shouldLimitWidth(Z)Z
    .locals 1

    .line 1401
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    .line 1402
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0x178

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldUseLandscapePanel()Z
    .locals 5

    .line 1408
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1411
    :goto_0
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1414
    :cond_1
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1417
    :cond_2
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1418
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    if-nez v0, :cond_4

    return v2

    .line 1424
    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 1425
    iget v4, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    if-ge v0, v4, :cond_5

    return v2

    :cond_5
    mul-int/lit8 v0, v0, 0x2

    if-gt v0, v3, :cond_6

    return v2

    .line 1433
    :cond_6
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method private translateDialogPanel(I)V
    .locals 2

    .line 1907
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The DialogPanel transitionY for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1911
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setTranslationY(F)V

    return-void
.end method

.method private updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1130
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1131
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1132
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1133
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    int-to-float v0, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1135
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-direct {p0, p1, p2}, Lmiui/home/lib/dialog/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1137
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/home/lib/dialog/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1138
    check-cast p2, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private updateContent(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x102002b

    .line 952
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 957
    :goto_0
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    .line 960
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v4, Lmiui/home/lib/dialog/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    .line 962
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    mul-int/2addr v4, v3

    .line 963
    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v4, -0x2

    if-nez v1, :cond_2

    .line 967
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 968
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 969
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 972
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 973
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 975
    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    invoke-virtual {v0, p0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 976
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 980
    :cond_2
    div-int/2addr v5, v3

    .line 981
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    mul-int/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 982
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 983
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 984
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 986
    iput v4, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 987
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 988
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 989
    move-object p0, p1

    check-cast p0, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 990
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 994
    :cond_3
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    invoke-virtual {p1, v4}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateDialogPanel(Z)V
    .locals 4

    .line 1482
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v0

    .line 1483
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth(Z)Z

    move-result p1

    .line 1484
    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_0

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDialogPanel isLandScape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogPanel shouldLimitWidth "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1489
    invoke-direct {p0, v0, p1}, Lmiui/home/lib/dialog/AlertController;->getPanelWidth(ZZ)I

    move-result v0

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1490
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getGravity()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1495
    :cond_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_width_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1497
    :goto_0
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1498
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginLeftMargin:I

    .line 1499
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginRightMargin:I

    .line 1500
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p0, v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 6

    .line 2261
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 2262
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isNeedUpdateDialogPanelTranslationY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2263
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    .line 2264
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 2265
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 2266
    iget-boolean v3, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    const-string v4, "AlertController"

    if-eqz v3, :cond_0

    const-string v3, "======================Debug for checkTranslateDialogPanel======================"

    .line 2267
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The mPanelAndImeMargin: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The imeInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The navigationBarInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The insets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2275
    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->updateDimBgBottomMargin(I)V

    .line 2277
    :cond_1
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_2

    .line 2279
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    .line 2281
    :cond_2
    invoke-direct {p0, v1, v0, p1}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanelTranslationYByIme(IZZ)V

    .line 2282
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz p0, :cond_3

    const-string p0, "===================End of Debug for checkTranslateDialogPanel==================="

    .line 2283
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateDialogPanelTranslationYByIme(IZZ)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "AlertController"

    if-lez p1, :cond_6

    .line 2313
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelMargin()I

    move-result v2

    .line 2314
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2315
    iput v2, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    .line 2316
    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    if-gtz v2, :cond_0

    .line 2317
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    .line 2319
    :cond_0
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_1

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDialogPanelTranslationYByIme mPanelAndImeMargin "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isMultiWindowMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " imeBottom "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    neg-int p1, p1

    goto :goto_0

    :cond_2
    neg-int p1, p1

    .line 2325
    iget p2, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    add-int/2addr p1, p2

    .line 2326
    :goto_0
    iget-boolean p2, p0, Lmiui/home/lib/dialog/AlertController;->mIsDialogAnimating:Z

    if-eqz p2, :cond_4

    .line 2329
    iget-boolean p2, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz p2, :cond_3

    .line 2330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDialogPanelTranslationYByIme anim translateDialogPanel -"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_3
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2333
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p2, 0xc8

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2335
    :cond_4
    iget-boolean p2, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz p2, :cond_5

    .line 2336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDialogPanelTranslationYByIme translateDialogPanel -"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_5
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 2342
    :cond_6
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_7

    const-string p1, "updateDialogPanelTranslationYByIme imeBottom <= 0"

    .line 2343
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_7
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_8

    .line 2347
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private updateDimBgBottomMargin(I)V
    .locals 2

    .line 1582
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    .line 1583
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1584
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_0

    .line 1585
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1586
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateMinorScreenSize()V
    .locals 3

    .line 1309
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1310
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_0

    .line 1313
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    goto :goto_0

    .line 1315
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1316
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1317
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    :goto_0
    return-void
.end method

.method private updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 10

    .line 1505
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1509
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1510
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1511
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1512
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1514
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    .line 1515
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    .line 1514
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1517
    :cond_1
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_2

    .line 1518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateParentPanel navigationBar "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AlertController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateParentPanel mDisplayCutoutSafeInsets "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_2
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/widget/DialogRootView;->getPaddingRight()I

    move-result p1

    .line 1524
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {v2}, Lmiui/home/lib/dialog/widget/DialogRootView;->getPaddingLeft()I

    move-result v2

    .line 1525
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1526
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 1527
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_bottom_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1528
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1530
    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v5}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getX()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    if-gez v5, :cond_3

    move v5, v6

    .line 1534
    :cond_3
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v8}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v8}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    if-gez v7, :cond_4

    move v7, v6

    .line 1538
    :cond_4
    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v2, :cond_6

    if-lt v5, v2, :cond_5

    .line 1541
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_5
    sub-int/2addr v2, v5

    .line 1543
    iget v5, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginLeftMargin:I

    sub-int/2addr v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 1546
    :cond_6
    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginLeftMargin:I

    .line 1548
    :goto_0
    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v8, p1

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz p1, :cond_8

    if-lt v7, p1, :cond_7

    .line 1551
    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_7
    sub-int/2addr p1, v7

    .line 1553
    iget v5, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginRightMargin:I

    sub-int/2addr p1, v5

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    .line 1556
    :cond_8
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginRightMargin:I

    .line 1558
    :goto_1
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, v0

    .line 1560
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v5, 0x1

    if-eq v0, v1, :cond_9

    .line 1561
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v5

    .line 1564
    :cond_9
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v4, :cond_a

    .line 1565
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v5

    .line 1568
    :cond_a
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v0, v2, :cond_b

    .line 1569
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v5

    .line 1572
    :cond_b
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v0, p1, :cond_c

    .line 1573
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_c
    move v5, v6

    :goto_2
    if-eqz v5, :cond_d

    .line 1577
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->requestLayout()V

    :cond_d
    :goto_3
    return-void
.end method

.method private updateRootViewSize(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1685
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1686
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1687
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getRawDensity()F

    move-result v0

    .line 1688
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1689
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1690
    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_0

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRootViewSize mRootViewSizeDp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRootViewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " configuration.density "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/content/res/Configuration;->densityDpi:I

    div-int/lit16 p0, p0, 0xa0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " defaultDensity "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlertController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateWindowCutoutMode()V
    .locals 3

    .line 1743
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    .line 1744
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_2

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    if-eq v1, v0, :cond_2

    .line 1745
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    .line 1746
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v1}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1748
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v0, v1}, Lmiui/home/lib/dialog/AlertController;->getCutoutMode(II)I

    move-result v0

    .line 1749
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v0, :cond_2

    .line 1750
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1751
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1757
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1762
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_2

    .line 1763
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1764
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1765
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss(Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V
    .locals 2

    .line 1876
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1877
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->cleanWindowInsetsAnimation()V

    .line 1879
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1882
    invoke-interface {p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;->end()V

    :cond_1
    return-void

    .line 1886
    :cond_2
    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1887
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->checkAndClearFocus()V

    .line 1888
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    :cond_3
    const-string p1, "AlertController"

    const-string v0, "dialog is not attached to window when dismiss is invoked"

    .line 1890
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :try_start_0
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->realDismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    .line 1895
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 648
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x52

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 626
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    .line 628
    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$700(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 629
    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 620
    :cond_2
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 622
    :cond_3
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 624
    :cond_4
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .locals 2

    .line 608
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 609
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 610
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public installContent(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 421
    :goto_0
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsFromRebuild:Z

    .line 422
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mAlertDialogLayout:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 424
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lmiui/home/lib/dialog/R$id;->dialog_root_view:I

    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/home/lib/dialog/widget/DialogRootView;

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    .line 425
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lmiui/home/lib/dialog/R$id;->dialog_dim_bg:I

    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    .line 426
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    new-instance v2, Lmiui/home/lib/dialog/AlertController$4;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$4;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {p1, v2}, Lmiui/home/lib/dialog/widget/DialogRootView;->setConfigurationChangedCallback(Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;)V

    .line 432
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 433
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 434
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupWindow()V

    .line 436
    invoke-direct {p0, v0, v1, v1, v1}, Lmiui/home/lib/dialog/AlertController;->setupView(ZZZZ)V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 1289
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1293
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    return v0
.end method

.method isDialogImmersive()Z
    .locals 1

    .line 1355
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setupView$0$AlertController(Landroid/view/View;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 681
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->hideSoftIME()V

    .line 682
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1861
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    .line 1862
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1863
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupWindowInsetsAnimation()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V
    .locals 2

    const/4 v0, -0x1

    .line 1699
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraImeMargin:I

    .line 1700
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 1701
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    const-string v0, "AlertController"

    if-eqz p1, :cond_0

    .line 1702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged mRootViewSize "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->checkThread()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dialog is created in thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but onConfigurationChanged is called from different thread:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", so this onConfigurationChanged call should be ignore"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1705
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1711
    :cond_1
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1712
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1715
    :cond_2
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1716
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    .line 1717
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1718
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateWindowCutoutMode()V

    goto :goto_0

    .line 1720
    :cond_3
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow(Z)V

    .line 1722
    :goto_0
    invoke-direct {p0, v0, p2, p3, v0}, Lmiui/home/lib/dialog/AlertController;->setupView(ZZZZ)V

    .line 1724
    :cond_4
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1725
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1727
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_6

    .line 1728
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1730
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    :cond_6
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1868
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 1869
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 1870
    invoke-direct {p0, v2}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1821
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1822
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1824
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->updateDimBgBottomMargin(I)V

    .line 1826
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    .line 1827
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateWindowCutoutMode()V

    .line 1828
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsFromRebuild:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_1

    .line 1829
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v2

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    invoke-static {v0, v1, v2, v3}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V

    goto :goto_0

    .line 1831
    :cond_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setTag(Ljava/lang/Object;)V

    .line 1832
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1834
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1839
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 541
    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 547
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 548
    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 562
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 552
    :cond_2
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 553
    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 557
    :cond_3
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 558
    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 652
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 656
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    .line 1297
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    .line 1298
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setComment(Ljava/lang/CharSequence;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 480
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 481
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method setEnableEnterAnim(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mEnableEnterAnim:Z

    return-void
.end method

.method setEnableImmersive(Z)V
    .locals 0

    .line 1347
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 589
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 599
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    return-void
.end method

.method setLiteVersion(I)V
    .locals 0

    .line 1351
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mLiteVersion:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 473
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setPreferLandscape(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    return-void
.end method

.method public setShowAnimListener(Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 1813
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 441
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 442
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    .line 494
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 502
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    return-void
.end method
