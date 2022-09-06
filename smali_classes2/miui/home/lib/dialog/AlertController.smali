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

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private mDialogContentLayout:I

.field private mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

.field private mDimBg:Landroid/view/View;

.field private mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/home/lib/dialog/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mLandscapePanel:Z

.field private final mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

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

.field private mWindowSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 4

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    .line 135
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 145
    iput v1, p0, Lmiui/home/lib/dialog/AlertController;->mCheckedItem:I

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    .line 166
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    .line 170
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    .line 179
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    .line 180
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 185
    new-instance v2, Lmiui/home/lib/dialog/AlertController$1;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$1;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    .line 203
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    .line 209
    new-instance v2, Lmiui/home/lib/dialog/AlertController$2;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$2;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 986
    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    .line 279
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    .line 280
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 281
    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    .line 282
    new-instance p3, Lmiui/home/lib/dialog/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lmiui/home/lib/dialog/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    .line 283
    new-instance p3, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-direct {p3, p0}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    .line 285
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    .line 287
    sget-object p3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    invoke-virtual {p1, v2, p3, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 290
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mAlertDialogLayout:I

    .line 291
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mListLayout:I

    .line 292
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mMultiChoiceItemLayout:I

    .line 293
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 294
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mSingleChoiceItemLayout:I

    .line 295
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mListItemLayout:I

    .line 296
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_showTitle:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiui/home/lib/dialog/AlertController;->mShowTitle:Z

    .line 298
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 305
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isMiuiLegacyNotch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const-string p2, "addExtraFlags"

    new-array p3, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p3, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, p2, p3, v1}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    .line 309
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidth:I

    .line 310
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_max_width_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 313
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImeDebugEnabled()Z

    return-void
.end method

.method static synthetic access$002(Lmiui/home/lib/dialog/AlertController;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDialogAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method static synthetic access$1102(Lmiui/home/lib/dialog/AlertController;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    return p1
.end method

.method static synthetic access$1200(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    .line 98
    iget p0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    return p0
.end method

.method static synthetic access$1202(Lmiui/home/lib/dialog/AlertController;I)I
    .locals 0

    .line 98
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    return p1
.end method

.method static synthetic access$1300(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    .line 98
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelMargin()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    return-void
.end method

.method static synthetic access$1600(Lmiui/home/lib/dialog/AlertController;)Landroid/view/Window;
    .locals 0

    .line 98
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$1700(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$1800(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->checkTranslateDialogPanel(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$1900(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    .line 98
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isFreeFormMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;
    .locals 0

    .line 98
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    .line 98
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lmiui/home/lib/dialog/AlertController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 98
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lmiui/home/lib/dialog/AlertController;)Landroid/content/Context;
    .locals 0

    .line 98
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;
    .locals 0

    .line 98
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    return-object p0
.end method

.method static synthetic access$700(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;
    .locals 0

    .line 98
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/home/lib/dialog/AlertController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateContent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private addPressAnimInternal(Landroid/view/View;)V
    .locals 1

    .line 1166
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    instance-of v0, p1, Lmiui/home/lib/dialog/widget/GroupButton;

    if-eqz v0, :cond_1

    .line 1168
    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/GroupButton;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/GroupButton;->getButtonSelectorBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1170
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1174
    :cond_0
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 351
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 355
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 356
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 359
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 360
    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .locals 4

    .line 1598
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 1599
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    .line 1598
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private checkAndClearFocus()V
    .locals 1

    .line 1541
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1544
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->hideSoftIME()V

    :cond_0
    return-void
.end method

.method private checkThread()Z
    .locals 2

    .line 1549
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkTranslateDialogPanel(Landroid/view/WindowInsets;)V
    .locals 4

    .line 1944
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDialogAnimating:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1945
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1946
    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "AlertController"

    const-string v2, "======================Debug for checkTranslateDialogPanel======================"

    .line 1947
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AlertController"

    .line 1948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The imeInset info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 1951
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 1953
    :cond_2
    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    const/4 v1, 0x0

    if-lez p1, :cond_8

    .line 1954
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelMargin()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v2

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    .line 1955
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    if-gtz p1, :cond_3

    .line 1956
    iput v1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    .line 1961
    :cond_3
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 1971
    :cond_4
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-ge p1, v2, :cond_5

    .line 1973
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 1975
    :cond_5
    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 1963
    :cond_6
    :goto_0
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-ge p1, v2, :cond_7

    .line 1965
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 1967
    :cond_7
    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 1981
    :cond_8
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    .line 1982
    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    .line 1985
    :cond_9
    :goto_1
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_a

    const-string p1, "AlertController"

    const-string v0, "===================End of Debug for checkTranslateDialogPanel==================="

    .line 1986
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private cleanWindowInsetsAnimation()V
    .locals 2

    .line 1077
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1079
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    .line 1080
    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    :cond_0
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .locals 3

    .line 1405
    instance-of v0, p1, Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1406
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1407
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1408
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1409
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableForceDark(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 897
    invoke-static {p1, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method private getCutoutMode(II)I
    .locals 1

    const/4 v0, 0x2

    if-nez p2, :cond_1

    if-ne p1, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2
.end method

.method private getDialogPanelExtraBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getDialogPanelMargin()I
    .locals 4

    const/4 v0, 0x2

    .line 1085
    new-array v0, v0, [I

    .line 1086
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getLocationInWindow([I)V

    .line 1087
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_ime_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1088
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    return v2
.end method

.method private getGravity()I
    .locals 1

    .line 1252
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    :goto_0
    return v0
.end method

.method private getPanelWidth(Z)I
    .locals 4

    .line 1225
    sget v0, Lmiui/home/lib/dialog/R$layout;->miui_home_alert_dialog_content:I

    const/4 v1, 0x0

    .line 1226
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    .line 1227
    iget-boolean v2, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldUseLandscapePanel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1228
    sget v0, Lmiui/home/lib/dialog/R$layout;->miui_home_alert_dialog_content_land:I

    const/4 p1, 0x1

    .line 1229
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    .line 1230
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    goto :goto_0

    .line 1231
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1232
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidth:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 1234
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 1238
    :goto_0
    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    if-eq v2, v0, :cond_5

    .line 1239
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    .line 1241
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-eqz v0, :cond_4

    .line 1242
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {v2, v0}, Lmiui/home/lib/dialog/widget/DialogRootView;->removeView(Landroid/view/View;)V

    .line 1244
    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    .line 1245
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    .line 1246
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogRootView;->addView(Landroid/view/View;)V

    :cond_5
    return p1
.end method

.method private getScreenOrientation()I
    .locals 3

    .line 1506
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1509
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method private hideSoftIME()V
    .locals 3

    .line 577
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 579
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 1102
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 1103
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateMinorScreenSize()V

    .line 1104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    return-void
.end method

.method private isCancelable()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    return v0
.end method

.method private isCanceledOnTouchOutside()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method private isDialogImeDebugEnabled()Z
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "log.tag.alertdialog.ime.debug.enable"

    .line 1613
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AlertController"

    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    .line 1616
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v1, "AlertController"

    .line 1618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "true"

    .line 1619
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    .line 1620
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    return v0
.end method

.method private isFreeFormMode()Z
    .locals 1

    .line 1938
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isInPcMode()Z
    .locals 3

    .line 1162
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "synergy_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isLandscape()Z
    .locals 1

    .line 1143
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->isLandscape(I)Z

    move-result v0

    return v0
.end method

.method private isLandscape(I)Z
    .locals 3

    .line 1147
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    return v2

    .line 1153
    :cond_1
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isInPcMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1155
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1156
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v1
.end method

.method private isMiuiLegacyNotch()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.os.SystemProperties"

    .line 341
    invoke-static {v0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 342
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "ro.miui.notch"

    aput-object v5, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_0

    move v6, v7

    :cond_0
    return v6
.end method

.method private isRealTablet()Z
    .locals 1

    .line 1256
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$installContent$0(Lmiui/home/lib/dialog/AlertController;Landroid/content/res/Configuration;)V
    .locals 0

    .line 375
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->onConfigurationChanged()V

    return-void
.end method

.method public static synthetic lambda$setupView$1(Lmiui/home/lib/dialog/AlertController;Landroid/view/View;)V
    .locals 0

    .line 586
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 590
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->hideSoftIME()V

    .line 591
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    :cond_0
    return-void
.end method

.method private reInitLandConfig()V
    .locals 2

    .line 1416
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    .line 1417
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    .line 1418
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 10

    const v0, 0x1020019

    .line 903
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 904
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v0}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 907
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    goto :goto_0

    .line 910
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 914
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    const v3, 0x102001a

    .line 917
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 918
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v3}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 921
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 924
    :cond_1
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 927
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 928
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    :goto_1
    const v3, 0x102001b

    .line 931
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 932
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v3}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 935
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 936
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 938
    :cond_2
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 941
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 942
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    .line 945
    :goto_2
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 946
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    .line 947
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 948
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/home/lib/dialog/widget/GroupButton;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 949
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    .line 950
    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 954
    :cond_4
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    .line 955
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    if-nez v5, :cond_5

    .line 956
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 957
    new-instance v6, Lmiui/home/lib/dialog/widget/GroupButton;

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$900(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lmiui/home/lib/dialog/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v4, v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$302(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Lmiui/home/lib/dialog/widget/GroupButton;)Lmiui/home/lib/dialog/widget/GroupButton;

    .line 958
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$500(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/home/lib/dialog/widget/GroupButton;->setText(Ljava/lang/CharSequence;)V

    .line 959
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lmiui/home/lib/dialog/widget/GroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmiui/home/lib/dialog/widget/GroupButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lmiui/home/lib/dialog/widget/GroupButton;->setMaxLines(I)V

    .line 962
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lmiui/home/lib/dialog/widget/GroupButton;->setGravity(I)V

    .line 964
    :cond_5
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v5

    if-nez v5, :cond_6

    .line 965
    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$600(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v6

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$1000(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$402(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    .line 967
    :cond_6
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/home/lib/dialog/widget/GroupButton;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 969
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-static {v5}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 970
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-direct {p0, v5}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 971
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-direct {p0, v5}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    .line 973
    :cond_7
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_8
    if-nez v0, :cond_9

    .line 978
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 980
    :cond_9
    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/DialogButtonPanel;

    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogButtonPanel;->setForceVertical(Z)V

    .line 981
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :goto_5
    return-void
.end method

.method private setupCheckbox(Landroid/widget/CheckBox;)V
    .locals 1

    .line 1121
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1122
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1123
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1124
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 1126
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 11

    const v0, 0x102002b

    .line 748
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 750
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    if-eqz v0, :cond_0

    .line 753
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x1

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eqz v1, :cond_6

    .line 758
    sget v1, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 759
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 760
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 761
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 762
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 763
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 766
    :cond_1
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v7, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 767
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v8, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    .line 770
    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v9, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v8, v9}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v8

    .line 772
    iget-object v9, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    mul-int/2addr v9, v8

    .line 773
    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    if-le v9, v7, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v4, :cond_3

    .line 778
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 779
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 780
    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v6, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 785
    :cond_3
    div-int/2addr v7, v8

    .line 786
    iget-object v9, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    mul-int/2addr v8, v7

    invoke-virtual {v9, v8}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 787
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 788
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 789
    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    :goto_2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 794
    sget v0, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 796
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    .line 799
    :cond_4
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_5

    .line 801
    :cond_6
    sget v1, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 802
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 803
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 804
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 807
    :cond_7
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 809
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 810
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 813
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_5

    .line 816
    :cond_8
    sget v1, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 818
    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 822
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result v3

    .line 825
    :cond_a
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_5
    return-void
.end method

.method private setupContentView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 877
    sget v0, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 878
    sget v0, Lmiui/home/lib/dialog/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 879
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 880
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 883
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mComment:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 886
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 892
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 664
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 666
    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    .line 668
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 670
    :cond_1
    iget v0, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 672
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

    .line 678
    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 679
    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    if-eqz v2, :cond_7

    .line 684
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 685
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 687
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 689
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    return v2
.end method

.method private setupImmersiveWindow()V
    .locals 4

    .line 1345
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1346
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1347
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 1348
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1349
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v2, -0x7ffff700

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v0, v2, :cond_2

    .line 1354
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1357
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v3, v0}, Lmiui/home/lib/dialog/AlertController;->getCutoutMode(II)I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    .line 1360
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 1365
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1368
    :cond_2
    :goto_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 1369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_3

    .line 1370
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1371
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1372
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 1373
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    return-void
.end method

.method private setupNonImmersiveWindow()V
    .locals 5

    .line 1379
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v0

    .line 1380
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->getPanelWidth(Z)I

    move-result v0

    .line 1381
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    invoke-static {v1, v2}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1382
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1383
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_width_margin:I

    .line 1384
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1385
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 1387
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getGravity()I

    move-result v1

    .line 1388
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setGravity(I)V

    and-int/lit8 v1, v1, 0x50

    if-lez v1, :cond_1

    .line 1391
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_bottom_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1393
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 1395
    :cond_1
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1396
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 1397
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1398
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1399
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$style;->Home_Animation_Dialog_Center:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_2
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 7

    .line 695
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 696
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 697
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 701
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 703
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 706
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 707
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 708
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 710
    :cond_1
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 711
    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mShowTitle:Z

    if-eqz v1, :cond_4

    .line 713
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 714
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    if-eqz v1, :cond_2

    .line 720
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 721
    :cond_2
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 722
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 726
    :cond_3
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    .line 727
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    .line 728
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    .line 729
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 726
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 730
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 735
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    goto :goto_1

    .line 739
    :cond_4
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 740
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setupView(Z)V
    .locals 4

    .line 584
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiui/home/lib/dialog/-$$Lambda$AlertController$vg0h7pz-mYHDK1VSNp8OiL1FXd0;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/-$$Lambda$AlertController$vg0h7pz-mYHDK1VSNp8OiL1FXd0;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanel()V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_2

    .line 603
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz p1, :cond_1

    goto :goto_1

    .line 650
    :cond_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    new-instance v0, Lmiui/home/lib/dialog/AlertController$3;

    invoke-direct {v0, p0}, Lmiui/home/lib/dialog/AlertController$3;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 604
    :cond_2
    :goto_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v0, Lmiui/home/lib/dialog/R$id;->topPanel:I

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 605
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v2, Lmiui/home/lib/dialog/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 606
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v3, Lmiui/home/lib/dialog/R$id;->buttonPanel:I

    invoke-virtual {v2, v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 609
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 613
    invoke-direct {p0, v2}, Lmiui/home/lib/dialog/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 617
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_5
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 620
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 625
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_8

    .line 626
    :cond_7
    sget v1, Lmiuix/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    .line 630
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 634
    :cond_9
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_a

    .line 635
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_a

    .line 636
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 637
    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_a

    .line 639
    invoke-virtual {p1, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 640
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 645
    :cond_a
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_b

    .line 647
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->setupCheckbox(Landroid/widget/CheckBox;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private setupWindow()V
    .locals 1

    .line 1337
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupImmersiveWindow()V

    goto :goto_0

    .line 1340
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow()V

    :goto_0
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .locals 3

    .line 991
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 994
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    .line 997
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 998
    new-instance v0, Lmiui/home/lib/dialog/AlertController$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiui/home/lib/dialog/AlertController$4;-><init>(Lmiui/home/lib/dialog/AlertController;I)V

    .line 1060
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1064
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmiui/home/lib/dialog/AlertController$5;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$5;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1072
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private shouldLimitWidth()Z
    .locals 2

    .line 1182
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1183
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x178

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldUseLandscapePanel()Z
    .locals 5

    .line 1189
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

    .line 1192
    :goto_0
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1195
    :cond_1
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1198
    :cond_2
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1199
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    if-nez v0, :cond_4

    return v2

    .line 1205
    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    invoke-static {v0, v3}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1206
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 1207
    iget v4, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    if-ge v0, v4, :cond_5

    return v2

    :cond_5
    mul-int/lit8 v0, v0, 0x2

    if-gt v0, v3, :cond_6

    return v2

    .line 1215
    :cond_6
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz v0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method private translateDialogPanel(I)V
    .locals 3

    .line 1604
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "AlertController"

    .line 1605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The DialogPanel transitionY for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setTranslationY(F)V

    return-void
.end method

.method private updateContent(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x102002b

    .line 834
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 839
    :goto_0
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 840
    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 841
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v5, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v3, v5}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    .line 843
    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int/2addr v5, v3

    .line 844
    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    if-le v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v5, -0x2

    if-nez v1, :cond_2

    .line 848
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 849
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 850
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 852
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 853
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 854
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 856
    move-object v1, p1

    check-cast v1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    invoke-virtual {v1, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 857
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 861
    :cond_2
    div-int/2addr v4, v3

    .line 862
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    mul-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 863
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 864
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 865
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 867
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 868
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 869
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 871
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateDialogPanel()V
    .locals 3

    .line 1260
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v0

    .line 1261
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1262
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->getPanelWidth(Z)I

    move-result v0

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1263
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getGravity()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1265
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1268
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_width_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1270
    :goto_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1271
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginLeftMargin:I

    .line 1272
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginRightMargin:I

    .line 1273
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMinorScreenSize()V
    .locals 3

    .line 1108
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1109
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

    .line 1112
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    goto :goto_0

    .line 1114
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1115
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1116
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    :goto_0
    return-void
.end method

.method private updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 9

    .line 1278
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1282
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1283
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1284
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1285
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 1286
    iget-boolean v3, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "AlertController"

    .line 1287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateParentPanel navigationBar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_1
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1290
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 1291
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_bottom_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1292
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v2, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1294
    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v5}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 1295
    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v7}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v7}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 1296
    iget v7, v2, Landroid/graphics/Insets;->left:I

    iget v8, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    if-lt v5, v7, :cond_2

    .line 1298
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    sub-int/2addr v7, v5

    .line 1300
    iget v5, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginLeftMargin:I

    sub-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1302
    :goto_0
    iget v2, v2, Landroid/graphics/Insets;->right:I

    iget v7, v0, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v6, v2, :cond_3

    .line 1304
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v6

    .line 1306
    iget v6, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginRightMargin:I

    sub-int/2addr v2, v6

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1308
    :goto_1
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, v0

    .line 1310
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    .line 1311
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v8, v6

    .line 1314
    :cond_4
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v4, :cond_5

    .line 1315
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v8, v6

    .line 1318
    :cond_5
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v0, v5, :cond_6

    .line 1319
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v8, v6

    .line 1322
    :cond_6
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v0, v2, :cond_7

    .line 1323
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_7
    move v6, v8

    :goto_2
    if-eqz v6, :cond_8

    .line 1327
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->requestLayout()V

    .line 1329
    :cond_8
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1330
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, p1, Landroid/graphics/Insets;->bottom:I

    if-eq v1, v2, :cond_9

    .line 1331
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1332
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method private updateWindowCutoutMode()V
    .locals 3

    .line 1449
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    .line 1450
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_2

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    if-eq v1, v0, :cond_2

    .line 1451
    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    .line 1452
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v1}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1454
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v0, v1}, Lmiui/home/lib/dialog/AlertController;->getCutoutMode(II)I

    move-result v0

    .line 1455
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v0, :cond_2

    .line 1456
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1457
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1458
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1463
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1468
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_2

    .line 1469
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1470
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1471
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss(Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V
    .locals 2

    .line 1573
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1574
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->cleanWindowInsetsAnimation()V

    .line 1576
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1579
    invoke-interface {p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;->end()V

    :cond_1
    return-void

    .line 1583
    :cond_2
    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1584
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->checkAndClearFocus()V

    .line 1585
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    :cond_3
    const-string p1, "AlertController"

    const-string v0, "dialog is not attached to window when dismiss is invoked"

    .line 1587
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :try_start_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->realDismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AlertController"

    const-string v1, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    .line 1592
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 557
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 535
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 529
    :pswitch_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    .line 531
    :pswitch_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    .line 533
    :pswitch_2
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1

    .line 536
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    .line 537
    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$600(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 538
    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    .line 517
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 518
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 519
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public installContent()V
    .locals 2

    .line 370
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 372
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$id;->dialog_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/home/lib/dialog/widget/DialogRootView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    .line 373
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_dim_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    .line 375
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    new-instance v1, Lmiui/home/lib/dialog/-$$Lambda$AlertController$KSR4Iim-5HlqEvwMO_0HmAORZhM;

    invoke-direct {v1, p0}, Lmiui/home/lib/dialog/-$$Lambda$AlertController$KSR4Iim-5HlqEvwMO_0HmAORZhM;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogRootView;->setConfigurationChangedCallback(Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;)V

    .line 377
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupWindow()V

    const/4 v0, 0x1

    .line 379
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupView(Z)V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 1092
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    return v0
.end method

.method isDialogImmersive()Z
    .locals 2

    .line 1139
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1553
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    .line 1554
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanel()V

    goto :goto_0

    .line 1557
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow()V

    .line 1559
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 1560
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupWindowInsetsAnimation()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 1422
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->checkThread()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AlertController"

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog is created in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but onConfigurationChanged is called from different thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", so this onConfigurationChanged call should be ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1423
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1433
    :cond_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1434
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    .line 1435
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1436
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateWindowCutoutMode()V

    goto :goto_0

    .line 1438
    :cond_2
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow()V

    :goto_0
    const/4 v0, 0x0

    .line 1440
    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupView(Z)V

    .line 1443
    :cond_3
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1444
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1565
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1566
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 1567
    invoke-direct {p0, v2}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1522
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    .line 1524
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateWindowCutoutMode()V

    .line 1525
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v2

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    invoke-static {v0, v1, v2, v3}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V

    .line 1526
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1531
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 450
    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 471
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :pswitch_0
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 457
    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 461
    :pswitch_1
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 462
    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 466
    :pswitch_2
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 467
    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 561
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 565
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    .line 1096
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    .line 1097
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setComment(Ljava/lang/CharSequence;)V
    .locals 1

    .line 408
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 409
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method setEnableImmersive(Z)V
    .locals 0

    .line 1135
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 498
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 508
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 401
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 402
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setPreferLandscape(Z)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    return-void
.end method

.method public setShowAnimListener(Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 383
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 384
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    .line 423
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 431
    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    return-void
.end method
