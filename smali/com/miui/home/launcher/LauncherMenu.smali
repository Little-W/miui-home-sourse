.class public Lcom/miui/home/launcher/LauncherMenu;
.super Landroid/widget/LinearLayout;
.source "LauncherMenu.java"


# instance fields
.field private mAutoFill:Landroid/widget/LinearLayout;

.field private mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mCellType1:Landroid/widget/Button;

.field private mCellType2:Landroid/widget/Button;

.field private mCellType3:Landroid/widget/Button;

.field private mCellsSetting:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultScreenPreview:Landroid/widget/LinearLayout;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLock:Landroid/widget/LinearLayout;

.field private mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mMenuTransEffect:Landroid/widget/LinearLayout;

.field private mMore:Landroid/widget/LinearLayout;

.field private mNoWordSetting:Landroid/widget/LinearLayout;

.field private mNoWordSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 60
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingTop()I

    move-result p2

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 63
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingBottom()I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherMenu;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherMenu;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherMenu;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherMenu;)Landroid/widget/Button;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherMenu;)Landroid/widget/Button;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherMenu;)Landroid/widget/Button;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType3:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/LauncherMenu;[Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherMenu;->setSelectedCellType([Landroid/view/View;)V

    return-void
.end method

.method private initCellSetting()V
    .locals 6

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->needShowCellsEntry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0097

    .line 184
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    const v0, 0x7f0a0098

    .line 185
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    const v0, 0x7f0a0099

    .line 186
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType3:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenUtils;->getScreenCellsSizeOptions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 189
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType3:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType3:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType3:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 198
    :cond_0
    new-array v0, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setSelectedCellType([Landroid/view/View;)V

    .line 200
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/LauncherMenu$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherMenu$8;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    .line 223
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType3:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method private isCellSettingInited()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/LauncherMenu;Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/miui/home/launcher/LauncherMenu;Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p1

    if-ne p2, p1, :cond_0

    return-void

    .line 125
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->setSwitchingNoWordModel(Z)V

    .line 126
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x7

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_finish_button"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "miui_home_no_word_model"

    invoke-static {p1, v0, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 132
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingNoWord(Z)V

    return-void
.end method

.method private setSelectedCellType([Landroid/view/View;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 240
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 241
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 242
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 243
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v3, v0}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 250
    :cond_2
    aget v3, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 251
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 252
    aget-object v4, p1, v2

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
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

.method protected onFinishInflate()V
    .locals 4

    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0197

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0198

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a018c

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    const v0, 0x7f0a018b

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const v0, 0x7f0a018a

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFill:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0195

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLock:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0196

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMore:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01b1

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0a006e

    .line 80
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0a017c

    .line 81
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 87
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    if-eqz v0, :cond_2

    .line 90
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$MHR_4wX2wGC8uKfVwAvocOhv8q4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$MHR_4wX2wGC8uKfVwAvocOhv8q4;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/home/launcher/LauncherMenu$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/LauncherMenu$1;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/home/launcher/LauncherMenu$2;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/LauncherMenu$2;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFill:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/home/launcher/LauncherMenu$3;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/LauncherMenu$3;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mLock:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/home/launcher/LauncherMenu$4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/LauncherMenu$4;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$IxlbcaRkTzax0gdLDnuJwwvVoDs;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherMenu$IxlbcaRkTzax0gdLDnuJwwvVoDs;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v2, Lcom/miui/home/launcher/LauncherMenu$5;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/LauncherMenu$5;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v2, Lcom/miui/home/launcher/LauncherMenu$6;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/LauncherMenu$6;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMore:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/miui/home/launcher/LauncherMenu$7;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/LauncherMenu$7;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMiuiDialogCornerRadius(Landroid/content/Context;)I

    move-result v0

    .line 171
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/miui/home/launcher/common/Utilities;->changeDrawableRadius(Landroid/graphics/drawable/Drawable;FF)V

    .line 172
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_10:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 173
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setShowDividers(I)V

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/LauncherMenu;->setShowDividers(I)V

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public onShow()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mNoWordSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->needShowCellsEntry(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->isCellSettingInited()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 269
    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType3:Landroid/widget/Button;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setSelectedCellType([Landroid/view/View;)V

    goto :goto_1

    .line 264
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method
