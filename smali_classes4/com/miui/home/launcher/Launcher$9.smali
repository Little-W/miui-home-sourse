.class Lcom/miui/home/launcher/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupWallpaperZoomManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2277
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 2280
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$1702(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 2285
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2286
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->abortAnimations()V

    .line 2287
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$1702(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    :cond_0
    return-void
.end method
