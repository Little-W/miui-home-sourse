.class public Lcom/miui/home/recents/LauncherInitListenerEx;
.super Lcom/miui/home/recents/LauncherInitListener;
.source "LauncherInitListenerEx.java"


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/home/recents/LauncherInitListener;-><init>(Ljava/util/function/BiPredicate;)V

    return-void
.end method


# virtual methods
.method protected init(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/miui/home/recents/LauncherInitListener;->init(Lcom/miui/home/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method
