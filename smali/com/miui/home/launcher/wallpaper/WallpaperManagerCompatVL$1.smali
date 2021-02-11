.class Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;
.super Ljava/lang/Object;
.source "WallpaperManagerCompatVL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$weakWindowToken:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;->val$weakWindowToken:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;->val$weakWindowToken:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;

    iget-object v1, v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->mWm:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL$1;->val$command:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
