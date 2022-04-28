.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/launcher/utils/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$1:Lcom/miui/home/launcher/Launcher;

    iput-boolean p3, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$2:Z

    iput-boolean p4, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$3:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$1:Lcom/miui/home/launcher/Launcher;

    iget-boolean v2, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$2:Z

    iget-boolean v3, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$yX_D8IPLVjqn6zOVC7ckEme4pLY;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/WallpaperUtils;->lambda$getDefaultHomeScreenTopLayer$0(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;ZZLandroid/graphics/Canvas;)V

    return-void
.end method
