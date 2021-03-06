.class public Lcom/miui/home/launcher/ShortcutsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;


# instance fields
.field private mDisableSaveWhenDatasetChanged:Z

.field mDragOverItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDroppingDragViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/DragView;",
            ">;"
        }
    .end annotation
.end field

.field mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

.field protected mInfo:Lcom/miui/home/launcher/FolderInfo;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPositionMap:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/ShortcutsAdapter;->PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 60
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    .line 48
    iput-boolean v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDisableSaveWhenDatasetChanged:Z

    .line 61
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 62
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->buildSortingMap()V

    return-void
.end method

.method private buildSortingMap()V
    .locals 5

    .line 175
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/miui/home/launcher/ShortcutsAdapter;->PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 177
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    add-int/lit8 v4, v2, 0x1

    .line 178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    .line 181
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDisableSaveWhenDatasetChanged:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->formatToSequence()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->saveContentPosition()V

    :cond_1
    return-void
.end method

.method private formatToSequence()Z
    .locals 4

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    if-eq v3, v1, :cond_0

    const/4 v2, 0x1

    .line 193
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    iput v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private refreshFolderPreviewIcons()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 254
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 269
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public disableSaveWhenDatasetChanged(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDisableSaveWhenDatasetChanged:Z

    return-void
.end method

.method public enableReorder(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 261
    :try_start_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object v0
.end method

.method public getItem(I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    aget-object p1, v1, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    return-wide v0
.end method

.method public getReorderCount()I
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 200
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f0d0026

    invoke-static {v0, p2, p3, p1}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p2

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    .line 204
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object p3

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    .line 205
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    .line 208
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_1

    .line 209
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 211
    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    .line 214
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 215
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/DragView;

    .line 216
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget(Landroid/view/View;)V

    .line 218
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    .line 221
    :cond_3
    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v4, p3, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long p3, v2, v4

    if-nez p3, :cond_4

    .line 222
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->onWallpaperColorChanged()V

    .line 225
    :cond_4
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconContainer()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result p3

    cmpl-float p3, p3, v1

    if-eqz p3, :cond_5

    .line 226
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->restoreToInitState()V

    .line 228
    :cond_5
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 229
    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x1

    goto :goto_1

    :cond_6
    const/4 p3, 0x0

    .line 228
    :goto_1
    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(Z)V

    .line 230
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 231
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->resetCheckBox()V

    .line 232
    invoke-static {p1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackView(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    .line 79
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->refreshFolderPreviewIcons()V

    return-void
.end method

.method public notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->buildSortingMap()V

    .line 90
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onBinded(Z)V
    .locals 0

    return-void
.end method

.method protected onRecommendAppsEnableChanged(Z)V
    .locals 0

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    monitor-enter v0

    .line 275
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public removeAllDrags()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->setNotifyOnChange(Z)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 241
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public reorderItemByIndex(II)V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 137
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int v4, p1, v0

    sub-int/2addr v4, v3

    .line 138
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int p1, p2, p1

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 p2, -0x1

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    :goto_1
    if-gt v1, v2, :cond_5

    .line 148
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p2

    if-eqz v3, :cond_3

    .line 150
    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 151
    iget v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    add-int/2addr v4, v0

    iput v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    goto :goto_2

    .line 153
    :cond_2
    iget v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    sub-int/2addr v4, p1

    iput v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    goto :goto_2

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 157
    iget v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    sub-int/2addr v4, v0

    iput v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    goto :goto_2

    .line 159
    :cond_4
    iget v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    add-int/2addr v4, p1

    iput v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reorderItemByInsert(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 121
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    .line 122
    iput v0, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 123
    iget-object v4, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    if-ne v3, v4, :cond_1

    move v1, v0

    :cond_1
    if-ne v3, p1, :cond_2

    move v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    .line 132
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByIndex(II)V

    return-void
.end method

.method public saveContentPosition()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method
