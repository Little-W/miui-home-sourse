.class public Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;
.super Lcom/miui/home/launcher/ScreenView;
.source "BottomItemsDragSource.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;,
        Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;
    }
.end annotation


# instance fields
.field mIsShowName:Z

.field mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V
    .locals 2

    .line 124
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;)V

    .line 126
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 127
    iput-boolean p3, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mIsShowName:Z

    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setScrollWholeScreen(Z)V

    .line 129
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    const/16 v1, 0x53

    invoke-direct {p2, p3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const p3, 0x7f080150

    const v0, 0x7f080151

    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->doDrag(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private doDrag(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 10

    .line 95
    instance-of v0, p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    move-object v0, p3

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 97
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    iget-object v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 106
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditModeScaleFactor()F

    move-result p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v7, p2, v0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 108
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditModeScaleFactor()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v7

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v2, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x2

    .line 110
    new-array v0, p2, [I

    .line 111
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    invoke-static {p1, v3, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 112
    aget v1, v0, v1

    const/4 v3, 0x1

    .line 113
    aget v0, v0, v3

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, p2

    sub-int/2addr v3, v4

    add-int v5, v1, v3

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, p2

    sub-int/2addr p1, v1

    add-int v6, v0, p1

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v9, 0x2

    move-object v4, p3

    move-object v8, p0

    .line 118
    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z

    .line 120
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onExternalDragStart()V

    return-void
.end method


# virtual methods
.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onExternalDragEnd()V

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setItemDatas(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;",
            ">;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;-><init>(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;Ljava/util/List;)V

    const/4 p1, 0x0

    move v1, p1

    .line 137
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x3

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v4, v3

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->addView(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->getCount()I

    move-result v0

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    if-eqz v0, :cond_2

    const/16 p1, 0x8

    .line 144
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->setSlideBarVisibility(I)V

    return-void
.end method
