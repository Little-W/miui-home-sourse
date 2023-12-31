.class Lcom/miui/home/launcher/CellLayout$6;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;


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

    .line 3217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3220
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/FolderIcon;I)V
    .locals 0

    .line 3239
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->onResume()V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    .line 3229
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onVisible()V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/ShortcutIcon;I)V
    .locals 0

    .line 3224
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onResume()V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 0

    .line 3234
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onVisible()V

    return-void
.end method
