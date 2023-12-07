.class public final synthetic Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ItemInfo;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/launcher/gadget/ColorUpdatable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$0:Lcom/miui/home/launcher/ItemInfo;

    iput p2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$3:Lcom/miui/home/launcher/gadget/ColorUpdatable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$0:Lcom/miui/home/launcher/ItemInfo;

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$2:I

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$bqUxE_ffQ5VuEJ7_LyPa2qEchnY;->f$3:Lcom/miui/home/launcher/gadget/ColorUpdatable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->lambda$updateLauncherComponentColorByWallpaperInner$1(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;Ljava/lang/Boolean;)V

    return-void
.end method
