.class Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5993
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 5994
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 5999
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$7400(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
