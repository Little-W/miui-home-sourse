.class Lcom/miui/home/launcher/CellLayout$11;
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

    .line 3118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3121
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onPause(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    .line 3129
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onInvisible()V

    return-void
.end method

.method public process(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    return-void
.end method

.method public process(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 0

    .line 3134
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onInvisible()V

    return-void
.end method
