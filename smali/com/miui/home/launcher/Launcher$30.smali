.class Lcom/miui/home/launcher/Launcher$30;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 3864
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$30;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 3867
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$30;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "miui_home_screen_cells_size"

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3869
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 3870
    new-array v0, v0, [I

    .line 3871
    invoke-static {p1, v0}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    const/4 v1, 0x0

    .line 3872
    aget v2, v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    aget v2, v0, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 3873
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$30;->this$0:Lcom/miui/home/launcher/Launcher;

    aget v1, v0, v1

    aget v0, v0, v4

    invoke-static {v2, v1, v0}, Lcom/miui/home/launcher/DeviceConfig;->setScreenCells(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3874
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackScreenCellsSizeChanged(Ljava/lang/String;)V

    .line 3875
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$30;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->screenCellsChangeConfirmed()V

    :cond_1
    return-void
.end method
