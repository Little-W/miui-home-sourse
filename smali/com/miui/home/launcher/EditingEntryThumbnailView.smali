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

.field private mEntryDrawableIds:[[I

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

.field private mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/EditModeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "miui.intent.action.THEME_WALLPAPER_PICKER_PAGE"

    .line 33
    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->ACTION_THEME_WALLPAPER_PICK:Ljava/lang/String;

    const/4 p2, 0x0

    .line 38
    check-cast p2, [[I

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    .line 155
    new-instance p2, Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-direct {p2}, Lcom/miui/home/launcher/ThumbnailHeightController;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    .line 55
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initIconDrawableIds()V

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initWidgetThumbnailView()V

    const/4 p1, 0x3

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenLayoutMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/EditingEntryThumbnailView;)Ljava/util/ArrayList;
    .locals 0

    .line 30
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

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getFolmes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 208
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

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 177
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    .line 178
    new-array v5, v4, [Landroid/view/View;

    aput-object v3, v5, v1

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    .line 179
    invoke-interface {v5}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v6

    new-array v7, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v6, v3, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 180
    invoke-interface {v5}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v3

    const/high16 v6, 0x3f000000    # 0.5f

    new-array v7, v4, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v8, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v8, v7, v1

    .line 181
    invoke-interface {v3, v6, v7}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v4, v4, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v7, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v7, v4, v1

    .line 182
    invoke-interface {v3, v6, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 183
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private goThemeWallpaper()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x10808000

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz v2, :cond_0

    const-string v2, "miui.intent.action.THEME_WALLPAPER_PICKER_PAGE"

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string v3, "EditingEntryThumbnailView"

    .line 199
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.settings.WallpaperSettingsActivity"

    .line 202
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initIconDrawableIds()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v2, I

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f08027e

    goto :goto_0

    :cond_0
    const v3, 0x7f08027c

    :goto_0
    const/4 v4, 0x0

    aput v3, v0, v4

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f08027f

    goto :goto_1

    :cond_1
    const v3, 0x7f08027d

    :goto_1
    aput v3, v0, v2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v4

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f080272

    goto :goto_2

    :cond_2
    const v3, 0x7f080270

    :goto_2
    aput v3, v0, v4

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v4

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f080273

    goto :goto_3

    :cond_3
    const v3, 0x7f080271

    :goto_3
    aput v3, v0, v2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f080278

    goto :goto_4

    :cond_4
    const v3, 0x7f080276

    :goto_4
    aput v3, v0, v4

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f080279

    goto :goto_5

    :cond_5
    const v1, 0x7f080277

    :goto_5
    aput v1, v0, v2

    return-void
.end method

.method private initWidgetThumbnailView()V
    .locals 2

    const/16 v0, 0xa

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScrollWholeScreen(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenLayoutMode(I)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixedGap(I)V

    return-void
.end method

.method public static synthetic lambda$hideWithFolmeAnim$126(Lcom/miui/home/launcher/EditingEntryThumbnailView;Lmiuix/animation/IFolme;)V
    .locals 5

    .line 223
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 224
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

.method static synthetic lambda$showWithFolmeAnim$125(Lmiuix/animation/IFolme;)V
    .locals 1

    .line 215
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 216
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
    .locals 3

    .line 114
    sget v0, Lcom/miui/home/launcher/ThumbnailView;->CURR_ICON_DRAWABLE_INDEX:I

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0a00e6

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 117
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v1, v2, v1

    aget v0, v1, v0

    .line 118
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

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 124
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

    .line 222
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$bd-jYL7V9i3-HqDttSYWWLjVpHM;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$bd-jYL7V9i3-HqDttSYWWLjVpHM;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    const-string p1, "launcher_settings"

    .line 145
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    const-string p1, "widget_pick"

    .line 137
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->goThemeWallpaper()V

    const-string p1, "wallpaper_setting"

    .line 141
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

    .line 240
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 159
    iget-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailHeightController;->makeMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method public prepareToShow()V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->reLoadThumbnails()V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 6

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->removeAllViews()V

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00d0

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

    const v4, 0x7f0a00e6

    .line 95
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ThumbnailIcon;

    .line 96
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/ThumbnailIcon;->enableDrawMaskOnPressed(Z)V

    .line 97
    invoke-virtual {v4}, Lcom/miui/home/launcher/ThumbnailIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    .line 98
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    const v4, 0x7f0a01d4

    .line 101
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 102
    sget-object v5, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 103
    invoke-static {p0, v3, v2}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Rx9Miki91J5m3aHiVNL4OhPhh4Y;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Rx9Miki91J5m3aHiVNL4OhPhh4Y;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public showWithFolmeAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 214
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$srxxdArxHNzp3DIAHaZO-Yyi7DM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$srxxdArxHNzp3DIAHaZO-Yyi7DM;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava/util/function/Consumer;)V

    return-void
.end method
