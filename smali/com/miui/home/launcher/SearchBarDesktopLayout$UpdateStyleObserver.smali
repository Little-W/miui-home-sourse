.class Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;
.super Landroid/database/ContentObserver;
.source "SearchBarDesktopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarDesktopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateStyleObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/os/Handler;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    .line 203
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "SearchBarStyleUtil"

    const-string v0, "UpdateStyleObserver"

    .line 209
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$000(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V

    return-void
.end method
