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

    .line 3409
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$30;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 3412
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$30;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->isSystemAnimationOpen(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$4102(Lcom/miui/home/launcher/Launcher;Z)Z

    return-void
.end method
