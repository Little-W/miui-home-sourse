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

    .line 3081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3084
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    .line 3096
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onVisible()V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/ShortcutIcon;I)V
    .locals 0

    .line 3088
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3089
    instance-of p2, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p2, :cond_0

    .line 3090
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    :cond_0
    return-void
.end method

.method public process(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 0

    .line 3101
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onVisible()V

    return-void
.end method