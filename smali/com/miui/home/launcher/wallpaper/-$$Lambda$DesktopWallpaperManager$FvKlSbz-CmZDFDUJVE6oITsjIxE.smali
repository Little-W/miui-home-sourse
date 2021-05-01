.class public final synthetic Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/GadgetInfo;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/Object;

.field private final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/GadgetInfo;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$0:Lcom/miui/home/launcher/gadget/GadgetInfo;

    iput p2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$0:Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$FvKlSbz-CmZDFDUJVE6oITsjIxE;->f$4:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->lambda$updateGadgetColorByWallpaperInner$132(Lcom/miui/home/launcher/gadget/GadgetInfo;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void
.end method
