.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/launcher/utils/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$2:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$1:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$2:Lcom/miui/home/launcher/Workspace;

    iput-boolean p4, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$3:Z

    iput-boolean p5, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$4:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$1:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$2:Lcom/miui/home/launcher/Workspace;

    iget-boolean v3, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$3:Z

    iget-boolean v4, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$J5eXqTD93krx0EK_Hz0c230lr4g;->f$4:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/WallpaperUtils;->lambda$getDefaultScreenPreview$0(Ljava/util/List;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;ZZLandroid/graphics/Canvas;)V

    return-void
.end method
