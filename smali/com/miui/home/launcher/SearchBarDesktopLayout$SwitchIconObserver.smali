.class Lcom/miui/home/launcher/SearchBarDesktopLayout$SwitchIconObserver;
.super Landroid/database/ContentObserver;
.source "SearchBarDesktopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarDesktopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchIconObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/os/Handler;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$SwitchIconObserver;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    .line 215
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 220
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$SwitchIconObserver;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchIcon()V

    return-void
.end method
