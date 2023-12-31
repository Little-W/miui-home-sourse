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

.field private mCanWallpaperScrolled:Z

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

.field private mWallpaperScrolledObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperColorChangedListeners:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$3;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperScrolledObserver:Landroid/database/ContentObserver;

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    .line 54
    sget-boolean p1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->initMiuiWallpaperManager()V

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->registerWallpaperChangedReceiver()V

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->registerWallpaperScrollableObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateWallpaperScrollable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->notifyWallpaperColorChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateWallpaperScrollableVT(Landroid/content/Context;)V

    return-void
.end method

.method private adaptHomeToWallpaper()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getItemAreaRect(Lcom/miui/home/launcher/ItemInfo;)Landroid/graphics/Rect;
    .locals 8

    .line 230
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    new-instance p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 234
    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 237
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v3, p0

    .line 238
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result p0

    add-int/2addr v3, p0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private getWallpaperScroll(Landroid/content/Context;)Z
    .locals 4

    const-string p0, "result_boolean"

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "content://com.miui.miwallpaper.keyguard.wallpaper"

    const-string v2, "getScrollWithScreenState"

    const/4 v3, 0x0

    .line 255
    invoke-static {p1, v1, v2, v3, v3}, Lcom/miui/launcher/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 258
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "Launcher_DesktopWallpaperManager"

    const-string p1, "getWallpaperScroll: The current version of wallpaper not support this provider"

    .line 259
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 264
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic lambda$updateLauncherComponentColorByWallpaperInner$1(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;Ljava/lang/Boolean;)V
    .locals 1

    .line 204
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ne v0, p1, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-ne p0, p2, :cond_1

    .line 205
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
    .locals 1

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateLauncherComponentColorByWallpaperInner, item("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), rect="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", colorMode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher_DesktopWallpaperManager"

    .line 217
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logUseWallpaperColorToApplyItemAreaColor(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateLauncherComponentColorByWallpaperInner, use wallpaper color to apply widget("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "info=null"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), wallpaper color="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher_DesktopWallpaperManager"

    .line 224
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyWallpaperColorChanged()V
    .locals 1

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/ThumbnailView;->adaptIconDrawableIndex()V

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperColorChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    .line 122
    invoke-interface {v0}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateLauncherComponentColorByWallpaperInner(Lcom/miui/home/launcher/gadget/ColorUpdatable;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 192
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isCurrentWallpaperScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->getItemAreaRect(Lcom/miui/home/launcher/ItemInfo;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 196
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 197
    new-instance v3, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;

    invoke-direct {v3, p0, v0, p2}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/ItemInfo;)V

    new-instance p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;-><init>(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;)V

    const/4 p1, 0x0

    invoke-static {v3, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    .line 212
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->logUseWallpaperColorToApplyItemAreaColor(Lcom/miui/home/launcher/ItemInfo;)V

    .line 213
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor(I)V

    return-void
.end method

.method private updateWallpaperScrollable(Landroid/content/Context;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->getWallpaperScroll(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mCanWallpaperScrolled:Z

    return-void
.end method

.method private updateWallpaperScrollableVT(Landroid/content/Context;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pref_key_wallpaper_screen_scrolled_span"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mCanWallpaperScrolled:Z

    return-void
.end method


# virtual methods
.method public adaptHomeToWallpaperAsync()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mHanlder:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mAdaptHomeToWallpaperRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperColorChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canWallpaperScrolled()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mCanWallpaperScrolled:Z

    return p0
.end method

.method public initMiuiWallpaperManager()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    new-instance v1, Lcom/miui/home/launcher/wallpaper/MiuiWallpaperManagerCallback;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/MiuiWallpaperManagerCallback;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->initMiuiWallpaperManager(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    return-void
.end method

.method public synthetic lambda$updateLauncherComponentColorByWallpaperInner$0$DesktopWallpaperManager(Landroid/graphics/Rect;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 199
    iget-object p3, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getDesktopWallpaperColorMode(Landroid/graphics/Rect;)I

    move-result p3

    .line 200
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->logItemAreaColorMode(Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Rect;I)V

    const/4 p0, 0x2

    if-ne p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 201
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperManagerCompat:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->onDestroy()V

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->unregisterReceiver()V

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->unRegisterWallpaperScrollableObserver()V

    return-void
.end method

.method public registerWallpaperChangedReceiver()V
    .locals 2

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.gallery.action.WALLPAPER_CHANGED"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.UPDATE_DESKTOP_VIDEO_WALLPAPER"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerWallpaperScrollableObserver()V
    .locals 3

    .line 141
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateWallpaperScrollableVT(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_key_wallpaper_screen_scrolled_span"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperScrolledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unRegisterWallpaperScrollableObserver()V
    .locals 1

    .line 149
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperScrolledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mWallpaperBroadcastReceiver:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V
    .locals 2

    .line 181
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 183
    instance-of v1, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateLauncherComponentColorByWallpaperInner(Lcom/miui/home/launcher/gadget/ColorUpdatable;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method
