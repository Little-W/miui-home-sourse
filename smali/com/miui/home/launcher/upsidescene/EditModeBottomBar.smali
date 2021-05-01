.class public Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;
.super Landroid/widget/FrameLayout;
.source "EditModeBottomBar.java"


# instance fields
.field private mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

.field private mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

.field private mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

.field private mCkbFreeButtonApp:Landroid/view/View;

.field private mCkbFreeButtonDrawer:Landroid/view/View;

.field private mCkbFreeButtonEmpty:Landroid/view/View;

.field private mCkbFreeButtonFolder:Landroid/view/View;

.field private mCkbFreeButtonToggle:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEditDragSource:Landroid/view/ViewGroup;

.field private mEditModeDraggingTip:Landroid/widget/TextView;

.field private mEditModeFreeButton:Lmiui/widget/ScreenView;

.field private mEditModeMoveTip:Landroid/widget/TextView;

.field private mIsBuilded:Z

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mTabLabelFreeButton:Landroid/view/View;

.field private mTabLabelShortcut:Landroid/view/View;

.field private mTabLabelWidget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->selectTab(Landroid/view/View;)V

    return-void
.end method

.method private buildBottomWidgetDragSources()V
    .locals 12

    const v0, 0x7f0a009c

    .line 288
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 289
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v2, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    const v5, 0x7f100111

    .line 294
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    .line 293
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v2, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    const v5, 0x7f10010d

    .line 297
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    .line 296
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v2, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    const v5, 0x7f100115

    .line 300
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v7, 0x3

    invoke-direct {v5, v7}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v2, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    const v5, 0x7f10026b

    .line 303
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    .line 302
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v2, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {v2, v3, v4, v6}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V

    iput-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    .line 307
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setItemDatas(Ljava/util/List;)V

    .line 308
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 309
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getFreeButtons()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    .line 314
    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 315
    new-instance v5, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-string v9, ""

    invoke-direct {v5, v8, v9, v4}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_1
    new-instance v3, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 v8, 0x0

    invoke-direct {v3, v4, v5, v8}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V

    iput-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    .line 320
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setItemDatas(Ljava/util/List;)V

    .line 321
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {v1, v7}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 323
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getMtzGadgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

    .line 330
    iget-object v5, v4, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->preview:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 331
    new-instance v5, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v4, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->preview:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v10, v4, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->title:Ljava/lang/String;

    invoke-direct {v5, v9, v10, v4}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 336
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzGadgetInfos()[Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v3

    .line 337
    array-length v4, v3

    :goto_2
    if-ge v8, v4, :cond_5

    aget-object v5, v3, v8

    if-eqz v5, :cond_4

    .line 339
    new-instance v9, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v5}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 344
    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 345
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 346
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 347
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 348
    iget-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 349
    new-instance v9, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v9, v5}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 350
    iget v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v10}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result v10

    iput v10, v9, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 351
    iget v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v10}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result v10

    iput v10, v9, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    .line 352
    new-instance v10, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {v10, v8, v5, v9}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 355
    :cond_6
    new-instance v3, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V

    iput-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    .line 356
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setItemDatas(Ljava/util/List;)V

    .line 357
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {v1, v7}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 359
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private selectTab(Landroid/view/View;)V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelShortcut:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 183
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelFreeButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 184
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelWidget:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 185
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelFreeButton:Landroid/view/View;

    if-ne p1, v4, :cond_1

    .line 189
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 190
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelFreeButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 191
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelWidget:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 192
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelWidget:Landroid/view/View;

    if-ne p1, v4, :cond_2

    .line 196
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 197
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelFreeButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 198
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelWidget:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 199
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceShortcut:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceFreeButton:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mBottomItemsDragSourceTool:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public calcHeight()I
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 11

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const v0, 0x7f0a00ae

    .line 85
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeMoveTip:Landroid/widget/TextView;

    const v0, 0x7f0a00a7

    .line 86
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeDraggingTip:Landroid/widget/TextView;

    const v0, 0x7f0a00a8

    .line 87
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ScreenView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    const v0, 0x7f0a00a5

    .line 89
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditDragSource:Landroid/view/ViewGroup;

    const v0, 0x7f0a01b5

    .line 90
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelShortcut:Landroid/view/View;

    const v0, 0x7f0a01b4

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelFreeButton:Landroid/view/View;

    const v0, 0x7f0a01b6

    .line 92
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelWidget:Landroid/view/View;

    const v0, 0x7f0a00ab

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a9

    .line 95
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00ac

    .line 96
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a00aa

    .line 97
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a00ad

    .line 98
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0107

    .line 100
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 102
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v10, 0x7f100112

    .line 105
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f100111

    .line 106
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f10010d

    .line 107
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f100115

    .line 108
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f10026b

    .line 109
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a00f2

    .line 111
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 113
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 114
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v10, 0x7f0800ee

    .line 116
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f0800f1

    .line 117
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f0800f3

    .line 118
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f0800f2

    .line 119
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f080128

    .line 120
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f0a0079

    .line 122
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonEmpty:Landroid/view/View;

    .line 123
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonApp:Landroid/view/View;

    .line 124
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonFolder:Landroid/view/View;

    .line 125
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonDrawer:Landroid/view/View;

    .line 126
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonToggle:Landroid/view/View;

    .line 128
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lmiui/widget/ScreenView;->setScrollWholeScreen(Z)V

    .line 129
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/16 v10, 0x53

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const v8, 0x7f0800e3

    const v9, 0x7f0800e4

    invoke-virtual {v5, v7, v8, v9, v6}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    .line 133
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    invoke-virtual {v5}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v5

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_0

    .line 134
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v5}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v6

    .line 135
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x3

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v5, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$1;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$1;-><init>(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v1, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$2;-><init>(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v1, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$3;-><init>(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$4;-><init>(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$5;-><init>(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar$6;-><init>(Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;)V

    .line 175
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelShortcut:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelFreeButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelWidget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->calcHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public refreshFreeButtonCheckbox()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 250
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonEmpty:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonApp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonToggle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonFolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 283
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown function type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonDrawer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonFolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonApp:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonEmpty:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mCkbFreeButtonToggle:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-void
.end method

.method public switchEditWidgetBar()V
    .locals 5

    .line 214
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mIsBuilded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->buildBottomWidgetDragSources()V

    .line 216
    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mIsBuilded:Z

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mTabLabelShortcut:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->selectTab(Landroid/view/View;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isDragging()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeDraggingTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeMoveTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    invoke-virtual {v0, v3}, Lmiui/widget/ScreenView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditDragSource:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeDraggingTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeMoveTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    invoke-virtual {v0, v3}, Lmiui/widget/ScreenView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditDragSource:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditDragSource:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeMoveTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    invoke-virtual {v0, v2}, Lmiui/widget/ScreenView;->setVisibility(I)V

    .line 239
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->refreshFreeButtonCheckbox()V

    goto :goto_1

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeMoveTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->mEditModeFreeButton:Lmiui/widget/ScreenView;

    invoke-virtual {v0, v3}, Lmiui/widget/ScreenView;->setVisibility(I)V

    :goto_1
    return-void
.end method
