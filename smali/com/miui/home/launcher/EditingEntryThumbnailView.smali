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

.field private mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
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

    .line 167
    new-instance p2, Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-direct {p2}, Lcom/miui/home/launcher/ThumbnailHeightController;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    const/4 p2, 0x0

    .line 228
    iput-boolean p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    const-string p3, "layout_inflater"

    .line 59
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initIconDrawableIds()V

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initWidgetThumbnailView()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/EditingEntryThumbnailView;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lmiuix/animation/IFolme;",
            ">;)V"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getFolmes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 220
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getFolmes()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/IFolme;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    .line 190
    new-array v5, v4, [Landroid/view/View;

    aput-object v3, v5, v1

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    .line 191
    invoke-interface {v5}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v6

    new-array v7, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v6, v3, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 192
    invoke-interface {v5}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v3

    const/high16 v6, 0x3f000000    # 0.5f

    new-array v7, v4, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v8, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v8, v7, v1

    .line 193
    invoke-interface {v3, v6, v7}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v4, v4, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v7, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v7, v4, v1

    .line 194
    invoke-interface {v3, v6, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 195
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private goThemeWallpaper()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x10808000

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz v2, :cond_0

    const-string v2, "miui.intent.action.THEME_WALLPAPER_PICKER_PAGE"

    .line 206
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string v3, "EditingEntryThumbnailView"

    .line 211
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.settings.WallpaperSettingsActivity"

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initIconDrawableIds()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    const/4 v1, 0x1

    const v2, 0x7f0800f0

    aput v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0800ef

    .line 71
    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0800ee

    .line 72
    aput v2, v0, v1

    return-void
.end method

.method private initWidgetThumbnailView()V
    .locals 2

    const/16 v0, 0xa

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScrollWholeScreen(Z)V

    const/16 v0, 0x8

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenLayoutMode(I)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixedGap(I)V

    return-void
.end method

.method public static synthetic lambda$hideWithFolmeAnim$1(Lcom/miui/home/launcher/EditingEntryThumbnailView;Lmiuix/animation/IFolme;)V
    .locals 5

    .line 246
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 247
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;

    invoke-direct {v4, p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;Lmiuix/animation/IFolme;)V

    const/4 p1, 0x0

    aput-object v4, v1, p1

    invoke-virtual {v3, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v2, p1

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic lambda$showWithFolmeAnim$0(Lmiuix/animation/IFolme;)V
    .locals 1

    .line 237
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 238
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private setIconDrawable(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a010f

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[I

    aget v0, v1, v0

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected adaptThumbnailItemStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
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

    .line 245
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$L_sk608EKl8RMfTwc9IYVB92zxg;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$L_sk608EKl8RMfTwc9IYVB92zxg;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    const-string p1, "launcher_settings"

    .line 157
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "widget_pick"

    .line 147
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickToAddMIUIWidget(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->goThemeWallpaper()V

    const-string p1, "wallpaper_setting"

    .line 153
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 265
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method protected onHideComplete()V
    .locals 1

    const/16 v0, 0x8

    .line 225
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 171
    iget-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailHeightController;->makeMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method public prepareToShow()V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->reLoadThumbnails()V

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 10

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d010b

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    .line 91
    sget-object v4, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTag(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a009e

    .line 95
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a010f

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    const v7, 0x7f0a0069

    .line 97
    invoke-virtual {v3, v7}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 98
    iget-object v8, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0800f1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 99
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    sget-object v7, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v2, v7, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ThumbnailIcon;

    .line 102
    iget-object v4, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ThumbnailIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ThumbnailIcon;->enableDrawMaskOnPressed(Z)V

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ThumbnailIcon;

    .line 106
    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/ThumbnailIcon;->enableDrawMaskOnPressed(Z)V

    const/16 v7, 0x8

    .line 107
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-virtual {v5}, Lcom/miui/home/launcher/ThumbnailIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v7, -0x2

    .line 109
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    .line 111
    sget-object v4, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v5, v2}, Lcom/miui/home/launcher/ThumbnailIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    :goto_1
    invoke-static {p0, v3, v6}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 121
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Rx9Miki91J5m3aHiVNL4OhPhh4Y;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Rx9Miki91J5m3aHiVNL4OhPhh4Y;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public showWithFolmeAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 236
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$sj04jiUhDP_aDGLU1D4M3L-leqw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$sj04jiUhDP_aDGLU1D4M3L-leqw;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method
