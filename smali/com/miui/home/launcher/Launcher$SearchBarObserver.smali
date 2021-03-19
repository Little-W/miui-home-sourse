.class Lcom/miui/home/launcher/Launcher$SearchBarObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchBarObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 3551
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 3552
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 3557
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->reloadSearchBarIfNeed()V

    return-void
.end method
