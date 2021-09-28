.class Lcom/miui/home/launcher/CellLayout$12;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/CellLayout$DrawableWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public process(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 3148
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->updateMamlDownloadVisible()V

    return-void
.end method
