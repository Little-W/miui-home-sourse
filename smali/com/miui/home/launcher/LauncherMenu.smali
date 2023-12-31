.class public Lcom/miui/home/launcher/LauncherMenu;
.super Landroid/widget/LinearLayout;
.source "LauncherMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherMenu$SpinnerCheckedProvider;
    }
.end annotation


# instance fields
.field private mAutoFill:Landroid/widget/LinearLayout;

.field private mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mCellTypeSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mCellsSetting:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultScreenPreview:Landroid/widget/LinearLayout;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLock:Landroid/widget/LinearLayout;

.field private mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mMenuTransEffect:Landroid/widget/LinearLayout;

.field private mMore:Landroid/widget/LinearLayout;

.field private final mNoWordItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNoWordModelOptions:[Ljava/lang/CharSequence;

.field private mNoWordSetting:Landroid/widget/LinearLayout;

.field private mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mNoWordSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mScreenCellsSizeOptions:[Ljava/lang/CharSequence;

.field private mSettingClose:Ljava/lang/String;

.field private mSettingNoWord:Ljava/lang/String;

.field private mSettingOnlyWidgetNoWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance p2, Lcom/miui/home/launcher/LauncherMenu$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/LauncherMenu$1;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 86
    new-instance p2, Lcom/miui/home/launcher/LauncherMenu$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/LauncherMenu$2;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 110
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherMenu;)[Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mScreenCellsSizeOptions:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherMenu;)[Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordModelOptions:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherMenu;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherMenu;->noWordModelSettingChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherMenu;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherMenu;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherMenu;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private disableSpinnerClick(Lmiuix/appcompat/widget/Spinner;)V
    .locals 2

    const/4 p0, 0x0

    .line 204
    invoke-virtual {p1, p0}, Lmiuix/appcompat/widget/Spinner;->setClickable(Z)V

    .line 205
    invoke-virtual {p1, p0}, Lmiuix/appcompat/widget/Spinner;->setLongClickable(Z)V

    .line 206
    invoke-virtual {p1, p0}, Lmiuix/appcompat/widget/Spinner;->setEnabled(Z)V

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 208
    invoke-virtual {p1, p0}, Lmiuix/appcompat/widget/Spinner;->setContextClickable(Z)V

    :cond_0
    return-void
.end method

.method private getNoWordModelItem()I
    .locals 9

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModel()Z

    move-result v1

    .line 315
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordModelOptions:[Ljava/lang/CharSequence;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v7, v2, v5

    if-eqz v0, :cond_0

    .line 317
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingNoWord:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_0
    if-eqz v1, :cond_1

    .line 321
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    .line 325
    :cond_1
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingClose:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private getNoWordModelOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingClose:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingNoWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModelSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getSelectedCellType()I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 298
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mScreenCellsSizeOptions:[Ljava/lang/CharSequence;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p0, v3

    .line 299
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v5

    if-nez v5, :cond_0

    return v2

    .line 302
    :cond_0
    aget v5, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v6

    if-ne v5, v6, :cond_1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "LauncherMenu"

    const-string v0, "getSelectedCellType: no cell type selected!"

    .line 307
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private initCellSetting()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->needShowCellsEntry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenUtils;->getScreenCellsSizeOptions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mScreenCellsSizeOptions:[Ljava/lang/CharSequence;

    .line 222
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mScreenCellsSizeOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const v0, 0x7f0a0337

    .line 223
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setImportantForAccessibility(I)V

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->disableSpinnerClick(Lmiuix/appcompat/widget/Spinner;)V

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mScreenCellsSizeOptions:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherMenu;->makeSpinnerAdapter([Ljava/lang/CharSequence;Lmiuix/appcompat/widget/Spinner;)Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->getSelectedCellType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/widget/Spinner;->setFenceView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$EmGvLkgvqNZFZH1wr7FWZIkcC7E;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$EmGvLkgvqNZFZH1wr7FWZIkcC7E;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 251
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method private initNoWordSetting()V
    .locals 2

    .line 255
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingNoWord:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingClose:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->getNoWordModelOptions()Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordModelOptions:[Ljava/lang/CharSequence;

    .line 262
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordModelOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const v0, 0x7f0a026c

    .line 263
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setImportantForAccessibility(I)V

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->disableSpinnerClick(Lmiuix/appcompat/widget/Spinner;)V

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordModelOptions:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherMenu;->makeSpinnerAdapter([Ljava/lang/CharSequence;Lmiuix/appcompat/widget/Spinner;)Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->getNoWordModelItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/widget/Spinner;->setFenceView(Landroid/view/View;)V

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$sy61q_kFKPcRSjGsaVGm9kAP1_s;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$sy61q_kFKPcRSjGsaVGm9kAP1_s;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private isCellSettingInited()Z
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNoWordSettingCellSettingInited()Z
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeSpinnerAdapter([Ljava/lang/CharSequence;Lmiuix/appcompat/widget/Spinner;)Landroid/widget/SpinnerAdapter;
    .locals 4

    .line 213
    new-instance v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v3}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V

    new-instance p0, Lcom/miui/home/launcher/LauncherMenu$SpinnerCheckedProvider;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/LauncherMenu$SpinnerCheckedProvider;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    const p1, 0x7f0d00fc

    invoke-direct {v0, v1, p1, v2, p0}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    return-object v0
.end method

.method private noWordModelSettingChange(Ljava/lang/String;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingNoWord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordModelChange(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->onlyWidgetNoWordChange(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mSettingClose:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 377
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordOrOnlyWidgetNoWordClose(Landroid/content/ContentResolver;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public synthetic lambda$initCellSetting$0$LauncherMenu(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 237
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 238
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return v0

    .line 241
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    :goto_0
    return v0
.end method

.method public synthetic lambda$initNoWordSetting$1$LauncherMenu(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 276
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a022a

    .line 117
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    const v0, 0x7f0a022b

    .line 118
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a021b

    .line 122
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    const v0, 0x7f0a021a

    .line 123
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0219

    .line 124
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFill:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0228

    .line 125
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLock:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0229

    .line 126
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMore:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0081

    .line 127
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0a01f6

    .line 128
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 129
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initNoWordSetting()V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$3;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$4;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFill:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$5;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLock:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$6;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$7;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$8;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$8;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMore:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$9;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$9;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMiuiDialogCornerRadius(Landroid/content/Context;)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/common/Utilities;->changeDrawableRadius(Landroid/graphics/drawable/Drawable;FF)V

    .line 194
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_10:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 195
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setShowDividers(I)V

    .line 196
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setShowDividers(I)V

    .line 199
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public onShow()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 336
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 337
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->isNoWordSettingCellSettingInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->getNoWordModelItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initNoWordSetting()V

    .line 344
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->needShowCellsEntry(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 347
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->isCellSettingInited()Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V

    goto :goto_2

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->getSelectedCellType()I

    move-result v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 345
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method
