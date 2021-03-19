.class public Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;
.super Ljava/lang/Object;
.source "WallpaperColorInfo.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mIsDark:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;
    .locals 2

    .line 10
    sget-object v0, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->sInstance:Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->sInstance:Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    .line 14
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->sInstance:Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->mIsDark:Z

    return v0
.end method

.method public update(Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->getColorHints()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->mIsDark:Z

    return-void
.end method
