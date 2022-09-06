.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/launcher/utils/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$4:Z

.field private final synthetic f$5:I

.field private final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/miui/home/launcher/Launcher;ILcom/miui/home/launcher/Workspace;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$1:Lcom/miui/home/launcher/Launcher;

    iput p3, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$3:Lcom/miui/home/launcher/Workspace;

    iput-boolean p5, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$4:Z

    iput p6, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$5:I

    iput-boolean p7, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$6:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$1:Lcom/miui/home/launcher/Launcher;

    iget v2, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$3:Lcom/miui/home/launcher/Workspace;

    iget-boolean v4, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$4:Z

    iget v5, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$5:I

    iget-boolean v6, p0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;->f$6:Z

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/WallpaperUtils;->lambda$getDefaultScreenPreview$0(Ljava/util/List;Lcom/miui/home/launcher/Launcher;ILcom/miui/home/launcher/Workspace;ZIZLandroid/graphics/Canvas;)V

    return-void
.end method
