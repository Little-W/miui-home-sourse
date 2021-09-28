.class Lcom/miui/home/launcher/CellLayout$9;
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

    .line 3057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3060
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    .line 3072
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onVisible()V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 3064
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3065
    instance-of v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_0

    .line 3066
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    :cond_0
    return-void
.end method

.method public process(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 0

    .line 3077
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onVisible()V

    return-void
.end method
