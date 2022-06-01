.class Lcom/miui/home/launcher/CellLayout$8;
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

    .line 3066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 3072
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onPause(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public process(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    .line 3082
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onInvisible()V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/ShortcutIcon;I)V
    .locals 0

    return-void
.end method

.method public process(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 0

    .line 3087
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onInvisible()V

    return-void
.end method
