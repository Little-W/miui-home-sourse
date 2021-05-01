.class public final synthetic Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$ks-7F5fVGtymCK8M-FIvEP2Flp4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Lcom/miui/home/launcher/gadget/GadgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$ks-7F5fVGtymCK8M-FIvEP2Flp4;->f$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$ks-7F5fVGtymCK8M-FIvEP2Flp4;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$ks-7F5fVGtymCK8M-FIvEP2Flp4;->f$2:Lcom/miui/home/launcher/gadget/GadgetInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$ks-7F5fVGtymCK8M-FIvEP2Flp4;->f$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$ks-7F5fVGtymCK8M-FIvEP2Flp4;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$ks-7F5fVGtymCK8M-FIvEP2Flp4;->f$2:Lcom/miui/home/launcher/gadget/GadgetInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->lambda$updateGadgetColorByWallpaperInner$131(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
