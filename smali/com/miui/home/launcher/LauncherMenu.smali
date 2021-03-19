.class public Lcom/miui/home/launcher/LauncherMenu;
.super Landroid/widget/LinearLayout;
.source "LauncherMenu.java"


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAutoFill:Landroid/widget/LinearLayout;

.field private mAutoFillSlidingButton:Lmiui/widget/SlidingButton;

.field private mCellType1:Landroid/widget/Button;

.field private mCellType2:Landroid/widget/Button;

.field private mCellsSetting:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultScreenPreview:Landroid/widget/LinearLayout;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLock:Landroid/widget/LinearLayout;

.field private mLockSlidingButton:Lmiui/widget/SlidingButton;

.field private mMenuTransEffect:Landroid/widget/LinearLayout;

.field private mMore:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    new-instance p2, Lcom/miui/home/launcher/LauncherMenu$9;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/LauncherMenu$9;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 54
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 55
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingTop()I

    move-result p2

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingBottom()I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherMenu;)Lmiui/widget/SlidingButton;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiui/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherMenu;)Lmiui/widget/SlidingButton;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiui/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherMenu;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherMenu;)Landroid/widget/Button;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherMenu;)Landroid/widget/Button;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherMenu;[Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherMenu;->setSelectedCellType([Landroid/view/View;)V

    return-void
.end method

.method private initCellSetting()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->needShowCellsEntry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0071

    .line 150
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    const v0, 0x7f0a0072

    .line 151
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenUtils;->getScreenCellsSizeOptions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 154
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 158
    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setSelectedCellType([Landroid/view/View;)V

    .line 160
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherMenu$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherMenu$8;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    .line 183
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method private isCellSettingInited()Z
    .locals 1

    .line 236
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

.method private setSelectedCellType([Landroid/view/View;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 196
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 197
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 198
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 199
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v3, v0}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 206
    :cond_2
    aget v3, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 207
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 208
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
    .locals 3

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0129

    .line 64
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011e

    .line 65
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011d

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011c

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFill:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0127

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLock:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0128

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMore:Landroid/widget/LinearLayout;

    const v0, 0x7f0a005c

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a0112

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiui/widget/SlidingButton;

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$1;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$2;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFill:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$3;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLock:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$4;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$5;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$6;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMore:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/LauncherMenu$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherMenu$7;-><init>(Lcom/miui/home/launcher/LauncherMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFill:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLock:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMore:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMiuiDialogCornerRadius(Landroid/content/Context;)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/common/Utilities;->changeDrawableRadius(Landroid/graphics/drawable/Drawable;FF)V

    .line 138
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_10:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 139
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setShowDividers(I)V

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setShowDividers(I)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mMenuTransEffect:Landroid/widget/LinearLayout;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public onShow()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mAutoFillSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mLockSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->needShowCellsEntry(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellsSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->isCellSettingInited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 222
    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType1:Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherMenu;->mCellType2:Landroid/widget/Button;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenu;->setSelectedCellType([Landroid/view/View;)V

    .line 225
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu;->mDefaultScreenPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
