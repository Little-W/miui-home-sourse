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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperColorChangedListeners:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 43
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->notifyWallpaperColorChanged()V

    return-void
.end method

.method private adaptHomeToWallpaper()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getItemAreaRect(Lcom/miui/home/launcher/ItemInfo;)Landroid/graphics/Rect;
    .locals 9

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 180
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v7, 0x0

    move-object v6, p1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 183
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

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v0

    add-int/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static synthetic lambda$updateLauncherComponentColorByWallpaperInner$0(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 145
    iget-object p3, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getDesktopWallpaperColorMode(Landroid/graphics/Rect;)I

    move-result p3

    .line 146
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->logItemAreaColorMode(Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Rect;I)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$updateLauncherComponentColorByWallpaperInner$1(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;Ljava/lang/Boolean;)V
    .locals 1

    .line 150
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ne v0, p1, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-ne p0, p2, :cond_1

    .line 151
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p3, p0}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor(I)V

    :cond_1
    return-void
.end method

.method private logItemAreaColorMode(Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Rect;I)V
    .locals 3

    const-string v0, "Launcher_DesktopWallpaperManager"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLauncherComponentColorByWallpaperInner, item("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), rect="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", colorMode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logUseWallpaperColorToApplyItemAreaColor(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    const-string v0, "Launcher_DesktopWallpaperManager"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLauncherComponentColorByWallpaperInner, use wallpaper color to apply widget("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "info=null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), wallpaper color="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
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

.method private updateLauncherComponentColorByWallpaperInner(Lcom/miui/home/launcher/gadget/ColorUpdatable;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isCurrentWallpaperScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->getItemAreaRect(Lcom/miui/home/launcher/ItemInfo;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 142
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 143
    new-instance v3, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;

    invoke-direct {v3, p0, v0, p2}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/ItemInfo;)V

    new-instance v0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;-><init>(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;)V

    const/4 p1, 0x0

    invoke-static {v3, v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->logUseWallpaperColorToApplyItemAreaColor(Lcom/miui/home/launcher/ItemInfo;)V

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor(I)V

    return-void
.end method


# virtual methods
.method public adaptHomeToWallpaperAsync()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

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

.method public updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V
    .locals 2

    .line 127
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 129
    instance-of v1, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateLauncherComponentColorByWallpaperInner(Lcom/miui/home/launcher/gadget/ColorUpdatable;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method
