.class public Lcom/miui/home/launcher/EditingEntryThumbnailView;
.super Lcom/miui/home/launcher/EditModeThumbnailView;
.source "EditingEntryThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field private static mEditingModeValues:[Ljava/lang/String;

.field private static mEditingModes:[Ljava/lang/String;


# instance fields
.field private final ACTION_THEME_WALLPAPER_PICK:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mEachChildViewAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mEntryDrawableIds:[I

.field private mEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFolmes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/IFolme;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mShow:Z

.field private mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/EditModeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "miui.intent.action.THEME_WALLPAPER_PICKER_PAGE"

    .line 36
    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->ACTION_THEME_WALLPAPER_PICK:Ljava/lang/String;

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    .line 51
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p3, 0x2

    new-array v0, p3, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    invoke-virtual {p2, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEachChildViewAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 181
    new-instance p2, Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-direct {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    const/4 p2, 0x0

    .line 254
    iput-boolean p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initIconDrawableIds()V

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initWidgetThumbnailView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/EditingEntryThumbnailView;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lmiuix/animation/IFolme;",
            ">;)V"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getFolmes()Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 246
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getFolmes()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/IFolme;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 218
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    aput-object v3, v4, v1

    .line 219
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    .line 220
    invoke-interface {v4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v5

    new-array v6, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v5, v3, v6}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 221
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private goThemeWallpaper()V
    .locals 3

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10808000

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz v1, :cond_0

    const-string v1, "miui.intent.action.THEME_WALLPAPER_PICKER_PAGE"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EditingEntryThumbnailView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.settings.WallpaperSettingsActivity"

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initIconDrawableIds()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawableIds()V

    return-void
.end method

.method private initWidgetThumbnailView()V
    .locals 2

    const/16 v0, 0xa

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScrollWholeScreen(Z)V

    const/16 v0, 0x8

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenLayoutMode(I)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixedGap(I)V

    return-void
.end method

.method private setIconDrawable(Landroid/view/View;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a01ab

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    aget v0, v1, v0

    .line 143
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIconDrawableIds()V
    .locals 4

    .line 295
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f08020c

    goto :goto_0

    :cond_0
    const v1, 0x7f08020b

    :goto_0
    if-eqz v0, :cond_1

    const v2, 0x7f08020a

    goto :goto_1

    :cond_1
    const v2, 0x7f080209

    :goto_1
    if-eqz v0, :cond_2

    const v0, 0x7f080208

    goto :goto_2

    :cond_2
    const v0, 0x7f080207

    .line 299
    :goto_2
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    const/4 v3, 0x1

    aput v1, p0, v3

    const/4 v1, 0x0

    .line 300
    aput v2, p0, v1

    const/4 v1, 0x2

    .line 301
    aput v0, p0, v1

    return-void
.end method


# virtual methods
.method protected adaptThumbnailItemStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hideWithFolmeAnim()V
    .locals 1

    .line 271
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$L_sk608EKl8RMfTwc9IYVB92zxg;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$L_sk608EKl8RMfTwc9IYVB92zxg;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method protected isScrollable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 256
    iget-boolean p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return p0
.end method

.method public synthetic lambda$hideWithFolmeAnim$1$EditingEntryThumbnailView(Lmiuix/animation/IFolme;)V
    .locals 5

    .line 272
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 273
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;

    invoke-direct {v4, p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;Lmiuix/animation/IFolme;)V

    const/4 p0, 0x0

    aput-object v4, v1, p0

    invoke-virtual {v3, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public synthetic lambda$showWithFolmeAnim$0$EditingEntryThumbnailView(Lmiuix/animation/IFolme;)V
    .locals 2

    .line 263
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 264
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEachChildViewAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    const-string p0, "launcher_settings"

    .line 171
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "widget_pick"

    .line 161
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickToAddMIUIWidget(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->goThemeWallpaper()V

    const-string/jumbo p0, "wallpaper_setting"

    .line 167
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method protected onHideComplete()V
    .locals 1

    const/16 v0, 0x8

    .line 251
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 190
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/EditModeThumbnailView;->onLayout(ZIIII)V

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 193
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    const/4 p5, 0x1

    new-array v0, p5, [Landroid/view/View;

    aput-object p4, v0, p2

    .line 194
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    .line 195
    invoke-static {p4}, Lcom/miui/home/launcher/folme/FolmeUtils;->calAnimScale(Landroid/view/View;)F

    move-result p4

    new-array v1, p5, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v2, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v2, v1, p2

    invoke-interface {v0, p4, v1}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p4

    const/high16 v0, 0x3f800000    # 1.0f

    new-array p5, p5, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v1, p5, p2

    .line 196
    invoke-interface {p4, v0, p5}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p4

    const-wide/16 v0, 0x64

    .line 197
    invoke-interface {p4, v0, v1}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeWidthMeasureSpec()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeEditingEntryHeightMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixedGap(I)V

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setDrawable()V

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 314
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 315
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 306
    invoke-super {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->onWallpaperColorChanged()V

    .line 307
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawableIds()V

    .line 308
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setDrawable()V

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->adaptThumbnailItemStyle()V

    return-void
.end method

.method public prepareToShow()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->reLoadThumbnails()V

    .line 210
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 11

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 89
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0185

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    .line 90
    sget-object v4, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setEnableAutoLayoutAnimation(Z)V

    const v4, 0x7f0a00e7

    .line 95
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v5

    const v6, 0x7f0a01ab

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    const v8, 0x7f0a0085

    .line 98
    invoke-virtual {v3, v8}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 99
    iget-object v9, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_0

    const v10, 0x7f08020e

    goto :goto_1

    :cond_0
    const v10, 0x7f08020d

    :goto_1
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 100
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    sget-object v8, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v2, v8, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ThumbnailIcon;

    .line 103
    iget-object v4, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v5, :cond_1

    const v5, 0x7f08020c

    goto :goto_2

    :cond_1
    const v5, 0x7f08020b

    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ThumbnailIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ThumbnailIcon;->enableDrawMaskOnPressed(Z)V

    goto :goto_3

    .line 106
    :cond_2
    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ThumbnailIcon;

    .line 107
    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/ThumbnailIcon;->enableDrawMaskOnPressed(Z)V

    const/16 v6, 0x8

    .line 108
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {v5}, Lcom/miui/home/launcher/ThumbnailIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v6, -0x2

    .line 110
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    .line 112
    sget-object v4, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v5, v2}, Lcom/miui/home/launcher/ThumbnailIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    :goto_3
    invoke-static {p0, v3, v7}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 116
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public setDrawable()V
    .locals 6

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 124
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    .line 125
    invoke-virtual {v2}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-ne v3, v4, :cond_1

    const v3, 0x7f0a0085

    .line 126
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 127
    iget-object v4, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_0

    const v5, 0x7f08020e

    goto :goto_1

    :cond_0
    const v5, 0x7f08020d

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Rx9Miki91J5m3aHiVNL4OhPhh4Y;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Rx9Miki91J5m3aHiVNL4OhPhh4Y;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public showWithFolmeAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 262
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$1aFbIuve4aijMwhNwQxkmB8Me84;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$1aFbIuve4aijMwhNwQxkmB8Me84;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method
