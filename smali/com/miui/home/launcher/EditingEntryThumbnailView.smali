.class public Lcom/miui/home/launcher/EditingEntryThumbnailView;
.super Lcom/miui/home/launcher/EditModeThumbnailView;
.source "EditingEntryThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/EditingEntryThumbnailView$_lancet;
    }
.end annotation


# static fields
.field private static final THEME_PICK_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static mEditingModeValues:[Ljava/lang/String;

.field private static mEditingModes:[Ljava/lang/String;


# instance fields
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
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.settings.WallpaperSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->THEME_PICK_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/EditModeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    check-cast p2, [[I

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    .line 43
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    .line 153
    new-instance p2, Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-direct {p2}, Lcom/miui/home/launcher/ThumbnailHeightController;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initIconDrawableIds()V

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initWidgetThumbnailView()V

    const/4 p1, 0x3

    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenLayoutMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/EditingEntryThumbnailView;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/EditingEntryThumbnailView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setAlpha$___twin___(F)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/EditingEntryThumbnailView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility$___twin___(I)V

    return-void
.end method

.method private doFolmeAnimForEachChildView(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "Lmiuix/animation/IFolme;",
            ">;)V"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getFolmes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v0

    .line 193
    invoke-interface {v0, p1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

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

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 179
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    .line 180
    new-array v5, v4, [Landroid/view/View;

    aput-object v3, v5, v1

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    .line 181
    invoke-interface {v5}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v6

    new-array v7, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v6, v3, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 182
    invoke-interface {v5}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v3

    const/high16 v6, 0x3f000000    # 0.5f

    new-array v7, v4, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v8, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v8, v7, v1

    .line 183
    invoke-interface {v3, v6, v7}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v4, v4, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v7, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v7, v4, v1

    .line 184
    invoke-interface {v3, v6, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    .line 185
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initIconDrawableIds()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 63
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

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f08020f

    goto :goto_0

    :cond_0
    const v3, 0x7f08020d

    :goto_0
    const/4 v4, 0x0

    aput v3, v0, v4

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080210

    goto :goto_1

    :cond_1
    const v3, 0x7f08020e

    :goto_1
    aput v3, v0, v2

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v4

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f080203

    goto :goto_2

    :cond_2
    const v3, 0x7f080201

    :goto_2
    aput v3, v0, v4

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v4

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f080204

    goto :goto_3

    :cond_3
    const v3, 0x7f080202

    :goto_3
    aput v3, v0, v2

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f080209

    goto :goto_4

    :cond_4
    const v3, 0x7f080207

    :goto_4
    aput v3, v0, v4

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v0, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f08020a

    goto :goto_5

    :cond_5
    const v1, 0x7f080208

    :goto_5
    aput v1, v0, v2

    return-void
.end method

.method private initWidgetThumbnailView()V
    .locals 2

    const/16 v0, 0xa

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScrollWholeScreen(Z)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setScreenLayoutMode(I)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setFixedGap(I)V

    return-void
.end method

.method public static synthetic lambda$hideWithFolmeAnim$1(Lcom/miui/home/launcher/EditingEntryThumbnailView;Lmiuix/animation/IFolme;)V
    .locals 5

    .line 208
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 209
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

    .line 200
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 201
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private setAlpha$___twin___(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->setAlpha(F)V

    return-void
.end method

.method private setIconDrawable(Landroid/view/View;)V
    .locals 3

    .line 109
    sget v0, Lcom/miui/home/launcher/ThumbnailView;->CURR_ICON_DRAWABLE_INDEX:I

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0a00de

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 112
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryDrawableIds:[[I

    aget-object v1, v2, v1

    aget v0, v1, v0

    .line 113
    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setVisibility$___twin___(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected adaptThumbnailItemStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
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

    .line 207
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$NaEZ1sB1eFRGfyN0iLPrtZYFpso;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$NaEZ1sB1eFRGfyN0iLPrtZYFpso;-><init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    const-string p1, "launcher_settings"

    .line 143
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    const-string p1, "widget_pick"

    .line 132
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditingEntryClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 136
    sget-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->THEME_PICK_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x10808000

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const-string p1, "wallpaper_setting"

    .line 139
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

.method protected onMeasure(II)V
    .locals 0

    .line 157
    iget-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailHeightController;->makeMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onMeasure(II)V

    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method public prepareToShow()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->reLoadThumbnails()V

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mFolmes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 6

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->removeAllViews()V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00c1

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;

    .line 87
    sget-object v4, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTag(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a00de

    .line 91
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ThumbnailIcon;

    .line 92
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/ThumbnailIcon;->enableDrawMaskOnPressed(Z)V

    .line 93
    invoke-virtual {v4}, Lcom/miui/home/launcher/ThumbnailIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    .line 94
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setIconDrawable(Landroid/view/View;)V

    const v4, 0x7f0a01cd

    .line 97
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    sget-object v5, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mEditingModes:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 99
    invoke-static {p0, v3, v2}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView$_lancet;->com_miui_home_launcher_aop_LogHooker_setScreenViewAlpha(Lcom/miui/home/launcher/EditingEntryThumbnailView;F)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView$_lancet;->com_miui_home_launcher_aop_LogHooker_setScreenViewVisibility(Lcom/miui/home/launcher/EditingEntryThumbnailView;I)V

    return-void
.end method

.method public showWithFolmeAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 199
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$9cweItdufgGZUq0MSwONrbPn_R4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$9cweItdufgGZUq0MSwONrbPn_R4;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->doFolmeAnimForEachChildView(Ljava8/util/function/Consumer;)V

    return-void
.end method
