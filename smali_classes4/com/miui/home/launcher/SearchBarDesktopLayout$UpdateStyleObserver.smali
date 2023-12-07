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

    .line 231
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    .line 232
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$SearchBarDesktopLayout$UpdateStyleObserver()V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    return-void
.end method

.method public synthetic lambda$onChange$1$SearchBarDesktopLayout$UpdateStyleObserver()V
    .locals 2

    .line 240
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initData(Z)V

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SearchBarDesktopLayout$UpdateStyleObserver$AJuHxwRoJL-Slirk-VGrQcUxWIY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarDesktopLayout$UpdateStyleObserver$AJuHxwRoJL-Slirk-VGrQcUxWIY;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "SearchBarStyleUtil"

    const-string v0, "UpdateStyleObserver"

    .line 238
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$SearchBarDesktopLayout$UpdateStyleObserver$Pqmg3e0U4iJ3Urw4BlTR7jQONxA;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarDesktopLayout$UpdateStyleObserver$Pqmg3e0U4iJ3Urw4BlTR7jQONxA;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
