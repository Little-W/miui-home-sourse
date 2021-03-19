.class public Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
.super Ljava/lang/Object;
.source "DesktopWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

.field private mHanlder:Landroid/os/Handler;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

.field private final mWallpaperColorChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperColorChangedListeners:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->notifyWallpaperColorChanged()V

    return-void
.end method

.method private adaptHomeToWallpaper()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getGadgetAreaRect(Lcom/miui/home/launcher/gadget/GadgetInfo;)Landroid/graphics/Rect;
    .locals 9

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 177
    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    .line 178
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    move-object v6, p1

    move-object v8, v0

    .line 177
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 180
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    iget v2, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    iget v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v4, v0

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v0

    add-int/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static synthetic lambda$updateGadgetColorByWallpaperInner$0(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 142
    iget-object p3, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getDesktopWallpaperColorMode(Landroid/graphics/Rect;)I

    move-result p3

    .line 143
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->logGadgetAreaColorMode(Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Rect;I)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 144
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$updateGadgetColorByWallpaperInner$1(Lcom/miui/home/launcher/gadget/GadgetInfo;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1

    .line 147
    iget v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    if-ne v0, p1, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    if-ne p0, p2, :cond_1

    const-string p0, "applied_light_wallpaper"

    .line 148
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {p3, p4, p0, p1, p2}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    :cond_1
    return-void
.end method

.method private logGadgetAreaColorMode(Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Rect;I)V
    .locals 3

    const-string v0, "Launcher_DesktopWallpaperManager"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGadgetColorByWallpaperInner, gadget("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), rect="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", colorMode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logUseWallpaperColorToApplyGadgetAreaColor(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    const-string v0, "Launcher_DesktopWallpaperManager"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGadgetColorByWallpaperInner, use wallpaper color to apply gadget("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "info=null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), wallpaper color="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyWallpaperColorChanged()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/ThumbnailView;->adaptIconDrawableIndex()V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperColorChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    .line 97
    invoke-interface {v1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateGadgetColorByWallpaperInner(Lcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isCurrentWallpaperScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->getGadgetAreaRect(Lcom/miui/home/launcher/gadget/GadgetInfo;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget v3, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    .line 139
    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    .line 140
    new-instance v7, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$E5JZs89_TeIvsxpKKGpgEr2nsZg;

    invoke-direct {v7, p0, v0, p1}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$E5JZs89_TeIvsxpKKGpgEr2nsZg;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    new-instance v0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$6iCX7Y8Brsr7G68jqFOilWbPSMs;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$6iCX7Y8Brsr7G68jqFOilWbPSMs;-><init>(Lcom/miui/home/launcher/gadget/GadgetInfo;IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {v7, v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->logUseWallpaperColorToApplyGadgetAreaColor(Lcom/miui/home/launcher/ItemInfo;)V

    const-string p1, "applied_light_wallpaper"

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p2, p3, p1, v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public adaptHomeToWallpaperAsync()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperColorChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerWallpaperChangedReceiver()V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.gallery.action.WALLPAPER_CHANGED"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.UPDATE_DESKTOP_VIDEO_WALLPAPER"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateGadgetColorByWallpaper(Lcom/miui/home/launcher/gadget/Gadget;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 128
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateGadgetColorByWallpaperInner(Lcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
