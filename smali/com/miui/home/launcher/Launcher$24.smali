.class Lcom/miui/home/launcher/Launcher$24;
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

    .line 3996
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$24;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 3999
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$24;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getAccessibilityDisplaySize(Landroid/content/ContentResolver;)I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->setAccessibilityDisplaySize(I)V

    return-void
.end method
