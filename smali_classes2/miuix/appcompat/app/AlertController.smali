.class Lmiuix/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertController$LayoutChangeListener;,
        Lmiuix/appcompat/app/AlertController$CustomComponentCallbacks;,
        Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;,
        Lmiuix/appcompat/app/AlertController$AlertParams;,
        Lmiuix/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

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

.field private mComponentCallback:Lmiuix/appcompat/app/AlertController$CustomComponentCallbacks;

.field private final mContext:Landroid/content/Context;

.field private mCreateThread:Ljava/lang/Thread;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private mDialogRootView:Landroid/view/View;

.field private mDimBg:Landroid/view/View;

.field private mFakeLandScreenMinorSize:I

.field mHandler:Landroid/os/Handler;

.field mHapticFeedbackEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mInsetsAnimationPlayed:Z

.field private mIsChecked:Z

.field private mIsDebugEnabled:Z

.field private mIsEnableImmersive:Z

.field private mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mPanelAndImeMargin:I

.field private mParentPanel:Landroid/view/View;

.field private mParentPanelOriBottom:I

.field private mParentPanelOriEnd:I

.field private mParentPanelOriStart:I

.field private mParentPanelOriTop:I

.field private mRectanglePanelBg:Landroid/graphics/drawable/Drawable;

.field private mRoundPanelBg:Landroid/graphics/drawable/Drawable;

.field private mScreenHeightDp:I

.field private mScreenLayout:I

.field private mScreenMinorSize:I

.field private mScreenOrientation:I

.field private mScreenRealSize:Landroid/graphics/Point;

.field private mScreenWidthDp:I

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

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

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 125
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 134
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 154
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 176
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 187
    new-instance v2, Lmiuix/appcompat/app/AlertController$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 866
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 241
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    .line 243
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 244
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 245
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 246
    new-instance p3, Lmiuix/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lmiuix/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 247
    new-instance p3, Lmiuix/appcompat/app/AlertController$CustomComponentCallbacks;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertController$CustomComponentCallbacks;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mComponentCallback:Lmiuix/appcompat/app/AlertController$CustomComponentCallbacks;

    .line 248
    new-instance p3, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 250
    sget-object p3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    invoke-virtual {p1, v2, p3, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 253
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 254
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    .line 255
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 256
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 257
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 258
    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 260
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 267
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isMiuiLegacyNotch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

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

    .line 270
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 273
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImeDebugEnabled()Z

    return-void
.end method

.method static synthetic access$002(Lmiuix/appcompat/app/AlertController;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    .line 95
    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/AlertController;Landroid/graphics/Rect;)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/app/AlertController;I)I
    .locals 0

    .line 95
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p1
.end method

.method static synthetic access$1100(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/app/AlertController;)Landroid/view/View;
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/appcompat/app/AlertController;)Landroid/view/WindowManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    .line 95
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/app/AlertController;)Landroid/view/View;
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    return p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    .line 95
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/app/AlertController;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->checkTranslateDialogPanel(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adaptPaddingBottom()V

    return-void
.end method

.method private adaptPaddingBottom()V
    .locals 6

    .line 1004
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1006
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-ge v0, v2, :cond_1

    .line 1007
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->hasNavigationBarHeightInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 1018
    :cond_2
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriStart:I

    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriTop:I

    iget v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriEnd:I

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriBottom:I

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 1021
    :cond_3
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result v0

    if-lez v0, :cond_4

    .line 1023
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriStart:I

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriTop:I

    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriEnd:I

    iget v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method private addPressAnimInternal(Landroid/view/View;)V
    .locals 1

    .line 1065
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    instance-of v0, p1, Lmiuix/internal/widget/GroupButton;

    if-eqz v0, :cond_1

    .line 1067
    move-object v0, p1

    check-cast v0, Lmiuix/internal/widget/GroupButton;

    invoke-virtual {v0}, Lmiuix/internal/widget/GroupButton;->getButtonSelectorBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1073
    :cond_0
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustDialogPanelBackground(I)V
    .locals 2

    .line 1292
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRectanglePanelBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1293
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const v1, 0x1010054

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRectanglePanelBg:Landroid/graphics/drawable/Drawable;

    .line 1295
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRoundPanelBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1296
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->miuixDialogRoundWindowBg:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRoundPanelBg:Landroid/graphics/drawable/Drawable;

    .line 1298
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1300
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRoundPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1302
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRectanglePanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 311
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 315
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 319
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 320
    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1374
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    if-nez p2, :cond_2

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1377
    :cond_0
    instance-of p2, p1, Lmiuix/androidbasewidget/widget/SingleCenterTextView;

    if-eqz p2, :cond_1

    .line 1378
    check-cast p1, Lmiuix/androidbasewidget/widget/SingleCenterTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->setEnableSingleCenter(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .locals 4

    .line 1383
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 1384
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    .line 1383
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private checkAndClearFocus()V
    .locals 1

    .line 1331
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1334
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    :cond_0
    return-void
.end method

.method private checkThread()Z
    .locals 2

    .line 1339
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

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
    .locals 3

    .line 1724
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1725
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    const-string v0, "AlertController"

    const-string v1, "======================Debug for checkTranslateDialogPanel======================"

    .line 1726
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AlertController"

    .line 1727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The imeInset info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 1729
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 1730
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    if-gtz v0, :cond_1

    .line 1731
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 1736
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1746
    :cond_2
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result v0

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 1738
    :cond_3
    :goto_0
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    iget v2, p1, Landroid/graphics/Insets;->bottom:I

    if-ge v0, v2, :cond_4

    .line 1740
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 1742
    :cond_4
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    .line 1751
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    .line 1752
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    :cond_6
    :goto_1
    const-string p1, "AlertController"

    const-string v0, "===================End of Debug for checkTranslateDialogPanel==================="

    .line 1755
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private checkUpdateDialog(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1204
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->parseScreenSize(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1207
    :goto_1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v1

    .line 1208
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_3

    .line 1209
    :cond_2
    invoke-direct {p0, p1, v1}, Lmiuix/appcompat/app/AlertController;->updateDialog(Landroid/content/res/Configuration;I)V

    :cond_3
    return-void
.end method

.method private checkUpdatePanelBackground()V
    .locals 2

    .line 343
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    .line 344
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 345
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 346
    :cond_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->adjustDialogPanelBackground(I)V

    :cond_1
    return-void
.end method

.method private cleanWindowInsetsAnimation()V
    .locals 2

    .line 950
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 952
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    .line 953
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    :cond_0
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .locals 3

    .line 1155
    instance-of v0, p1, Lmiuix/internal/widget/DialogParentPanel;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1156
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1157
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1158
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1159
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableForceDark(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 770
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
    .locals 2

    .line 1030
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriBottom:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getDialogPanelMargin()I
    .locals 3

    const/4 v0, 0x2

    .line 958
    new-array v0, v0, [I

    .line 959
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 960
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 961
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method private getPanelWidth(Z)I
    .locals 0

    if-eqz p1, :cond_1

    .line 1080
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private getScreenOrientation()I
    .locals 3

    .line 1280
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1283
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

.method private handMarginBetweenBtnAndContent()V
    .locals 3

    .line 749
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    sget v2, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 753
    sget v2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/app/AlertController;->injectMargin(Landroid/view/ViewGroup;Z)V

    :cond_1
    return-void
.end method

.method private hideSoftIME()V
    .locals 3

    .line 523
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 525
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .locals 1

    .line 975
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    const-string v0, "window"

    .line 976
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 977
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize(Landroid/content/res/Configuration;)V

    .line 978
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    return-void
.end method

.method private injectMargin(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 761
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    .line 763
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_content_margin_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 765
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    return-void
.end method

.method private isCancelable()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return v0
.end method

.method private isCanceledOnTouchOutside()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method private isDialogImeDebugEnabled()Z
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "log.tag.alertdialog.ime.debug.enable"

    .line 1398
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

    .line 1401
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v1, "AlertController"

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "true"

    .line 1404
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 1405
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    return v0
.end method

.method private isEllipsized(Landroid/widget/TextView;I)Z
    .locals 1

    .line 743
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p2, v0

    .line 744
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isFreeFormMode(Landroid/graphics/Rect;)Z
    .locals 3

    .line 1707
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1708
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1709
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isInPcMode()Z
    .locals 3

    .line 1050
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

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

    .line 1046
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->isLandscape(I)Z

    move-result v0

    return v0
.end method

.method private isLandscape(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 1056
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isInPcMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1058
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1059
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le p1, v2, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 1061
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    return v0
.end method

.method private isMiuiLegacyNotch()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.os.SystemProperties"

    .line 301
    invoke-static {v0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 302
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

.method public static synthetic lambda$setupView$0(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    .line 535
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 539
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    .line 540
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    :cond_0
    return-void
.end method

.method private parseScreenSize(I)I
    .locals 0

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method private reInitLandConfig(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1166
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 1167
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    .line 1168
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private relayoutButtons(Lmiuix/appcompat/internal/widget/DialogButtonPanel;)V
    .locals 1

    const/4 v0, 0x1

    .line 728
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setOrientation(I)V

    .line 729
    invoke-virtual {p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->removeAllViews()V

    .line 731
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addView(Landroid/view/View;)V

    .line 734
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addView(Landroid/view/View;)V

    .line 737
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 738
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    .line 782
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 783
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v0}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 786
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    move v4, v0

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 794
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    move v0, v2

    move v4, v0

    :goto_0
    const v5, 0x102001a

    .line 797
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 798
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v5}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 801
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 802
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 804
    :cond_1
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 808
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 809
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lmiuix/appcompat/app/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    :goto_1
    const v5, 0x102001b

    .line 812
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 813
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v5}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 816
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 817
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 819
    :cond_2
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    .line 823
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 824
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lmiuix/appcompat/app/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    :goto_2
    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-nez v0, :cond_4

    .line 829
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 831
    :cond_4
    sget v0, Lmiuix/appcompat/R$id;->buttonGroup:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    const/4 v1, 0x2

    if-le v4, v1, :cond_5

    .line 834
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->relayoutButtons(Lmiuix/appcompat/internal/widget/DialogButtonPanel;)V

    goto :goto_6

    :cond_5
    if-ne v4, v2, :cond_6

    .line 836
    invoke-virtual {v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->clearVisibleChildMargins()V

    goto :goto_6

    .line 840
    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_7

    .line 842
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 844
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 845
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v4, p1

    .line 846
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_horizontal:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int/2addr v2, v4

    sub-int/2addr v2, p1

    .line 847
    div-int/2addr v2, v1

    move p1, v3

    .line 849
    :goto_4
    invoke-virtual {v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_a

    .line 850
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 851
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    .line 852
    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/app/AlertController;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result p1

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-eqz p1, :cond_b

    .line 859
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->relayoutButtons(Lmiuix/appcompat/internal/widget/DialogButtonPanel;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private setupCheckbox(Landroid/widget/CheckBox;)V
    .locals 1

    .line 994
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 995
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 996
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 997
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 999
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 3

    .line 698
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 699
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 701
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 704
    sget v0, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 705
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertController;->centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 713
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 716
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 717
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 718
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 627
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 631
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 637
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 638
    :cond_3
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_5

    .line 643
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102002b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 644
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    .line 647
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    .line 650
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setupDialogPanel()V
    .locals 1

    .line 1042
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupDialogPanel(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private setupDialogPanel(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1086
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1087
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isLandscape(I)Z

    move-result p1

    .line 1088
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    .line 1089
    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1090
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(Z)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 1091
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1092
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupImmersiveWindow()V
    .locals 3

    .line 1111
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1112
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1113
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 1114
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, -0x7ffff700

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    .line 1119
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1122
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v2, v0}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    .line 1125
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1130
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1133
    :cond_2
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 1134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 1135
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1136
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1137
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 1138
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 5

    .line 655
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 660
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 663
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 664
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 671
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 675
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 678
    :cond_1
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    if-eqz v0, :cond_2

    .line 679
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 684
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 685
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    goto :goto_0

    .line 689
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 690
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setupUnImmersiveWindow(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1144
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1145
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isLandscape(I)Z

    move-result p1

    .line 1146
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1147
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1148
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 1149
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(Z)I

    move-result p1

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1151
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method private setupView()V
    .locals 7

    .line 530
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Landroid/view/View;

    .line 531
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    .line 532
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_dim_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 533
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiuix/appcompat/app/-$$Lambda$AlertController$8FQL9psPu82Dcxq5a4kwCu68Umw;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/-$$Lambda$AlertController$8FQL9psPu82Dcxq5a4kwCu68Umw;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriStart:I

    .line 545
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriEnd:I

    .line 546
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriTop:I

    .line 547
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanelOriBottom:I

    .line 548
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adaptPaddingBottom()V

    .line 549
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupDialogPanel()V

    goto :goto_0

    .line 551
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    sget v2, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 555
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    sget v3, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 556
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    sget v4, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 560
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    sget v5, Lmiuix/appcompat/R$id;->customPanel:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 562
    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 566
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 570
    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 574
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 578
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    if-eqz v3, :cond_6

    .line 580
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    :cond_6
    if-eqz v6, :cond_b

    .line 585
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_7

    .line 586
    invoke-virtual {v1, v4}, Landroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_7
    const/4 v1, 0x0

    .line 591
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_8

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_9

    .line 592
    :cond_8
    sget v1, Lmiuix/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    .line 596
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 600
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    .line 601
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v0, v5, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 605
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    .line 606
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_c

    .line 607
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 608
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_c

    .line 610
    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 611
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 616
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_d

    .line 618
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCheckbox(Landroid/widget/CheckBox;)V

    .line 621
    :cond_d
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->handMarginBetweenBtnAndContent()V

    .line 622
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V

    return-void
.end method

.method private setupWindow()V
    .locals 1

    .line 1103
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupImmersiveWindow()V

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupUnImmersiveWindow(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .locals 3

    .line 870
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    .line 873
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    .line 879
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 880
    new-instance v0, Lmiuix/appcompat/app/AlertController$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertController$2;-><init>(Lmiuix/appcompat/app/AlertController;I)V

    .line 935
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 939
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmiuix/appcompat/app/AlertController$3;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$3;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 946
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private translateDialogPanel(I)V
    .locals 3

    .line 1389
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "AlertController"

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The DialogPanel transitionY for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1096
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 1097
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->parseScreenSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenLayout:I

    .line 1098
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenWidthDp:I

    .line 1099
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenHeightDp:I

    return-void
.end method

.method private updateDialog(Landroid/content/res/Configuration;I)V
    .locals 1

    .line 1214
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig(Landroid/content/res/Configuration;)V

    .line 1215
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode(I)V

    .line 1217
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->setupDialogPanel(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1219
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->setupUnImmersiveWindow(Landroid/content/res/Configuration;)V

    .line 1221
    :goto_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->adjustDialogPanelBackground(I)V

    return-void
.end method

.method private updateMinorScreenSize(Landroid/content/res/Configuration;)V
    .locals 2

    .line 982
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    if-lez p1, :cond_0

    .line 985
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    goto :goto_0

    .line 987
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 988
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 989
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    :goto_0
    return-void
.end method

.method private updateWindowCutoutMode(I)V
    .locals 2

    .line 1225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    if-eq v0, p1, :cond_2

    .line 1226
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result p1

    .line 1229
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, p1, :cond_2

    .line 1230
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1231
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1232
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1237
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1242
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq p1, v0, :cond_2

    .line 1243
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1244
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1245
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 2

    .line 1350
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->cleanWindowInsetsAnimation()V

    .line 1351
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1354
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    :cond_0
    return-void

    .line 1358
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkAndClearFocus()V

    .line 1360
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    :cond_2
    const-string p1, "AlertController"

    const-string v0, "dialog is not attached to window when dismiss is invoked"

    .line 1362
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :try_start_0
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AlertController"

    const-string v1, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    .line 1367
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 493
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

.method public getIconAttributeResId(I)I
    .locals 3

    .line 460
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 461
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 462
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 466
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 330
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 332
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindow()V

    .line 334
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupView()V

    .line 338
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkUpdatePanelBackground()V

    return-void
.end method

.method isDialogImmersive()Z
    .locals 2

    .line 1038
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1176
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkThread()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AlertController"

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog is created in thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but onConfigurationChanged is called from different thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", so this onConfigurationChanged call should be ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1184
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    .line 1185
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1187
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->checkUpdateDialog(Landroid/content/res/Configuration;)V

    goto :goto_2

    .line 1189
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1190
    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit16 v2, v1, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 1191
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenWidthDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mScreenHeightDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    .line 1194
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    if-eq v1, v0, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    if-nez v3, :cond_6

    if-eqz v2, :cond_7

    .line 1197
    :cond_6
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertController;->updateDialog(Landroid/content/res/Configuration;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1343
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1344
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 498
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 503
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStart()V
    .locals 4

    .line 1311
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mComponentCallback:Lmiuix/appcompat/app/AlertController$CustomComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1312
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->checkUpdateDialog(Landroid/content/res/Configuration;)V

    .line 1314
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-static {v0, v1, v2, v3}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 1315
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1320
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mComponentCallback:Lmiuix/appcompat/app/AlertController$CustomComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1321
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 408
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 429
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :pswitch_0
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 415
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 419
    :pswitch_1
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 420
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 424
    :pswitch_2
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 425
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

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

    .line 507
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 511
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    .line 969
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    .line 970
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method setEnableImmersive(Z)V
    .locals 0

    .line 1034
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 441
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 451
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 365
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 366
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/app/AlertController;->centerIfSingleLine(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 1307
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 351
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 352
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 381
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 389
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method
